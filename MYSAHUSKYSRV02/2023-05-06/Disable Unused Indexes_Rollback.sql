
BEGIN TRY
	ALTER INDEX [IX_SQCValue_DataSetVariableCycleNumber]
	ON [FusionOperational].[dbo].[SQCValue] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Downtime_Mc_J_PS_ST_ET]
	ON [FusionOperational].[dbo].[Downtime] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Downtime_Mc_J_PS_ST_ET] ON [FusionOperational].[dbo].[Downtime] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Downtime_Mc_J_PS_ST_ET] ON [FusionOperational].[dbo].[Downtime] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IS_SnapshotExpiration]
	ON [ReportServerTempDB].[dbo].[SnapshotData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IS_SnapshotExpiration] ON [ReportServerTempDB].[dbo].[SnapshotData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IS_SnapshotExpiration] ON [ReportServerTempDB].[dbo].[SnapshotData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_ExecutionCache]
	ON [ReportServerTempDB].[dbo].[ExecutionCache] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ExecutionCache] ON [ReportServerTempDB].[dbo].[ExecutionCache] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ExecutionCache] ON [ReportServerTempDB].[dbo].[ExecutionCache] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK__aspnet_R__8AFACE1B4222D4EF]
	ON [ShotscopeNXSecurity].[dbo].[aspnet_Roles] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK__aspnet_R__8AFACE1B4222D4EF] ON [ShotscopeNXSecurity].[dbo].[aspnet_Roles] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK__aspnet_R__8AFACE1B4222D4EF] ON [ShotscopeNXSecurity].[dbo].[aspnet_Roles] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_ModelItemPolicy]
	ON [ReportServer].[dbo].[ModelItemPolicy] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_History]
	ON [ReportServer].[dbo].[History] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_History] ON [ReportServer].[dbo].[History] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_History] ON [ReportServer].[dbo].[History] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_SecData]
	ON [ReportServer].[dbo].[SecData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_AppLog_M_J_T]
	ON [FusionOperational].[dbo].[ApplicationLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_AppLog_M_J_T] ON [FusionOperational].[dbo].[ApplicationLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_AppLog_M_J_T] ON [FusionOperational].[dbo].[ApplicationLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SessionSnapshotID]
	ON [ReportServerTempDB].[dbo].[SessionData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SessionSnapshotID] ON [ReportServerTempDB].[dbo].[SessionData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SessionSnapshotID] ON [ReportServerTempDB].[dbo].[SessionData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SnapshotCleaning]
	ON [ReportServer].[dbo].[SnapshotData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SnapshotCleaning] ON [ReportServer].[dbo].[SnapshotData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SnapshotCleaning] ON [ReportServer].[dbo].[SnapshotData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_DataSetLinkID]
	ON [ReportServerTempDB].[dbo].[TempDataSets] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_DataSetLinkID] ON [ReportServerTempDB].[dbo].[TempDataSets] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_DataSetLinkID] ON [ReportServerTempDB].[dbo].[TempDataSets] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Cleanup]
	ON [ReportServerTempDB].[dbo].[TempCatalog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Cleanup] ON [ReportServerTempDB].[dbo].[TempCatalog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Cleanup] ON [ReportServerTempDB].[dbo].[TempCatalog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_ContentCache]
	ON [ReportServerTempDB].[dbo].[ContentCache] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ContentCache]
	ON [ReportServerTempDB].[dbo].[ContentCache] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_RunningJobsStatus]
	ON [ReportServer].[dbo].[RunningJobs] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Batch_1]
	ON [ReportServer].[dbo].[Batch] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Unique_PartNumber]
	ON [FusionOperational].[dbo].[Part] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Unique_PartNumber] ON [FusionOperational].[dbo].[Part] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Unique_PartNumber] ON [FusionOperational].[dbo].[Part] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Unique_SQCDataset]
	ON [FusionOperational].[dbo].[SQCDataset] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Unique_SQCDataset] ON [FusionOperational].[dbo].[SQCDataset] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Unique_SQCDataset] ON [FusionOperational].[dbo].[SQCDataset] CANNOT BE ENABLED.';
END CATCH;
