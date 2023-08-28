--C
USE [master];
DECLARE @sid varbinary(85);
SELECT @sid = sid FROM sys.syslogins WHERE name = 'AIDBA'
IF @sid IS NULL
BEGIN
	CREATE LOGIN [AIDBA] WITH PASSWORD=N'Pa$$w0rd', DEFAULT_DATABASE=[tempdb], 
	CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
	IF EXISTS ( SELECT * FROM sys.sysusers WHERE name = 'AIDBA')	
	BEGIN
		ALTER USER [AIDBA] WITH LOGIN = [AIDBA];
	END
	ELSE
	BEGIN
		CREATE USER [AIDBA] FOR LOGIN [AIDBA];
	END
END;
ELSE 
BEGIN
	IF NOT EXISTS ( SELECT * FROM sys.sysusers WHERE name = 'AIDBA')
	BEGIN
		CREATE USER [AIDBA] FOR LOGIN [AIDBA];
	END
	ELSE
	BEGIN
		IF NOT EXISTS ( SELECT * FROM sys.sysusers WHERE name = 'AIDBA' AND sid = @sid)
		BEGIN
			ALTER USER [AIDBA] WITH LOGIN = [AIDBA];
		END
	END
END	
ALTER SERVER ROLE  [sysadmin]  ADD MEMBER [AIDBA];
USE [master];
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md C:\AIDBA_Backups\Simple';
EXEC xp_cmdshell 'md C:\AIDBA_Backups\Full';
EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;

DECLARE @ReturnCode INT;
DECLARE @jobId BINARY(16);

	USE [msdb]

	/****** Object:  Job [AIDBA Simple Recovery Backup]    Script Date: 7/4/2019 5:03:16 PM ******/
	BEGIN TRANSACTION

	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 7/4/2019 5:03:16 PM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA Simple Recovery Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	/****** Object:  Step [Integrity & Full Backup]    Script Date: 7/4/2019 5:03:16 PM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Integrity & Full Backup', 
			@step_id=1, 
			@cmdexec_success_code=0, 
			@on_success_action=3, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'TSQL', 
			@command=N'DECLARE @Disk_Full nvarchar(max);
	DECLARE @DB TABLE ([Database Name] sysname);

	INSERT INTO @DB 
		SELECT name
		FROM sys.databases 
			WHERE name NOT IN (''master'',''msdb'',''model'',''tempdb'',''distribution'')
			AND recovery_model_desc = ''SIMPLE''
			AND state_desc = ''ONLINE''

	DECLARE CUR CURSOR FOR 
	SELECT [Database Name] FROM @DB
	DECLARE @DB_Name sysname;
	DECLARE @stmt nvarchar(max);

	OPEN CUR;
		FETCH NEXT FROM CUR INTO @DB_Name
			WHILE @@Fetch_Status = 0
	BEGIN

		-- path for Backup
		SELECT @Disk_Full = N''C:\AIDBA_Backups\Simple\''+@DB_Name+''_FULL_''+Convert(Nvarchar,SysDateTime(),112)+''.bak''
		BEGIN TRY

			SET @stmt = ''
				DBCC CHECKDB(N''''''+@DB_Name+'''''')  WITH NO_INFOMSGS
				''
			EXECUTE ( @stmt);

			BACKUP DATABASE @DB_Name TO DISK = @Disk_Full
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  COMPRESSION,
				NAME = @DB_Name, STATS = 10
	END TRY
	BEGIN CATCH

		DECLARE @ERROR_MESSAGE VARCHAR(MAX)
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE()
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;

	END CATCH

		FETCH NEXT FROM CUR INTO @DB_Name;
	END
	CLOSE CUR;
	DEALLOCATE CUR;

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	/****** Object:  Step [Shrink Log File]    Script Date: 7/4/2019 5:03:16 PM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Shrink Log File', 
			@step_id=2, 
			@cmdexec_success_code=0, 
			@on_success_action=3, 
			@on_success_step_id=0, 
			@on_fail_action=3, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'TSQL', 
			@command=N'SET QUOTED_IDENTIFIER ON

	DECLARE CUR CURSOR FOR 
		SELECT DB.database_id ,DB.name, LF.name, DF.size
		FROM sys.databases DB 
		INNER JOIN (SELECT SUM(size) size,database_id FROM sys.master_files WHERE type = 0 GROUP BY database_id) DF
			ON DF.database_id = DB.database_id
		INNER JOIN sys.master_files LF
			ON DB.database_id = LF.database_id AND LF.type_desc = ''LOG''
			WHERE DB.name NOT IN (N''master'',N''msdb'',N''model'',N''tempdb'',N''distribution'')
			AND DB.state_desc=''ONLINE''
			AND DB.recovery_model = 3
			AND LF.size > DF.size*20/100

		DECLARE @database_id sysname;
		DECLARE @DB_Name sysname;
		DECLARE @Physical_Name sysname
		DECLARE @stmt nvarchar(max);
		DECLARE @DF_size float;


		OPEN CUR;
		FETCH NEXT FROM CUR INTO @database_id, @DB_Name, @Physical_Name, @DF_size
		WHILE @@Fetch_Status = 0
		BEGIN

			SET @stmt =''
				USE [''+@DB_Name+'']
					CHECKPOINT;
					DBCC SHRINKFILE (2,''+CAST(CAST(@DF_size*8/1024*20/100 AS INT) AS VARCHAR(20))+'');
			''
		EXEC (@stmt);

		FETCH NEXT FROM CUR INTO @database_id, @DB_Name, @Physical_Name, @DF_size;

	END

	CLOSE CUR;
	DEALLOCATE CUR;
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	/****** Object:  Step [Purge Old Backup Files]    Script Date: 7/4/2019 5:03:16 PM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Backup Files', 
			@step_id=3, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location C:
	# target path
	$TargetPath = "C:\AIDBA_Backups\Simple\"

	# files to delete more than 14 days
	$Days = 14

	# extension of the file to delete
	$Extension = "*.bak"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)

	# Get files based on lastwrite filter in the specified folder
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Simple Recovery Backup Schedule', 
			@enabled=1, 
			@freq_type=4, 
			@freq_interval=1, 
			@freq_subday_type=1, 
			@freq_subday_interval=0, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=0, 
			@active_start_date=20190101, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'f2b9d3f2-ee87-452a-b10f-216a7f65a3ae'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback_SimpleRecovery
	COMMIT TRANSACTION
	GOTO EndSave_SimpleRecovery
	QuitWithRollback_SimpleRecovery:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
	EndSave_SimpleRecovery:

	