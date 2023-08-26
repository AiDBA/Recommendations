
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] (
			[ALLOCATION_ZONE_KEY],[CLASS_TYPE],[EQUIPMENT_KEY],[LOCATION_PROFILE_ID],[ROLE],[SIS_ADDRESS],[STATUS],[TRANSPORT_NODE_ID],[WORK_ZONE_KEY]
			) INCLUDE (
			[AVAILABLE_CAPACITY],[CHECK_DIGIT],[CREATE_DATE],[CREATED_BY],[HOST_LOCATION_ID],[LANDSCAPE],[LAST_CYCLE_COUNT_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LOCATION_ID],[LOCATION_KEY],[LU_CONSOLIDATION_STRING],[LU_CONSOLIDATION_STRING_PREF],[MODULE],[NODE_DESTINATION_TYPE],[OCCUPATION_SEQUENCE],[OCCUPIED_CAPACITY],[ORIENTATION],[OUTFEED_LOCATION_KEY],[PARENT_LOCATION_KEY],[RACK],[RESERVED_CAPACITY],[ROLE_SEQUENCE],[SIDE_OF_AISLE],[STAGING_LOCATION],[STATUS_DATE],[STORAGE_PATH],[STORAGE_ZONE_KEY],[SYSTEM],[TRANSACTION_COUNT],[TU_CONSOLIDATION_STRING],[UPDATE_DATE],[UPDATED_BY],[WEIGHT],[WORK_PATH],[WORKSTATION_ID],[WORKSTATION_LOCATION_DISPLAY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]')
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
		COUNT(*) = 48
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] (
			[CLASS_TYPE]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP]')
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
		COUNT(*) = 1
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] (
			[CLASS_TYPE],[TRANSPORT_ORDER_KEY]
			) INCLUDE (
			[LAST_REPORTED_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]')
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
			DROP INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[TRANS] (
			[CLASS_TYPE],[OPERATION_ID],[TRANSACTION_TYPE]
			) INCLUDE (
			[ADJUST_REASON_ID],[CREATE_DATE],[CREATED_BY],[DISPLAY_FROM_QUANTITY],[DISPLAY_TO_QUANTITY],[DISPLAY_TRANS_QUANTITY],[FROM_ASN],[FROM_ASN_LINE_NUMBER],[FROM_ATTRIBUTES_SET],[FROM_BEST_BEFORE_DATE],[FROM_ER_ID],[FROM_ER_LINE_NUMBER],[FROM_EXPIRY_DATE],[FROM_HOST_MATERIAL_STATUS],[FROM_LOAD_UNIT_ID],[FROM_LOCATION_ID],[FROM_LOT_CODE],[FROM_LU_KEY],[FROM_MANUFACTURING_DATE],[FROM_MATERIAL_STATUS],[FROM_ORDER_ID],[FROM_OWNER_ID],[FROM_PARENT_TU_ID],[FROM_PRODUCT_ID],[FROM_PRODUCT_UOM_TREE],[FROM_QUANTITY],[FROM_RECEIPT_ID],[FROM_SHIPMENT_ID],[FROM_SUSPECT],[FROM_TRANSPORT_UNIT_HEIGHT],[FROM_TRANSPORT_UNIT_LENGTH],[FROM_TRANSPORT_UNIT_VOLUME],[FROM_TRANSPORT_UNIT_WEIGHT],[FROM_TRANSPORT_UNIT_WIDTH],[FROM_TU_ID],[FROM_TU_TYPE],[FROM_UOM_ID],[FROM_WORK_ORDER_ID],[FROM_WORKSTATION_ID],[FROM_X],[FROM_Y],[FROM_Z],[INSPECTED_AT],[TO_ASN],[TO_ASN_LINE_NUMBER],[TO_ATTRIBUTES_SET],[TO_BEST_BEFORE_DATE],[TO_ER_ID],[TO_ER_LINE_NUMBER],[TO_EXPIRY_DATE],[TO_HOST_MATERIAL_STATUS],[TO_LOAD_UNIT_ID],[TO_LOCATION_ID],[TO_LOT_CODE],[TO_LU_KEY],[TO_MANUFACTURING_DATE],[TO_MATERIAL_STATUS],[TO_ORDER_ID],[TO_OWNER_ID],[TO_PARENT_TU_ID],[TO_PRODUCT_ID],[TO_PRODUCT_UOM_TREE],[TO_QUANTITY],[TO_RECEIPT_ID],[TO_SHIPMENT_ID],[TO_SUSPECT],[TO_TRANSPORT_UNIT_HEIGHT],[TO_TRANSPORT_UNIT_LENGTH],[TO_TRANSPORT_UNIT_VOLUME],[TO_TRANSPORT_UNIT_WEIGHT],[TO_TRANSPORT_UNIT_WIDTH],[TO_TU_ID],[TO_TU_TYPE],[TO_UOM_ID],[TO_WORK_ORDER_ID],[TO_WORKSTATION_ID],[TO_X],[TO_Y],[TO_Z],[TRANS_KEY],[TRANS_QUANTITY],[TRANSACTION_COUNT],[TRANSPORT_ORDER_KEY],[UPDATE_DATE],[UPDATED_BY],[USER_COMMENT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]')
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
		COUNT(*) = 89
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANS] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] (
			[CLASS_TYPE],[CREATE_DATE],[DIRECTION],[MESSAGE_STATUS]
			) INCLUDE (
			[MESSAGE_ID],[MESSAGE_TYPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]')
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
			DROP INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] (
			[ALLOCATION_ZONE_KEY],[CLASS_TYPE],[EQUIPMENT_KEY],[LOCATION_PROFILE_ID],[ROLE],[SIS_ADDRESS],[STATUS],[TRANSPORT_NODE_ID],[WORK_ZONE_KEY]
			) INCLUDE (
			[AVAILABLE_CAPACITY],[CHECK_DIGIT],[CREATE_DATE],[CREATED_BY],[HOST_LOCATION_ID],[LANDSCAPE],[LAST_CYCLE_COUNT_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LOCATION_ID],[LOCATION_KEY],[LU_CONSOLIDATION_STRING],[LU_CONSOLIDATION_STRING_PREF],[MODULE],[NODE_DESTINATION_TYPE],[OCCUPATION_SEQUENCE],[OCCUPIED_CAPACITY],[ORIENTATION],[OUTFEED_LOCATION_KEY],[PARENT_LOCATION_KEY],[RACK],[RESERVED_CAPACITY],[ROLE_SEQUENCE],[SIDE_OF_AISLE],[STAGING_LOCATION],[STATUS_DATE],[STORAGE_PATH],[STORAGE_ZONE_KEY],[SYSTEM],[TRANSACTION_COUNT],[TU_CONSOLIDATION_STRING],[UPDATE_DATE],[UPDATED_BY],[WEIGHT],[WORK_PATH],[WORKSTATION_ID],[WORKSTATION_LOCATION_DISPLAY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]')
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
		COUNT(*) = 48
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] (
			[ALLOCATION_ZONE_KEY],[CLASS_TYPE],[EQUIPMENT_KEY],[LOCATION_PROFILE_ID],[ROLE],[SIS_ADDRESS],[STATUS],[TRANSPORT_NODE_ID],[WORK_ZONE_KEY]
			) INCLUDE (
			[AVAILABLE_CAPACITY],[CHECK_DIGIT],[CREATE_DATE],[CREATED_BY],[HOST_LOCATION_ID],[LANDSCAPE],[LAST_CYCLE_COUNT_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LOCATION_ID],[LOCATION_KEY],[LU_CONSOLIDATION_STRING],[LU_CONSOLIDATION_STRING_PREF],[MODULE],[NODE_DESTINATION_TYPE],[OCCUPATION_SEQUENCE],[OCCUPIED_CAPACITY],[ORIENTATION],[OUTFEED_LOCATION_KEY],[PARENT_LOCATION_KEY],[RACK],[RESERVED_CAPACITY],[ROLE_SEQUENCE],[SIDE_OF_AISLE],[STAGING_LOCATION],[STATUS_DATE],[STORAGE_PATH],[STORAGE_ZONE_KEY],[SYSTEM],[TRANSACTION_COUNT],[TU_CONSOLIDATION_STRING],[UPDATE_DATE],[UPDATED_BY],[WEIGHT],[WORK_PATH],[WORKSTATION_ID],[WORKSTATION_LOCATION_DISPLAY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] (
			[CLASS_TYPE]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP]')
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
		COUNT(*) = 1
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] (
			[CLASS_TYPE]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] (
			[CLASS_TYPE],[TRANSPORT_ORDER_KEY]
			) INCLUDE (
			[LAST_REPORTED_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]')
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
			DROP INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] (
			[CLASS_TYPE],[TRANSPORT_ORDER_KEY]
			) INCLUDE (
			[LAST_REPORTED_POSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[TRANS] (
			[CLASS_TYPE],[OPERATION_ID],[TRANSACTION_TYPE]
			) INCLUDE (
			[ADJUST_REASON_ID],[CREATE_DATE],[CREATED_BY],[DISPLAY_FROM_QUANTITY],[DISPLAY_TO_QUANTITY],[DISPLAY_TRANS_QUANTITY],[FROM_ASN],[FROM_ASN_LINE_NUMBER],[FROM_ATTRIBUTES_SET],[FROM_BEST_BEFORE_DATE],[FROM_ER_ID],[FROM_ER_LINE_NUMBER],[FROM_EXPIRY_DATE],[FROM_HOST_MATERIAL_STATUS],[FROM_LOAD_UNIT_ID],[FROM_LOCATION_ID],[FROM_LOT_CODE],[FROM_LU_KEY],[FROM_MANUFACTURING_DATE],[FROM_MATERIAL_STATUS],[FROM_ORDER_ID],[FROM_OWNER_ID],[FROM_PARENT_TU_ID],[FROM_PRODUCT_ID],[FROM_PRODUCT_UOM_TREE],[FROM_QUANTITY],[FROM_RECEIPT_ID],[FROM_SHIPMENT_ID],[FROM_SUSPECT],[FROM_TRANSPORT_UNIT_HEIGHT],[FROM_TRANSPORT_UNIT_LENGTH],[FROM_TRANSPORT_UNIT_VOLUME],[FROM_TRANSPORT_UNIT_WEIGHT],[FROM_TRANSPORT_UNIT_WIDTH],[FROM_TU_ID],[FROM_TU_TYPE],[FROM_UOM_ID],[FROM_WORK_ORDER_ID],[FROM_WORKSTATION_ID],[FROM_X],[FROM_Y],[FROM_Z],[INSPECTED_AT],[TO_ASN],[TO_ASN_LINE_NUMBER],[TO_ATTRIBUTES_SET],[TO_BEST_BEFORE_DATE],[TO_ER_ID],[TO_ER_LINE_NUMBER],[TO_EXPIRY_DATE],[TO_HOST_MATERIAL_STATUS],[TO_LOAD_UNIT_ID],[TO_LOCATION_ID],[TO_LOT_CODE],[TO_LU_KEY],[TO_MANUFACTURING_DATE],[TO_MATERIAL_STATUS],[TO_ORDER_ID],[TO_OWNER_ID],[TO_PARENT_TU_ID],[TO_PRODUCT_ID],[TO_PRODUCT_UOM_TREE],[TO_QUANTITY],[TO_RECEIPT_ID],[TO_SHIPMENT_ID],[TO_SUSPECT],[TO_TRANSPORT_UNIT_HEIGHT],[TO_TRANSPORT_UNIT_LENGTH],[TO_TRANSPORT_UNIT_VOLUME],[TO_TRANSPORT_UNIT_WEIGHT],[TO_TRANSPORT_UNIT_WIDTH],[TO_TU_ID],[TO_TU_TYPE],[TO_UOM_ID],[TO_WORK_ORDER_ID],[TO_WORKSTATION_ID],[TO_X],[TO_Y],[TO_Z],[TRANS_KEY],[TRANS_QUANTITY],[TRANSACTION_COUNT],[TRANSPORT_ORDER_KEY],[UPDATE_DATE],[UPDATED_BY],[USER_COMMENT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]')
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
		COUNT(*) = 89
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANS] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANS] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[TRANS] (
			[CLASS_TYPE],[OPERATION_ID],[TRANSACTION_TYPE]
			) INCLUDE (
			[ADJUST_REASON_ID],[CREATE_DATE],[CREATED_BY],[DISPLAY_FROM_QUANTITY],[DISPLAY_TO_QUANTITY],[DISPLAY_TRANS_QUANTITY],[FROM_ASN],[FROM_ASN_LINE_NUMBER],[FROM_ATTRIBUTES_SET],[FROM_BEST_BEFORE_DATE],[FROM_ER_ID],[FROM_ER_LINE_NUMBER],[FROM_EXPIRY_DATE],[FROM_HOST_MATERIAL_STATUS],[FROM_LOAD_UNIT_ID],[FROM_LOCATION_ID],[FROM_LOT_CODE],[FROM_LU_KEY],[FROM_MANUFACTURING_DATE],[FROM_MATERIAL_STATUS],[FROM_ORDER_ID],[FROM_OWNER_ID],[FROM_PARENT_TU_ID],[FROM_PRODUCT_ID],[FROM_PRODUCT_UOM_TREE],[FROM_QUANTITY],[FROM_RECEIPT_ID],[FROM_SHIPMENT_ID],[FROM_SUSPECT],[FROM_TRANSPORT_UNIT_HEIGHT],[FROM_TRANSPORT_UNIT_LENGTH],[FROM_TRANSPORT_UNIT_VOLUME],[FROM_TRANSPORT_UNIT_WEIGHT],[FROM_TRANSPORT_UNIT_WIDTH],[FROM_TU_ID],[FROM_TU_TYPE],[FROM_UOM_ID],[FROM_WORK_ORDER_ID],[FROM_WORKSTATION_ID],[FROM_X],[FROM_Y],[FROM_Z],[INSPECTED_AT],[TO_ASN],[TO_ASN_LINE_NUMBER],[TO_ATTRIBUTES_SET],[TO_BEST_BEFORE_DATE],[TO_ER_ID],[TO_ER_LINE_NUMBER],[TO_EXPIRY_DATE],[TO_HOST_MATERIAL_STATUS],[TO_LOAD_UNIT_ID],[TO_LOCATION_ID],[TO_LOT_CODE],[TO_LU_KEY],[TO_MANUFACTURING_DATE],[TO_MATERIAL_STATUS],[TO_ORDER_ID],[TO_OWNER_ID],[TO_PARENT_TU_ID],[TO_PRODUCT_ID],[TO_PRODUCT_UOM_TREE],[TO_QUANTITY],[TO_RECEIPT_ID],[TO_SHIPMENT_ID],[TO_SUSPECT],[TO_TRANSPORT_UNIT_HEIGHT],[TO_TRANSPORT_UNIT_LENGTH],[TO_TRANSPORT_UNIT_VOLUME],[TO_TRANSPORT_UNIT_WEIGHT],[TO_TRANSPORT_UNIT_WIDTH],[TO_TU_ID],[TO_TU_TYPE],[TO_UOM_ID],[TO_WORK_ORDER_ID],[TO_WORKSTATION_ID],[TO_X],[TO_Y],[TO_Z],[TRANS_KEY],[TRANS_QUANTITY],[TRANSACTION_COUNT],[TRANSPORT_ORDER_KEY],[UPDATE_DATE],[UPDATED_BY],[USER_COMMENT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] (
			[CLASS_TYPE],[CREATE_DATE],[DIRECTION],[MESSAGE_STATUS]
			) INCLUDE (
			[MESSAGE_ID],[MESSAGE_TYPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230506' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230506' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]')
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
			DROP INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] (
			[CLASS_TYPE],[CREATE_DATE],[DIRECTION],[MESSAGE_STATUS]
			) INCLUDE (
			[MESSAGE_ID],[MESSAGE_TYPE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] CANNOT BE CREATED.';
END CATCH;

