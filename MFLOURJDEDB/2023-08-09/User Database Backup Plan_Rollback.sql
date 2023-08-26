
USE [msdb];
IF EXISTS (SELECT * FROM msdb.dbo.sysjobs WHERE [name] = N'AIDBA SCHEDULER Log Backup')
BEGIN
	EXEC sp_delete_job @job_name = N'AIDBA SCHEDULER Log Backup';
END
