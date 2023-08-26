
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [MFMB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [MFMB].[dbo].[DppCondemnTrans] (
			[CondemnationNo],[EdataRefNo],[EntranceNo]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[MFMB].[dbo].[DppCondemnTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[MFMB].[dbo].[DppCondemnTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MFMB].[dbo].[DppCondemnTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] (
			[EntityHistoryFlag],[EventDate],[ProdDate],[ProteinEntitiesIRN],[SetDate],[VoidFlag],[xDate]
			) INCLUDE (
			[AdjustedEggsSet],[EggsSet],[PostStatus],[ProteinFacilityHatcheriesIRN],[TotalChicksHatched],[TrackingNo],[U_CulledSR]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 14
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] (
			[HimEggHatcherReceivingIRN],[HimEggProductsIRN],[ProteinEntitiesIRN],[xDate]
			) INCLUDE (
			[PostStatus],[ProteinFacilityHatcheriesIRN],[Quantity]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] (
			[ConsignmentFlag],[ExpirationDate],[ProteinCostCentersIRN],[RecordType],[VoidFlag],[WHRecvTransCode]
			) INCLUDE (
			[LotNo],[ProductType],[ProteinFarmsIRN],[ProteinPOLineItemsIRN_Consign],[ProteinProductsIRN],[ProteinWarehouseLocationsIRN],[xDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] (
			[EggRoomType],[OMOrdersShipmentLineItemsIRN],[PostStatus],[ProteinFacilityHatcheriesIRN],[ProteinProductsIRN],[TransCode],[xDate]
			) INCLUDE (
			[ConsignmentFlag],[CreationDate],[CreationUserId],[ExpirationDate],[ExternalId],[ForceMoveCosts],[HatchDate],[HimBuggiesIRN],[HimEggPackagingTransIRN],[LastModDate],[Notes],[OMCustomersIRN],[OMOrdersInventoryUsageIRN],[PercentFertility],[PercentHatch],[PostDate],[PostStatusII],[PostTransactionId],[ProdDate],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN_D],[ProteinProductsDisposalCategoriesIRN],[Quantity],[ReceivedDate],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[SourceRecordType],[TrackingNo],[UserId],[VoidFlag],[xValue]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 39
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] (
			[PostStatus],[ProteinFacilityHatcheriesIRN_D],[ShipDate],[SourceEggRoomType],[TransCode],[TransDate],[VoidFlag]
			) INCLUDE (
			[ProteinFacilityHatcheriesIRN_T],[ReceiveDate],[RefNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] (
			[EntityHistoryFlag],[FmimFeedFormulaVersionsIRN],[PostStatus],[ProteinDriversIRN],[ProteinFacilityFeedMillsIRN],[ProteinFarmsIRN],[ProteinVehiclesIRN],[RecordType],[TransCode],[TransferId],[UserId],[VoidFlag],[xDate]
			) INCLUDE (
			[BagsDelivered],[BillOfLading],[CompartmentNo01],[CompartmentNo02],[CompartmentNo03],[CompartmentNo04],[CompartmentNo05],[CompartmentNo06],[CompartmentNo07],[CompartmentNo08],[CompartmentNo09],[CompartmentNo10],[CompartmentNo11],[CompartmentNo12],[CompartmentNo13],[CompartmentNo14],[CompartmentNo15],[CompartmentNo16],[CompartmentNo17],[CompartmentNo18],[CompartmentNo19],[CompartmentNo20],[CreationDate],[CreationUserId],[CurrencyEffectiveDate],[CurrencyExchangeRates],[CustomerPONo],[EventDate],[ExternalDriver],[ExternalId],[ExternalRefNo],[ExternalVehicle],[FarmArrivalTime],[FeedTransType],[FmimFeedTransferIRN_HaulbackTransferDest],[FmimFeedTransIRN_Src],[FmimFeedTransIRN_SrcDelivery],[FmimFeedTransOrdersIRN],[FmimIngredientsInvRecvIRN],[FmimScaleOperatorsIRN],[Gross],[GrossAutoManual],[GrossWeightTrailer],[GrossWeightTrailerDateTime],[GrossWeightTrailerScaleRefNo],[GrossWeightTruck],[GrossWeightTruckDateTime],[GrossWeightTruckScaleRefNo],[GrossWtDateTime],[GrossWtScaleRef],[GrossZeroWeight],[GrossZeroWeightAutoManual],[GrossZeroWeightDateTime],[GrossZeroWeightScaleRef],[GrossZeroWeightTrailer],[GrossZeroWeightTrailerDateTime],[GrossZeroWeightTrailerScaleRefNo],[GrossZeroWeightTruck],[GrossZeroWeightTruckDateTime],[GrossZeroWeightTruckScaleRefNo],[LastModDate],[LoadNo],[Miles],[Net],[Notes],[OMContractsInventoryUsageIRN],[OMContractsIRN],[OMCustomerBusinessDeliveryLocationsIRN],[OMCustomersIRN_BillTo],[OMCustomersIRN_ShipTo],[OMOrdersInvoiceIRN],[OMOrdersIRN],[OMOrdersShipmentLineItemsIRN],[PostDate],[PostStatusII],[PostTransactionId],[PrintFlag],[ProteinEntitiesIRN],[ProteinFacilityFeedMillsIRN_HaulbackTransferDest],[ProteinPrescriptionRecvIRN],[ProteinPrescriptionUsageIRN],[ProteinProductsSalesIRN],[ProteinVehiclesIRN_Trailer],[ProteinVehiclesWtOverridesIRN],[ProteinVendorsIRN],[ProteinWeightScalesIRN],[RefNo],[ReplicaSourceId],[ReplicationDateTime],[ReversedFlag],[RouteNo],[ScaleWeightLockFlag],[ShiftNo],[SourceCode],[Status],[Tare],[TareAutoManual],[TareVarianceAmount],[TareWeightTrailer],[TareWeightTrailerDateTime],[TareWeightTrailerScaleRefNo],[TareWeightTruck],[TareWeightTruckDateTime],[TareWeightTruckScaleRefNo],[TareWtDateTime],[TareWtScaleRef],[TareZeroWeight],[TareZeroWeightAutoManual],[TareZeroWeightDateTime],[TareZeroWeightScaleRef],[TareZeroWeightTrailer],[TareZeroWeightTrailerDateTime],[TareZeroWeightTrailerScaleRefNo],[TareZeroWeightTruck],[TareZeroWeightTruckDateTime],[TareZeroWeightTruckScaleRefNo],[TicketComment],[TransferMode],[U_Fdr_Ven_DONumber],[WeightPerBag],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 134
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] (
			[Stage],[xDate]
			) INCLUDE (
			[HeadInv],[ProteinEntitiesIRN],[ProteinFarmsIRN],[ProteinPeriodEndTasksIRN],[Sex]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] (
			[ConsignmentFlag],[ExpirationDate],[IRN],[LotNo],[PostStatus],[ProteinCostCentersIRN],[ProteinFarmsIRN],[ProteinPOLineItemsIRN_Consign],[ProteinProductsIRN],[ProteinWarehouseLocationsIRN],[RecordType],[RefNo],[TransCode],[VoidFlag],[WHUsageTransCode],[xDate]
			) INCLUDE (
			[Comments],[CreationDate],[CreationUserId],[DeductGrowerPayFlag],[EventDate],[ExternalId],[HealthNotes],[LastModDate],[OMOrdersShipmentLineItemsIRN],[PostDate],[PostTransactionId],[ProductType],[ProteinDiseasesSymptomsIRN],[ProteinEntitiesIRN],[ProteinFieldCrewsIRN],[ProteinProductsDisposalCategoriesIRN],[ProteinProductWHRecvIRN],[ProteinProductWHUsageIRN],[ProteinVeterinariansIRN],[ProteinWarehousesIRN],[Quantity],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[UserId],[VaccinationNotes],[xTime],[xValue]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 44
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] (
			[EntityHistoryFlag],[ProteinEntitiesIRN],[RecordType],[Sex],[xDate]
			) INCLUDE (
			[EventDate],[InactiveDate],[InitialThreadFlag],[Quantity],[SourceCode],[TransCode],[TransferMode]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 12
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] (
			[HimEggProductsIRN],[PostStatus],[xDate]
			) INCLUDE (
			[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[Quantity],[SetDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] (
			[ReportLayoutIRN]
			) INCLUDE (
			[ReportGenerationCounter]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] (
			[EggRoomType],[EggTransCode],[EntityHistoryFlag],[HimEggPackagingTransIRN],[ProteinFacilityHatcheriesIRN],[ProteinProductsIRN],[TransDate],[VoidFlag]
			) INCLUDE (
			[HimBuggiesIRN],[PostStatus],[ProteinEntitiesIRN],[Quantity],[Units]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] (
			[CreationUserId],[InvoiceDate],[InvoiceNo],[InvoiceType],[LastModDate],[PostStatus],[ReplicationDateTime],[ShipDate],[VoidFlag]
			) INCLUDE (
			[OMCustomersIRN],[OMCustomersIRN_ShipTo],[OMOrdersInvoiceIRN],[PrintCounter],[ShipToCustomerName],[U_CDNoteType]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 15
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] (
			[EntityHistoryFlag],[RecordType],[TransDate]
			) INCLUDE (
			[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[ProteinFacilityHatcheriesIRN2]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] (
			[ShipDate]
			) INCLUDE (
			[CreationDate],[RefNo],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] (
			[ProteinChartOfAccountsIRN],[ProteinCostCentersIRN],[xDate]
			) INCLUDE (
			[Amount],[Description],[ProteinEntitiesIRN],[ProteinFarmsIRN],[TransCode],[Units]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 9
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] (
			[ProteinFacilityHatcheriesIRN]
			) INCLUDE (
			[HimEggProductsIRN],[ProteinEntitiesIRN],[TransactionIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] (
			[ChickTransCode],[HimHatchCategoriesIRN],[ProteinFacilityHatcheriesIRN],[TransCode],[VoidFlag],[xDate]
			) INCLUDE (
			[ProteinEntitiesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] (
			[zBrimAdjustmentTypesIRN]
			) INCLUDE (
			[Comments],[ProteinEntitiesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] (
			[DeliveryDate],[OrderDate],[PostStatus],[ProteinCostCentersIRN]
			) INCLUDE (
			[OMCustomersIRN_BillTo],[OMCustomersIRN_ShipTo],[OrderNo],[ShipDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrders]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrders]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] (
			[ProteinCostCentersIRN_S],[TransCode],[xDateTime]
			) INCLUDE (
			[CreationDate],[CreationUserId],[DestWarehouseType],[ExternalDriver],[ExternalVehicle],[Gross],[GrossAutoManual],[GrossWtDateTime],[GrossWtScaleRef],[GrossZeroWeight],[GrossZeroWeightDateTime],[GrossZeroWeightScaleRef],[Net],[OMOrdersIRN],[PostStatus],[PostTransactionId],[ProteinCostCentersIRN_D],[ProteinDriversIRN],[ProteinEntitiesIRN_D],[ProteinFarmsIRN_D],[ProteinFarmsIRN_S],[ProteinPOInventoryUsageIRN],[ProteinPOLineItemsIRN],[ProteinVehiclesIRN],[ProteinVehiclesIRN_Trailer],[ProteinVendorsIRN_Haulage],[ProteinWeightScalesIRN],[ProteinWHTransferIRN_Src],[RefNo],[SrcWarehouseType],[Status],[Tare],[TareAutoManual],[TareWtDateTime],[TareWtScaleRef],[TareZeroWeight],[TareZeroWeightDateTime],[TareZeroWeightScaleRef],[UserId],[VoidFlag]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_23_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] (
			[InvoicedFlag]
			) INCLUDE (
			[BackOrderFlag],[CompletedFlag],[OMOrdersInventoryUsageIRN],[OMOrdersLineItemsIRN],[OMOrdersShipmentIRN],[QuantityShipped]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_23_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_23_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_23_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_24_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] (
			[ForceMoveCosts],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[TransCode],[VoidFlag],[xDate]
			) INCLUDE (
			[Quantity]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_24_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_24_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_24_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_25_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] (
			[FarmWtRefNo],[OMCustomersIRN],[PlantWtRefNo],[PostStatus],[RecordType],[TransactionType],[VoidFlag],[xDate]
			) INCLUDE (
			[DOA],[EventDate],[FarmHdCount],[FarmWtNet],[LotNo],[PlantHdCount],[PlantWtNet],[ProteinEntitiesIRN],[ProteinFacilityPlantsIRN],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_25_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_25_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_25_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_26_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] (
			[CreationDate],[InvoiceDate],[PostStatus],[ReplicationDateTime],[VoidFlag]
			) INCLUDE (
			[BatchNo],[CreationUserId],[InvoiceAmount],[InvoiceNo],[InvoicePostDate],[InvoiceType],[LastModDate],[OMOrdersIRN_Tri],[PostTransactionId],[ProteinVendorsIRN],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_26_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_26_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 16
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_26_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_27_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] (
			[BpaProjectionProfilesIRN],[xDate]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_27_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_27_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_27_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_28_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] (
			[FinalTransferFlag]
			) INCLUDE (
			[PmtsTransfersIRN],[ProteinEntitiesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_28_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_28_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_28_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_29_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] (
			[ProteinCostCentersIRN],[ProteinProductsSalesIRN],[UnitPrice]
			) INCLUDE (
			[LineIndex],[OMOrdersIRN],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_29_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_29_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_29_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_30_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] (
			[CreationUserId],[ProteinCostCentersIRN],[ProteinFarmsIRN],[PurchaseTransCode],[RecordType],[xDate]
			) INCLUDE (
			[Comments],[CreationDate],[EventDate],[LastModDate],[PostStatus],[PostTransactionId],[ProteinVendorsIRN],[RefNo],[ReversedFlag],[UserId],[VoidFlag],[xTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_30_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_30_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_30_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_31_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] (
			[OMPriceMasterIndexIRN]
			) INCLUDE (
			[CreationDate],[CreationUserId],[ExpirationDate],[LastModDate],[PriceDate],[ReplicaSourceId],[ReplicationDateTime],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_31_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_31_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 9
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_31_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MFMB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_32_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230822
			ON [MFMB].[dbo].[EskerIDB] (
			[CompanyNo],[CurrencyNo],[InvoiceNo],[PODate],[PONo],[ProcessDate],[ReceivingIRN],[ReplicationDateCSV],[ReplicationDateIDB],[ReplicationDateInvoice],[ReplicationDateMTech],[TaxRateIRN]
			) INCLUDE (
			[Buyer],[CostCenterNo],[DiscountAddOnPrice],[DiscountProductNo],[EskerInvoiceAmount],[EskerInvoiceQuantity],[HeaderCostCenterNo],[InvoicedAmount],[InvoiceDate],[PayableInvoiceAmount],[PaymentTermNo],[PostingDate],[ProteinPOInventoryUsageIRN],[ReceiveAmount],[ReceiveQuantity],[Receiver],[ReceivingType],[TaxCodeIRN],[TaxesAmount],[TaxNo],[UnitPrice],[VendorNo],[VendorSKUNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_32_20230822' AND i.object_id = OBJECT_ID('[MFMB].[dbo].[EskerIDB]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_32_20230822' AND i2.object_id = OBJECT_ID('[MFMB].[dbo].[EskerIDB]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 35
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MFMB].[dbo].[EskerIDB] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_32_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_33_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_33_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] (
			[ProteinProductsSalesIRN]
			) INCLUDE (
			[OMOrdersInvoiceIRN],[OMOrdersShipmentLineItemsIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_33_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_33_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_33_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_34_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_34_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] (
			[EntityHistoryFlag],[TransferMode],[VoidFlag],[xDate]
			) INCLUDE (
			[Added],[Culled],[EventDate],[FeedInventory],[InventoryDeliveryStatus],[Mortality],[PostStatus],[ProteinEntitiesIRN],[Weight],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_34_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_34_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 14
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_34_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_V7_Intermediate_PROD];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_35_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_35_20230822
			ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] (
			[ItemNumber010],[ItemText001],[Status],[TransactionType]
			) INCLUDE (
			[Amount001],[Amount002],[Amount003],[Amount004],[Amount005],[Amount006],[Amount007],[Amount008],[Amount009],[Amount010],[Amount011],[Amount012],[Amount013],[Amount014],[Amount015],[Amount016],[Amount017],[Amount018],[Amount019],[Amount020],[CreationDate],[CreationUserId],[Date001],[Date002],[Date003],[Date004],[Date005],[Date006],[Date007],[Date008],[Date009],[Date010],[DocumentItemNumber],[DocumentItemNumber002],[DocumentNumber],[DocumentRefNumber],[ItemNumber001],[ItemNumber002],[ItemNumber003],[ItemNumber004],[ItemNumber005],[ItemNumber006],[ItemNumber007],[ItemNumber008],[ItemNumber009],[ItemText002],[ItemText003],[ItemText004],[ItemText005],[ItemText006],[ItemText007],[ItemText008],[ItemText009],[ItemText010],[ItemText011],[ItemText012],[ItemText013],[ItemText014],[ItemText015],[ItemText016],[ItemText017],[ItemText018],[ItemText019],[ItemText020],[ItemText021],[ItemText022],[ItemText023],[ItemText024],[ItemText025],[itemtext026],[itemtext027],[itemtext028],[itemtext029],[itemtext030],[LastModDate],[LongItemText001],[LongItemText002],[LongItemText003],[LongItemText004],[LongItemText005],[ProductNumber],[ProductType],[RecordStatus],[ReplicaSourceId],[Units001],[Units002],[Units003],[Units004],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_35_20230822' AND i.object_id = OBJECT_ID('[MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_35_20230822' AND i2.object_id = OBJECT_ID('[MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 93
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_35_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_36_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_36_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] (
			[PostedFlag],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN_S],[ProteinProductsIRN],[TrackingNo]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_36_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_36_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_36_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_37_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_37_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] (
			[ApprovalStatus],[CreationUserId],[ProteinCostCentersIRN],[ProteinPaymentTermsIRN]
			) INCLUDE (
			[CreationDate],[POLineNo],[Price],[ProductOverrideDescription],[ProteinMarketsIRN],[ProteinPOContractsDetailsIRN],[ProteinPOIRN],[ProteinPOLineItemsIRN],[ProteinProductsVendorsIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_37_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_37_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_37_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_38_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_38_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] (
			[ProteinFarmsIRN],[ProteinHousesIRN],[ProteinProductsAnimalsIRN],[Status]
			) INCLUDE (
			[CreationDate],[CreationUserId],[EntityNo],[FdsaFeedProgramsIndexIRN],[LastModDate],[PenNo],[ProteinBreedCodesIRN],[ProteinStandardVersionsIRN],[ProteinStandardVersionsIRN_Alt],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_38_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinEntities]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_38_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinEntities]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 14
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_38_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_39_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_39_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] (
			[BrpaProfilesIRN],[DateSold]
			) INCLUDE (
			[AverageWeight],[AvgWeightGainPerDay],[CatchDate],[CreationDate],[CreationUserId],[EntityNo],[ExternalId],[FeedWithdrawalDays],[FinalFarmPickupFlag],[LastModDate],[LOEAverageAge],[LOEAverageWeight],[LOEHeadSold],[LOEProcessingDensity],[NumberOfTrucks],[ProcessingOrderSequence],[ProductWithdrawalDays],[ProjectedHeadSold],[ProjectedMortalityPercent],[ProjectionMode],[ProteinFacilityPlantsIRN],[ProteinFarmsIRN],[ReplicaSourceId],[ReplicationDateTime],[TravelTimeMinutes],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_39_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_39_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 28
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_39_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_40_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_40_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] (
			[ProteinCostCentersIRN],[RequisitionType],[TransDate]
			) INCLUDE (
			[ProteinProductsIRN],[RefNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_40_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_40_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_40_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_41_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_41_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] (
			[CatchDate],[DateSold]
			) INCLUDE (
			[Age],[BrpaPlacementSchedulesIRN],[BrpaProfilesIRN],[BrpaProfilesIRN_Offset],[BrpaWeightOverridesIRN],[CatchDateTime],[HeadInventory],[ProjectedAvgWeight],[ProjectedHeadSold],[ProteinEntitiesIRN],[ProteinFacilityPlantsIRN],[ProteinLiveHaulCrewsIRN],[ProteinProductsAnimalsIRN_Gr],[TargetWt]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_41_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_41_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 16
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_41_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_42_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_42_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] (
			[PODate],[RecordType]
			) INCLUDE (
			[PONo],[SupplierRefNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_42_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_42_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPO]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_42_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_43_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_43_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] (
			[TransferId]
			) INCLUDE (
			[AddedF],[AddedM],[AmmoniaLevel],[BinFeedAmount1],[BinFeedAmount2],[BinFeedAmount3],[BinFeedAmount4],[CaloriesF],[CaloriesM],[CarbonDioxide],[CarbonMonoxide],[CFM],[CreationDate],[CreationUserId],[CullEggsInv],[CullEggsProd],[CullEggWeight],[EggWeight],[EggWeightSamples],[EggWeightsFlag],[Electricity],[EntityHistoryFlag],[EPSProductionNormalized],[ERHumidity],[ERHumidityHigh],[ERHumidityLow],[ERTemperature],[ERTemperatureHigh],[ERTemperatureLow],[EventDate],[ExternalId],[FeedConsumedF],[FeedConsumedM],[FeedDaysF],[FeedDaysM],[FeedInventoryF],[FeedInventoryM],[FeedOrderedF],[FeedOrderedM],[FemalesCulled],[FlockHealth],[FmimFeedFormulasIRN_F],[FmimFeedFormulasIRN_M],[FmimFeedTypesIRN_Female],[FmimFeedTypesIRN_Male],[FuelInventory],[Gas],[HatchEggsInv],[HatchEggsProd],[HatchEggWeight],[Humidity],[HumidityHigh],[HumidityLow],[HumidityOutside],[HumidityOutsideHigh],[HumidityOutsideLow],[InventoryDeliveryStatus],[LastModDate],[Lighting],[LightSensor1],[LightSensor2],[LightSensor3],[LitterTemperature],[MalesCulled],[MortalityF],[MortalityM],[Nests],[Notes],[PmtsFieldAllocationIndexIRN],[PostDate],[PostStatus],[PostTransactionId],[ProductionDays],[ProteinEntitiesIRN],[ProteinEntitiesIRN_Src],[RecordSourceType],[RefNo],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[TargetHenWeight],[TargetMaleWeight],[Temperature],[TemperatureHigh],[TemperatureLow],[TemperatureOutside],[TemperatureOutsideHigh],[TemperatureOutsideLow],[TotalEggsInv],[TotalEggsProd],[TotalEggWeight],[TransferMode],[U_CoolCellStatus],[U_Culled],[U_CulledMale],[U_FeederStatus],[U_FoggerStatus],[U_HatchingEgg],[U_HatchingEggEggWt],[U_HatchingEggProd],[U_HatchingEggTotWt],[U_LightStatus],[U_LitterStatus],[U_Medicine],[U_MedicineUOM],[U_MedicineUsage],[U_Sales],[U_SalesMale],[U_SexError],[U_SexErrorMale],[U_SexingError],[U_SonarStaticPressure],[U_TABLEEGG],[U_TABLEEGGEggWt],[U_TABLEEGGProd],[U_TABLEEGGTotWt],[U_Vaccine],[U_VaccineUOM],[U_VaccineUsage],[U_VentilationStatus],[U_WaterStatus],[U_WkAge],[UniformityCvEgg],[UniformityCvF],[UniformityCvM],[UniformityEgg],[UniformityF],[UniformityM],[URLValue],[UserId],[Vaccination],[VoidFlag],[Water],[Waterph],[WeightF],[WeightFSamples],[WeightM],[WeightMSamples],[WeightsFlag],[xDate],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_43_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_43_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 142
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_43_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_44_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_44_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] (
			[ProteinCostCentersIRN],[xDate]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_44_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_44_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_44_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_45_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_45_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] (
			[BrpaProfilesIRN]
			) INCLUDE (
			[MaxTargetWeight],[MinTargetWeight],[ProteinFacilityPlantsIRN],[ProteinProductsAnimalsIRN],[ProteinProductsAnimalsIRN_Gr],[TargetWeight]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_45_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaTargets]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_45_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaTargets]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_45_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_46_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_46_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] (
			[ActiveFlag],[CreditLimit],[ShipToFlag],[U_Line_Of_Business]
			) INCLUDE (
			[Address1],[BillToFlag],[CustomerName],[CustomerNo],[ProteinCitiesIRN],[ProteinCountriesIRN],[ProteinCurrenciesIRN],[ProteinStatesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_46_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMCustomers]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_46_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMCustomers]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 12
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_46_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_47_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_47_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] (
			[ActiveFlag],[ProteinVendorsIRN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_47_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_47_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_47_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_48_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_48_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] (
			[ActiveFlag],[FarmType],[ProteinFacilityPlantsIRN],[ProteinGrowoutCodesIRN]
			) INCLUDE (
			[FarmName],[FarmNo],[ProteinCostCentersIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_48_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinFarms]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_48_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinFarms]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_48_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_49_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_49_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] (
			[MedicatedFlag],[RequisitionFlag]
			) INCLUDE (
			[ProteinProductsIRN],[WDDays]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_49_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_49_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_49_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_50_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_50_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] (
			[DateMovedIn],[ProteinFarmsIRN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_50_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_50_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_50_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_51_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_51_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] (
			[ActiveFlag],[ProductType]
			) INCLUDE (
			[Description],[ProductNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_51_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProducts]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_51_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProducts]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_51_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH_v7_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_52_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_52_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] (
			[ProteinPOLineItemsIRN]
			) INCLUDE (
			[ProteinProductsVendorsAddOnIRN],[Rate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_52_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_52_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_52_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [MFMB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [MFMB].[dbo].[DppCondemnTrans] (
			[CondemnationNo],[EdataRefNo],[EntranceNo]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[MFMB].[dbo].[DppCondemnTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[MFMB].[dbo].[DppCondemnTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MFMB].[dbo].[DppCondemnTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MFMB].[dbo].[DppCondemnTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [MFMB].[dbo].[DppCondemnTrans] (
			[CondemnationNo],[EdataRefNo],[EntranceNo]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [MFMB].[dbo].[DppCondemnTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] (
			[EntityHistoryFlag],[EventDate],[ProdDate],[ProteinEntitiesIRN],[SetDate],[VoidFlag],[xDate]
			) INCLUDE (
			[AdjustedEggsSet],[EggsSet],[PostStatus],[ProteinFacilityHatcheriesIRN],[TotalChicksHatched],[TrackingNo],[U_CulledSR]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 14
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] (
			[EntityHistoryFlag],[EventDate],[ProdDate],[ProteinEntitiesIRN],[SetDate],[VoidFlag],[xDate]
			) INCLUDE (
			[AdjustedEggsSet],[EggsSet],[PostStatus],[ProteinFacilityHatcheriesIRN],[TotalChicksHatched],[TrackingNo],[U_CulledSR]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimHatchTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] (
			[HimEggHatcherReceivingIRN],[HimEggProductsIRN],[ProteinEntitiesIRN],[xDate]
			) INCLUDE (
			[PostStatus],[ProteinFacilityHatcheriesIRN],[Quantity]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] (
			[HimEggHatcherReceivingIRN],[HimEggProductsIRN],[ProteinEntitiesIRN],[xDate]
			) INCLUDE (
			[PostStatus],[ProteinFacilityHatcheriesIRN],[Quantity]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggHatcherReceiving] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] (
			[ConsignmentFlag],[ExpirationDate],[ProteinCostCentersIRN],[RecordType],[VoidFlag],[WHRecvTransCode]
			) INCLUDE (
			[LotNo],[ProductType],[ProteinFarmsIRN],[ProteinPOLineItemsIRN_Consign],[ProteinProductsIRN],[ProteinWarehouseLocationsIRN],[xDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] (
			[ConsignmentFlag],[ExpirationDate],[ProteinCostCentersIRN],[RecordType],[VoidFlag],[WHRecvTransCode]
			) INCLUDE (
			[LotNo],[ProductType],[ProteinFarmsIRN],[ProteinPOLineItemsIRN_Consign],[ProteinProductsIRN],[ProteinWarehouseLocationsIRN],[xDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHRecv] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] (
			[EggRoomType],[OMOrdersShipmentLineItemsIRN],[PostStatus],[ProteinFacilityHatcheriesIRN],[ProteinProductsIRN],[TransCode],[xDate]
			) INCLUDE (
			[ConsignmentFlag],[CreationDate],[CreationUserId],[ExpirationDate],[ExternalId],[ForceMoveCosts],[HatchDate],[HimBuggiesIRN],[HimEggPackagingTransIRN],[LastModDate],[Notes],[OMCustomersIRN],[OMOrdersInventoryUsageIRN],[PercentFertility],[PercentHatch],[PostDate],[PostStatusII],[PostTransactionId],[ProdDate],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN_D],[ProteinProductsDisposalCategoriesIRN],[Quantity],[ReceivedDate],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[SourceRecordType],[TrackingNo],[UserId],[VoidFlag],[xValue]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 39
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] (
			[EggRoomType],[OMOrdersShipmentLineItemsIRN],[PostStatus],[ProteinFacilityHatcheriesIRN],[ProteinProductsIRN],[TransCode],[xDate]
			) INCLUDE (
			[ConsignmentFlag],[CreationDate],[CreationUserId],[ExpirationDate],[ExternalId],[ForceMoveCosts],[HatchDate],[HimBuggiesIRN],[HimEggPackagingTransIRN],[LastModDate],[Notes],[OMCustomersIRN],[OMOrdersInventoryUsageIRN],[PercentFertility],[PercentHatch],[PostDate],[PostStatusII],[PostTransactionId],[ProdDate],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN_D],[ProteinProductsDisposalCategoriesIRN],[Quantity],[ReceivedDate],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[SourceRecordType],[TrackingNo],[UserId],[VoidFlag],[xValue]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomUsage] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] (
			[PostStatus],[ProteinFacilityHatcheriesIRN_D],[ShipDate],[SourceEggRoomType],[TransCode],[TransDate],[VoidFlag]
			) INCLUDE (
			[ProteinFacilityHatcheriesIRN_T],[ReceiveDate],[RefNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] (
			[PostStatus],[ProteinFacilityHatcheriesIRN_D],[ShipDate],[SourceEggRoomType],[TransCode],[TransDate],[VoidFlag]
			) INCLUDE (
			[ProteinFacilityHatcheriesIRN_T],[ReceiveDate],[RefNo]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfers] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] (
			[EntityHistoryFlag],[FmimFeedFormulaVersionsIRN],[PostStatus],[ProteinDriversIRN],[ProteinFacilityFeedMillsIRN],[ProteinFarmsIRN],[ProteinVehiclesIRN],[RecordType],[TransCode],[TransferId],[UserId],[VoidFlag],[xDate]
			) INCLUDE (
			[BagsDelivered],[BillOfLading],[CompartmentNo01],[CompartmentNo02],[CompartmentNo03],[CompartmentNo04],[CompartmentNo05],[CompartmentNo06],[CompartmentNo07],[CompartmentNo08],[CompartmentNo09],[CompartmentNo10],[CompartmentNo11],[CompartmentNo12],[CompartmentNo13],[CompartmentNo14],[CompartmentNo15],[CompartmentNo16],[CompartmentNo17],[CompartmentNo18],[CompartmentNo19],[CompartmentNo20],[CreationDate],[CreationUserId],[CurrencyEffectiveDate],[CurrencyExchangeRates],[CustomerPONo],[EventDate],[ExternalDriver],[ExternalId],[ExternalRefNo],[ExternalVehicle],[FarmArrivalTime],[FeedTransType],[FmimFeedTransferIRN_HaulbackTransferDest],[FmimFeedTransIRN_Src],[FmimFeedTransIRN_SrcDelivery],[FmimFeedTransOrdersIRN],[FmimIngredientsInvRecvIRN],[FmimScaleOperatorsIRN],[Gross],[GrossAutoManual],[GrossWeightTrailer],[GrossWeightTrailerDateTime],[GrossWeightTrailerScaleRefNo],[GrossWeightTruck],[GrossWeightTruckDateTime],[GrossWeightTruckScaleRefNo],[GrossWtDateTime],[GrossWtScaleRef],[GrossZeroWeight],[GrossZeroWeightAutoManual],[GrossZeroWeightDateTime],[GrossZeroWeightScaleRef],[GrossZeroWeightTrailer],[GrossZeroWeightTrailerDateTime],[GrossZeroWeightTrailerScaleRefNo],[GrossZeroWeightTruck],[GrossZeroWeightTruckDateTime],[GrossZeroWeightTruckScaleRefNo],[LastModDate],[LoadNo],[Miles],[Net],[Notes],[OMContractsInventoryUsageIRN],[OMContractsIRN],[OMCustomerBusinessDeliveryLocationsIRN],[OMCustomersIRN_BillTo],[OMCustomersIRN_ShipTo],[OMOrdersInvoiceIRN],[OMOrdersIRN],[OMOrdersShipmentLineItemsIRN],[PostDate],[PostStatusII],[PostTransactionId],[PrintFlag],[ProteinEntitiesIRN],[ProteinFacilityFeedMillsIRN_HaulbackTransferDest],[ProteinPrescriptionRecvIRN],[ProteinPrescriptionUsageIRN],[ProteinProductsSalesIRN],[ProteinVehiclesIRN_Trailer],[ProteinVehiclesWtOverridesIRN],[ProteinVendorsIRN],[ProteinWeightScalesIRN],[RefNo],[ReplicaSourceId],[ReplicationDateTime],[ReversedFlag],[RouteNo],[ScaleWeightLockFlag],[ShiftNo],[SourceCode],[Status],[Tare],[TareAutoManual],[TareVarianceAmount],[TareWeightTrailer],[TareWeightTrailerDateTime],[TareWeightTrailerScaleRefNo],[TareWeightTruck],[TareWeightTruckDateTime],[TareWeightTruckScaleRefNo],[TareWtDateTime],[TareWtScaleRef],[TareZeroWeight],[TareZeroWeightAutoManual],[TareZeroWeightDateTime],[TareZeroWeightScaleRef],[TareZeroWeightTrailer],[TareZeroWeightTrailerDateTime],[TareZeroWeightTrailerScaleRefNo],[TareZeroWeightTruck],[TareZeroWeightTruckDateTime],[TareZeroWeightTruckScaleRefNo],[TicketComment],[TransferMode],[U_Fdr_Ven_DONumber],[WeightPerBag],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 134
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] (
			[EntityHistoryFlag],[FmimFeedFormulaVersionsIRN],[PostStatus],[ProteinDriversIRN],[ProteinFacilityFeedMillsIRN],[ProteinFarmsIRN],[ProteinVehiclesIRN],[RecordType],[TransCode],[TransferId],[UserId],[VoidFlag],[xDate]
			) INCLUDE (
			[BagsDelivered],[BillOfLading],[CompartmentNo01],[CompartmentNo02],[CompartmentNo03],[CompartmentNo04],[CompartmentNo05],[CompartmentNo06],[CompartmentNo07],[CompartmentNo08],[CompartmentNo09],[CompartmentNo10],[CompartmentNo11],[CompartmentNo12],[CompartmentNo13],[CompartmentNo14],[CompartmentNo15],[CompartmentNo16],[CompartmentNo17],[CompartmentNo18],[CompartmentNo19],[CompartmentNo20],[CreationDate],[CreationUserId],[CurrencyEffectiveDate],[CurrencyExchangeRates],[CustomerPONo],[EventDate],[ExternalDriver],[ExternalId],[ExternalRefNo],[ExternalVehicle],[FarmArrivalTime],[FeedTransType],[FmimFeedTransferIRN_HaulbackTransferDest],[FmimFeedTransIRN_Src],[FmimFeedTransIRN_SrcDelivery],[FmimFeedTransOrdersIRN],[FmimIngredientsInvRecvIRN],[FmimScaleOperatorsIRN],[Gross],[GrossAutoManual],[GrossWeightTrailer],[GrossWeightTrailerDateTime],[GrossWeightTrailerScaleRefNo],[GrossWeightTruck],[GrossWeightTruckDateTime],[GrossWeightTruckScaleRefNo],[GrossWtDateTime],[GrossWtScaleRef],[GrossZeroWeight],[GrossZeroWeightAutoManual],[GrossZeroWeightDateTime],[GrossZeroWeightScaleRef],[GrossZeroWeightTrailer],[GrossZeroWeightTrailerDateTime],[GrossZeroWeightTrailerScaleRefNo],[GrossZeroWeightTruck],[GrossZeroWeightTruckDateTime],[GrossZeroWeightTruckScaleRefNo],[LastModDate],[LoadNo],[Miles],[Net],[Notes],[OMContractsInventoryUsageIRN],[OMContractsIRN],[OMCustomerBusinessDeliveryLocationsIRN],[OMCustomersIRN_BillTo],[OMCustomersIRN_ShipTo],[OMOrdersInvoiceIRN],[OMOrdersIRN],[OMOrdersShipmentLineItemsIRN],[PostDate],[PostStatusII],[PostTransactionId],[PrintFlag],[ProteinEntitiesIRN],[ProteinFacilityFeedMillsIRN_HaulbackTransferDest],[ProteinPrescriptionRecvIRN],[ProteinPrescriptionUsageIRN],[ProteinProductsSalesIRN],[ProteinVehiclesIRN_Trailer],[ProteinVehiclesWtOverridesIRN],[ProteinVendorsIRN],[ProteinWeightScalesIRN],[RefNo],[ReplicaSourceId],[ReplicationDateTime],[ReversedFlag],[RouteNo],[ScaleWeightLockFlag],[ShiftNo],[SourceCode],[Status],[Tare],[TareAutoManual],[TareVarianceAmount],[TareWeightTrailer],[TareWeightTrailerDateTime],[TareWeightTrailerScaleRefNo],[TareWeightTruck],[TareWeightTruckDateTime],[TareWeightTruckScaleRefNo],[TareWtDateTime],[TareWtScaleRef],[TareZeroWeight],[TareZeroWeightAutoManual],[TareZeroWeightDateTime],[TareZeroWeightScaleRef],[TareZeroWeightTrailer],[TareZeroWeightTrailerDateTime],[TareZeroWeightTrailerScaleRefNo],[TareZeroWeightTruck],[TareZeroWeightTruckDateTime],[TareZeroWeightTruckScaleRefNo],[TicketComment],[TransferMode],[U_Fdr_Ven_DONumber],[WeightPerBag],[xDateTime]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[FmimFeedTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] (
			[Stage],[xDate]
			) INCLUDE (
			[HeadInv],[ProteinEntitiesIRN],[ProteinFarmsIRN],[ProteinPeriodEndTasksIRN],[Sex]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] (
			[Stage],[xDate]
			) INCLUDE (
			[HeadInv],[ProteinEntitiesIRN],[ProteinFarmsIRN],[ProteinPeriodEndTasksIRN],[Sex]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimHenDaysInv] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] (
			[ConsignmentFlag],[ExpirationDate],[IRN],[LotNo],[PostStatus],[ProteinCostCentersIRN],[ProteinFarmsIRN],[ProteinPOLineItemsIRN_Consign],[ProteinProductsIRN],[ProteinWarehouseLocationsIRN],[RecordType],[RefNo],[TransCode],[VoidFlag],[WHUsageTransCode],[xDate]
			) INCLUDE (
			[Comments],[CreationDate],[CreationUserId],[DeductGrowerPayFlag],[EventDate],[ExternalId],[HealthNotes],[LastModDate],[OMOrdersShipmentLineItemsIRN],[PostDate],[PostTransactionId],[ProductType],[ProteinDiseasesSymptomsIRN],[ProteinEntitiesIRN],[ProteinFieldCrewsIRN],[ProteinProductsDisposalCategoriesIRN],[ProteinProductWHRecvIRN],[ProteinProductWHUsageIRN],[ProteinVeterinariansIRN],[ProteinWarehousesIRN],[Quantity],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[UserId],[VaccinationNotes],[xTime],[xValue]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 44
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] (
			[ConsignmentFlag],[ExpirationDate],[IRN],[LotNo],[PostStatus],[ProteinCostCentersIRN],[ProteinFarmsIRN],[ProteinPOLineItemsIRN_Consign],[ProteinProductsIRN],[ProteinWarehouseLocationsIRN],[RecordType],[RefNo],[TransCode],[VoidFlag],[WHUsageTransCode],[xDate]
			) INCLUDE (
			[Comments],[CreationDate],[CreationUserId],[DeductGrowerPayFlag],[EventDate],[ExternalId],[HealthNotes],[LastModDate],[OMOrdersShipmentLineItemsIRN],[PostDate],[PostTransactionId],[ProductType],[ProteinDiseasesSymptomsIRN],[ProteinEntitiesIRN],[ProteinFieldCrewsIRN],[ProteinProductsDisposalCategoriesIRN],[ProteinProductWHRecvIRN],[ProteinProductWHUsageIRN],[ProteinVeterinariansIRN],[ProteinWarehousesIRN],[Quantity],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[UserId],[VaccinationNotes],[xTime],[xValue]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHUsage] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] (
			[EntityHistoryFlag],[ProteinEntitiesIRN],[RecordType],[Sex],[xDate]
			) INCLUDE (
			[EventDate],[InactiveDate],[InitialThreadFlag],[Quantity],[SourceCode],[TransCode],[TransferMode]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 12
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] (
			[EntityHistoryFlag],[ProteinEntitiesIRN],[RecordType],[Sex],[xDate]
			) INCLUDE (
			[EventDate],[InactiveDate],[InitialThreadFlag],[Quantity],[SourceCode],[TransCode],[TransferMode]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimEntityInventory] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] (
			[HimEggProductsIRN],[PostStatus],[xDate]
			) INCLUDE (
			[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[Quantity],[SetDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] (
			[HimEggProductsIRN],[PostStatus],[xDate]
			) INCLUDE (
			[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[Quantity],[SetDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetReceiving] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] (
			[ReportLayoutIRN]
			) INCLUDE (
			[ReportGenerationCounter]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] (
			[ReportLayoutIRN]
			) INCLUDE (
			[ReportGenerationCounter]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ReportLayoutUsages] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] (
			[EggRoomType],[EggTransCode],[EntityHistoryFlag],[HimEggPackagingTransIRN],[ProteinFacilityHatcheriesIRN],[ProteinProductsIRN],[TransDate],[VoidFlag]
			) INCLUDE (
			[HimBuggiesIRN],[PostStatus],[ProteinEntitiesIRN],[Quantity],[Units]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] (
			[EggRoomType],[EggTransCode],[EntityHistoryFlag],[HimEggPackagingTransIRN],[ProteinFacilityHatcheriesIRN],[ProteinProductsIRN],[TransDate],[VoidFlag]
			) INCLUDE (
			[HimBuggiesIRN],[PostStatus],[ProteinEntitiesIRN],[Quantity],[Units]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomReceiving] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] (
			[CreationUserId],[InvoiceDate],[InvoiceNo],[InvoiceType],[LastModDate],[PostStatus],[ReplicationDateTime],[ShipDate],[VoidFlag]
			) INCLUDE (
			[OMCustomersIRN],[OMCustomersIRN_ShipTo],[OMOrdersInvoiceIRN],[PrintCounter],[ShipToCustomerName],[U_CDNoteType]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 15
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] (
			[CreationUserId],[InvoiceDate],[InvoiceNo],[InvoiceType],[LastModDate],[PostStatus],[ReplicationDateTime],[ShipDate],[VoidFlag]
			) INCLUDE (
			[OMCustomersIRN],[OMCustomersIRN_ShipTo],[OMOrdersInvoiceIRN],[PrintCounter],[ShipToCustomerName],[U_CDNoteType]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoice] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] (
			[EntityHistoryFlag],[RecordType],[TransDate]
			) INCLUDE (
			[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[ProteinFacilityHatcheriesIRN2]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] (
			[EntityHistoryFlag],[RecordType],[TransDate]
			) INCLUDE (
			[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[ProteinFacilityHatcheriesIRN2]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] (
			[ShipDate]
			) INCLUDE (
			[CreationDate],[RefNo],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment];
			CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] (
			[ShipDate]
			) INCLUDE (
			[CreationDate],[RefNo],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipment] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] (
			[ProteinChartOfAccountsIRN],[ProteinCostCentersIRN],[xDate]
			) INCLUDE (
			[Amount],[Description],[ProteinEntitiesIRN],[ProteinFarmsIRN],[TransCode],[Units]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 9
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] (
			[ProteinChartOfAccountsIRN],[ProteinCostCentersIRN],[xDate]
			) INCLUDE (
			[Amount],[Description],[ProteinEntitiesIRN],[ProteinFarmsIRN],[TransCode],[Units]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinJournalTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] (
			[ProteinFacilityHatcheriesIRN]
			) INCLUDE (
			[HimEggProductsIRN],[ProteinEntitiesIRN],[TransactionIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory];
			CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] (
			[ProteinFacilityHatcheriesIRN]
			) INCLUDE (
			[HimEggProductsIRN],[ProteinEntitiesIRN],[TransactionIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggRoomInventory] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] (
			[ChickTransCode],[HimHatchCategoriesIRN],[ProteinFacilityHatcheriesIRN],[TransCode],[VoidFlag],[xDate]
			) INCLUDE (
			[ProteinEntitiesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv];
			CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] (
			[ChickTransCode],[HimHatchCategoriesIRN],[ProteinFacilityHatcheriesIRN],[TransCode],[VoidFlag],[xDate]
			) INCLUDE (
			[ProteinEntitiesIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimChickInventoryRecv] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] (
			[zBrimAdjustmentTypesIRN]
			) INCLUDE (
			[Comments],[ProteinEntitiesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments];
			CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] (
			[zBrimAdjustmentTypesIRN]
			) INCLUDE (
			[Comments],[ProteinEntitiesIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[zBrimAdjustments] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] (
			[DeliveryDate],[OrderDate],[PostStatus],[ProteinCostCentersIRN]
			) INCLUDE (
			[OMCustomersIRN_BillTo],[OMCustomersIRN_ShipTo],[OrderNo],[ShipDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrders]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrders]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders];
			CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] (
			[DeliveryDate],[OrderDate],[PostStatus],[ProteinCostCentersIRN]
			) INCLUDE (
			[OMCustomersIRN_BillTo],[OMCustomersIRN_ShipTo],[OrderNo],[ShipDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrders] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] (
			[ProteinCostCentersIRN_S],[TransCode],[xDateTime]
			) INCLUDE (
			[CreationDate],[CreationUserId],[DestWarehouseType],[ExternalDriver],[ExternalVehicle],[Gross],[GrossAutoManual],[GrossWtDateTime],[GrossWtScaleRef],[GrossZeroWeight],[GrossZeroWeightDateTime],[GrossZeroWeightScaleRef],[Net],[OMOrdersIRN],[PostStatus],[PostTransactionId],[ProteinCostCentersIRN_D],[ProteinDriversIRN],[ProteinEntitiesIRN_D],[ProteinFarmsIRN_D],[ProteinFarmsIRN_S],[ProteinPOInventoryUsageIRN],[ProteinPOLineItemsIRN],[ProteinVehiclesIRN],[ProteinVehiclesIRN_Trailer],[ProteinVendorsIRN_Haulage],[ProteinWeightScalesIRN],[ProteinWHTransferIRN_Src],[RefNo],[SrcWarehouseType],[Status],[Tare],[TareAutoManual],[TareWtDateTime],[TareWtScaleRef],[TareZeroWeight],[TareZeroWeightDateTime],[TareZeroWeightScaleRef],[UserId],[VoidFlag]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer];
			CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] (
			[ProteinCostCentersIRN_S],[TransCode],[xDateTime]
			) INCLUDE (
			[CreationDate],[CreationUserId],[DestWarehouseType],[ExternalDriver],[ExternalVehicle],[Gross],[GrossAutoManual],[GrossWtDateTime],[GrossWtScaleRef],[GrossZeroWeight],[GrossZeroWeightDateTime],[GrossZeroWeightScaleRef],[Net],[OMOrdersIRN],[PostStatus],[PostTransactionId],[ProteinCostCentersIRN_D],[ProteinDriversIRN],[ProteinEntitiesIRN_D],[ProteinFarmsIRN_D],[ProteinFarmsIRN_S],[ProteinPOInventoryUsageIRN],[ProteinPOLineItemsIRN],[ProteinVehiclesIRN],[ProteinVehiclesIRN_Trailer],[ProteinVendorsIRN_Haulage],[ProteinWeightScalesIRN],[ProteinWHTransferIRN_Src],[RefNo],[SrcWarehouseType],[Status],[Tare],[TareAutoManual],[TareWtDateTime],[TareWtScaleRef],[TareZeroWeight],[TareZeroWeightDateTime],[TareZeroWeightScaleRef],[UserId],[VoidFlag]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinWHTransfer] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_23_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] (
			[InvoicedFlag]
			) INCLUDE (
			[BackOrderFlag],[CompletedFlag],[OMOrdersInventoryUsageIRN],[OMOrdersLineItemsIRN],[OMOrdersShipmentIRN],[QuantityShipped]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_23_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_23_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems];
			CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] (
			[InvoicedFlag]
			) INCLUDE (
			[BackOrderFlag],[CompletedFlag],[OMOrdersInventoryUsageIRN],[OMOrdersLineItemsIRN],[OMOrdersShipmentIRN],[QuantityShipped]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_23_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersShipmentLineItems] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_24_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] (
			[ForceMoveCosts],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[TransCode],[VoidFlag],[xDate]
			) INCLUDE (
			[Quantity]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_24_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_24_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage];
			CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] (
			[ForceMoveCosts],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN],[TransCode],[VoidFlag],[xDate]
			) INCLUDE (
			[Quantity]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_24_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggSetUsage] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_25_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] (
			[FarmWtRefNo],[OMCustomersIRN],[PlantWtRefNo],[PostStatus],[RecordType],[TransactionType],[VoidFlag],[xDate]
			) INCLUDE (
			[DOA],[EventDate],[FarmHdCount],[FarmWtNet],[LotNo],[PlantHdCount],[PlantWtNet],[ProteinEntitiesIRN],[ProteinFacilityPlantsIRN],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_25_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_25_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] (
			[FarmWtRefNo],[OMCustomersIRN],[PlantWtRefNo],[PostStatus],[RecordType],[TransactionType],[VoidFlag],[xDate]
			) INCLUDE (
			[DOA],[EventDate],[FarmHdCount],[FarmWtNet],[LotNo],[PlantHdCount],[PlantWtNet],[ProteinEntitiesIRN],[ProteinFacilityPlantsIRN],[xDateTime]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_25_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsProcRecvTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_26_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] (
			[CreationDate],[InvoiceDate],[PostStatus],[ReplicationDateTime],[VoidFlag]
			) INCLUDE (
			[BatchNo],[CreationUserId],[InvoiceAmount],[InvoiceNo],[InvoicePostDate],[InvoiceType],[LastModDate],[OMOrdersIRN_Tri],[PostTransactionId],[ProteinVendorsIRN],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_26_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_26_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 16
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices];
			CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] (
			[CreationDate],[InvoiceDate],[PostStatus],[ReplicationDateTime],[VoidFlag]
			) INCLUDE (
			[BatchNo],[CreationUserId],[InvoiceAmount],[InvoiceNo],[InvoicePostDate],[InvoiceType],[LastModDate],[OMOrdersIRN_Tri],[PostTransactionId],[ProteinVendorsIRN],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_26_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOInvoices] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_27_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] (
			[BpaProjectionProfilesIRN],[xDate]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_27_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_27_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections];
			CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] (
			[BpaProjectionProfilesIRN],[xDate]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_27_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[xBpaDailyDetailProjections] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_28_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] (
			[FinalTransferFlag]
			) INCLUDE (
			[PmtsTransfersIRN],[ProteinEntitiesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_28_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_28_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources];
			CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] (
			[FinalTransferFlag]
			) INCLUDE (
			[PmtsTransfersIRN],[ProteinEntitiesIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_28_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[PmtsTransferSources] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_29_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] (
			[ProteinCostCentersIRN],[ProteinProductsSalesIRN],[UnitPrice]
			) INCLUDE (
			[LineIndex],[OMOrdersIRN],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_29_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_29_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems];
			CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] (
			[ProteinCostCentersIRN],[ProteinProductsSalesIRN],[UnitPrice]
			) INCLUDE (
			[LineIndex],[OMOrdersIRN],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_29_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersLineItems] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_30_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] (
			[CreationUserId],[ProteinCostCentersIRN],[ProteinFarmsIRN],[PurchaseTransCode],[RecordType],[xDate]
			) INCLUDE (
			[Comments],[CreationDate],[EventDate],[LastModDate],[PostStatus],[PostTransactionId],[ProteinVendorsIRN],[RefNo],[ReversedFlag],[UserId],[VoidFlag],[xTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_30_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_30_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases];
			CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] (
			[CreationUserId],[ProteinCostCentersIRN],[ProteinFarmsIRN],[PurchaseTransCode],[RecordType],[xDate]
			) INCLUDE (
			[Comments],[CreationDate],[EventDate],[LastModDate],[PostStatus],[PostTransactionId],[ProteinVendorsIRN],[RefNo],[ReversedFlag],[UserId],[VoidFlag],[xTime]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_30_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductWHPurchases] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_31_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] (
			[OMPriceMasterIndexIRN]
			) INCLUDE (
			[CreationDate],[CreationUserId],[ExpirationDate],[LastModDate],[PriceDate],[ReplicaSourceId],[ReplicationDateTime],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_31_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_31_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 9
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates];
			CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] (
			[OMPriceMasterIndexIRN]
			) INCLUDE (
			[CreationDate],[CreationUserId],[ExpirationDate],[LastModDate],[PriceDate],[ReplicaSourceId],[ReplicationDateTime],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_31_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMPriceMasterDates] CANNOT BE CREATED.';
