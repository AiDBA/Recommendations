
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'BatchID_NonClusteredIndex-20191115-033645')
	BEGIN
	ALTER INDEX [BatchID_NonClusteredIndex-20191115-033645]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] DISABLE;
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191115-033645] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191115-033645] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'UNQ_ITF_MOVEMENT_LOG_ROWID')
	BEGIN
	ALTER INDEX [UNQ_ITF_MOVEMENT_LOG_ROWID]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] DISABLE;
	PRINT 'INDEX [UNQ_ITF_MOVEMENT_LOG_ROWID] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [UNQ_ITF_MOVEMENT_LOG_ROWID] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_MOVEMENT_LOG')
	BEGIN
	ALTER INDEX [IDX_MOVEMENT_LOG]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] DISABLE;
	PRINT 'INDEX [IDX_MOVEMENT_LOG] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_MOVEMENT_LOG] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_base_pluginlog_plugin_regtime')
	BEGIN
	ALTER INDEX [ix_base_pluginlog_plugin_regtime]
	ON [innovaObsolete].[dbo].[base_pluginlog] DISABLE;
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_base_pluginlog_regtime')
	BEGIN
	ALTER INDEX [ix_base_pluginlog_regtime]
	ON [innovaObsolete].[dbo].[base_pluginlog] DISABLE;
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_base_pluginlog_plugin_regtime')
	BEGIN
	ALTER INDEX [ix_base_pluginlog_plugin_regtime]
	ON [innova].[dbo].[base_pluginlog] DISABLE;
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innova].[dbo].[base_pluginlog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innova].[dbo].[base_pluginlog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_base_pluginlog_regtime')
	BEGIN
	ALTER INDEX [ix_base_pluginlog_regtime]
	ON [innova].[dbo].[base_pluginlog] DISABLE;
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innova].[dbo].[base_pluginlog] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innova].[dbo].[base_pluginlog] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'BatchID_NonClusteredIndex-20191113-035601')
	BEGIN
	ALTER INDEX [BatchID_NonClusteredIndex-20191113-035601]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] DISABLE;
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191113-035601] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191113-035601] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'FARD_IX_30397')
	BEGIN
	ALTER INDEX [FARD_IX_30397]
	ON [innova].[dbo].[proc_packs] DISABLE;
	PRINT 'INDEX [FARD_IX_30397] ON [innova].[dbo].[proc_packs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_30397] ON [innova].[dbo].[proc_packs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_packs_rorderline_rtype')
	BEGIN
	ALTER INDEX [ix_proc_packs_rorderline_rtype]
	ON [innova].[dbo].[proc_packs] DISABLE;
	PRINT 'INDEX [ix_proc_packs_rorderline_rtype] ON [innova].[dbo].[proc_packs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_rorderline_rtype] ON [innova].[dbo].[proc_packs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_packs_porderline_rtype')
	BEGIN
	ALTER INDEX [ix_proc_packs_porderline_rtype]
	ON [innova].[dbo].[proc_packs] DISABLE;
	PRINT 'INDEX [ix_proc_packs_porderline_rtype] ON [innova].[dbo].[proc_packs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_porderline_rtype] ON [innova].[dbo].[proc_packs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_packs_extcode')
	BEGIN
	ALTER INDEX [ix_proc_packs_extcode]
	ON [innova].[dbo].[proc_packs] DISABLE;
	PRINT 'INDEX [ix_proc_packs_extcode] ON [innova].[dbo].[proc_packs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_extcode] ON [innova].[dbo].[proc_packs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_packs_rorder')
	BEGIN
	ALTER INDEX [ix_proc_packs_rorder]
	ON [innova].[dbo].[proc_packs] DISABLE;
	PRINT 'INDEX [ix_proc_packs_rorder] ON [innova].[dbo].[proc_packs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_rorder] ON [innova].[dbo].[proc_packs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'FARD_IX_17378')
	BEGIN
	ALTER INDEX [FARD_IX_17378]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [FARD_IX_17378] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_17378] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'FARD_IX_6781')
	BEGIN
	ALTER INDEX [FARD_IX_6781]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [FARD_IX_6781] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_6781] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'FARD_IX_14196')
	BEGIN
	ALTER INDEX [FARD_IX_14196]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [FARD_IX_14196] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_14196] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_items_porderline_rtype')
	BEGIN
	ALTER INDEX [ix_proc_items_porderline_rtype]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [ix_proc_items_porderline_rtype] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_porderline_rtype] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_items_orderline_rtype')
	BEGIN
	ALTER INDEX [ix_proc_items_orderline_rtype]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [ix_proc_items_orderline_rtype] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_orderline_rtype] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_items_batch_rtype')
	BEGIN
	ALTER INDEX [ix_proc_items_batch_rtype]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [ix_proc_items_batch_rtype] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_batch_rtype] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_proc_items_po_rtype')
	BEGIN
	ALTER INDEX [ix_proc_items_po_rtype]
	ON [innova].[dbo].[proc_items] DISABLE;
	PRINT 'INDEX [ix_proc_items_po_rtype] ON [innova].[dbo].[proc_items] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_po_rtype] ON [innova].[dbo].[proc_items] CANNOT BE DISABLED.';
END CATCH;
