BEGIN TRY ALTER INDEX [IX_AIDBA_28_20220401] ON [MFMB].[dbo].[EskerIDB] REORGANIZE;PRINT 'Index IX_AIDBA_28_20220401 on MFMB.dbo.EskerIDB has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_28_20220401 does not exist on MFMB.dbo.EskerIDB, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_39_20220401] ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] REORGANIZE;PRINT 'Index IX_AIDBA_39_20220401 on MTECH_V7_Intermediate_PROD.mtech.xProteinInterfaceData has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_39_20220401 does not exist on MTECH_V7_Intermediate_PROD.mtech.xProteinInterfaceData, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_10_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] REORGANIZE;PRINT 'Index IX_AIDBA_10_20220401 on MTECH_v7_PRODUCTION.mtech.BimEntityInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_10_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.BimEntityInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_BrimPELogMovementsCosts] ON [MTECH_v7_PRODUCTION].[mtech].[BrimPELogMovementsCosts] REORGANIZE;PRINT 'Index IX_BrimPELogMovementsCosts on MTECH_v7_PRODUCTION.mtech.BrimPELogMovementsCosts has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_BrimPELogMovementsCosts does not exist on MTECH_v7_PRODUCTION.mtech.BrimPELogMovementsCosts, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_20_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] REORGANIZE;PRINT 'Index IX_AIDBA_20_20220401 on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_20_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_FmimFeedTrans_ProteinFarmsIRN_RecordType_EntityHistoryFlag] ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] REORGANIZE;PRINT 'Index IX_FmimFeedTrans_ProteinFarmsIRN_RecordType_EntityHistoryFlag on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_FmimFeedTrans_ProteinFarmsIRN_RecordType_EntityHistoryFlag does not exist on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_FmimFeedTrans_RecordType_EntityHistoryFlag] ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] REORGANIZE;PRINT 'Index IX_FmimFeedTrans_RecordType_EntityHistoryFlag on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_FmimFeedTrans_RecordType_EntityHistoryFlag does not exist on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_FmimFeedTrans_RefNo_LoadNo_ProteinFacilityFeedMillsIRN_xDate] ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] REORGANIZE;PRINT 'Index IX_FmimFeedTrans_RefNo_LoadNo_ProteinFacilityFeedMillsIRN_xDate on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_FmimFeedTrans_RefNo_LoadNo_ProteinFacilityFeedMillsIRN_xDate does not exist on MTECH_v7_PRODUCTION.mtech.FmimFeedTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_25_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] REORGANIZE;PRINT 'Index IX_AIDBA_25_20220401 on MTECH_v7_PRODUCTION.mtech.HimChickInventoryRecv has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_25_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimChickInventoryRecv, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggHatcherInventory_ProteinEntitiesIRN_HimSettersIRN_HimHatchersIRN_ProteinFacilityHatcheriesIRN_ExpirationDate_Inactive] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherInventory] REORGANIZE;PRINT 'Index IX_HimEggHatcherInventory_ProteinEntitiesIRN_HimSettersIRN_HimHatchersIRN_ProteinFacilityHatcheriesIRN_ExpirationDate_Inactive on MTECH_v7_PRODUCTION.mtech.HimEggHatcherInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggHatcherInventory_ProteinEntitiesIRN_HimSettersIRN_HimHatchersIRN_ProteinFacilityHatcheriesIRN_ExpirationDate_Inactive does not exist on MTECH_v7_PRODUCTION.mtech.HimEggHatcherInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggHatcherReceiving_Hatcheries_Tracking_Entities_EggProducts_ProdDate_TransferDate_SetDate_Setters_ConsFlag_xDate_ExpDate] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] REORGANIZE;PRINT 'Index IX_HimEggHatcherReceiving_Hatcheries_Tracking_Entities_EggProducts_ProdDate_TransferDate_SetDate_Setters_ConsFlag_xDate_ExpDate on MTECH_v7_PRODUCTION.mtech.HimEggHatcherReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggHatcherReceiving_Hatcheries_Tracking_Entities_EggProducts_ProdDate_TransferDate_SetDate_Setters_ConsFlag_xDate_ExpDate does not exist on MTECH_v7_PRODUCTION.mtech.HimEggHatcherReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_8_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_AIDBA_8_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_8_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomInventory_DebitIRN_InactiveDate] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_HimEggRoomInventory_DebitIRN_InactiveDate on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomInventory_DebitIRN_InactiveDate does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomInventory_DebitIRN_InventoryDate] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_HimEggRoomInventory_DebitIRN_InventoryDate on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomInventory_DebitIRN_InventoryDate does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomInventory_ProteinEntitiesIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_HimEggRoomInventory_ProteinEntitiesIRN on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomInventory_ProteinEntitiesIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomInventory_ProteinFacilityHatcheriesIRN_ProteinEntitiesIRN_EggRoomType_ProdDate_ReceivedDate] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_HimEggRoomInventory_ProteinFacilityHatcheriesIRN_ProteinEntitiesIRN_EggRoomType_ProdDate_ReceivedDate on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomInventory_ProteinFacilityHatcheriesIRN_ProteinEntitiesIRN_EggRoomType_ProdDate_ReceivedDate does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomInventory_RecordType_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_HimEggRoomInventory_RecordType_TransactionIRN on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomInventory_RecordType_TransactionIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomInventory_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REORGANIZE;PRINT 'Index IX_HimEggRoomInventory_TransactionIRN on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomInventory_TransactionIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_19_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_AIDBA_19_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_19_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_11] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_11 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_11 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_12] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_12 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_12 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_2] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_2 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_2 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_3] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_3 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_3 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_5] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_5 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_5 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_6] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_6 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_6 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_8] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_8 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_8 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_DTA_1 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_DTA_1 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_DTA_2] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_DTA_2 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_DTA_2 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_DTA_3] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_DTA_3 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_DTA_3 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_DTA_4] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_DTA_4 on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_DTA_4 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_EggRoomType_EggTransCode_TransDate] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_EggRoomType_EggTransCode_TransDate on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_EggRoomType_EggTransCode_TransDate does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_EggRoomType_ProdDate_TransDate_includes] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_EggRoomType_ProdDate_TransDate_includes on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_EggRoomType_ProdDate_TransDate_includes does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_ExternalId on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_ExternalId does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_HimEggPackagingTransIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_HimEggPackagingTransIRN on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_HimEggPackagingTransIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_IRN_Includes] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_IRN_Includes on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_IRN_Includes does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_ProteinCostCentersIRN_External] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_ProteinCostCentersIRN_External on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_ProteinCostCentersIRN_External does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_ProteinEntitiesIRN_EggRoomType_HimEggPackagingTransIRN_EggTransCode_TransDate_Includes] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_ProteinEntitiesIRN_EggRoomType_HimEggPackagingTransIRN_EggTransCode_TransDate_Includes on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_ProteinEntitiesIRN_EggRoomType_HimEggPackagingTransIRN_EggTransCode_TransDate_Includes does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_ProteinFacilityHatcheriesIRN_EggRoomType_HimEggPackagingTransIRN_EggTransCode] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_ProteinFacilityHatcheriesIRN_EggRoomType_HimEggPackagingTransIRN_EggTransCode on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_ProteinFacilityHatcheriesIRN_EggRoomType_HimEggPackagingTransIRN_EggTransCode does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_ProteinFacilityHatcheriesIRN_EggRoomType_ProteinFacilityHatcheriesIRN_D] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_ProteinFacilityHatcheriesIRN_EggRoomType_ProteinFacilityHatcheriesIRN_D on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_ProteinFacilityHatcheriesIRN_EggRoomType_ProteinFacilityHatcheriesIRN_D does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomReceiving_TransDate_Includes] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REORGANIZE;PRINT 'Index IX_HimEggRoomReceiving_TransDate_Includes on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomReceiving_TransDate_Includes does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_18_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] REORGANIZE;PRINT 'Index IX_AIDBA_18_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggRoomUsage has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_18_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomUsage, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggRoomUsage_EggRoomType_xDate_ProdDate_includes] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] REORGANIZE;PRINT 'Index IX_HimEggRoomUsage_EggRoomType_xDate_ProdDate_includes on MTECH_v7_PRODUCTION.mtech.HimEggRoomUsage has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggRoomUsage_EggRoomType_xDate_ProdDate_includes does not exist on MTECH_v7_PRODUCTION.mtech.HimEggRoomUsage, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_24_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetInventory] REORGANIZE;PRINT 'Index IX_AIDBA_24_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_24_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggSetInventory_DebitIRN_xDate_Includes] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetInventory] REORGANIZE;PRINT 'Index IX_HimEggSetInventory_DebitIRN_xDate_Includes on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggSetInventory_DebitIRN_xDate_Includes does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggSetInventory_ProteinEntitiesIRN_HimBuggiesIRN_HimSettersIRN_ProteinFacilityHatcheriesIRN_ExpirationDate_InactiveDate] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetInventory] REORGANIZE;PRINT 'Index IX_HimEggSetInventory_ProteinEntitiesIRN_HimBuggiesIRN_HimSettersIRN_ProteinFacilityHatcheriesIRN_ExpirationDate_InactiveDate on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggSetInventory_ProteinEntitiesIRN_HimBuggiesIRN_HimSettersIRN_ProteinFacilityHatcheriesIRN_ExpirationDate_InactiveDate does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PK_HimEggSetInventory] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetInventory] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PK_HimEggSetInventory on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PK_HimEggSetInventory does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetInventory, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_31_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] REORGANIZE;PRINT 'Index IX_AIDBA_31_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggSetReceiving has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_31_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetReceiving, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggSetUsage_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] REORGANIZE;PRINT 'Index IX_HimEggSetUsage_DTA_1 on MTECH_v7_PRODUCTION.mtech.HimEggSetUsage has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggSetUsage_DTA_1 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetUsage, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggSetUsage_VoidFlag] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] REORGANIZE;PRINT 'Index IX_HimEggSetUsage_VoidFlag on MTECH_v7_PRODUCTION.mtech.HimEggSetUsage has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggSetUsage_VoidFlag does not exist on MTECH_v7_PRODUCTION.mtech.HimEggSetUsage, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_15_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] REORGANIZE;PRINT 'Index IX_AIDBA_15_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggTransfers has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_15_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfers, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_27_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_AIDBA_27_20220401 on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_27_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_HimEggPackagingTransIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_HimEggPackagingTransIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_HimEggPackagingTransIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_HimEggRoomPurchasesDetailsIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_HimEggRoomPurchasesDetailsIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_HimEggRoomPurchasesDetailsIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_HimEggRoomReceivingIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_HimEggRoomReceivingIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_HimEggRoomReceivingIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_HimEggRoomUsageIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_HimEggRoomUsageIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_HimEggRoomUsageIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_HimEggTransfersDetailsIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_HimEggTransfersDetailsIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_HimEggTransfersDetailsIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_HimEggTransfersIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_HimEggTransfersIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_HimEggTransfersIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_OMContractsInventoryUsageIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_OMContractsInventoryUsageIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_OMContractsInventoryUsageIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_OMContractsIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_OMContractsIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_OMContractsIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_OMOrdersShipmentLineItemsIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_OMOrdersShipmentLineItemsIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_OMOrdersShipmentLineItemsIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_ProteinEntitiesIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_ProteinEntitiesIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_ProteinEntitiesIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_ProteinProductsIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_ProteinProductsIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_ProteinProductsIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_HimEggTransfersDetails_ProteinProductsSalesIRN] ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REORGANIZE;PRINT 'Index IX_HimEggTransfersDetails_ProteinProductsSalesIRN on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_HimEggTransfersDetails_ProteinProductsSalesIRN does not exist on MTECH_v7_PRODUCTION.mtech.HimEggTransfersDetails, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_2_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] REORGANIZE;PRINT 'Index IX_AIDBA_2_20220401 on MTECH_v7_PRODUCTION.mtech.HimHatchTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_2_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.HimHatchTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_159500_159499_ProteinJournalTrans] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index Hitachi_159500_159499_ProteinJournalTrans on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_159500_159499_ProteinJournalTrans does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_159527_159526_ProteinJournalTrans] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index Hitachi_159527_159526_ProteinJournalTrans on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_159527_159526_ProteinJournalTrans does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_159592_159591_ProteinJournalTrans] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index Hitachi_159592_159591_ProteinJournalTrans on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_159592_159591_ProteinJournalTrans does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_159594_159593_ProteinJournalTrans] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index Hitachi_159594_159593_ProteinJournalTrans on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_159594_159593_ProteinJournalTrans does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_16_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_AIDBA_16_20220401 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_16_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_1 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_1 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_10] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_10 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_10 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_11] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_11 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_11 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_2 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_2 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_3] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_3 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_3 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_4] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_4 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_4 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_5 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_5 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_7] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_7 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_7 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_8] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_8 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_8 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_9] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_9 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_9 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_CreationDate] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_CreationDate on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_CreationDate does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DA_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DA_1 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DA_1 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DA_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DA_2 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DA_2 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DA_3] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DA_3 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DA_3 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DA_4] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DA_4 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DA_4 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DA_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DA_5 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DA_5 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DA_6] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DA_6 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DA_6 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DataCube_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DataCube_1 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DataCube_1 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DataCube_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DataCube_2 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DataCube_2 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DTA_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DTA_1 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DTA_1 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DTA_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DTA_2 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DTA_2 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DTA_3] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DTA_3 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DTA_3 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_DTA_4] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_DTA_4 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_DTA_4 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_Export_1] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_Export_1 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_Export_1 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_Export_2] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_Export_2 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_Export_2 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_Export_3] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_Export_3 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_Export_3 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_ExternalId] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_ExternalId on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_ExternalId does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_RefNo] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_RefNo on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_RefNo does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_SourceCode] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_SourceCode on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_SourceCode does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ProteinJournalTrans_StandardCostFlag_xDate] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index IX_ProteinJournalTrans_StandardCostFlag_xDate on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ProteinJournalTrans_StandardCostFlag_xDate does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ProteinJournalTrans_DTA_5] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REORGANIZE;PRINT 'Index ProteinJournalTrans_DTA_5 on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ProteinJournalTrans_DTA_5 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ProteinJournalXRef_TransactionId] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalXRef] REORGANIZE;PRINT 'Index ProteinJournalXRef_TransactionId on MTECH_v7_PRODUCTION.mtech.ProteinJournalXRef has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ProteinJournalXRef_TransactionId does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalXRef, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [ProteinJournalXRef_TransactionIRN] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalXRef] REORGANIZE;PRINT 'Index ProteinJournalXRef_TransactionIRN on MTECH_v7_PRODUCTION.mtech.ProteinJournalXRef has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index ProteinJournalXRef_TransactionIRN does not exist on MTECH_v7_PRODUCTION.mtech.ProteinJournalXRef, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_14677_14676_ProteinProductWHRecv] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] REORGANIZE;PRINT 'Index Hitachi_14677_14676_ProteinProductWHRecv on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_14677_14676_ProteinProductWHRecv does not exist on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_369249_369248_ProteinProductWHRecv] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] REORGANIZE;PRINT 'Index Hitachi_369249_369248_ProteinProductWHRecv on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_369249_369248_ProteinProductWHRecv does not exist on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_38289_38288_ProteinProductWHRecv] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] REORGANIZE;PRINT 'Index Hitachi_38289_38288_ProteinProductWHRecv on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_38289_38288_ProteinProductWHRecv does not exist on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_59757_59756_ProteinProductWHRecv] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] REORGANIZE;PRINT 'Index Hitachi_59757_59756_ProteinProductWHRecv on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_59757_59756_ProteinProductWHRecv does not exist on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_3_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] REORGANIZE;PRINT 'Index IX_AIDBA_3_20220401 on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_3_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinProductWHRecv, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_11_20220401] ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] REORGANIZE;PRINT 'Index IX_AIDBA_11_20220401 on MTECH_v7_PRODUCTION.mtech.ProteinWHTransfer has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_11_20220401 does not exist on MTECH_v7_PRODUCTION.mtech.ProteinWHTransfer, or operation encountered an error.'
				END CATCH;
				