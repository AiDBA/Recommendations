
BEGIN TRY
	DROP INDEX [IX_AIDBA_4_20220820]
	ON [FusionOperational].[dbo].[Cycle];
	PRINT 'INDEX [IX_AIDBA_4_20220820] ON [FusionOperational].[dbo].[Cycle] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_4_20220820] ON [FusionOperational].[dbo].[Cycle] CANNOT BE DROPED.';
END CATCH;

BEGIN TRY
	DROP INDEX [IX_AIDBA_PK_OBJECTCACHE]
	ON [FusionOperational].[dbo].[ObjectCache];
	PRINT 'INDEX [IX_AIDBA_PK_OBJECTCACHE] ON [FusionOperational].[dbo].[ObjectCache] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_PK_OBJECTCACHE] ON [FusionOperational].[dbo].[ObjectCache] CANNOT BE DROPED.';
END CATCH;

BEGIN TRY
	DROP INDEX [IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON]
	ON [FusionOperational].[dbo].[DowntimeAssignedReason];
	PRINT 'INDEX [IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] ON [FusionOperational].[dbo].[DowntimeAssignedReason] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] ON [FusionOperational].[dbo].[DowntimeAssignedReason] CANNOT BE DROPED.';
END CATCH;

BEGIN TRY
	DROP INDEX [IX_AIDBA_8_20220820]
	ON [FusionOperational].[dbo].[DowntimeAssignedReason];
	PRINT 'INDEX [IX_AIDBA_8_20220820] ON [FusionOperational].[dbo].[DowntimeAssignedReason] IS DROPED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AIDBA_8_20220820] ON [FusionOperational].[dbo].[DowntimeAssignedReason] CANNOT BE DROPED.';
END CATCH;
