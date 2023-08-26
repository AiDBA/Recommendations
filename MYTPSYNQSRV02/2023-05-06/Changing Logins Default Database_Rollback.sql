USE [master];
BEGIN TRY
	ALTER LOGIN [sa] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [AIDBA] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [SPRITZER\cygoh] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [SPRITZER\Administrator] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