END CATCH;


USE [MFMB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_32_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230822
			ON [MFMB].[dbo].[EskerIDB] (
			[CompanyNo],[CurrencyNo],[InvoiceNo],[PODate],[PONo],[ProcessDate],[ReceivingIRN],[ReplicationDateCSV],[ReplicationDateIDB],[ReplicationDateInvoice],[ReplicationDateMTech],[TaxRateIRN]
			) INCLUDE (
			[Buyer],[CostCenterNo],[DiscountAddOnPrice],[DiscountProductNo],[EskerInvoiceAmount],[EskerInvoiceQuantity],[HeaderCostCenterNo],[InvoicedAmount],[InvoiceDate],[PayableInvoiceAmount],[PaymentTermNo],[PostingDate],[ProteinPOInventoryUsageIRN],[ReceiveAmount],[ReceiveQuantity],[Receiver],[ReceivingType],[TaxCodeIRN],[TaxesAmount],[TaxNo],[UnitPrice],[VendorNo],[VendorSKUNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_32_20230822' AND i.object_id = OBJECT_ID('[MFMB].[dbo].[EskerIDB]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_32_20230822' AND i2.object_id = OBJECT_ID('[MFMB].[dbo].[EskerIDB]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 35
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MFMB].[dbo].[EskerIDB] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MFMB].[dbo].[EskerIDB] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB];
			CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230822
			ON [MFMB].[dbo].[EskerIDB] (
			[CompanyNo],[CurrencyNo],[InvoiceNo],[PODate],[PONo],[ProcessDate],[ReceivingIRN],[ReplicationDateCSV],[ReplicationDateIDB],[ReplicationDateInvoice],[ReplicationDateMTech],[TaxRateIRN]
			) INCLUDE (
			[Buyer],[CostCenterNo],[DiscountAddOnPrice],[DiscountProductNo],[EskerInvoiceAmount],[EskerInvoiceQuantity],[HeaderCostCenterNo],[InvoicedAmount],[InvoiceDate],[PayableInvoiceAmount],[PaymentTermNo],[PostingDate],[ProteinPOInventoryUsageIRN],[ReceiveAmount],[ReceiveQuantity],[Receiver],[ReceivingType],[TaxCodeIRN],[TaxesAmount],[TaxNo],[UnitPrice],[VendorNo],[VendorSKUNo]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_32_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230822 ON [MFMB].[dbo].[EskerIDB] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_33_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_33_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] (
			[ProteinProductsSalesIRN]
			) INCLUDE (
			[OMOrdersInvoiceIRN],[OMOrdersShipmentLineItemsIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_33_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_33_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems];
			CREATE NONCLUSTERED INDEX IX_AIDBA_33_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] (
			[ProteinProductsSalesIRN]
			) INCLUDE (
			[OMOrdersInvoiceIRN],[OMOrdersShipmentLineItemsIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_33_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_33_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMOrdersInvoiceLineItems] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_34_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_34_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] (
			[EntityHistoryFlag],[TransferMode],[VoidFlag],[xDate]
			) INCLUDE (
			[Added],[Culled],[EventDate],[FeedInventory],[InventoryDeliveryStatus],[Mortality],[PostStatus],[ProteinEntitiesIRN],[Weight],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_34_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_34_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 14
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_34_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] (
			[EntityHistoryFlag],[TransferMode],[VoidFlag],[xDate]
			) INCLUDE (
			[Added],[Culled],[EventDate],[FeedInventory],[InventoryDeliveryStatus],[Mortality],[PostStatus],[ProteinEntitiesIRN],[Weight],[xDateTime]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_34_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_34_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrimFieldTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_V7_Intermediate_PROD];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_35_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_35_20230822
			ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] (
			[ItemNumber010],[ItemText001],[Status],[TransactionType]
			) INCLUDE (
			[Amount001],[Amount002],[Amount003],[Amount004],[Amount005],[Amount006],[Amount007],[Amount008],[Amount009],[Amount010],[Amount011],[Amount012],[Amount013],[Amount014],[Amount015],[Amount016],[Amount017],[Amount018],[Amount019],[Amount020],[CreationDate],[CreationUserId],[Date001],[Date002],[Date003],[Date004],[Date005],[Date006],[Date007],[Date008],[Date009],[Date010],[DocumentItemNumber],[DocumentItemNumber002],[DocumentNumber],[DocumentRefNumber],[ItemNumber001],[ItemNumber002],[ItemNumber003],[ItemNumber004],[ItemNumber005],[ItemNumber006],[ItemNumber007],[ItemNumber008],[ItemNumber009],[ItemText002],[ItemText003],[ItemText004],[ItemText005],[ItemText006],[ItemText007],[ItemText008],[ItemText009],[ItemText010],[ItemText011],[ItemText012],[ItemText013],[ItemText014],[ItemText015],[ItemText016],[ItemText017],[ItemText018],[ItemText019],[ItemText020],[ItemText021],[ItemText022],[ItemText023],[ItemText024],[ItemText025],[itemtext026],[itemtext027],[itemtext028],[itemtext029],[itemtext030],[LastModDate],[LongItemText001],[LongItemText002],[LongItemText003],[LongItemText004],[LongItemText005],[ProductNumber],[ProductType],[RecordStatus],[ReplicaSourceId],[Units001],[Units002],[Units003],[Units004],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_35_20230822' AND i.object_id = OBJECT_ID('[MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_35_20230822' AND i2.object_id = OBJECT_ID('[MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 93
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData];
			CREATE NONCLUSTERED INDEX IX_AIDBA_35_20230822
			ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] (
			[ItemNumber010],[ItemText001],[Status],[TransactionType]
			) INCLUDE (
			[Amount001],[Amount002],[Amount003],[Amount004],[Amount005],[Amount006],[Amount007],[Amount008],[Amount009],[Amount010],[Amount011],[Amount012],[Amount013],[Amount014],[Amount015],[Amount016],[Amount017],[Amount018],[Amount019],[Amount020],[CreationDate],[CreationUserId],[Date001],[Date002],[Date003],[Date004],[Date005],[Date006],[Date007],[Date008],[Date009],[Date010],[DocumentItemNumber],[DocumentItemNumber002],[DocumentNumber],[DocumentRefNumber],[ItemNumber001],[ItemNumber002],[ItemNumber003],[ItemNumber004],[ItemNumber005],[ItemNumber006],[ItemNumber007],[ItemNumber008],[ItemNumber009],[ItemText002],[ItemText003],[ItemText004],[ItemText005],[ItemText006],[ItemText007],[ItemText008],[ItemText009],[ItemText010],[ItemText011],[ItemText012],[ItemText013],[ItemText014],[ItemText015],[ItemText016],[ItemText017],[ItemText018],[ItemText019],[ItemText020],[ItemText021],[ItemText022],[ItemText023],[ItemText024],[ItemText025],[itemtext026],[itemtext027],[itemtext028],[itemtext029],[itemtext030],[LastModDate],[LongItemText001],[LongItemText002],[LongItemText003],[LongItemText004],[LongItemText005],[ProductNumber],[ProductType],[RecordStatus],[ReplicaSourceId],[Units001],[Units002],[Units003],[Units004],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_35_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_35_20230822 ON [MTECH_V7_Intermediate_PROD].[mtech].[xProteinInterfaceData] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_36_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_36_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] (
			[PostedFlag],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN_S],[ProteinProductsIRN],[TrackingNo]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_36_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_36_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails];
			CREATE NONCLUSTERED INDEX IX_AIDBA_36_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] (
			[PostedFlag],[ProteinEntitiesIRN],[ProteinFacilityHatcheriesIRN_S],[ProteinProductsIRN],[TrackingNo]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_36_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_36_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[HimEggTransfersDetails] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_37_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_37_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] (
			[ApprovalStatus],[CreationUserId],[ProteinCostCentersIRN],[ProteinPaymentTermsIRN]
			) INCLUDE (
			[CreationDate],[POLineNo],[Price],[ProductOverrideDescription],[ProteinMarketsIRN],[ProteinPOContractsDetailsIRN],[ProteinPOIRN],[ProteinPOLineItemsIRN],[ProteinProductsVendorsIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_37_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_37_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems];
			CREATE NONCLUSTERED INDEX IX_AIDBA_37_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] (
			[ApprovalStatus],[CreationUserId],[ProteinCostCentersIRN],[ProteinPaymentTermsIRN]
			) INCLUDE (
			[CreationDate],[POLineNo],[Price],[ProductOverrideDescription],[ProteinMarketsIRN],[ProteinPOContractsDetailsIRN],[ProteinPOIRN],[ProteinPOLineItemsIRN],[ProteinProductsVendorsIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_37_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_37_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItems] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_38_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_38_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] (
			[ProteinFarmsIRN],[ProteinHousesIRN],[ProteinProductsAnimalsIRN],[Status]
			) INCLUDE (
			[CreationDate],[CreationUserId],[EntityNo],[FdsaFeedProgramsIndexIRN],[LastModDate],[PenNo],[ProteinBreedCodesIRN],[ProteinStandardVersionsIRN],[ProteinStandardVersionsIRN_Alt],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_38_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinEntities]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_38_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinEntities]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 14
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities];
			CREATE NONCLUSTERED INDEX IX_AIDBA_38_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] (
			[ProteinFarmsIRN],[ProteinHousesIRN],[ProteinProductsAnimalsIRN],[Status]
			) INCLUDE (
			[CreationDate],[CreationUserId],[EntityNo],[FdsaFeedProgramsIndexIRN],[LastModDate],[PenNo],[ProteinBreedCodesIRN],[ProteinStandardVersionsIRN],[ProteinStandardVersionsIRN_Alt],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_38_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_38_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinEntities] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_39_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_39_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] (
			[BrpaProfilesIRN],[DateSold]
			) INCLUDE (
			[AverageWeight],[AvgWeightGainPerDay],[CatchDate],[CreationDate],[CreationUserId],[EntityNo],[ExternalId],[FeedWithdrawalDays],[FinalFarmPickupFlag],[LastModDate],[LOEAverageAge],[LOEAverageWeight],[LOEHeadSold],[LOEProcessingDensity],[NumberOfTrucks],[ProcessingOrderSequence],[ProductWithdrawalDays],[ProjectedHeadSold],[ProjectedMortalityPercent],[ProjectionMode],[ProteinFacilityPlantsIRN],[ProteinFarmsIRN],[ReplicaSourceId],[ReplicationDateTime],[TravelTimeMinutes],[UserId]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_39_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_39_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 28
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms];
			CREATE NONCLUSTERED INDEX IX_AIDBA_39_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] (
			[BrpaProfilesIRN],[DateSold]
			) INCLUDE (
			[AverageWeight],[AvgWeightGainPerDay],[CatchDate],[CreationDate],[CreationUserId],[EntityNo],[ExternalId],[FeedWithdrawalDays],[FinalFarmPickupFlag],[LastModDate],[LOEAverageAge],[LOEAverageWeight],[LOEHeadSold],[LOEProcessingDensity],[NumberOfTrucks],[ProcessingOrderSequence],[ProductWithdrawalDays],[ProjectedHeadSold],[ProjectedMortalityPercent],[ProjectionMode],[ProteinFacilityPlantsIRN],[ProteinFarmsIRN],[ReplicaSourceId],[ReplicationDateTime],[TravelTimeMinutes],[UserId]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_39_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_39_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedFarms] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_40_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_40_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] (
			[ProteinCostCentersIRN],[RequisitionType],[TransDate]
			) INCLUDE (
			[ProteinProductsIRN],[RefNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_40_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_40_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_40_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] (
			[ProteinCostCentersIRN],[RequisitionType],[TransDate]
			) INCLUDE (
			[ProteinProductsIRN],[RefNo]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_40_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_40_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsRequisitionTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_41_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_41_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] (
			[CatchDate],[DateSold]
			) INCLUDE (
			[Age],[BrpaPlacementSchedulesIRN],[BrpaProfilesIRN],[BrpaProfilesIRN_Offset],[BrpaWeightOverridesIRN],[CatchDateTime],[HeadInventory],[ProjectedAvgWeight],[ProjectedHeadSold],[ProteinEntitiesIRN],[ProteinFacilityPlantsIRN],[ProteinLiveHaulCrewsIRN],[ProteinProductsAnimalsIRN_Gr],[TargetWt]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_41_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_41_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 16
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules];
			CREATE NONCLUSTERED INDEX IX_AIDBA_41_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] (
			[CatchDate],[DateSold]
			) INCLUDE (
			[Age],[BrpaPlacementSchedulesIRN],[BrpaProfilesIRN],[BrpaProfilesIRN_Offset],[BrpaWeightOverridesIRN],[CatchDateTime],[HeadInventory],[ProjectedAvgWeight],[ProjectedHeadSold],[ProteinEntitiesIRN],[ProteinFacilityPlantsIRN],[ProteinLiveHaulCrewsIRN],[ProteinProductsAnimalsIRN_Gr],[TargetWt]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_41_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_41_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaProjectedSchedules] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_42_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_42_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] (
			[PODate],[RecordType]
			) INCLUDE (
			[PONo],[SupplierRefNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_42_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_42_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPO]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_42_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] (
			[PODate],[RecordType]
			) INCLUDE (
			[PONo],[SupplierRefNo]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_42_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_42_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPO] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_43_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_43_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] (
			[TransferId]
			) INCLUDE (
			[AddedF],[AddedM],[AmmoniaLevel],[BinFeedAmount1],[BinFeedAmount2],[BinFeedAmount3],[BinFeedAmount4],[CaloriesF],[CaloriesM],[CarbonDioxide],[CarbonMonoxide],[CFM],[CreationDate],[CreationUserId],[CullEggsInv],[CullEggsProd],[CullEggWeight],[EggWeight],[EggWeightSamples],[EggWeightsFlag],[Electricity],[EntityHistoryFlag],[EPSProductionNormalized],[ERHumidity],[ERHumidityHigh],[ERHumidityLow],[ERTemperature],[ERTemperatureHigh],[ERTemperatureLow],[EventDate],[ExternalId],[FeedConsumedF],[FeedConsumedM],[FeedDaysF],[FeedDaysM],[FeedInventoryF],[FeedInventoryM],[FeedOrderedF],[FeedOrderedM],[FemalesCulled],[FlockHealth],[FmimFeedFormulasIRN_F],[FmimFeedFormulasIRN_M],[FmimFeedTypesIRN_Female],[FmimFeedTypesIRN_Male],[FuelInventory],[Gas],[HatchEggsInv],[HatchEggsProd],[HatchEggWeight],[Humidity],[HumidityHigh],[HumidityLow],[HumidityOutside],[HumidityOutsideHigh],[HumidityOutsideLow],[InventoryDeliveryStatus],[LastModDate],[Lighting],[LightSensor1],[LightSensor2],[LightSensor3],[LitterTemperature],[MalesCulled],[MortalityF],[MortalityM],[Nests],[Notes],[PmtsFieldAllocationIndexIRN],[PostDate],[PostStatus],[PostTransactionId],[ProductionDays],[ProteinEntitiesIRN],[ProteinEntitiesIRN_Src],[RecordSourceType],[RefNo],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[TargetHenWeight],[TargetMaleWeight],[Temperature],[TemperatureHigh],[TemperatureLow],[TemperatureOutside],[TemperatureOutsideHigh],[TemperatureOutsideLow],[TotalEggsInv],[TotalEggsProd],[TotalEggWeight],[TransferMode],[U_CoolCellStatus],[U_Culled],[U_CulledMale],[U_FeederStatus],[U_FoggerStatus],[U_HatchingEgg],[U_HatchingEggEggWt],[U_HatchingEggProd],[U_HatchingEggTotWt],[U_LightStatus],[U_LitterStatus],[U_Medicine],[U_MedicineUOM],[U_MedicineUsage],[U_Sales],[U_SalesMale],[U_SexError],[U_SexErrorMale],[U_SexingError],[U_SonarStaticPressure],[U_TABLEEGG],[U_TABLEEGGEggWt],[U_TABLEEGGProd],[U_TABLEEGGTotWt],[U_Vaccine],[U_VaccineUOM],[U_VaccineUsage],[U_VentilationStatus],[U_WaterStatus],[U_WkAge],[UniformityCvEgg],[UniformityCvF],[UniformityCvM],[UniformityEgg],[UniformityF],[UniformityM],[URLValue],[UserId],[Vaccination],[VoidFlag],[Water],[Waterph],[WeightF],[WeightFSamples],[WeightM],[WeightMSamples],[WeightsFlag],[xDate],[xDateTime]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_43_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_43_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 142
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_43_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] (
			[TransferId]
			) INCLUDE (
			[AddedF],[AddedM],[AmmoniaLevel],[BinFeedAmount1],[BinFeedAmount2],[BinFeedAmount3],[BinFeedAmount4],[CaloriesF],[CaloriesM],[CarbonDioxide],[CarbonMonoxide],[CFM],[CreationDate],[CreationUserId],[CullEggsInv],[CullEggsProd],[CullEggWeight],[EggWeight],[EggWeightSamples],[EggWeightsFlag],[Electricity],[EntityHistoryFlag],[EPSProductionNormalized],[ERHumidity],[ERHumidityHigh],[ERHumidityLow],[ERTemperature],[ERTemperatureHigh],[ERTemperatureLow],[EventDate],[ExternalId],[FeedConsumedF],[FeedConsumedM],[FeedDaysF],[FeedDaysM],[FeedInventoryF],[FeedInventoryM],[FeedOrderedF],[FeedOrderedM],[FemalesCulled],[FlockHealth],[FmimFeedFormulasIRN_F],[FmimFeedFormulasIRN_M],[FmimFeedTypesIRN_Female],[FmimFeedTypesIRN_Male],[FuelInventory],[Gas],[HatchEggsInv],[HatchEggsProd],[HatchEggWeight],[Humidity],[HumidityHigh],[HumidityLow],[HumidityOutside],[HumidityOutsideHigh],[HumidityOutsideLow],[InventoryDeliveryStatus],[LastModDate],[Lighting],[LightSensor1],[LightSensor2],[LightSensor3],[LitterTemperature],[MalesCulled],[MortalityF],[MortalityM],[Nests],[Notes],[PmtsFieldAllocationIndexIRN],[PostDate],[PostStatus],[PostTransactionId],[ProductionDays],[ProteinEntitiesIRN],[ProteinEntitiesIRN_Src],[RecordSourceType],[RefNo],[ReplicaSourceId],[ReplicationDateTime],[SourceCode],[TargetHenWeight],[TargetMaleWeight],[Temperature],[TemperatureHigh],[TemperatureLow],[TemperatureOutside],[TemperatureOutsideHigh],[TemperatureOutsideLow],[TotalEggsInv],[TotalEggsProd],[TotalEggWeight],[TransferMode],[U_CoolCellStatus],[U_Culled],[U_CulledMale],[U_FeederStatus],[U_FoggerStatus],[U_HatchingEgg],[U_HatchingEggEggWt],[U_HatchingEggProd],[U_HatchingEggTotWt],[U_LightStatus],[U_LitterStatus],[U_Medicine],[U_MedicineUOM],[U_MedicineUsage],[U_Sales],[U_SalesMale],[U_SexError],[U_SexErrorMale],[U_SexingError],[U_SonarStaticPressure],[U_TABLEEGG],[U_TABLEEGGEggWt],[U_TABLEEGGProd],[U_TABLEEGGTotWt],[U_Vaccine],[U_VaccineUOM],[U_VaccineUsage],[U_VentilationStatus],[U_WaterStatus],[U_WkAge],[UniformityCvEgg],[UniformityCvF],[UniformityCvM],[UniformityEgg],[UniformityF],[UniformityM],[URLValue],[UserId],[Vaccination],[VoidFlag],[Water],[Waterph],[WeightF],[WeightFSamples],[WeightM],[WeightMSamples],[WeightsFlag],[xDate],[xDateTime]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_43_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_43_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BimFieldTrans] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_44_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_44_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] (
			[ProteinCostCentersIRN],[xDate]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_44_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_44_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases];
			CREATE NONCLUSTERED INDEX IX_AIDBA_44_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] (
			[ProteinCostCentersIRN],[xDate]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_44_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_44_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinAdminPurchases] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_45_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_45_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] (
			[BrpaProfilesIRN]
			) INCLUDE (
			[MaxTargetWeight],[MinTargetWeight],[ProteinFacilityPlantsIRN],[ProteinProductsAnimalsIRN],[ProteinProductsAnimalsIRN_Gr],[TargetWeight]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_45_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaTargets]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_45_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaTargets]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets];
			CREATE NONCLUSTERED INDEX IX_AIDBA_45_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] (
			[BrpaProfilesIRN]
			) INCLUDE (
			[MaxTargetWeight],[MinTargetWeight],[ProteinFacilityPlantsIRN],[ProteinProductsAnimalsIRN],[ProteinProductsAnimalsIRN_Gr],[TargetWeight]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_45_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_45_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaTargets] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_46_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_46_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] (
			[ActiveFlag],[CreditLimit],[ShipToFlag],[U_Line_Of_Business]
			) INCLUDE (
			[Address1],[BillToFlag],[CustomerName],[CustomerNo],[ProteinCitiesIRN],[ProteinCountriesIRN],[ProteinCurrenciesIRN],[ProteinStatesIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_46_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMCustomers]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_46_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[OMCustomers]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 12
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers];
			CREATE NONCLUSTERED INDEX IX_AIDBA_46_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] (
			[ActiveFlag],[CreditLimit],[ShipToFlag],[U_Line_Of_Business]
			) INCLUDE (
			[Address1],[BillToFlag],[CustomerName],[CustomerNo],[ProteinCitiesIRN],[ProteinCountriesIRN],[ProteinCurrenciesIRN],[ProteinStatesIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_46_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_46_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[OMCustomers] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_47_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_47_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] (
			[ActiveFlag],[ProteinVendorsIRN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_47_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_47_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors];
			CREATE NONCLUSTERED INDEX IX_AIDBA_47_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] (
			[ActiveFlag],[ProteinVendorsIRN]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_47_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_47_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsVendors] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_48_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_48_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] (
			[ActiveFlag],[FarmType],[ProteinFacilityPlantsIRN],[ProteinGrowoutCodesIRN]
			) INCLUDE (
			[FarmName],[FarmNo],[ProteinCostCentersIRN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_48_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinFarms]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_48_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinFarms]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms];
			CREATE NONCLUSTERED INDEX IX_AIDBA_48_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] (
			[ActiveFlag],[FarmType],[ProteinFacilityPlantsIRN],[ProteinGrowoutCodesIRN]
			) INCLUDE (
			[FarmName],[FarmNo],[ProteinCostCentersIRN]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_48_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_48_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinFarms] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_49_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_49_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] (
			[MedicatedFlag],[RequisitionFlag]
			) INCLUDE (
			[ProteinProductsIRN],[WDDays]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_49_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_49_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField];
			CREATE NONCLUSTERED INDEX IX_AIDBA_49_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] (
			[MedicatedFlag],[RequisitionFlag]
			) INCLUDE (
			[ProteinProductsIRN],[WDDays]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_49_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_49_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProductsField] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_50_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_50_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] (
			[DateMovedIn],[ProteinFarmsIRN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_50_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_50_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules];
			CREATE NONCLUSTERED INDEX IX_AIDBA_50_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] (
			[DateMovedIn],[ProteinFarmsIRN]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_50_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_50_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[BrpaPlacementSchedules] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_51_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_51_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] (
			[ActiveFlag],[ProductType]
			) INCLUDE (
			[Description],[ProductNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_51_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProducts]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_51_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinProducts]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts];
			CREATE NONCLUSTERED INDEX IX_AIDBA_51_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] (
			[ActiveFlag],[ProductType]
			) INCLUDE (
			[Description],[ProductNo]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_51_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_51_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinProducts] CANNOT BE CREATED.';
END CATCH;


USE [MTECH_v7_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_52_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_52_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] (
			[ProteinPOLineItemsIRN]
			) INCLUDE (
			[ProteinProductsVendorsAddOnIRN],[Rate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_52_20230822' AND i.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_52_20230822' AND i2.object_id = OBJECT_ID('[MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns];
			CREATE NONCLUSTERED INDEX IX_AIDBA_52_20230822
			ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] (
			[ProteinPOLineItemsIRN]
			) INCLUDE (
			[ProteinProductsVendorsAddOnIRN],[Rate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_52_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_52_20230822 ON [MTECH_v7_PRODUCTION].[mtech].[ProteinPOLineItemsAddOns] CANNOT BE CREATED.';
END CATCH;

