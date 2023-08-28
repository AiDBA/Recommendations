
USE [msdb];
IF EXISTS (SELECT * FROM msdb.dbo.sysjobs WHERE [name] = N'AIDBA ShotscopeNXSecurity Log Backup')
BEGIN
	EXEC sp_delete_job @job_name = N'AIDBA ShotscopeNXSecurity Log Backup';
END
