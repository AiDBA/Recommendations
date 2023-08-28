
----------FusionDW---------
USE [FusionDW];
IF EXISTS (SELECT 1 FROM sys.database_audit_specifications WHERE [name] = 'AIDBA_AUDIT')
BEGIN
	ALTER DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT] WITH (STATE = OFF);
	DROP DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT];
END
	
----------FusionOperational---------
USE [FusionOperational];
IF EXISTS (SELECT 1 FROM sys.database_audit_specifications WHERE [name] = 'AIDBA_AUDIT')
BEGIN
	ALTER DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT] WITH (STATE = OFF);
	DROP DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT];
END
	
----------ReportServer---------
USE [ReportServer];
IF EXISTS (SELECT 1 FROM sys.database_audit_specifications WHERE [name] = 'AIDBA_AUDIT')
BEGIN
	ALTER DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT] WITH (STATE = OFF);
	DROP DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT];
END
	
----------ReportServerTempDB---------
USE [ReportServerTempDB];
IF EXISTS (SELECT 1 FROM sys.database_audit_specifications WHERE [name] = 'AIDBA_AUDIT')
BEGIN
	ALTER DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT] WITH (STATE = OFF);
	DROP DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT];
END
	
----------ShotscopeNXSecurity---------
USE [ShotscopeNXSecurity];
IF EXISTS (SELECT 1 FROM sys.database_audit_specifications WHERE [name] = 'AIDBA_AUDIT')
BEGIN
	ALTER DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT] WITH (STATE = OFF);
	DROP DATABASE AUDIT SPECIFICATION [AIDBA_AUDIT];
END
	
USE [master];
ALTER SERVER AUDIT [AIDBA_AUDIT] WITH ( STATE = ON);
DROP SERVER AUDIT [AIDBA_AUDIT];

USE [master];
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'rmdir /Q /S D:\AIDBA_AUDIT';
/*EXEC sp_configure 'xp_cmdshell','0';*/
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;