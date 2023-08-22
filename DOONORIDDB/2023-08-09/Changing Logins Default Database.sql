USE [master];
BEGIN TRY
	ALTER LOGIN [stwmtsys] WITH DEFAULT_DATABASE=[tempdb];
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
	ALTER LOGIN [edataadmin] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [edatacons] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [link_92] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [link_edata] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [DPPMPRODDB\ecounsultant] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [DPPMPRODDB11\SqlService] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [DPPMPRODDB\admin] WITH DEFAULT_DATABASE=[tempdb];
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

BEGIN TRY
	ALTER LOGIN [aaronlim] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [Ubaidullah] WITH DEFAULT_DATABASE=[tempdb];
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
	ALTER LOGIN [Fard] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [link1_92] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH

BEGIN TRY
	ALTER LOGIN [DPPMPRODDB\Administrator] WITH DEFAULT_DATABASE=[tempdb];
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
