
BEGIN TRY
	ALTER INDEX [IX_OMPriceMasterAddOns]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_OMPriceMasterAddOns] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_OMPriceMasterAddOns_1]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_OMPriceMasterAddOns_1] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns_1] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_OMPriceMasterAddOns_ExternalId]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_OMPriceMasterAddOns_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_OMPriceMasterAddOns_3]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_OMPriceMasterAddOns_3] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns_3] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_HimEggRoomReceiving_DTA_2]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_HimEggRoomReceiving_DTA_2] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggRoomReceiving_DTA_2] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_MtSysDeletedRecords_ExternalId]
	ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_MtSysDeletedRecords_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_MtSysDeletedRecords_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_MtSysDeletedRecords_TableName]
	ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_MtSysDeletedRecords_TableName] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_MtSysDeletedRecords_TableName] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ProteinJournalTrans_DTA_1]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ProteinJournalTrans_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ProteinJournalTrans_DA_5]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ProteinJournalTrans_DA_2]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_qrtz_t_nft_st_misfire_grp]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_qrtz_t_nft_st_misfire_grp] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_nft_st_misfire_grp] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_qrtz_t_nft_st]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_qrtz_t_nft_st] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_nft_st] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_qrtz_t_n_g_state]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_qrtz_t_n_g_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_n_g_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_qrtz_t_n_state]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_qrtz_t_n_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_n_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ProteinJournalTrans_5]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ProteinJournalTrans_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ProteinJournalTrans_7]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ProteinJournalTrans_7] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_7] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ProteinJournalTrans_ExternalId]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ProteinJournalTrans_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [Hitachi_368211_368210_xProteinInterfaceData]
	ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [Hitachi_368211_368210_xProteinInterfaceData] ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [Hitachi_368211_368210_xProteinInterfaceData] ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] CANNOT BE ENABLED.';
END CATCH;
