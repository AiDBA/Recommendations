USE [master];
BEGIN TRY
	ALTER LOGIN [hqjdesys] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [dpa] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [ubaidullah] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [WIN-2VNCOS7AVMH\Administrator] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [replication_12] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [distributor_admin] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [link_12] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [aaronlim] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [alicemis] WITH DEFAULT_DATABASE=[master];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
