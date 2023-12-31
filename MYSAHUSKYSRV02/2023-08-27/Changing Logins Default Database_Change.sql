USE [master];
BEGIN TRY
	ALTER LOGIN [sa] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [MYSA-HUSKYSRV02\Administrator] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [AIDBA] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [SPRITZER\cygoh] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
