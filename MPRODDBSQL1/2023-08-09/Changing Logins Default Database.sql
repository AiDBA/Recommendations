USE [master];
BEGIN TRY
	ALTER LOGIN [hqmt1sys] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [dpa] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [ubaidullah] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [MPRODDB\mfmbk] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [MPRODDB\mtechprodadm] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [link1_230] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [Replication_230] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [aaronlim] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [alicemis] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [distributor_admin] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
