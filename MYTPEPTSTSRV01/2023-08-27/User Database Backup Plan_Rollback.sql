
USE [msdb];
IF EXISTS (SELECT * FROM msdb.dbo.sysjobs WHERE [name] = N'AIDBA REPORT_DB Log Backup')
BEGIN
	EXEC sp_delete_job @job_name = N'AIDBA REPORT_DB Log Backup';
END
