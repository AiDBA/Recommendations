USE [master];
BEGIN TRY
	ALTER LOGIN [SPRITZER\ylooi] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [SPRITZER\ylooi] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [SPRITZER\alexlim] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
