BEGIN TRY ALTER INDEX [FARD_IX_26022022_6] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_AQS_Export_History] REORGANIZE;PRINT 'Index FARD_IX_26022022_6 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_AQS_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_26022022_6 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_AQS_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_26022022_04] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_Birds_Destinations_Export_History] REORGANIZE;PRINT 'Index FARD_IX_26022022_04 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_Birds_Destinations_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_26022022_04 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_Birds_Destinations_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_26022022_04] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_Quantity_Per_Flock_Export_History] REORGANIZE;PRINT 'Index FARD_IX_26022022_04 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_Quantity_Per_Flock_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_26022022_04 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_Quantity_Per_Flock_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_41] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History] REORGANIZE;PRINT 'Index FARD_IX_41 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_41 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_43] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History] REORGANIZE;PRINT 'Index FARD_IX_43 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_43 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_6992] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History] REORGANIZE;PRINT 'Index FARD_IX_6992 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_6992 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_432_431] ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History] REORGANIZE;PRINT 'Index IX_Hitachi_432_431 on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_432_431 does not exist on IDB_MTECH_MAREL_SL.dbo.cust_itgr_TREC_TRCS_Quality_Per_Weight_Range_Performence_Export_History, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [BatchID_NonClusteredIndex-20191115-033645] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] REORGANIZE;PRINT 'Index BatchID_NonClusteredIndex-20191115-033645 on IDB_MTECH_MAREL_SL.dbo.ITF_MOVEMENT has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index BatchID_NonClusteredIndex-20191115-033645 does not exist on IDB_MTECH_MAREL_SL.dbo.ITF_MOVEMENT, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_MOVEMENT_SYNC_BATCHID] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT] REORGANIZE;PRINT 'Index IDX_MOVEMENT_SYNC_BATCHID on IDB_MTECH_MAREL_SL.dbo.ITF_MOVEMENT has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_MOVEMENT_SYNC_BATCHID does not exist on IDB_MTECH_MAREL_SL.dbo.ITF_MOVEMENT, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_MOVEMENT_LOG] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_MOVEMENT_LOG] REORGANIZE;PRINT 'Index IDX_MOVEMENT_LOG on IDB_MTECH_MAREL_SL.dbo.ITF_MOVEMENT_LOG has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_MOVEMENT_LOG does not exist on IDB_MTECH_MAREL_SL.dbo.ITF_MOVEMENT_LOG, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_PRODUCTION_001] ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] REORGANIZE;PRINT 'Index IDX_PRODUCTION_001 on IDB_MTECH_MAREL_SL.dbo.ITF_PRODUCTION has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_PRODUCTION_001 does not exist on IDB_MTECH_MAREL_SL.dbo.ITF_PRODUCTION, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_base_recordhistoryd_historyid_columnname] ON [innova].[dbo].[base_recordhistoryd] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_base_recordhistoryd_historyid_columnname on innova.dbo.base_recordhistoryd has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_base_recordhistoryd_historyid_columnname does not exist on innova.dbo.base_recordhistoryd, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_16_20220326] ON [innova].[dbo].[grd_inputregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index IX_AIDBA_16_20220326 on innova.dbo.grd_inputregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_16_20220326 does not exist on innova.dbo.grd_inputregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_grd_inputregs_lot_rtype] ON [innova].[dbo].[grd_inputregs] REORGANIZE;PRINT 'Index ix_grd_inputregs_lot_rtype on innova.dbo.grd_inputregs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_grd_inputregs_lot_rtype does not exist on innova.dbo.grd_inputregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_4_20220326] ON [innova].[dbo].[grd_pieceregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index IX_AIDBA_4_20220326 on innova.dbo.grd_pieceregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_4_20220326 does not exist on innova.dbo.grd_pieceregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_grd_pieceregs_lot_class_rtype] ON [innova].[dbo].[grd_pieceregs] REORGANIZE;PRINT 'Index ix_grd_pieceregs_lot_class_rtype on innova.dbo.grd_pieceregs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_grd_pieceregs_lot_class_rtype does not exist on innova.dbo.grd_pieceregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_grd_pieceregs_prperiod_class_rtype] ON [innova].[dbo].[grd_pieceregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index ix_grd_pieceregs_prperiod_class_rtype on innova.dbo.grd_pieceregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_grd_pieceregs_prperiod_class_rtype does not exist on innova.dbo.grd_pieceregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_grd_pieceregs_sprperiod_class_rtype] ON [innova].[dbo].[grd_pieceregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index ix_grd_pieceregs_sprperiod_class_rtype on innova.dbo.grd_pieceregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_grd_pieceregs_sprperiod_class_rtype does not exist on innova.dbo.grd_pieceregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_grd_piecestatusregs_regtime] ON [innova].[dbo].[grd_piecestatusregs] REORGANIZE;PRINT 'Index ix_grd_piecestatusregs_regtime on innova.dbo.grd_piecestatusregs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_grd_piecestatusregs_regtime does not exist on innova.dbo.grd_piecestatusregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_grd_piecestatusregs_sprperiod_grader_status] ON [innova].[dbo].[grd_piecestatusregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index ix_grd_piecestatusregs_sprperiod_grader_status on innova.dbo.grd_piecestatusregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_grd_piecestatusregs_sprperiod_grader_status does not exist on innova.dbo.grd_piecestatusregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_32168] ON [innova].[dbo].[pack_itemstatusregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_32168 on innova.dbo.pack_itemstatusregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_32168 does not exist on innova.dbo.pack_itemstatusregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_15_20220326] ON [innova].[dbo].[pack_itemstatusregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_AIDBA_15_20220326 on innova.dbo.pack_itemstatusregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_15_20220326 does not exist on innova.dbo.pack_itemstatusregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_pack_itemstatusregs_prperiod_checkweigher_checkstatus] ON [innova].[dbo].[pack_itemstatusregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_pack_itemstatusregs_prperiod_checkweigher_checkstatus on innova.dbo.pack_itemstatusregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_pack_itemstatusregs_prperiod_checkweigher_checkstatus does not exist on innova.dbo.pack_itemstatusregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_pack_itemstatusregs_sprperiod_checkweigher_checkstatus] ON [innova].[dbo].[pack_itemstatusregs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_pack_itemstatusregs_sprperiod_checkweigher_checkstatus on innova.dbo.pack_itemstatusregs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_pack_itemstatusregs_sprperiod_checkweigher_checkstatus does not exist on innova.dbo.pack_itemstatusregs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_histograms_batch_rtype] ON [innova].[dbo].[proc_histograms] REORGANIZE;PRINT 'Index ix_proc_histograms_batch_rtype on innova.dbo.proc_histograms has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_batch_rtype does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_histograms_lot_rtype] ON [innova].[dbo].[proc_histograms] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index ix_proc_histograms_lot_rtype on innova.dbo.proc_histograms has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_lot_rtype does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_histograms_plot_rtype] ON [innova].[dbo].[proc_histograms] REORGANIZE;PRINT 'Index ix_proc_histograms_plot_rtype on innova.dbo.proc_histograms has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_plot_rtype does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_histograms_po_rtype] ON [innova].[dbo].[proc_histograms] REORGANIZE;PRINT 'Index ix_proc_histograms_po_rtype on innova.dbo.proc_histograms has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_po_rtype does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_histograms_prday] ON [innova].[dbo].[proc_histograms] REORGANIZE;PRINT 'Index ix_proc_histograms_prday on innova.dbo.proc_histograms has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_prday does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_histograms_prperiod_material_rtype] ON [innova].[dbo].[proc_histograms] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index ix_proc_histograms_prperiod_material_rtype on innova.dbo.proc_histograms has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_prperiod_material_rtype does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_histograms_regtime] ON [innova].[dbo].[proc_histograms] REORGANIZE;PRINT 'Index ix_proc_histograms_regtime on innova.dbo.proc_histograms has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_regtime does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_histograms_sprperiod_material_rtype] ON [innova].[dbo].[proc_histograms] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index ix_proc_histograms_sprperiod_material_rtype on innova.dbo.proc_histograms has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_histograms_sprperiod_material_rtype does not exist on innova.dbo.proc_histograms, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_14196] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index FARD_IX_14196 on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_14196 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_17378] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_17378 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_17378 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_20737] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_20737 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_20737 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_247] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_247 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_247 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_30400] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_30400 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_30400 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_4557] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_4557 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_4557 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_6781] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_6781 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_6781 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_6783] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index FARD_IX_6783 on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_6783 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_12_20220326] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_AIDBA_12_20220326 on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_12_20220326 does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_baseitem] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_baseitem on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_baseitem does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_batch_rtype] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_batch_rtype on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_batch_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_container] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_container on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_container does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_extcode] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_extcode on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_extcode does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_individual] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_individual on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_individual does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_items_inventory_material_rtype] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_items_inventory_material_rtype on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_inventory_material_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_items_lot_rtype] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_items_lot_rtype on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_lot_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_order] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_order on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_order does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_orderline_rtype] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_orderline_rtype on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_orderline_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_pack] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_pack on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_pack does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_parentitem] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_parentitem on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_parentitem does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_plot_rtype] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_plot_rtype on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_plot_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_po_rtype] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_po_rtype on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_po_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_porder] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_porder on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_porder does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_porderline_rtype] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_porderline_rtype on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_porderline_rtype does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_prday] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_prday on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_prday does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_items_prperiod_rtype_material] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_items_prperiod_rtype_material on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_prperiod_rtype_material does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_regtime] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_regtime on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_regtime does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_shipment] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_shipment on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_shipment does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_items_site_number] ON [innova].[dbo].[proc_items] REORGANIZE;PRINT 'Index ix_proc_items_site_number on innova.dbo.proc_items has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_site_number does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_items_sprperiod_rtype_material] ON [innova].[dbo].[proc_items] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_items_sprperiod_rtype_material on innova.dbo.proc_items has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_items_sprperiod_rtype_material does not exist on innova.dbo.proc_items, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_1024] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_1024 on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_1024 does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_30397] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_30397 on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_30397 does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_41615] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_41615 on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_41615 does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_6515] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_6515 on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_6515 does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [FARD_IX_723] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index FARD_IX_723 on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_723 does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_batch_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_batch_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_batch_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_container] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_container on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_container does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_extcode] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_extcode on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_extcode does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_extnum] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_extnum on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_extnum does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_inventory_invnum_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_inventory_invnum_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_inventory_invnum_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_inventory_material_rtype] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_inventory_material_rtype on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_inventory_material_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_lot_rtype] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_lot_rtype on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_lot_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_order] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_order on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_order does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_order_ordernum_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_order_ordernum_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_order_ordernum_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_orderline_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_orderline_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_orderline_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_pallet] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_pallet on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_pallet does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_plot_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_plot_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_plot_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_po_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_po_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_po_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_porder] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_porder on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_porder does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_porderline_rtype] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_porderline_rtype on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_porderline_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_prday] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_prday on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_prday does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_prperiod_material_rtype] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_prperiod_material_rtype on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_prperiod_material_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_regtime] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_regtime on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_regtime does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_rorder] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_rorder on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_rorder does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_rorderline_rtype] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_rorderline_rtype on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_rorderline_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_shipment] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_shipment on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_shipment does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_site_number] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_site_number on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_site_number does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [ix_proc_packs_sprperiod_material_rtype] ON [innova].[dbo].[proc_packs] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index ix_proc_packs_sprperiod_material_rtype on innova.dbo.proc_packs has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_sprperiod_material_rtype does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_sscc] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_sscc on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_sscc does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packs_stack] ON [innova].[dbo].[proc_packs] REORGANIZE;PRINT 'Index ix_proc_packs_stack on innova.dbo.proc_packs has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packs_stack does not exist on innova.dbo.proc_packs, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_1891] ON [innova].[dbo].[proc_packxacts] REORGANIZE;PRINT 'Index FARD_IX_1891 on innova.dbo.proc_packxacts has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_1891 does not exist on innova.dbo.proc_packxacts, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packxacts_pack_xacttype] ON [innova].[dbo].[proc_packxacts] REORGANIZE;PRINT 'Index ix_proc_packxacts_pack_xacttype on innova.dbo.proc_packxacts has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packxacts_pack_xacttype does not exist on innova.dbo.proc_packxacts, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packxacts_prday_shift_xacttype] ON [innova].[dbo].[proc_packxacts] REORGANIZE;PRINT 'Index ix_proc_packxacts_prday_shift_xacttype on innova.dbo.proc_packxacts has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packxacts_prday_shift_xacttype does not exist on innova.dbo.proc_packxacts, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packxacts_regtime] ON [innova].[dbo].[proc_packxacts] REORGANIZE;PRINT 'Index ix_proc_packxacts_regtime on innova.dbo.proc_packxacts has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packxacts_regtime does not exist on innova.dbo.proc_packxacts, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_packxacts_unitopxid] ON [innova].[dbo].[proc_packxacts] REORGANIZE;PRINT 'Index ix_proc_packxacts_unitopxid on innova.dbo.proc_packxacts has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_packxacts_unitopxid does not exist on innova.dbo.proc_packxacts, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ix_proc_unitoplog_executetime] ON [innova].[dbo].[proc_unitoplog] REORGANIZE;PRINT 'Index ix_proc_unitoplog_executetime on innova.dbo.proc_unitoplog has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ix_proc_unitoplog_executetime does not exist on innova.dbo.proc_unitoplog, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_10_20220326] ON [PDSNT].[dbo].[EVENTS] REORGANIZE;PRINT 'Index IX_AIDBA_10_20220326 on PDSNT.dbo.EVENTS has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_10_20220326 does not exist on PDSNT.dbo.EVENTS, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_1375] ON [PDSNT].[dbo].[PDA_AQS_ARCHIVE] REORGANIZE;PRINT 'Index FARD_IX_1375 on PDSNT.dbo.PDA_AQS_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_1375 does not exist on PDSNT.dbo.PDA_AQS_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_3477] ON [PDSNT].[dbo].[PDA_AQS_ARCHIVE] REORGANIZE;PRINT 'Index FARD_IX_3477 on PDSNT.dbo.PDA_AQS_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_3477 does not exist on PDSNT.dbo.PDA_AQS_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [FARD_IX_421] ON [PDSNT].[dbo].[PDA_AQS_ARCHIVE] REORGANIZE;PRINT 'Index FARD_IX_421 on PDSNT.dbo.PDA_AQS_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index FARD_IX_421 does not exist on PDSNT.dbo.PDA_AQS_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_PDA_AQS_ARCHIVE_TOP_FLOCK_PDA] ON [PDSNT].[dbo].[PDA_AQS_ARCHIVE] REORGANIZE;PRINT 'Index IX_PDA_AQS_ARCHIVE_TOP_FLOCK_PDA on PDSNT.dbo.PDA_AQS_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PDA_AQS_ARCHIVE_TOP_FLOCK_PDA does not exist on PDSNT.dbo.PDA_AQS_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_17297_17296] ON [PDSNT].[dbo].[PDA_HTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_Hitachi_17297_17296 on PDSNT.dbo.PDA_HTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_17297_17296 does not exist on PDSNT.dbo.PDA_HTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_17300_17299] ON [PDSNT].[dbo].[PDA_HTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_Hitachi_17300_17299 on PDSNT.dbo.PDA_HTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_17300_17299 does not exist on PDSNT.dbo.PDA_HTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_17381_17380] ON [PDSNT].[dbo].[PDA_HTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_Hitachi_17381_17380 on PDSNT.dbo.PDA_HTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_17381_17380 does not exist on PDSNT.dbo.PDA_HTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_PDA_HTD_ARCHIVE_TOP_FLOCK_PDA] ON [PDSNT].[dbo].[PDA_HTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_PDA_HTD_ARCHIVE_TOP_FLOCK_PDA on PDSNT.dbo.PDA_HTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PDA_HTD_ARCHIVE_TOP_FLOCK_PDA does not exist on PDSNT.dbo.PDA_HTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_6_20220326] ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index IX_AIDBA_6_20220326 on PDSNT.dbo.PDA_QTD_ARCHIVE has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_6_20220326 does not exist on PDSNT.dbo.PDA_QTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_19879_19878] ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_Hitachi_19879_19878 on PDSNT.dbo.PDA_QTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_19879_19878 does not exist on PDSNT.dbo.PDA_QTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_19881_19880] ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_Hitachi_19881_19880 on PDSNT.dbo.PDA_QTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_19881_19880 does not exist on PDSNT.dbo.PDA_QTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_PDA_QTD_ARCHIVE_TOP_FLOCK_PDA] ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_PDA_QTD_ARCHIVE_TOP_FLOCK_PDA on PDSNT.dbo.PDA_QTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PDA_QTD_ARCHIVE_TOP_FLOCK_PDA does not exist on PDSNT.dbo.PDA_QTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_Hitachi_17334_17333] ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_Hitachi_17334_17333 on PDSNT.dbo.PDA_RTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_17334_17333 does not exist on PDSNT.dbo.PDA_RTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_PDA_RTD_ARCHIVE_TOP_FLOCK_PDA] ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] REORGANIZE;PRINT 'Index IX_PDA_RTD_ARCHIVE_TOP_FLOCK_PDA on PDSNT.dbo.PDA_RTD_ARCHIVE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PDA_RTD_ARCHIVE_TOP_FLOCK_PDA does not exist on PDSNT.dbo.PDA_RTD_ARCHIVE, or operation encountered an error.'
				END CATCH;
				