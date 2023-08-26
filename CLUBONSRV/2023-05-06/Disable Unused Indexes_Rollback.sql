
BEGIN TRY
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOn].[dbo].[mrmSalesMaster] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn].[dbo].[mrmSalesMaster] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn].[dbo].[mrmSalesMaster] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOnTest].[dbo].[mrmSalesMaster] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOnTest].[dbo].[mrmSalesMaster] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOnTest].[dbo].[mrmSalesMaster] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOn_Train].[dbo].[mrmSalesMaster] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn_Train].[dbo].[mrmSalesMaster] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn_Train].[dbo].[mrmSalesMaster] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOn99].[dbo].[mrmSalesMaster] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn99].[dbo].[mrmSalesMaster] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn99].[dbo].[mrmSalesMaster] CANNOT BE ENABLED.';
END CATCH;
