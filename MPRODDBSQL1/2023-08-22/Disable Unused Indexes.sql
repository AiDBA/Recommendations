
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_OMPriceMasterAddOns')
	BEGIN
	ALTER INDEX [IX_OMPriceMasterAddOns]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] DISABLE;
	PRINT 'INDEX [IX_OMPriceMasterAddOns] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_OMPriceMasterAddOns_1')
	BEGIN
	ALTER INDEX [IX_OMPriceMasterAddOns_1]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] DISABLE;
	PRINT 'INDEX [IX_OMPriceMasterAddOns_1] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns_1] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_OMPriceMasterAddOns_ExternalId')
	BEGIN
	ALTER INDEX [IX_OMPriceMasterAddOns_ExternalId]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] DISABLE;
	PRINT 'INDEX [IX_OMPriceMasterAddOns_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_OMPriceMasterAddOns_3')
	BEGIN
	ALTER INDEX [IX_OMPriceMasterAddOns_3]
	ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] DISABLE;
	PRINT 'INDEX [IX_OMPriceMasterAddOns_3] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_OMPriceMasterAddOns_3] ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterAddOns] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_HimEggRoomInventory_RecordType_TransactionIRN')
	BEGIN
	ALTER INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] DISABLE;
	PRINT 'INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_HimEggRoomReceiving_DTA_2')
	BEGIN
	ALTER INDEX [IX_HimEggRoomReceiving_DTA_2]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] DISABLE;
	PRINT 'INDEX [IX_HimEggRoomReceiving_DTA_2] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggRoomReceiving_DTA_2] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_MtSysDeletedRecords_ExternalId')
	BEGIN
	ALTER INDEX [IX_MtSysDeletedRecords_ExternalId]
	ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] DISABLE;
	PRINT 'INDEX [IX_MtSysDeletedRecords_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_MtSysDeletedRecords_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_MtSysDeletedRecords_TableName')
	BEGIN
	ALTER INDEX [IX_MtSysDeletedRecords_TableName]
	ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] DISABLE;
	PRINT 'INDEX [IX_MtSysDeletedRecords_TableName] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_MtSysDeletedRecords_TableName] ON [MTECH_v7_PRODUCTION].[mtech].[MtSysDeletedRecords] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_HimEggRoomReceiving_ProteinCostCentersIRN_External')
	BEGIN
	ALTER INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] DISABLE;
	PRINT 'INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ProteinJournalTrans_DA_2')
	BEGIN
	ALTER INDEX [IX_ProteinJournalTrans_DA_2]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] DISABLE;
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ProteinJournalTrans_DTA_1')
	BEGIN
	ALTER INDEX [IX_ProteinJournalTrans_DTA_1]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] DISABLE;
	PRINT 'INDEX [IX_ProteinJournalTrans_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ProteinJournalTrans_DA_5')
	BEGIN
	ALTER INDEX [IX_ProteinJournalTrans_DA_5]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] DISABLE;
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_DA_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_qrtz_t_nft_st_misfire_grp')
	BEGIN
	ALTER INDEX [idx_qrtz_t_nft_st_misfire_grp]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] DISABLE;
	PRINT 'INDEX [idx_qrtz_t_nft_st_misfire_grp] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_nft_st_misfire_grp] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_qrtz_t_nft_st')
	BEGIN
	ALTER INDEX [idx_qrtz_t_nft_st]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] DISABLE;
	PRINT 'INDEX [idx_qrtz_t_nft_st] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_nft_st] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_qrtz_t_n_g_state')
	BEGIN
	ALTER INDEX [idx_qrtz_t_n_g_state]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] DISABLE;
	PRINT 'INDEX [idx_qrtz_t_n_g_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_n_g_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_qrtz_t_n_state')
	BEGIN
	ALTER INDEX [idx_qrtz_t_n_state]
	ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] DISABLE;
	PRINT 'INDEX [idx_qrtz_t_n_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_qrtz_t_n_state] ON [MTECH_v7_PRODUCTION].[mtech].[QRTZ_TRIGGERS] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ProteinJournalTrans_ExternalId')
	BEGIN
	ALTER INDEX [IX_ProteinJournalTrans_ExternalId]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] DISABLE;
	PRINT 'INDEX [IX_ProteinJournalTrans_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ProteinJournalTrans_7')
	BEGIN
	ALTER INDEX [IX_ProteinJournalTrans_7]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] DISABLE;
	PRINT 'INDEX [IX_ProteinJournalTrans_7] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_7] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ProteinJournalTrans_5')
	BEGIN
	ALTER INDEX [IX_ProteinJournalTrans_5]
	ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] DISABLE;
	PRINT 'INDEX [IX_ProteinJournalTrans_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ProteinJournalTrans_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_HimEggTransfersDetails_HimEggPackagingTransIRN')
	BEGIN
	ALTER INDEX [IX_HimEggTransfersDetails_HimEggPackagingTransIRN]
	ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] DISABLE;
	PRINT 'INDEX [IX_HimEggTransfersDetails_HimEggPackagingTransIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HimEggTransfersDetails_HimEggPackagingTransIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] CANNOT BE DISABLED.';
END CATCH;
