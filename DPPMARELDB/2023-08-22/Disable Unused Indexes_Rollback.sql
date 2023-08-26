
BEGIN TRY
	ALTER INDEX [BatchID_NonClusteredIndex-20191115-033645]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191115-033645] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191115-033645] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [BatchID_NonClusteredIndex-20191113-035601]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191113-035601] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [BatchID_NonClusteredIndex-20191113-035601] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_base_pluginlog_plugin_regtime]
	ON [innova].[dbo].[base_pluginlog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innova].[dbo].[base_pluginlog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innova].[dbo].[base_pluginlog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_base_pluginlog_regtime]
	ON [innova].[dbo].[base_pluginlog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innova].[dbo].[base_pluginlog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innova].[dbo].[base_pluginlog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_base_pluginlog_plugin_regtime]
	ON [innovaObsolete].[dbo].[base_pluginlog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_plugin_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_base_pluginlog_regtime]
	ON [innovaObsolete].[dbo].[base_pluginlog] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_base_pluginlog_regtime] ON [innovaObsolete].[dbo].[base_pluginlog] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [UNQ_ITF_MOVEMENT_LOG_ROWID]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [UNQ_ITF_MOVEMENT_LOG_ROWID] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [UNQ_ITF_MOVEMENT_LOG_ROWID] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IDX_MOVEMENT_LOG]
	ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IDX_MOVEMENT_LOG] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_MOVEMENT_LOG] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_packs_rorderline_rtype]
	ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_packs_rorderline_rtype] ON [innova].[dbo].[proc_packs] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_rorderline_rtype] ON [innova].[dbo].[proc_packs] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_packs_porderline_rtype]
	ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_packs_porderline_rtype] ON [innova].[dbo].[proc_packs] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_porderline_rtype] ON [innova].[dbo].[proc_packs] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_packs_extcode]
	ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_packs_extcode] ON [innova].[dbo].[proc_packs] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_extcode] ON [innova].[dbo].[proc_packs] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_packs_rorder]
	ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_packs_rorder] ON [innova].[dbo].[proc_packs] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_packs_rorder] ON [innova].[dbo].[proc_packs] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_14196]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_14196] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_14196] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_6781]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_6781] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_6781] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_17378]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_17378] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_17378] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_items_prday]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_items_prday] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_prday] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_items_plot_rtype]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_items_plot_rtype] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_plot_rtype] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_items_po_rtype]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_items_po_rtype] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_po_rtype] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_items_batch_rtype]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_items_batch_rtype] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_batch_rtype] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [ix_proc_items_orderline_rtype]
	ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [ix_proc_items_orderline_rtype] ON [innova].[dbo].[proc_items] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_proc_items_orderline_rtype] ON [innova].[dbo].[proc_items] CANNOT BE ENABLED.';
END CATCH;
