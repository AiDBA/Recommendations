
USE [msdb];

/****** Object:  Job [master database backup] ******/
BEGIN TRANSACTION
	DECLARE @ReturnCode_Master INT
	SELECT @ReturnCode_Master = 0
	IF EXISTS (SELECT name FROM msdb.dbo.sysjobs WHERE name=N'AIDBA master database backup')
	BEGIN
		EXEC @ReturnCode_Master = msdb.dbo.sp_delete_job @job_name=N'AIDBA master database backup';
		IF (@@ERROR <> 0 OR @ReturnCode_Master <> 0) GOTO QuitWithRollback_Master
	END
COMMIT TRANSACTION
GOTO EndSave_Master
QuitWithRollback_Master:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave_Master:

USE [msdb];

/****** Object:  Job [msdb database backup] ******/
BEGIN TRANSACTION
	DECLARE @ReturnCode_MSDB INT
	SELECT @ReturnCode_MSDB = 0
	IF EXISTS (SELECT name FROM msdb.dbo.sysjobs WHERE name=N'AIDBA msdb database backup')
	BEGIN
		EXEC @ReturnCode_MSDB = msdb.dbo.sp_delete_job @job_name=N'AIDBA msdb database backup'
		IF (@@ERROR <> 0 OR @ReturnCode_MSDB <> 0) GOTO QuitWithRollback_MSDB
	END
COMMIT TRANSACTION
GOTO EndSave_MSDB
QuitWithRollback_MSDB:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave_MSDB:

USE [msdb];

/****** Object:  Job [model database backup] ******/
BEGIN TRANSACTION
	DECLARE @ReturnCode_Model INT
	SELECT @ReturnCode_Model = 0
	IF EXISTS (SELECT name FROM msdb.dbo.sysjobs WHERE name=N'AIDBA model database backup')
	BEGIN
		EXEC @ReturnCode_Model = msdb.dbo.sp_delete_job @job_name=N'AIDBA model database backup'
		IF (@@ERROR <> 0 OR @ReturnCode_Model <> 0) GOTO QuitWithRollback_Model
	END
COMMIT TRANSACTION
GOTO EndSave_Model
QuitWithRollback_Model:
		IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave_Model:
