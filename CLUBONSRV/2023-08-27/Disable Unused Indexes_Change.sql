
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_mrmSalesMaster')
	BEGIN
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOn].[dbo].[mrmSalesMaster] DISABLE;
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn].[dbo].[mrmSalesMaster] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn].[dbo].[mrmSalesMaster] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_mrmSalesMaster')
	BEGIN
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOnTest].[dbo].[mrmSalesMaster] DISABLE;
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOnTest].[dbo].[mrmSalesMaster] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOnTest].[dbo].[mrmSalesMaster] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_mrmSalesMaster')
	BEGIN
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOn99].[dbo].[mrmSalesMaster] DISABLE;
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn99].[dbo].[mrmSalesMaster] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOn99].[dbo].[mrmSalesMaster] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_mrmSalesMaster')
	BEGIN
	ALTER INDEX [IX_mrmSalesMaster]
	ON [ClubOnTest19].[dbo].[mrmSalesMaster] DISABLE;
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOnTest19].[dbo].[mrmSalesMaster] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_mrmSalesMaster] ON [ClubOnTest19].[dbo].[mrmSalesMaster] CANNOT BE DISABLED.';
END CATCH;
