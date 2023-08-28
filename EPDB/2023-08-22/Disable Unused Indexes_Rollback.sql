
BEGIN TRY
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[LicUser] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[LicUser] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[LicUser] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByLastUse]
	ON [epicor905].[dbo].[LicUser] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByLastUse] ON [epicor905].[dbo].[LicUser] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByLastUse] ON [epicor905].[dbo].[LicUser] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [LastDate]
	ON [epicor905].[dbo].[LicUser] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [LastDate] ON [epicor905].[dbo].[LicUser] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [LastDate] ON [epicor905].[dbo].[LicUser] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByTableDateTime]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByTypeComp]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByUserCompDateTime]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByUserCompDateTime] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByUserCompDateTime] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByCompType]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByDateTimeUserType]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ByTableCompType]
	ON [epicor905].[dbo].[SysActivityLog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[UserFile] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[UserFile] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[UserFile] CANNOT BE ENABLED.';
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
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[SysTaskParam] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysTaskParam] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysTaskParam] CANNOT BE ENABLED.';
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
	ALTER INDEX [IX_SnapshotCleaning]
	ON [ReportServer].[dbo].[SnapshotData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SnapshotCleaning] ON [ReportServer].[dbo].[SnapshotData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SnapshotCleaning] ON [ReportServer].[dbo].[SnapshotData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_ChunkData]
	ON [ReportServer].[dbo].[ChunkData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ChunkData] ON [ReportServer].[dbo].[ChunkData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ChunkData] ON [ReportServer].[dbo].[ChunkData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_ConfigurationInfo]
	ON [ReportServer].[dbo].[ConfigurationInfo] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ConfigurationInfo] ON [ReportServer].[dbo].[ConfigurationInfo] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ConfigurationInfo] ON [ReportServer].[dbo].[ConfigurationInfo] CANNOT BE ENABLED.';
END CATCH;
