
USE [msdb];
IF EXISTS (SELECT * FROM msdb.dbo.sysjobs WHERE [name] = N'AIDBA CHUANSINCACTUS Log Backup')
BEGIN
	EXEC sp_delete_job @job_name = N'AIDBA CHUANSINCACTUS Log Backup';
END
