
USE [msdb];
IF EXISTS (SELECT * FROM msdb.dbo.sysjobs WHERE [name] = N'AIDBA CMSTest19 Log Backup')
BEGIN
	EXEC sp_delete_job @job_name = N'AIDBA CMSTest19 Log Backup';
END
