
				EXEC sp_configure 'show advanced options' , 1; Reconfigure with override;
				EXEC sp_configure 'xp_cmdshell' , 1; Reconfigure with override;

		DECLARE @URL_master nvarchar(max);
		SET @URL_master = 'Insert correct URL'

		DECLARE @Azure_Credential_Name_master nvarchar(max);
		SET @Azure_Credential_Name_master = 'Insert Azure Credential Name'

					USE [master];

				IF('AIDBA'  NOT IN(SELECT NAME FROM SYS.syslogins))
				BEGIN
					CREATE LOGIN [AIDBA] WITH PASSWORD=N'Pa$$w0rd', DEFAULT_DATABASE=[tempdb], 
					CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
				END

				EXEC sp_addsrvrolemember 'AIDBA','sysadmin';

					DECLARE @ResultSer_Master TABLE (Directory nvarchar(max));
					INSERT INTO @ResultSer_Master
					EXEC master.dbo.xp_subdirs 'c:\';

				IF('AIDBA_System_Databases_Backups(SQL2016)\Master' NOT IN (SELECT * FROM @ResultSer_Master))
				BEGIN
					EXEC master..xp_cmdshell 'MKDIR C:\AIDBA_System_Databases_Backups(SQL2016)\Master',NO_OUTPUT;
				END
				

				USE [msdb];

				/****** Object:  Job [master database backup]    Script Date: 1/22/2019 1:06:54 PM ******/
				BEGIN TRANSACTION
				DECLARE @ReturnCode_Master INT
				SELECT @ReturnCode_Master = 0
				/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 1/22/2019 1:06:54 PM ******/
				IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
				BEGIN
				EXEC @ReturnCode_Master = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master

				END

				DECLARE @jobId_Master BINARY(16)
				EXEC @ReturnCode_Master =  msdb.dbo.sp_add_job @job_name=N'AIDBA master database backup', 
					@enabled=1, 
					@notify_level_eventlog=0, 
					@notify_level_email=0, 
					@notify_level_netsend=0, 
					@notify_level_page=0, 
					@delete_level=0, 
					@description=N'No description available.', 
					@category_name=N'[Uncategorized (Local)]', 
					@owner_login_name=N'AIDBA', @job_id = @jobId_Master OUTPUT
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
				/****** Object:  Step [master database backup]    Script Date: 1/22/2019 1:06:55 PM ******/
				EXEC @ReturnCode_Master = msdb.dbo.sp_add_jobstep @job_id=@jobId_Master, @step_name=N'master database backup', 
					@step_id=1, 
					@cmdexec_success_code=0, 
					@on_success_action=4, 
					@on_success_step_id=2, 
					@on_fail_action=2, 
					@on_fail_step_id=0, 
					@retry_attempts=0, 
					@retry_interval=0, 
					@os_run_priority=0, @subsystem=N'TSQL', 
					@command=N'DECLARE @File_path varchar(max)
					SET @File_path=''C:\AIDBA_System_Databases_Backups(SQL2016)\Master\master_''+CONVERT(varchar(20),SYSDATETIME(),112)+''.bak''
	
				BACKUP DATABASE master TO DISK = @File_path
				WITH RETAINDAYS = 21, NOFORMAT, NOINIT,  COMPRESSION,
				NAME = ''master'' , STATS = 10;', 
				@database_name=N'master', 
					@flags=0
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
				/****** Object:  Step [Purge old backup files]    Script Date: 1/22/2019 1:06:55 PM ******/
				EXEC @ReturnCode_Master = msdb.dbo.sp_add_jobstep @job_id=@jobId_Master, @step_name=N'Purge old backup files', 
						@step_id=2, 
						@cmdexec_success_code=0, 
						@on_success_action=4, 
						@on_success_step_id=3, 
						@on_fail_action=2, 
						@on_fail_step_id=0, 
						@retry_attempts=0, 
						@retry_interval=0, 
						@os_run_priority=0, @subsystem=N'PowerShell', 
						@command=N'# target path
				$TargetPath = "C:\AIDBA_System_Databases_Backups(SQL2016)\Master\"

				# files to delete more than 7 days
				$Days = 7

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
					}
					', 
						@database_name=N'master', 
						@flags=0
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
				EXEC @ReturnCode_Master = msdb.dbo.sp_update_job @job_id = @jobId_Master, @start_step_id = 1
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
				EXEC @ReturnCode_Master = msdb.dbo.sp_add_jobschedule @job_id=@jobId_Master, @name=N'master database backkup schedule', 
					@enabled=1, 
					@freq_type=4, 
					@freq_interval=1, 
					@freq_subday_type=8, 
					@freq_subday_interval=3, 
					@freq_relative_interval=0, 
					@freq_recurrence_factor=0, 
					@active_start_date=20190118, 
					@active_end_date=99991231, 
					@active_start_time=0, 
					@active_end_time=235959
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
				EXEC @ReturnCode_Master = msdb.dbo.sp_add_jobserver @job_id = @jobId_Master, @server_name = N'(local)'
				IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
				COMMIT TRANSACTION
				GOTO EndSave_Master
				QuitWithRollback_Master:
					 IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
				EndSave_Master:

		IF (@URL_master <> 'Insert correct URL' AND @Azure_Credential_Name_master <> 'Insert Azure Credential Name')
			BEGIN
			DECLARE @Stmt_master nvarchar(max);
			SET @Stmt_master ='
			USE msdb;

				EXEC msdb.dbo.sp_add_jobstep @job_name=N''AIDBA master database backup'' ,@step_name=N''Backup to Cloud'', 
					@step_id=3, 
					@cmdexec_success_code=0, 
					@on_success_action=1, 
					@on_fail_action=2, 
					@retry_attempts=0, 
					@retry_interval=0, 
					@os_run_priority=0, @subsystem=N''TSQL'', 
					@command=N''BACKUP DATABASE master TO URL = '''''+@URL_master+'''''
				WITH CREDENTIAL = '''''+@Azure_Credential_Name_master+''''';'', 
				@database_name=N''master'', 
				@flags=0'

		EXEC (@Stmt_master)
			END
				
				
		DECLARE @URL_msdb nvarchar(max);
		SET @URL_msdb = 'Insert correct URL'

		DECLARE @Azure_Credential_Name_msdb nvarchar(max);
		SET @Azure_Credential_Name_msdb = 'Insert Azure Credential Name'


				USE [master];

				IF('AIDBA'  NOT IN(SELECT NAME FROM SYS.syslogins))
				BEGIN
					CREATE LOGIN [AIDBA] WITH PASSWORD=N'Pa$$w0rd', DEFAULT_DATABASE=[tempdb], 
					CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
				END
				EXEC sp_addsrvrolemember 'AIDBA','sysadmin';

					DECLARE @ResultSer_MSDB TABLE (Directory nvarchar(max));
					INSERT INTO @ResultSer_MSDB
					EXEC master.dbo.xp_subdirs 'c:\';

				IF('AIDBA_System_Databases_Backups(SQL2016)\Msdb' NOT IN (SELECT * FROM @ResultSer_MSDB))
				BEGIN
					EXEC master..xp_cmdshell 'MKDIR C:\AIDBA_System_Databases_Backups(SQL2016)\Msdb',NO_OUTPUT;
				END


				USE [msdb];

				/****** Object:  Job [msdb database backup]    Script Date: 1/22/2019 1:06:54 PM ******/
				BEGIN TRANSACTION
				DECLARE @ReturnCode_MSDB INT
				SELECT @ReturnCode_MSDB = 0
				/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 1/22/2019 1:06:54 PM ******/
				IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
				BEGIN
				EXEC @ReturnCode_MSDB = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB

				END

				DECLARE @jobId_MSDB BINARY(16)
				EXEC @ReturnCode_MSDB =  msdb.dbo.sp_add_job @job_name=N'AIDBA msdb database backup', 
					@enabled=1, 
					@notify_level_eventlog=0, 
					@notify_level_email=0, 
					@notify_level_netsend=0, 
					@notify_level_page=0, 
					@delete_level=0, 
					@description=N'No description available.', 
					@category_name=N'[Uncategorized (Local)]', 
					@owner_login_name=N'AIDBA', @job_id = @jobId_MSDB OUTPUT
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
				/****** Object:  Step [msdb database backup]    Script Date: 1/22/2019 1:06:55 PM ******/
				EXEC @ReturnCode_MSDB = msdb.dbo.sp_add_jobstep @job_id=@jobId_MSDB, @step_name=N'msdb database backup', 
					@step_id=1, 
					@cmdexec_success_code=0, 
					@on_success_action=4, 
					@on_success_step_id=2, 
					@on_fail_action=2, 
					@on_fail_step_id=0, 
					@retry_attempts=0, 
					@retry_interval=0, 
					@os_run_priority=0, @subsystem=N'TSQL', 
					@command=N'DECLARE @File_path varchar(max)
					SET @File_path=''C:\AIDBA_System_Databases_Backups(SQL2016)\Msdb\msdb_''+CONVERT(varchar(20),SYSDATETIME(),112)+''.bak''
	
				BACKUP DATABASE msdb TO DISK = @File_path
				WITH RETAINDAYS = 21, NOFORMAT, NOINIT,  COMPRESSION,
				NAME = ''msdb'' , STATS = 10;', 
				@database_name=N'msdb', 
					@flags=0
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
				/****** Object:  Step [Purge old backup files]    Script Date: 1/22/2019 1:06:55 PM ******/
				EXEC @ReturnCode_MSDB = msdb.dbo.sp_add_jobstep @job_id=@jobId_MSDB, @step_name=N'Purge old backup files', 
						@step_id=2, 
						@cmdexec_success_code=0, 
						@on_success_action=4, 
						@on_success_step_id=3, 
						@on_fail_action=2, 
						@on_fail_step_id=0, 
						@retry_attempts=0, 
						@retry_interval=0, 
						@os_run_priority=0, @subsystem=N'PowerShell', 
						@command=N'# target path
				$TargetPath = "C:\AIDBA_System_Databases_Backups(SQL2016)\Msdb\"

				# files to delete more than 7 days
				$Days = 7

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
					}
					', 
						@database_name=N'msdb', 
						@flags=0
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
				EXEC @ReturnCode_MSDB = msdb.dbo.sp_update_job @job_id = @jobId_MSDB, @start_step_id = 1
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
				EXEC @ReturnCode_MSDB = msdb.dbo.sp_add_jobschedule @job_id=@jobId_MSDB, @name=N'msdb database backkup schedule', 
					@enabled=1, 
					@freq_type=4, 
					@freq_interval=1, 
					@freq_subday_type=8, 
					@freq_subday_interval=3, 
					@freq_relative_interval=0, 
					@freq_recurrence_factor=0, 
					@active_start_date=20190118, 
					@active_end_date=99991231, 
					@active_start_time=0, 
					@active_end_time=235959
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
				EXEC @ReturnCode_MSDB = msdb.dbo.sp_add_jobserver @job_id = @jobId_MSDB, @server_name = N'(local)'
				IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
				COMMIT TRANSACTION
				GOTO EndSave_MSDB
				QuitWithRollback_MSDB:
					 IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
				EndSave_MSDB:

		IF (@URL_msdb <> 'Insert correct URL' AND @Azure_Credential_Name_msdb <> 'Insert Azure Credential Name')
			BEGIN
			DECLARE @Stmt_msdb nvarchar(max);
			SET @Stmt_msdb ='
			USE msdb;

				EXEC msdb.dbo.sp_add_jobstep @job_name=N''AIDBA msdb database backup'' ,@step_name=N''Backup to Cloud'', 
					@step_id=3, 
					@cmdexec_success_code=0, 
					@on_success_action=1, 
					@on_fail_action=2, 
					@retry_attempts=0, 
					@retry_interval=0, 
					@os_run_priority=0, @subsystem=N''TSQL'', 
					@command=N''BACKUP DATABASE msdb TO URL = '''''+@URL_msdb+'''''
				WITH CREDENTIAL = '''''+@Azure_Credential_Name_msdb+''''';'', 
				@database_name=N''msdb'', 
				@flags=0'

		EXEC (@Stmt_msdb)
			END
				
				DECLARE @URL_model nvarchar(max);
		SET @URL_model = 'Insert correct URL'

		DECLARE @Azure_Credential_Name_model nvarchar(max);
		SET @Azure_Credential_Name_model = 'Insert Azure Credential Name'


				USE [master];

				IF('AIDBA'  NOT IN(SELECT NAME FROM SYS.syslogins))
				BEGIN
					CREATE LOGIN [AIDBA] WITH PASSWORD=N'Pa$$w0rd', DEFAULT_DATABASE=[tempdb], 
					CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
				END
				EXEC sp_addsrvrolemember 'AIDBA','sysadmin';

					DECLARE @ResultSer_Model TABLE (Directory nvarchar(max));
					INSERT INTO @ResultSer_Model
					EXEC master.dbo.xp_subdirs 'c:\';

				IF('AIDBA_System_Databases_Backups(SQL2016)\Model' NOT IN (SELECT * FROM @ResultSer_Model))
				BEGIN
					EXEC master..xp_cmdshell 'MKDIR C:\AIDBA_System_Databases_Backups(SQL2016)\Model',NO_OUTPUT;
				END


				USE [msdb];

				/****** Object:  Job [model database backup]    Script Date: 1/22/2019 1:06:54 PM ******/
				BEGIN TRANSACTION
				DECLARE @ReturnCode_Model INT
				SELECT @ReturnCode_Model = 0
				/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 1/22/2019 1:06:54 PM ******/
				IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
				BEGIN
				EXEC @ReturnCode_Model = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model

				END

				DECLARE @jobId_Model BINARY(16)
				EXEC @ReturnCode_Model =  msdb.dbo.sp_add_job @job_name=N'AIDBA model database backup', 
					@enabled=1, 
					@notify_level_eventlog=0, 
					@notify_level_email=0, 
					@notify_level_netsend=0, 
					@notify_level_page=0, 
					@delete_level=0, 
					@description=N'No description available.', 
					@category_name=N'[Uncategorized (Local)]', 
					@owner_login_name=N'AIDBA', @job_id = @jobId_Model OUTPUT
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
				/****** Object:  Step [model database backup]    Script Date: 1/22/2019 1:06:55 PM ******/
				EXEC @ReturnCode_Model = msdb.dbo.sp_add_jobstep @job_id=@jobId_Model, @step_name=N'model database backup', 
					@step_id=1, 
					@cmdexec_success_code=0, 
					@on_success_action=4, 
					@on_success_step_id=2, 
					@on_fail_action=2, 
					@on_fail_step_id=0, 
					@retry_attempts=0, 
					@retry_interval=0, 
					@os_run_priority=0, @subsystem=N'TSQL', 
					@command=N'DECLARE @File_path varchar(max)
					SET @File_path=''C:\AIDBA_System_Databases_Backups(SQL2016)\Model\model_''+CONVERT(varchar(20),SYSDATETIME(),112)+''.bak''
	
				BACKUP DATABASE model TO DISK = @File_path
				WITH RETAINDAYS = 21, NOFORMAT, NOINIT,  COMPRESSION,
				NAME = ''model'' , STATS = 10;', 
				@database_name=N'model', 
					@flags=0
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
				/****** Object:  Step [Purge old backup files]    Script Date: 1/22/2019 1:06:55 PM ******/
				EXEC @ReturnCode_Model = msdb.dbo.sp_add_jobstep @job_id=@jobId_Model, @step_name=N'Purge old backup files', 
						@step_id=2, 
						@cmdexec_success_code=0, 
						@on_success_action=4, 
						@on_success_step_id=3, 
						@on_fail_action=2, 
						@on_fail_step_id=0, 
						@retry_attempts=0, 
						@retry_interval=0, 
						@os_run_priority=0, @subsystem=N'PowerShell', 
						@command=N'# target path
				$TargetPath = "C:\AIDBA_System_Databases_Backups(SQL2016)\Model\"

				# files to delete more than 7 days
				$Days = 7

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
					}
					', 
						@database_name=N'Model', 
						@flags=0
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
				EXEC @ReturnCode_Model = msdb.dbo.sp_update_job @job_id = @jobId_Model, @start_step_id = 1
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
				EXEC @ReturnCode_Model = msdb.dbo.sp_add_jobschedule @job_id=@jobId_Model, @name=N'model database backkup schedule', 
					@enabled=1, 
					@freq_type=4, 
					@freq_interval=1, 
					@freq_subday_type=8, 
					@freq_subday_interval=3, 
					@freq_relative_interval=0, 
					@freq_recurrence_factor=0, 
					@active_start_date=20190118, 
					@active_end_date=99991231, 
					@active_start_time=0, 
					@active_end_time=235959
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
				EXEC @ReturnCode_Model = msdb.dbo.sp_add_jobserver @job_id = @jobId_Model, @server_name = N'(local)'
				IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
				COMMIT TRANSACTION
				GOTO EndSave_Model
				QuitWithRollback_Model:
					 IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
				EndSave_Model:

		IF (@URL_model <> 'Insert correct URL' AND @Azure_Credential_Name_model  <> 'Insert Azure Credential Name')
			BEGIN
			DECLARE @Stmt_model  nvarchar(max);
			SET @Stmt_model  ='
			USE msdb;

				EXEC msdb.dbo.sp_add_jobstep @job_name=N''AIDBA model database backup'' ,@step_name=N''Backup to Cloud'', 
					@step_id=3, 
					@cmdexec_success_code=0, 
					@on_success_action=1, 
					@on_fail_action=2, 
					@retry_attempts=0, 
					@retry_interval=0, 
					@os_run_priority=0, @subsystem=N''TSQL'', 
					@command=N''BACKUP DATABASE model TO URL = '''''+@URL_model+'''''
				WITH CREDENTIAL = '''''+@Azure_Credential_Name_model+''''';'', 
				@database_name=N''model'', 
				@flags=0'

		EXEC (@Stmt_model)
			END
				
			EXEC sp_configure 'xp_cmdshell' , 0; Reconfigure with override;
			EXEC sp_configure 'show advanced options' , 0; Reconfigure with override;