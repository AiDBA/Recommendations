
BEGIN TRY
	DROP INDEX [IX_AIDBA_7_20220830]
	ON [VeeamOne].[monitor].[BpRestorePointRaw];
	PRINT 'INDEX [IX_AIDBA_7_20220830] ON [VeeamOne].[monitor].[BpRestorePointRaw] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_7_20220830] ON [VeeamOne].[monitor].[BpRestorePointRaw] CANNOT BE DROPED.';
END CATCH;

BEGIN TRY
	DROP INDEX [IX_AIDBA_9_20220908]
	ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT];
	PRINT 'INDEX [IX_AIDBA_9_20220908] ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_9_20220908] ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] CANNOT BE DROPED.';
END CATCH;

BEGIN TRY
	DROP INDEX [IX_AIDBA_10_20220830]
	ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA];
	PRINT 'INDEX [IX_AIDBA_10_20220830] ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_10_20220830] ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] CANNOT BE DROPED.';
END CATCH;
