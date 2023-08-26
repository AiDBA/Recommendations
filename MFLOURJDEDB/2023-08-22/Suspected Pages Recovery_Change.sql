				
EXEC sp_configure 'show advanced options' , 1; Reconfigure with override;
EXEC sp_configure 'xp_cmdshell' , 1; Reconfigure with override;
BEGIN TRY
	ALTER DATABASE [JDE_PRODUCTION] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DBCC CHECKDB ([JDE_PRODUCTION] , REPAIR_REBUILD) WITH NO_INFOMSGS;
	ALTER DATABASE [JDE_PRODUCTION] SET MULTI_USER;
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
PRINT '===========================================================================';

EXEC sp_configure 'xp_cmdshell' , 0; Reconfigure with override;
EXEC sp_configure 'show advanced options' , 0; Reconfigure with override;
