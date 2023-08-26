
BEGIN TRY
	DROP INDEX [IX_AIDBA_1_20220322]
	ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
	PRINT 'INDEX [IX_AIDBA_1_20220322] ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_1_20220322] ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DROPED.';
END CATCH;

BEGIN TRY
	DROP INDEX [IX_AIDBA_1_20220322]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
	PRINT 'INDEX [IX_AIDBA_1_20220322] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_1_20220322] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DROPED.';
END CATCH;