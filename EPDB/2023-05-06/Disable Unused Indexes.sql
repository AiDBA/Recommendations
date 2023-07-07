
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'SysIndex')
	BEGIN
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[LicUser] DISABLE;
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[LicUser] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[LicUser] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByLastUse')
	BEGIN
	ALTER INDEX [ByLastUse]
	ON [epicor905].[dbo].[LicUser] DISABLE;
	PRINT 'INDEX [ByLastUse] ON [epicor905].[dbo].[LicUser] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByLastUse] ON [epicor905].[dbo].[LicUser] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'LastDate')
	BEGIN
	ALTER INDEX [LastDate]
	ON [epicor905].[dbo].[LicUser] DISABLE;
	PRINT 'INDEX [LastDate] ON [epicor905].[dbo].[LicUser] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [LastDate] ON [epicor905].[dbo].[LicUser] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByTableDateTime')
	BEGIN
	ALTER INDEX [ByTableDateTime]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByTableDateTime] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByTypeComp')
	BEGIN
	ALTER INDEX [ByTypeComp]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByTypeComp] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByUserCompDateTime')
	BEGIN
	ALTER INDEX [ByUserCompDateTime]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [ByUserCompDateTime] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByUserCompDateTime] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'SysIndex')
	BEGIN
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByCompType')
	BEGIN
	ALTER INDEX [ByCompType]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByCompType] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByDateTimeUserType')
	BEGIN
	ALTER INDEX [ByDateTimeUserType]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByDateTimeUserType] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ByTableCompType')
	BEGIN
	ALTER INDEX [ByTableCompType]
	ON [epicor905].[dbo].[SysActivityLog] DISABLE;
	PRINT 'INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ByTableCompType] ON [epicor905].[dbo].[SysActivityLog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'SysIndex')
	BEGIN
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[UserFile] DISABLE;
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[UserFile] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[UserFile] CANNOT BE DISABLED.';
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
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'SysIndex')
	BEGIN
	ALTER INDEX [SysIndex]
	ON [epicor905].[dbo].[SysTaskParam] DISABLE;
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysTaskParam] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [SysIndex] ON [epicor905].[dbo].[SysTaskParam] CANNOT BE DISABLED.';
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
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_ChunkData')
	BEGIN
	ALTER INDEX [PK_ChunkData]
	ON [ReportServer].[dbo].[ChunkData] DISABLE;
	PRINT 'INDEX [PK_ChunkData] ON [ReportServer].[dbo].[ChunkData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ChunkData] ON [ReportServer].[dbo].[ChunkData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_ConfigurationInfo')
	BEGIN
	ALTER INDEX [PK_ConfigurationInfo]
	ON [ReportServer].[dbo].[ConfigurationInfo] DISABLE;
	PRINT 'INDEX [PK_ConfigurationInfo] ON [ReportServer].[dbo].[ConfigurationInfo] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ConfigurationInfo] ON [ReportServer].[dbo].[ConfigurationInfo] CANNOT BE DISABLED.';
END CATCH;
