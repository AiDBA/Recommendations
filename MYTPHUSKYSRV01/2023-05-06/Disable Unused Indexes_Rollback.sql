
BEGIN TRY
	ALTER INDEX [IX_EnergySensorData_Timestamp_EnergySensorID]
	ON [FusionOperational].[dbo].[EnergySensorData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_EnergySensorData_Timestamp_EnergySensorID] ON [FusionOperational].[dbo].[EnergySensorData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_EnergySensorData_Timestamp_EnergySensorID] ON [FusionOperational].[dbo].[EnergySensorData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SQCValue_DataSetVariableCycleNumber]
	ON [FusionOperational].[dbo].[SQCValue] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] CANNOT BE ENABLED.';
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
	ALTER INDEX [PK_SecData]
	ON [ReportServer].[dbo].[SecData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] CANNOT BE ENABLED.';
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
	ALTER INDEX [PK_ExecutionCache]
	ON [ReportServerTempDB].[dbo].[ExecutionCache] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ExecutionCache] ON [ReportServerTempDB].[dbo].[ExecutionCache] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ExecutionCache] ON [ReportServerTempDB].[dbo].[ExecutionCache] CANNOT BE ENABLED.';
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
	ALTER INDEX [IX_SetPoint_RunID_RunCycleNumber]
	ON [FusionOperational].[dbo].[SetPoint] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SetPoint_RunID_RunCycleNumber] ON [FusionOperational].[dbo].[SetPoint] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SetPoint_RunID_RunCycleNumber] ON [FusionOperational].[dbo].[SetPoint] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Unique_SQCDataset]
	ON [FusionOperational].[dbo].[SQCDataset] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Unique_SQCDataset] ON [FusionOperational].[dbo].[SQCDataset] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Unique_SQCDataset] ON [FusionOperational].[dbo].[SQCDataset] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [aspnet_Users_Index2]
	ON [ShotscopeNXSecurity].[dbo].[aspnet_Users] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [aspnet_Users_Index2] ON [ShotscopeNXSecurity].[dbo].[aspnet_Users] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [aspnet_Users_Index2] ON [ShotscopeNXSecurity].[dbo].[aspnet_Users] CANNOT BE ENABLED.';
END CATCH;
