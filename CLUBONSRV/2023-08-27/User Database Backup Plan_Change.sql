--D
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
EXEC xp_cmdshell 'md D:\AIDBA_Backups\Simple';
EXEC xp_cmdshell 'md D:\AIDBA_Backups\Full';
EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;

DECLARE @ReturnCode INT;
DECLARE @jobId BINARY(16);

	USE [msdb]
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'CMS' and recovery_model = 1)
	BEGIN
	BEGIN TRANSACTION
	/****** Object:  Job [AIDBA CMS Full Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]]    Script Date: 03/01/2019 11:03:37 AM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA CMS Full Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	/****** Object:  Step [Database Integrity + Full Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Database Integrity & Full Backup', 
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
	DECLARE @DB_Name sysname=''CMS'';
	DECLARE @stmt nvarchar(max);
	SELECT @Disk_Full = N''D:\AIDBA_Backups\Full\''+@DB_Name+''_FULL_''+Convert(Nvarchar,SysDateTime(),112)+''.bak'';

	IF EXISTS (SELECT * FROM sys.databases WHERE name = @DB_Name AND (recovery_model = 3 OR state <> 0))
	BEGIN
	RETURN;
	END

	BEGIN TRY
		SET @stmt = ''
		DBCC CHECKDB(N''''''+@DB_Name+'''''')  WITH NO_INFOMSGS
		'';
		EXECUTE ( @stmt);
		BACKUP DATABASE @DB_Name TO DISK = @Disk_Full
		WITH RETAINDAYS = 21, FORMAT, INIT,  COMPRESSION, 
		NAME = @DB_Name, STATS = 10;
	END TRY
	BEGIN CATCH
		DECLARE @ERROR_MESSAGE VARCHAR(MAX);
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE();
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;
	END CATCH

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	/****** Object:  Step [Purge Old Log Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Log Backup', 
			@step_id=2, 
			@cmdexec_success_code=0, 
			@on_success_action=3, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location D:
	$TargetPath = "D:\AIDBA_Backups\Full\"
	$Days = 8
	$Extension = "*.trn"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	/****** Object:  Step [Move to Archive]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Full Backup', 
			@step_id=3, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location D:
	$TargetPath = "D:\AIDBA_Backups\Full\"
	$Days = 30
	$Extension = "*.bak"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Full Backup Schedule', 
			@enabled=1, 
			@freq_type=8, 
			@freq_interval=2, 
			@freq_subday_type=1, 
			@freq_subday_interval=0, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=1, 
			@active_start_date=20190101, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'8ed81aff-f7a3-4cb3-b756-6ee6038bf3b1'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1

	

	/****** Object:  Job [AIDBA CMS Log Backup]    Script Date: 03/01/2019 11:06:51 AM ******/

	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]]    Script Date: 03/01/2019 11:06:51 AM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA CMS Log Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	/****** Object:  Step [Backup Log + Shrink Log]    Script Date: 03/01/2019 11:06:51 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Backup Log + Shrink Log', 
			@step_id=1, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'TSQL', 
			@command=N'SET QUOTED_IDENTIFIER ON

	DECLARE @DB_Name sysname = ''CMS'';
	DECLARE @Disk nvarchar(max);
	-- path for Backup 
		SELECT @Disk = N''D:\AIDBA_Backups\Full\''+@DB_Name+''_Log_''+Convert(Nvarchar,SysDateTime(),112)+''.trn''

	IF EXISTS (SELECT * FROM sys.databases WHERE name = @DB_Name AND (recovery_model = 3 OR state <> 0))
	BEGIN
	RETURN;
	END

	DECLARE @LogSpace TABLE (
		[Database Name] sysname,
		[Log Size (MB)] float,
		[Log Space Used (%)] float,
		[Log Space Used] AS [log size (MB)] * ([log space used (%)]/100.0) PERSISTED , 
		[Status] int);

	INSERT INTO @LogSpace EXEC (''dbcc sqlperf (LOGSPACE)'');
	DECLARE @Log_Size float;
	DECLARE @Log_Used_Perc float;
	DECLARE @Log_Used float;
	DECLARE @Data_Size float;
	DECLARE @stmt nvarchar(max);

	SELECT @Log_Size = [Log Size (MB)], @Log_Used_Perc = [Log Space Used (%)], @Log_Used  = [Log Space Used], @Data_Size = DF.size*8/1024
		FROM @LogSpace LS
		INNER JOIN sys.databases DB
			ON DB.name = LS.[Database Name]
		INNER JOIN (SELECT SUM(size) size,database_id FROM sys.master_files WHERE type = 0 GROUP BY database_id) DF
			ON DF.database_id = DB.database_id
			WHERE LS.[Database Name]= @DB_Name 


	BEGIN TRY
		IF(@Log_Used >= @Log_Size/3)
			BEGIN
				BACKUP LOG @DB_NAME TO  DISK = @Disk
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  
				NAME = @DB_Name,
				SKIP, REWIND, NOUNLOAD,  STATS = 10
	--PRINT ''LOG_USED >= 200''
			END
		ELSE IF((	SELECT TOP 1 DATEDIFF(HH,backup_finish_date,SYSDATETIME()) 
						FROM msdb.dbo.backupset 
							WHERE name = @DB_Name 
							ORDER BY backup_set_id DESC) >= 1 
					OR @Log_Used_Perc >= 50)
			BEGIN
				BACKUP LOG @DB_Name TO  DISK = @Disk 
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  
				NAME = @DB_Name,
				SKIP, REWIND, NOUNLOAD,  STATS = 10
	--PRINT ''LOG_TIME > 1''
			END
		IF( @Log_Size > @Data_Size*20/100 and @Log_Used < @Log_Size/2)
			BEGIN
			SET @stmt = ''
				USE [''+@DB_Name+'']
				DBCC SHRINKFILE (2,''+CAST(CAST(@Data_Size*8/1024*20/100 AS INT) AS VARCHAR(20))+'');
				''
			EXECUTE (@stmt);

			END
	END TRY
	BEGIN CATCH
		DECLARE @ERROR_MESSAGE VARCHAR(MAX)
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE()
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;
	END CATCH

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Log Backup Schedule', 
			@enabled=1, 
			@freq_type=4, 
			@freq_interval=1, 
			@freq_subday_type=4, 
			@freq_subday_interval=1, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=0, 
			@active_start_date=20181226, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'8c663d86-48d3-4695-867a-05e2bf0d0283'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback1
	COMMIT TRANSACTION
	GOTO EndSave1
	QuitWithRollback1:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
	EndSave1:

	END
	
	USE [msdb]
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'CMS_Train' and recovery_model = 1)
	BEGIN
	BEGIN TRANSACTION
	/****** Object:  Job [AIDBA CMS_Train Full Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]]    Script Date: 03/01/2019 11:03:37 AM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA CMS_Train Full Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	/****** Object:  Step [Database Integrity + Full Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Database Integrity & Full Backup', 
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
	DECLARE @DB_Name sysname=''CMS_Train'';
	DECLARE @stmt nvarchar(max);
	SELECT @Disk_Full = N''D:\AIDBA_Backups\Full\''+@DB_Name+''_FULL_''+Convert(Nvarchar,SysDateTime(),112)+''.bak'';

	IF EXISTS (SELECT * FROM sys.databases WHERE name = @DB_Name AND (recovery_model = 3 OR state <> 0))
	BEGIN
	RETURN;
	END

	BEGIN TRY
		SET @stmt = ''
		DBCC CHECKDB(N''''''+@DB_Name+'''''')  WITH NO_INFOMSGS
		'';
		EXECUTE ( @stmt);
		BACKUP DATABASE @DB_Name TO DISK = @Disk_Full
		WITH RETAINDAYS = 21, FORMAT, INIT,  COMPRESSION, 
		NAME = @DB_Name, STATS = 10;
	END TRY
	BEGIN CATCH
		DECLARE @ERROR_MESSAGE VARCHAR(MAX);
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE();
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;
	END CATCH

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	/****** Object:  Step [Purge Old Log Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Log Backup', 
			@step_id=2, 
			@cmdexec_success_code=0, 
			@on_success_action=3, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location D:
	$TargetPath = "D:\AIDBA_Backups\Full\"
	$Days = 8
	$Extension = "*.trn"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	/****** Object:  Step [Move to Archive]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Full Backup', 
			@step_id=3, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location D:
	$TargetPath = "D:\AIDBA_Backups\Full\"
	$Days = 30
	$Extension = "*.bak"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Full Backup Schedule', 
			@enabled=1, 
			@freq_type=8, 
			@freq_interval=2, 
			@freq_subday_type=1, 
			@freq_subday_interval=0, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=1, 
			@active_start_date=20190101, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'8ed81aff-f7a3-4cb3-b756-6ee6038bf3b1'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2

	

	/****** Object:  Job [AIDBA CMS_Train Log Backup]    Script Date: 03/01/2019 11:06:51 AM ******/

	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]]    Script Date: 03/01/2019 11:06:51 AM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA CMS_Train Log Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	/****** Object:  Step [Backup Log + Shrink Log]    Script Date: 03/01/2019 11:06:51 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Backup Log + Shrink Log', 
			@step_id=1, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'TSQL', 
			@command=N'SET QUOTED_IDENTIFIER ON

	DECLARE @DB_Name sysname = ''CMS_Train'';
	DECLARE @Disk nvarchar(max);
	-- path for Backup 
		SELECT @Disk = N''D:\AIDBA_Backups\Full\''+@DB_Name+''_Log_''+Convert(Nvarchar,SysDateTime(),112)+''.trn''

	IF EXISTS (SELECT * FROM sys.databases WHERE name = @DB_Name AND (recovery_model = 3 OR state <> 0))
	BEGIN
	RETURN;
	END

	DECLARE @LogSpace TABLE (
		[Database Name] sysname,
		[Log Size (MB)] float,
		[Log Space Used (%)] float,
		[Log Space Used] AS [log size (MB)] * ([log space used (%)]/100.0) PERSISTED , 
		[Status] int);

	INSERT INTO @LogSpace EXEC (''dbcc sqlperf (LOGSPACE)'');
	DECLARE @Log_Size float;
	DECLARE @Log_Used_Perc float;
	DECLARE @Log_Used float;
	DECLARE @Data_Size float;
	DECLARE @stmt nvarchar(max);

	SELECT @Log_Size = [Log Size (MB)], @Log_Used_Perc = [Log Space Used (%)], @Log_Used  = [Log Space Used], @Data_Size = DF.size*8/1024
		FROM @LogSpace LS
		INNER JOIN sys.databases DB
			ON DB.name = LS.[Database Name]
		INNER JOIN (SELECT SUM(size) size,database_id FROM sys.master_files WHERE type = 0 GROUP BY database_id) DF
			ON DF.database_id = DB.database_id
			WHERE LS.[Database Name]= @DB_Name 


	BEGIN TRY
		IF(@Log_Used >= @Log_Size/3)
			BEGIN
				BACKUP LOG @DB_NAME TO  DISK = @Disk
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  
				NAME = @DB_Name,
				SKIP, REWIND, NOUNLOAD,  STATS = 10
	--PRINT ''LOG_USED >= 200''
			END
		ELSE IF((	SELECT TOP 1 DATEDIFF(HH,backup_finish_date,SYSDATETIME()) 
						FROM msdb.dbo.backupset 
							WHERE name = @DB_Name 
							ORDER BY backup_set_id DESC) >= 1 
					OR @Log_Used_Perc >= 50)
			BEGIN
				BACKUP LOG @DB_Name TO  DISK = @Disk 
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  
				NAME = @DB_Name,
				SKIP, REWIND, NOUNLOAD,  STATS = 10
	--PRINT ''LOG_TIME > 1''
			END
		IF( @Log_Size > @Data_Size*20/100 and @Log_Used < @Log_Size/2)
			BEGIN
			SET @stmt = ''
				USE [''+@DB_Name+'']
				DBCC SHRINKFILE (2,''+CAST(CAST(@Data_Size*8/1024*20/100 AS INT) AS VARCHAR(20))+'');
				''
			EXECUTE (@stmt);

			END
	END TRY
	BEGIN CATCH
		DECLARE @ERROR_MESSAGE VARCHAR(MAX)
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE()
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;
	END CATCH

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Log Backup Schedule', 
			@enabled=1, 
			@freq_type=4, 
			@freq_interval=1, 
			@freq_subday_type=4, 
			@freq_subday_interval=1, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=0, 
			@active_start_date=20181226, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'8c663d86-48d3-4695-867a-05e2bf0d0283'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback2
	COMMIT TRANSACTION
	GOTO EndSave2
	QuitWithRollback2:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
	EndSave2:

	END
	
	USE [msdb]
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'CMSTest19' and recovery_model = 1)
	BEGIN
	BEGIN TRANSACTION
	/****** Object:  Job [AIDBA CMSTest19 Full Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]]    Script Date: 03/01/2019 11:03:37 AM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA CMSTest19 Full Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	/****** Object:  Step [Database Integrity + Full Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Database Integrity & Full Backup', 
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
	DECLARE @DB_Name sysname=''CMSTest19'';
	DECLARE @stmt nvarchar(max);
	SELECT @Disk_Full = N''D:\AIDBA_Backups\Full\''+@DB_Name+''_FULL_''+Convert(Nvarchar,SysDateTime(),112)+''.bak'';

	IF EXISTS (SELECT * FROM sys.databases WHERE name = @DB_Name AND (recovery_model = 3 OR state <> 0))
	BEGIN
	RETURN;
	END

	BEGIN TRY
		SET @stmt = ''
		DBCC CHECKDB(N''''''+@DB_Name+'''''')  WITH NO_INFOMSGS
		'';
		EXECUTE ( @stmt);
		BACKUP DATABASE @DB_Name TO DISK = @Disk_Full
		WITH RETAINDAYS = 21, FORMAT, INIT,  COMPRESSION, 
		NAME = @DB_Name, STATS = 10;
	END TRY
	BEGIN CATCH
		DECLARE @ERROR_MESSAGE VARCHAR(MAX);
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE();
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;
	END CATCH

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	/****** Object:  Step [Purge Old Log Backup]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Log Backup', 
			@step_id=2, 
			@cmdexec_success_code=0, 
			@on_success_action=3, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location D:
	$TargetPath = "D:\AIDBA_Backups\Full\"
	$Days = 8
	$Extension = "*.trn"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	/****** Object:  Step [Move to Archive]    Script Date: 03/01/2019 11:03:37 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Purge Old Full Backup', 
			@step_id=3, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'PowerShell', 
			@command=N'Set-Location D:
	$TargetPath = "D:\AIDBA_Backups\Full\"
	$Days = 30
	$Extension = "*.bak"
	$CurrentDate = Get-Date
	$LastWrite = $CurrentDate.AddDays(-$days)
	$FilesToDeletes = Get-Childitem $targetpath -Include $Extension -Recurse | Where {$_.LastWriteTime -le "$LastWrite"}

	foreach ($File in $FilesToDeletes)
		{
		if ($File -ne $NULL)
			{    
			Remove-Item $File.FullName | out-null
			}
		}
	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Full Backup Schedule', 
			@enabled=1, 
			@freq_type=8, 
			@freq_interval=2, 
			@freq_subday_type=1, 
			@freq_subday_interval=0, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=1, 
			@active_start_date=20190101, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'8ed81aff-f7a3-4cb3-b756-6ee6038bf3b1'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3

	

	/****** Object:  Job [AIDBA CMSTest19 Log Backup]    Script Date: 03/01/2019 11:06:51 AM ******/

	SELECT @ReturnCode = 0
	/****** Object:  JobCategory [[Uncategorized (Local)]]]    Script Date: 03/01/2019 11:06:51 AM ******/
	IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
	BEGIN
	EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3

	END

	SELECT @jobId = NULL
	EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'AIDBA CMSTest19 Log Backup', 
			@enabled=1, 
			@notify_level_eventlog=0, 
			@notify_level_email=0, 
			@notify_level_netsend=0, 
			@notify_level_page=0, 
			@delete_level=0, 
			@description=N'No description available.', 
			@category_name=N'[Uncategorized (Local)]', 
			@owner_login_name=N'AIDBA', @job_id = @jobId OUTPUT
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	/****** Object:  Step [Backup Log + Shrink Log]    Script Date: 03/01/2019 11:06:51 AM ******/
	EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Backup Log + Shrink Log', 
			@step_id=1, 
			@cmdexec_success_code=0, 
			@on_success_action=1, 
			@on_success_step_id=0, 
			@on_fail_action=2, 
			@on_fail_step_id=0, 
			@retry_attempts=0, 
			@retry_interval=0, 
			@os_run_priority=0, @subsystem=N'TSQL', 
			@command=N'SET QUOTED_IDENTIFIER ON

	DECLARE @DB_Name sysname = ''CMSTest19'';
	DECLARE @Disk nvarchar(max);
	-- path for Backup 
		SELECT @Disk = N''D:\AIDBA_Backups\Full\''+@DB_Name+''_Log_''+Convert(Nvarchar,SysDateTime(),112)+''.trn''

	IF EXISTS (SELECT * FROM sys.databases WHERE name = @DB_Name AND (recovery_model = 3 OR state <> 0))
	BEGIN
	RETURN;
	END

	DECLARE @LogSpace TABLE (
		[Database Name] sysname,
		[Log Size (MB)] float,
		[Log Space Used (%)] float,
		[Log Space Used] AS [log size (MB)] * ([log space used (%)]/100.0) PERSISTED , 
		[Status] int);

	INSERT INTO @LogSpace EXEC (''dbcc sqlperf (LOGSPACE)'');
	DECLARE @Log_Size float;
	DECLARE @Log_Used_Perc float;
	DECLARE @Log_Used float;
	DECLARE @Data_Size float;
	DECLARE @stmt nvarchar(max);

	SELECT @Log_Size = [Log Size (MB)], @Log_Used_Perc = [Log Space Used (%)], @Log_Used  = [Log Space Used], @Data_Size = DF.size*8/1024
		FROM @LogSpace LS
		INNER JOIN sys.databases DB
			ON DB.name = LS.[Database Name]
		INNER JOIN (SELECT SUM(size) size,database_id FROM sys.master_files WHERE type = 0 GROUP BY database_id) DF
			ON DF.database_id = DB.database_id
			WHERE LS.[Database Name]= @DB_Name 


	BEGIN TRY
		IF(@Log_Used >= @Log_Size/3)
			BEGIN
				BACKUP LOG @DB_NAME TO  DISK = @Disk
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  
				NAME = @DB_Name,
				SKIP, REWIND, NOUNLOAD,  STATS = 10
	--PRINT ''LOG_USED >= 200''
			END
		ELSE IF((	SELECT TOP 1 DATEDIFF(HH,backup_finish_date,SYSDATETIME()) 
						FROM msdb.dbo.backupset 
							WHERE name = @DB_Name 
							ORDER BY backup_set_id DESC) >= 1 
					OR @Log_Used_Perc >= 50)
			BEGIN
				BACKUP LOG @DB_Name TO  DISK = @Disk 
				WITH  RETAINDAYS = 21, NOFORMAT, NOINIT,  
				NAME = @DB_Name,
				SKIP, REWIND, NOUNLOAD,  STATS = 10
	--PRINT ''LOG_TIME > 1''
			END
		IF( @Log_Size > @Data_Size*20/100 and @Log_Used < @Log_Size/2)
			BEGIN
			SET @stmt = ''
				USE [''+@DB_Name+'']
				DBCC SHRINKFILE (2,''+CAST(CAST(@Data_Size*8/1024*20/100 AS INT) AS VARCHAR(20))+'');
				''
			EXECUTE (@stmt);

			END
	END TRY
	BEGIN CATCH
		DECLARE @ERROR_MESSAGE VARCHAR(MAX)
		SELECT @ERROR_MESSAGE = N''AIDBABackupStrategy: ''+ ERROR_MESSAGE()
		RAISERROR (@ERROR_MESSAGE,10,1) WITH LOG;
	END CATCH

	', 
			@database_name=N'master', 
			@flags=0
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'AIDBA Log Backup Schedule', 
			@enabled=1, 
			@freq_type=4, 
			@freq_interval=1, 
			@freq_subday_type=4, 
			@freq_subday_interval=1, 
			@freq_relative_interval=0, 
			@freq_recurrence_factor=0, 
			@active_start_date=20181226, 
			@active_end_date=99991231, 
			@active_start_time=0, 
			@active_end_time=235959, 
			@schedule_uid=N'8c663d86-48d3-4695-867a-05e2bf0d0283'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
	IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback3
	COMMIT TRANSACTION
	GOTO EndSave3
	QuitWithRollback3:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
	EndSave3:

	END
	