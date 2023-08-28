
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_EnergySensorData_Timestamp_EnergySensorID')
	BEGIN
	ALTER INDEX [IX_EnergySensorData_Timestamp_EnergySensorID]
	ON [FusionOperational].[dbo].[EnergySensorData] DISABLE;
	PRINT 'INDEX [IX_EnergySensorData_Timestamp_EnergySensorID] ON [FusionOperational].[dbo].[EnergySensorData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_EnergySensorData_Timestamp_EnergySensorID] ON [FusionOperational].[dbo].[EnergySensorData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_SQCValue_DataSetVariableCycleNumber')
	BEGIN
	ALTER INDEX [IX_SQCValue_DataSetVariableCycleNumber]
	ON [FusionOperational].[dbo].[SQCValue] DISABLE;
	PRINT 'INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IS_SnapshotExpiration')
	BEGIN
	ALTER INDEX [IS_SnapshotExpiration]
	ON [ReportServerTempDB].[dbo].[SnapshotData] DISABLE;
	PRINT 'INDEX [IS_SnapshotExpiration] ON [ReportServerTempDB].[dbo].[SnapshotData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IS_SnapshotExpiration] ON [ReportServerTempDB].[dbo].[SnapshotData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_ExecutionCache')
	BEGIN
	ALTER INDEX [PK_ExecutionCache]
	ON [ReportServerTempDB].[dbo].[ExecutionCache] DISABLE;
	PRINT 'INDEX [PK_ExecutionCache] ON [ReportServerTempDB].[dbo].[ExecutionCache] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ExecutionCache] ON [ReportServerTempDB].[dbo].[ExecutionCache] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_History')
	BEGIN
	ALTER INDEX [PK_History]
	ON [ReportServer].[dbo].[History] DISABLE;
	PRINT 'INDEX [PK_History] ON [ReportServer].[dbo].[History] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_History] ON [ReportServer].[dbo].[History] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_ModelItemPolicy')
	BEGIN
	ALTER INDEX [PK_ModelItemPolicy]
	ON [ReportServer].[dbo].[ModelItemPolicy] DISABLE;
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_SecData')
	BEGIN
	ALTER INDEX [PK_SecData]
	ON [ReportServer].[dbo].[SecData] DISABLE;
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_SessionSnapshotID')
	BEGIN
	ALTER INDEX [IX_SessionSnapshotID]
	ON [ReportServerTempDB].[dbo].[SessionData] DISABLE;
	PRINT 'INDEX [IX_SessionSnapshotID] ON [ReportServerTempDB].[dbo].[SessionData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SessionSnapshotID] ON [ReportServerTempDB].[dbo].[SessionData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_SnapshotCleaning')
	BEGIN
	ALTER INDEX [IX_SnapshotCleaning]
	ON [ReportServer].[dbo].[SnapshotData] DISABLE;
	PRINT 'INDEX [IX_SnapshotCleaning] ON [ReportServer].[dbo].[SnapshotData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SnapshotCleaning] ON [ReportServer].[dbo].[SnapshotData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_Cleanup')
	BEGIN
	ALTER INDEX [IX_Cleanup]
	ON [ReportServerTempDB].[dbo].[TempCatalog] DISABLE;
	PRINT 'INDEX [IX_Cleanup] ON [ReportServerTempDB].[dbo].[TempCatalog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Cleanup] ON [ReportServerTempDB].[dbo].[TempCatalog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_DataSetLinkID')
	BEGIN
	ALTER INDEX [IX_DataSetLinkID]
	ON [ReportServerTempDB].[dbo].[TempDataSets] DISABLE;
	PRINT 'INDEX [IX_DataSetLinkID] ON [ReportServerTempDB].[dbo].[TempDataSets] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_DataSetLinkID] ON [ReportServerTempDB].[dbo].[TempDataSets] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_Batch_1')
	BEGIN
	ALTER INDEX [IX_Batch_1]
	ON [ReportServer].[dbo].[Batch] DISABLE;
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_RunningJobsStatus')
	BEGIN
	ALTER INDEX [IX_RunningJobsStatus]
	ON [ReportServer].[dbo].[RunningJobs] DISABLE;
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ContentCache')
	BEGIN
	ALTER INDEX [IX_ContentCache]
	ON [ReportServerTempDB].[dbo].[ContentCache] DISABLE;
	PRINT 'INDEX [IX_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_ContentCache')
	BEGIN
	ALTER INDEX [PK_ContentCache]
	ON [ReportServerTempDB].[dbo].[ContentCache] DISABLE;
	PRINT 'INDEX [PK_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ContentCache] ON [ReportServerTempDB].[dbo].[ContentCache] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'aspnet_Users_Index2')
	BEGIN
	ALTER INDEX [aspnet_Users_Index2]
	ON [ShotscopeNXSecurity].[dbo].[aspnet_Users] DISABLE;
	PRINT 'INDEX [aspnet_Users_Index2] ON [ShotscopeNXSecurity].[dbo].[aspnet_Users] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [aspnet_Users_Index2] ON [ShotscopeNXSecurity].[dbo].[aspnet_Users] CANNOT BE DISABLED.';
END CATCH;
