
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ASN] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_KEY],[OWNER_KEY],[STATUS],[TU_ID]
			) INCLUDE (
			[ASN_KEY],[ASN_TYPE],[CONTACT_KEY],[CREATE_DATE],[CREATED_BY],[HEIGHT],[KEEP_TU],[LENGTH],[LOCAL],[PRODUCTION_LINE_NO],[STATUS_DATE],[TRANSACTION_COUNT],[TU_TYPE],[UPDATE_DATE],[UPDATED_BY],[VOLUME],[WEIGHT],[WIDTH]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ASN]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ASN]')
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
		COUNT(*) = 23
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[ASN] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] (
			[CLASS_TYPE],[CONTAINER_NUMBER],[DOCK_NO],[PURPOSE],[SHIPMENT_ID],[STATUS],[VEHICLE_NO]
			) INCLUDE (
			[APPOINTMENT_SLOT],[CHECK_IN_DATE],[CHECK_OUT_DATE],[CREATE_DATE],[CREATED_BY],[DRIVER_ID],[DRIVER_NAME],[LOADING_TYPE],[PHONE_NUMBER],[PRIORITY],[TASK_TYPE],[TRANSACTION_COUNT],[TRUCK_INSPECTED_BY],[TRUCK_INSPECTION],[TRUCK_INSPECTION_COMMENT],[TRUCK_INSPECTION_FAILURE],[TRUCK_INSPECTION_RESULT],[TRUCK_LENGTH_45FT],[UPDATE_DATE],[UPDATED_BY],[VEHICLE_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK]')
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
			DROP INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] (
			[ARRIVAL_GATE_TIME],[CLASS_TYPE],[CONTAINER_NUMBER],[FLOW_STATE],[PRIORIRY_QUEUE],[SHIPMENT_ID],[SHIPMENT_TYPE],[TRUCK_ID]
			) INCLUDE (
			[ARRIVAL_DOCK_TIME],[CREATE_DATE],[CREATED_BY],[DOCK_ASSIGN_KEY],[FREE_DOCK_BY],[LAST_TQMS_EXEC_END_DATE],[LEAVE_DOCK_TIME],[LEAVE_GATE_TIME],[LOADING_TYPE],[PREVIOUS_FLOW_STATE],[PREVIOUS_STATUS],[STATUS],[STATUS_DATE],[TRANSACTION_COUNT],[TRANSPORTER_NAME],[TRUCK_QUEUE_KEY],[UPDATE_DATE],[UPDATED_BY],[VEHICLE_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE]')
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
		COUNT(*) = 27
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] (
			[ALLOCATION_ZONE_KEY],[AVAILABLE_CAPACITY],[CLASS_TYPE],[EQUIPMENT_KEY],[LOCATION_PROFILE_ID],[ROLE],[SIDE_OF_AISLE],[SIS_ADDRESS],[STATUS],[TRANSPORT_NODE_ID],[WORK_ZONE_KEY],[WORKSTATION_ID]
			) INCLUDE (
			[CHECK_DIGIT],[CREATE_DATE],[CREATED_BY],[HOST_LOCATION_ID],[LANDSCAPE],[LAST_CYCLE_COUNT_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LOCATION_ID],[LOCATION_KEY],[LU_CONSOLIDATION_STRING],[LU_CONSOLIDATION_STRING_PREF],[MODULE],[NODE_DESTINATION_TYPE],[OCCUPATION_SEQUENCE],[OCCUPIED_CAPACITY],[ORIENTATION],[OUTFEED_LOCATION_KEY],[PARENT_LOCATION_KEY],[RACK],[RESERVED_CAPACITY],[ROLE_SEQUENCE],[STAGING_LOCATION],[STATUS_DATE],[STORAGE_PATH],[STORAGE_ZONE_KEY],[SYSTEM],[TRANSACTION_COUNT],[TU_CONSOLIDATION_STRING],[UPDATE_DATE],[UPDATED_BY],[WEIGHT],[WORK_PATH],[WORKSTATION_LOCATION_DISPLAY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]')
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
			DROP INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] (
			[CLASS_TYPE],[SHIPPING_DATE],[STATUS]
			) INCLUDE (
			[SHIPMENT_ID],[SHIPMENT_KEY],[STAGING_LOCATION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPMENT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPMENT]')
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
			DROP INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] (
			[CREATE_DATE]
			) INCLUDE (
			[PRODUCT_ID],[QUANTITY_SHIPPED]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY]')
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
			DROP INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] (
			[CLASS_TYPE],[LAST_QC_DATE],[LOGICAL_GROUP],[LOGICAL_SEQUENCE],[ORDER_KEY],[PROCESS_STATUS],[RESERVED_LOCATION_KEY],[SHIPMENT_KEY],[STATUS],[TU_TYPE_ID],[UPDATE_DATE]
			) INCLUDE (
			[CRANE_DEPOSIT_COUNTER],[CREATE_DATE],[CREATED_BY],[DAMAGED_FLAG],[DIRTY_FLAG],[HEIGHT],[INSPECTED_AT_TRANSPORT_NODE],[LABEL_PRINT],[LAST_CYCLE_COUNT_DATE],[LAST_MOVE_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LENGTH],[LOCATION_KEY],[OCCUPATION_SEQUENCE],[ORDER_TU_PLAN_KEY],[OWNER_KEY],[PARENT_TU_KEY],[ROOT_LOCATION_KEY],[ROOT_TU_KEY],[STATUS_DATE],[TRANSACTION_COUNT],[TU_ID],[TU_KEY],[TU_STOP_SEQUENCE],[UNIDENTIFIED_FLAG],[UPDATED_BY],[VIRTUAL],[VOLUME],[WEIGHT],[WIDTH],[WO_READY_RELEASE],[WRAPPED_FOR_OUTFEED],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT]')
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
		COUNT(*) = 46
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] (
			[CLASS_TYPE],[CLEAR_DATE],[CREATE_DATE],[END_DATE],[OBJECTID],[OCCURRENCE_DATE],[ORIGIN],[ORIGIN_CATEGORY],[PENDING],[SEVERITY],[START_DATE]
			) INCLUDE (
			[EVENT_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EVENTLOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EVENTLOG]')
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
			DROP INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANS] (
			[CLASS_TYPE],[CREATE_DATE],[FROM_LU_KEY],[FROM_ORDER_ID],[FROM_TRANSPORT_UNIT_WEIGHT],[FROM_TU_ID],[OPERATION_ID],[TO_LOCATION_ID],[TO_LU_KEY],[TO_MATERIAL_STATUS],[TO_TRANSPORT_UNIT_WEIGHT],[TO_TU_ID],[TRANSACTION_TYPE]
			) INCLUDE (
			[ADJUST_REASON_ID],[CREATED_BY],[DISPLAY_FROM_QUANTITY],[DISPLAY_TO_QUANTITY],[DISPLAY_TRANS_QUANTITY],[FROM_ASN],[FROM_ASN_LINE_NUMBER],[FROM_ATTRIBUTES_SET],[FROM_BEST_BEFORE_DATE],[FROM_ER_ID],[FROM_ER_LINE_NUMBER],[FROM_EXPIRY_DATE],[FROM_HOST_MATERIAL_STATUS],[FROM_LOAD_UNIT_ID],[FROM_LOCATION_ID],[FROM_LOT_CODE],[FROM_MANUFACTURING_DATE],[FROM_MATERIAL_STATUS],[FROM_OWNER_ID],[FROM_PARENT_TU_ID],[FROM_PRODUCT_ID],[FROM_PRODUCT_UOM_TREE],[FROM_QUANTITY],[FROM_RECEIPT_ID],[FROM_SHIPMENT_ID],[FROM_SUSPECT],[FROM_TRANSPORT_UNIT_HEIGHT],[FROM_TRANSPORT_UNIT_LENGTH],[FROM_TRANSPORT_UNIT_VOLUME],[FROM_TRANSPORT_UNIT_WIDTH],[FROM_TU_TYPE],[FROM_UOM_ID],[FROM_WORK_ORDER_ID],[FROM_WORKSTATION_ID],[FROM_X],[FROM_Y],[FROM_Z],[INSPECTED_AT],[TO_ASN],[TO_ASN_LINE_NUMBER],[TO_ATTRIBUTES_SET],[TO_BEST_BEFORE_DATE],[TO_ER_ID],[TO_ER_LINE_NUMBER],[TO_EXPIRY_DATE],[TO_HOST_MATERIAL_STATUS],[TO_LOAD_UNIT_ID],[TO_LOT_CODE],[TO_MANUFACTURING_DATE],[TO_ORDER_ID],[TO_OWNER_ID],[TO_PARENT_TU_ID],[TO_PRODUCT_ID],[TO_PRODUCT_UOM_TREE],[TO_QUANTITY],[TO_RECEIPT_ID],[TO_SHIPMENT_ID],[TO_SUSPECT],[TO_TRANSPORT_UNIT_HEIGHT],[TO_TRANSPORT_UNIT_LENGTH],[TO_TRANSPORT_UNIT_VOLUME],[TO_TRANSPORT_UNIT_WIDTH],[TO_TU_TYPE],[TO_UOM_ID],[TO_WORK_ORDER_ID],[TO_WORKSTATION_ID],[TO_X],[TO_Y],[TO_Z],[TRANS_KEY],[TRANS_QUANTITY],[TRANSACTION_COUNT],[TRANSPORT_ORDER_KEY],[UPDATE_DATE],[UPDATED_BY],[USER_COMMENT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]')
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
			DROP INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANS] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] (
			[AUTO_ALLOC_ALLOWED],[CLASS_TYPE],[CREATE_DATE],[DISPATCH_DATE],[FLOW_STATE],[ORDER_GROUP_KEY],[ORDER_ID],[OWNER_KEY],[RELEASED],[RELEASED_FOR_ALLOCATION],[RELEASED_FOR_PICKING],[STATUS],[STATUS_DATE],[WORK_ORDER_KEY]
			) INCLUDE (
			[BILLING_ADDRESS_KEY],[CONSOLIDATION_LOCATION_KEY],[CONSUMPTION_LOCATION_ID],[CONTACT_KEY],[CREATED_BY],[CURRENT_SHIPMENT_KEY],[FLOW_STACK],[LOADING_TYPE],[LOCAL],[ORDER_ALT_TU_TYPE_ID],[ORDER_DATE],[ORDER_KEY],[ORDER_TU_TYPE_ID],[ORDER_TYPE],[PRIORITY],[SHIPPING_ADDRESS_KEY],[SHORT_ALLOCATION_ALLOWED],[SHORT_RELEASING_ALLOWED],[SHORT_SHIPPING_ALLOWED],[STOP_SEQUENCE],[TOTAL_PALLET_NUMBER],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[WORKSTATION_ID],[WORKSTATION_LOCATION_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER]')
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
		COUNT(*) = 40
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] (
			[CLASS_TYPE],[CREATE_DATE],[ERROR_HANDLING],[EXPRESS],[FROM_STATE],[LAST_REPORTED_POSITION],[TO_STATE],[TRANSITION],[TRANSPORT_ORDER_KEY]
			) INCLUDE (
			[ASSIGNMENT_GROUP_ID],[ASSIGNMENT_GROUP_SIZE],[ASSIGNMENT_ORIENTATION],[ASSIGNMENT_SEQUENCE],[ASSIGNMENT_SEQUENCE_SIZE],[ASSIGNMENT_SUB_SEQUENCE],[CREATED_BY],[CURRENT_LOCATION_ID],[DESTINATION_LOCATION_ID],[DESTINATION_NODE_ID],[ERROR_HANDLING_START_DATE],[LAST_PASSED_SEQUENCE_NODE_ID],[LOOP_COUNTER],[MESSAGE],[OPERATION],[PRIORITY],[RESERVED_TARGET_BUFFERS],[SOURCE_LOCATION_ID],[SOURCE_NODE_ID],[STATUS],[TO_WORKFLOW],[TRANSACTION_COUNT],[TRANSPORT_ASSIGNMENT],[TRANSPORT_EQUIPMENT_ID],[TRANSPORT_LOG_KEY],[TU_ID],[UPDATE_DATE],[UPDATED_BY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]')
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
		COUNT(*) = 37
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_LINE_KEY]
			) INCLUDE (
			[ASN_LINE_KEY],[ATTRIBUTE_SET],[BEST_BEFORE_DATE],[CHECK_IN_DATE],[CHECKIN_DETAIL_KEY],[CREATE_DATE],[CREATED_BY],[EXPIRY_DATE],[HOST_LOCATION_ID],[LOAD_UNIT_ID],[LOT_CODE],[MANUFACTURING_DATE],[MATERIAL_STATUS_ID],[PRODUCT_UOM_TREE],[QUANTITY],[SENT_TO_HOST],[TRANSACTION_COUNT],[TU_ID],[UOM_ID],[UPDATE_DATE],[UPDATED_BY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL]')
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
		COUNT(*) = 26
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] (
			[CLASS_TYPE],[SUBSYSTEM_NAME]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG]')
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
			DROP INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TASK] (
			[CLASS_TYPE],[DESTINATION_LOCATION_KEY],[EQUIPMENT_KEY],[STATUS],[TASK_GROUP_KEY],[TASK_TYPE],[TRANSPORT_ORDER_KEY],[UPDATE_DATE]
			) INCLUDE (
			[COLLECTION_SEQUENCE],[COLLECTION_SUB_SEQUENCE],[CREATE_DATE],[CREATED_BY],[CURRENT_LOCATION_KEY],[CURRENT_TU_KEY],[DESTINATION_LU_KEY],[DESTINATION_TU_KEY],[LU_KEY],[ORDER_LINE_KEY],[ORDER_TU_PLAN_POSITION_KEY],[PICK_METHOD],[PRIORITY],[QUANTITY],[ROOT_TU_KEY],[SEQUENCE],[SOURCE_LOCATION_KEY],[STATUS_DATE],[SYSTEM_CREATED],[TASK_KEY],[TRANSACTION_COUNT],[TU_KEY],[UPDATED_BY],[USER_ID],[WORK_LOCATION_KEY],[WORKSTATION_ID],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TASK]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TASK]')
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
		COUNT(*) = 37
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[TASK] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_ID],[EXPECTED_RECEIPT_TYPE],[STATUS]
			) INCLUDE (
			[CONTACT_KEY],[CREATE_DATE],[CREATED_BY],[EXPECTED_RECEIPT_DATE],[EXPECTED_RECEIPT_KEY],[LOCAL],[OWNER_KEY],[PENDING_FOR_CLOSING],[STATUS_DATE],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT]')
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
			DROP INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] (
			[CLASS_TYPE],[CREATE_DATE],[MESSAGE_STATUS],[UPDATE_DATE]
			) INCLUDE (
			[MESSAGE_ID],[MESSAGE_TYPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]')
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
			DROP INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] (
			[BEGIN_DATE],[CLASS_TYPE],[END_DATE]
			) INCLUDE (
			[PAGE_ID],[USER_ID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL]')
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
			DROP INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] (
			[CLASS_TYPE],[CREATE_DATE],[OWNER_KEY]
			) INCLUDE (
			[PRODUCT_KEY],[WORK_ORDER_ID],[WORK_ORDER_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[WORK_ORDER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[WORK_ORDER]')
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
			DROP INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] (
			[CLASS_TYPE],[WORK_ORDER_KEY]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER]')
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
			DROP INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] (
			[CLASS_TYPE],[OWNER_KEY]
			) INCLUDE (
			[TU_TYPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN]')
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
			DROP INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] (
			[CLASS_TYPE]
			) INCLUDE (
			[ORDER_ID],[TRANSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LOG]')
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
			DROP INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [SPRITZERTAIPINGDB];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] (
			[CLASS_TYPE],[ORDER_KEY]
			) INCLUDE (
			[ORDER_LINE_KEY],[ORDER_LINE_NUMBER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LINE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LINE]')
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
			DROP INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ASN] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_KEY],[OWNER_KEY],[STATUS],[TU_ID]
			) INCLUDE (
			[ASN_KEY],[ASN_TYPE],[CONTACT_KEY],[CREATE_DATE],[CREATED_BY],[HEIGHT],[KEEP_TU],[LENGTH],[LOCAL],[PRODUCTION_LINE_NO],[STATUS_DATE],[TRANSACTION_COUNT],[TU_TYPE],[UPDATE_DATE],[UPDATED_BY],[VOLUME],[WEIGHT],[WIDTH]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ASN]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ASN]')
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
		COUNT(*) = 23
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ASN] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ASN] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ASN] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_KEY],[OWNER_KEY],[STATUS],[TU_ID]
			) INCLUDE (
			[ASN_KEY],[ASN_TYPE],[CONTACT_KEY],[CREATE_DATE],[CREATED_BY],[HEIGHT],[KEEP_TU],[LENGTH],[LOCAL],[PRODUCTION_LINE_NO],[STATUS_DATE],[TRANSACTION_COUNT],[TU_TYPE],[UPDATE_DATE],[UPDATED_BY],[VOLUME],[WEIGHT],[WIDTH]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ASN] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] (
			[CLASS_TYPE],[CONTAINER_NUMBER],[DOCK_NO],[PURPOSE],[SHIPMENT_ID],[STATUS],[VEHICLE_NO]
			) INCLUDE (
			[APPOINTMENT_SLOT],[CHECK_IN_DATE],[CHECK_OUT_DATE],[CREATE_DATE],[CREATED_BY],[DRIVER_ID],[DRIVER_NAME],[LOADING_TYPE],[PHONE_NUMBER],[PRIORITY],[TASK_TYPE],[TRANSACTION_COUNT],[TRUCK_INSPECTED_BY],[TRUCK_INSPECTION],[TRUCK_INSPECTION_COMMENT],[TRUCK_INSPECTION_FAILURE],[TRUCK_INSPECTION_RESULT],[TRUCK_LENGTH_45FT],[UPDATE_DATE],[UPDATED_BY],[VEHICLE_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK]')
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
			DROP INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] (
			[CLASS_TYPE],[CONTAINER_NUMBER],[DOCK_NO],[PURPOSE],[SHIPMENT_ID],[STATUS],[VEHICLE_NO]
			) INCLUDE (
			[APPOINTMENT_SLOT],[CHECK_IN_DATE],[CHECK_OUT_DATE],[CREATE_DATE],[CREATED_BY],[DRIVER_ID],[DRIVER_NAME],[LOADING_TYPE],[PHONE_NUMBER],[PRIORITY],[TASK_TYPE],[TRANSACTION_COUNT],[TRUCK_INSPECTED_BY],[TRUCK_INSPECTION],[TRUCK_INSPECTION_COMMENT],[TRUCK_INSPECTION_FAILURE],[TRUCK_INSPECTION_RESULT],[TRUCK_LENGTH_45FT],[UPDATE_DATE],[UPDATED_BY],[VEHICLE_KEY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] (
			[ARRIVAL_GATE_TIME],[CLASS_TYPE],[CONTAINER_NUMBER],[FLOW_STATE],[PRIORIRY_QUEUE],[SHIPMENT_ID],[SHIPMENT_TYPE],[TRUCK_ID]
			) INCLUDE (
			[ARRIVAL_DOCK_TIME],[CREATE_DATE],[CREATED_BY],[DOCK_ASSIGN_KEY],[FREE_DOCK_BY],[LAST_TQMS_EXEC_END_DATE],[LEAVE_DOCK_TIME],[LEAVE_GATE_TIME],[LOADING_TYPE],[PREVIOUS_FLOW_STATE],[PREVIOUS_STATUS],[STATUS],[STATUS_DATE],[TRANSACTION_COUNT],[TRANSPORTER_NAME],[TRUCK_QUEUE_KEY],[UPDATE_DATE],[UPDATED_BY],[VEHICLE_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE]')
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
		COUNT(*) = 27
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] (
			[ARRIVAL_GATE_TIME],[CLASS_TYPE],[CONTAINER_NUMBER],[FLOW_STATE],[PRIORIRY_QUEUE],[SHIPMENT_ID],[SHIPMENT_TYPE],[TRUCK_ID]
			) INCLUDE (
			[ARRIVAL_DOCK_TIME],[CREATE_DATE],[CREATED_BY],[DOCK_ASSIGN_KEY],[FREE_DOCK_BY],[LAST_TQMS_EXEC_END_DATE],[LEAVE_DOCK_TIME],[LEAVE_GATE_TIME],[LOADING_TYPE],[PREVIOUS_FLOW_STATE],[PREVIOUS_STATUS],[STATUS],[STATUS_DATE],[TRANSACTION_COUNT],[TRANSPORTER_NAME],[TRUCK_QUEUE_KEY],[UPDATE_DATE],[UPDATED_BY],[VEHICLE_KEY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRUCK_QUEUE] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] (
			[ALLOCATION_ZONE_KEY],[AVAILABLE_CAPACITY],[CLASS_TYPE],[EQUIPMENT_KEY],[LOCATION_PROFILE_ID],[ROLE],[SIDE_OF_AISLE],[SIS_ADDRESS],[STATUS],[TRANSPORT_NODE_ID],[WORK_ZONE_KEY],[WORKSTATION_ID]
			) INCLUDE (
			[CHECK_DIGIT],[CREATE_DATE],[CREATED_BY],[HOST_LOCATION_ID],[LANDSCAPE],[LAST_CYCLE_COUNT_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LOCATION_ID],[LOCATION_KEY],[LU_CONSOLIDATION_STRING],[LU_CONSOLIDATION_STRING_PREF],[MODULE],[NODE_DESTINATION_TYPE],[OCCUPATION_SEQUENCE],[OCCUPIED_CAPACITY],[ORIENTATION],[OUTFEED_LOCATION_KEY],[PARENT_LOCATION_KEY],[RACK],[RESERVED_CAPACITY],[ROLE_SEQUENCE],[STAGING_LOCATION],[STATUS_DATE],[STORAGE_PATH],[STORAGE_ZONE_KEY],[SYSTEM],[TRANSACTION_COUNT],[TU_CONSOLIDATION_STRING],[UPDATE_DATE],[UPDATED_BY],[WEIGHT],[WORK_PATH],[WORKSTATION_LOCATION_DISPLAY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[LOCATION]')
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
			DROP INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] (
			[ALLOCATION_ZONE_KEY],[AVAILABLE_CAPACITY],[CLASS_TYPE],[EQUIPMENT_KEY],[LOCATION_PROFILE_ID],[ROLE],[SIDE_OF_AISLE],[SIS_ADDRESS],[STATUS],[TRANSPORT_NODE_ID],[WORK_ZONE_KEY],[WORKSTATION_ID]
			) INCLUDE (
			[CHECK_DIGIT],[CREATE_DATE],[CREATED_BY],[HOST_LOCATION_ID],[LANDSCAPE],[LAST_CYCLE_COUNT_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LOCATION_ID],[LOCATION_KEY],[LU_CONSOLIDATION_STRING],[LU_CONSOLIDATION_STRING_PREF],[MODULE],[NODE_DESTINATION_TYPE],[OCCUPATION_SEQUENCE],[OCCUPIED_CAPACITY],[ORIENTATION],[OUTFEED_LOCATION_KEY],[PARENT_LOCATION_KEY],[RACK],[RESERVED_CAPACITY],[ROLE_SEQUENCE],[STAGING_LOCATION],[STATUS_DATE],[STORAGE_PATH],[STORAGE_ZONE_KEY],[SYSTEM],[TRANSACTION_COUNT],[TU_CONSOLIDATION_STRING],[UPDATE_DATE],[UPDATED_BY],[WEIGHT],[WORK_PATH],[WORKSTATION_LOCATION_DISPLAY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230502 ON [SPRITZERTAIPINGDB].[dbo].[LOCATION] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] (
			[CLASS_TYPE],[SHIPPING_DATE],[STATUS]
			) INCLUDE (
			[SHIPMENT_ID],[SHIPMENT_KEY],[STAGING_LOCATION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPMENT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPMENT]')
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
			DROP INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] (
			[CLASS_TYPE],[SHIPPING_DATE],[STATUS]
			) INCLUDE (
			[SHIPMENT_ID],[SHIPMENT_KEY],[STAGING_LOCATION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPMENT] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] (
			[CREATE_DATE]
			) INCLUDE (
			[PRODUCT_ID],[QUANTITY_SHIPPED]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY]')
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
			DROP INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] (
			[CREATE_DATE]
			) INCLUDE (
			[PRODUCT_ID],[QUANTITY_SHIPPED]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230502 ON [SPRITZERTAIPINGDB].[dbo].[SHIPPED_INVENTORY] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] (
			[CLASS_TYPE],[LAST_QC_DATE],[LOGICAL_GROUP],[LOGICAL_SEQUENCE],[ORDER_KEY],[PROCESS_STATUS],[RESERVED_LOCATION_KEY],[SHIPMENT_KEY],[STATUS],[TU_TYPE_ID],[UPDATE_DATE]
			) INCLUDE (
			[CRANE_DEPOSIT_COUNTER],[CREATE_DATE],[CREATED_BY],[DAMAGED_FLAG],[DIRTY_FLAG],[HEIGHT],[INSPECTED_AT_TRANSPORT_NODE],[LABEL_PRINT],[LAST_CYCLE_COUNT_DATE],[LAST_MOVE_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LENGTH],[LOCATION_KEY],[OCCUPATION_SEQUENCE],[ORDER_TU_PLAN_KEY],[OWNER_KEY],[PARENT_TU_KEY],[ROOT_LOCATION_KEY],[ROOT_TU_KEY],[STATUS_DATE],[TRANSACTION_COUNT],[TU_ID],[TU_KEY],[TU_STOP_SEQUENCE],[UNIDENTIFIED_FLAG],[UPDATED_BY],[VIRTUAL],[VOLUME],[WEIGHT],[WIDTH],[WO_READY_RELEASE],[WRAPPED_FOR_OUTFEED],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT]')
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
		COUNT(*) = 46
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] (
			[CLASS_TYPE],[LAST_QC_DATE],[LOGICAL_GROUP],[LOGICAL_SEQUENCE],[ORDER_KEY],[PROCESS_STATUS],[RESERVED_LOCATION_KEY],[SHIPMENT_KEY],[STATUS],[TU_TYPE_ID],[UPDATE_DATE]
			) INCLUDE (
			[CRANE_DEPOSIT_COUNTER],[CREATE_DATE],[CREATED_BY],[DAMAGED_FLAG],[DIRTY_FLAG],[HEIGHT],[INSPECTED_AT_TRANSPORT_NODE],[LABEL_PRINT],[LAST_CYCLE_COUNT_DATE],[LAST_MOVE_DATE],[LAST_ZERO_CROSS_CHECK_DATE],[LENGTH],[LOCATION_KEY],[OCCUPATION_SEQUENCE],[ORDER_TU_PLAN_KEY],[OWNER_KEY],[PARENT_TU_KEY],[ROOT_LOCATION_KEY],[ROOT_TU_KEY],[STATUS_DATE],[TRANSACTION_COUNT],[TU_ID],[TU_KEY],[TU_STOP_SEQUENCE],[UNIDENTIFIED_FLAG],[UPDATED_BY],[VIRTUAL],[VOLUME],[WEIGHT],[WIDTH],[WO_READY_RELEASE],[WRAPPED_FOR_OUTFEED],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_UNIT] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] (
			[CLASS_TYPE],[CLEAR_DATE],[CREATE_DATE],[END_DATE],[OBJECTID],[OCCURRENCE_DATE],[ORIGIN],[ORIGIN_CATEGORY],[PENDING],[SEVERITY],[START_DATE]
			) INCLUDE (
			[EVENT_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EVENTLOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EVENTLOG]')
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
			DROP INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] (
			[CLASS_TYPE],[CLEAR_DATE],[CREATE_DATE],[END_DATE],[OBJECTID],[OCCURRENCE_DATE],[ORIGIN],[ORIGIN_CATEGORY],[PENDING],[SEVERITY],[START_DATE]
			) INCLUDE (
			[EVENT_KEY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EVENTLOG] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANS] (
			[CLASS_TYPE],[CREATE_DATE],[FROM_LU_KEY],[FROM_ORDER_ID],[FROM_TRANSPORT_UNIT_WEIGHT],[FROM_TU_ID],[OPERATION_ID],[TO_LOCATION_ID],[TO_LU_KEY],[TO_MATERIAL_STATUS],[TO_TRANSPORT_UNIT_WEIGHT],[TO_TU_ID],[TRANSACTION_TYPE]
			) INCLUDE (
			[ADJUST_REASON_ID],[CREATED_BY],[DISPLAY_FROM_QUANTITY],[DISPLAY_TO_QUANTITY],[DISPLAY_TRANS_QUANTITY],[FROM_ASN],[FROM_ASN_LINE_NUMBER],[FROM_ATTRIBUTES_SET],[FROM_BEST_BEFORE_DATE],[FROM_ER_ID],[FROM_ER_LINE_NUMBER],[FROM_EXPIRY_DATE],[FROM_HOST_MATERIAL_STATUS],[FROM_LOAD_UNIT_ID],[FROM_LOCATION_ID],[FROM_LOT_CODE],[FROM_MANUFACTURING_DATE],[FROM_MATERIAL_STATUS],[FROM_OWNER_ID],[FROM_PARENT_TU_ID],[FROM_PRODUCT_ID],[FROM_PRODUCT_UOM_TREE],[FROM_QUANTITY],[FROM_RECEIPT_ID],[FROM_SHIPMENT_ID],[FROM_SUSPECT],[FROM_TRANSPORT_UNIT_HEIGHT],[FROM_TRANSPORT_UNIT_LENGTH],[FROM_TRANSPORT_UNIT_VOLUME],[FROM_TRANSPORT_UNIT_WIDTH],[FROM_TU_TYPE],[FROM_UOM_ID],[FROM_WORK_ORDER_ID],[FROM_WORKSTATION_ID],[FROM_X],[FROM_Y],[FROM_Z],[INSPECTED_AT],[TO_ASN],[TO_ASN_LINE_NUMBER],[TO_ATTRIBUTES_SET],[TO_BEST_BEFORE_DATE],[TO_ER_ID],[TO_ER_LINE_NUMBER],[TO_EXPIRY_DATE],[TO_HOST_MATERIAL_STATUS],[TO_LOAD_UNIT_ID],[TO_LOT_CODE],[TO_MANUFACTURING_DATE],[TO_ORDER_ID],[TO_OWNER_ID],[TO_PARENT_TU_ID],[TO_PRODUCT_ID],[TO_PRODUCT_UOM_TREE],[TO_QUANTITY],[TO_RECEIPT_ID],[TO_SHIPMENT_ID],[TO_SUSPECT],[TO_TRANSPORT_UNIT_HEIGHT],[TO_TRANSPORT_UNIT_LENGTH],[TO_TRANSPORT_UNIT_VOLUME],[TO_TRANSPORT_UNIT_WIDTH],[TO_TU_TYPE],[TO_UOM_ID],[TO_WORK_ORDER_ID],[TO_WORKSTATION_ID],[TO_X],[TO_Y],[TO_Z],[TRANS_KEY],[TRANS_QUANTITY],[TRANSACTION_COUNT],[TRANSPORT_ORDER_KEY],[UPDATE_DATE],[UPDATED_BY],[USER_COMMENT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANS]')
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
			DROP INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANS] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANS] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANS] (
			[CLASS_TYPE],[CREATE_DATE],[FROM_LU_KEY],[FROM_ORDER_ID],[FROM_TRANSPORT_UNIT_WEIGHT],[FROM_TU_ID],[OPERATION_ID],[TO_LOCATION_ID],[TO_LU_KEY],[TO_MATERIAL_STATUS],[TO_TRANSPORT_UNIT_WEIGHT],[TO_TU_ID],[TRANSACTION_TYPE]
			) INCLUDE (
			[ADJUST_REASON_ID],[CREATED_BY],[DISPLAY_FROM_QUANTITY],[DISPLAY_TO_QUANTITY],[DISPLAY_TRANS_QUANTITY],[FROM_ASN],[FROM_ASN_LINE_NUMBER],[FROM_ATTRIBUTES_SET],[FROM_BEST_BEFORE_DATE],[FROM_ER_ID],[FROM_ER_LINE_NUMBER],[FROM_EXPIRY_DATE],[FROM_HOST_MATERIAL_STATUS],[FROM_LOAD_UNIT_ID],[FROM_LOCATION_ID],[FROM_LOT_CODE],[FROM_MANUFACTURING_DATE],[FROM_MATERIAL_STATUS],[FROM_OWNER_ID],[FROM_PARENT_TU_ID],[FROM_PRODUCT_ID],[FROM_PRODUCT_UOM_TREE],[FROM_QUANTITY],[FROM_RECEIPT_ID],[FROM_SHIPMENT_ID],[FROM_SUSPECT],[FROM_TRANSPORT_UNIT_HEIGHT],[FROM_TRANSPORT_UNIT_LENGTH],[FROM_TRANSPORT_UNIT_VOLUME],[FROM_TRANSPORT_UNIT_WIDTH],[FROM_TU_TYPE],[FROM_UOM_ID],[FROM_WORK_ORDER_ID],[FROM_WORKSTATION_ID],[FROM_X],[FROM_Y],[FROM_Z],[INSPECTED_AT],[TO_ASN],[TO_ASN_LINE_NUMBER],[TO_ATTRIBUTES_SET],[TO_BEST_BEFORE_DATE],[TO_ER_ID],[TO_ER_LINE_NUMBER],[TO_EXPIRY_DATE],[TO_HOST_MATERIAL_STATUS],[TO_LOAD_UNIT_ID],[TO_LOT_CODE],[TO_MANUFACTURING_DATE],[TO_ORDER_ID],[TO_OWNER_ID],[TO_PARENT_TU_ID],[TO_PRODUCT_ID],[TO_PRODUCT_UOM_TREE],[TO_QUANTITY],[TO_RECEIPT_ID],[TO_SHIPMENT_ID],[TO_SUSPECT],[TO_TRANSPORT_UNIT_HEIGHT],[TO_TRANSPORT_UNIT_LENGTH],[TO_TRANSPORT_UNIT_VOLUME],[TO_TRANSPORT_UNIT_WIDTH],[TO_TU_TYPE],[TO_UOM_ID],[TO_WORK_ORDER_ID],[TO_WORKSTATION_ID],[TO_X],[TO_Y],[TO_Z],[TRANS_KEY],[TRANS_QUANTITY],[TRANSACTION_COUNT],[TRANSPORT_ORDER_KEY],[UPDATE_DATE],[UPDATED_BY],[USER_COMMENT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANS] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] (
			[AUTO_ALLOC_ALLOWED],[CLASS_TYPE],[CREATE_DATE],[DISPATCH_DATE],[FLOW_STATE],[ORDER_GROUP_KEY],[ORDER_ID],[OWNER_KEY],[RELEASED],[RELEASED_FOR_ALLOCATION],[RELEASED_FOR_PICKING],[STATUS],[STATUS_DATE],[WORK_ORDER_KEY]
			) INCLUDE (
			[BILLING_ADDRESS_KEY],[CONSOLIDATION_LOCATION_KEY],[CONSUMPTION_LOCATION_ID],[CONTACT_KEY],[CREATED_BY],[CURRENT_SHIPMENT_KEY],[FLOW_STACK],[LOADING_TYPE],[LOCAL],[ORDER_ALT_TU_TYPE_ID],[ORDER_DATE],[ORDER_KEY],[ORDER_TU_TYPE_ID],[ORDER_TYPE],[PRIORITY],[SHIPPING_ADDRESS_KEY],[SHORT_ALLOCATION_ALLOWED],[SHORT_RELEASING_ALLOWED],[SHORT_SHIPPING_ALLOWED],[STOP_SEQUENCE],[TOTAL_PALLET_NUMBER],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[WORKSTATION_ID],[WORKSTATION_LOCATION_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER]')
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
		COUNT(*) = 40
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] (
			[AUTO_ALLOC_ALLOWED],[CLASS_TYPE],[CREATE_DATE],[DISPATCH_DATE],[FLOW_STATE],[ORDER_GROUP_KEY],[ORDER_ID],[OWNER_KEY],[RELEASED],[RELEASED_FOR_ALLOCATION],[RELEASED_FOR_PICKING],[STATUS],[STATUS_DATE],[WORK_ORDER_KEY]
			) INCLUDE (
			[BILLING_ADDRESS_KEY],[CONSOLIDATION_LOCATION_KEY],[CONSUMPTION_LOCATION_ID],[CONTACT_KEY],[CREATED_BY],[CURRENT_SHIPMENT_KEY],[FLOW_STACK],[LOADING_TYPE],[LOCAL],[ORDER_ALT_TU_TYPE_ID],[ORDER_DATE],[ORDER_KEY],[ORDER_TU_TYPE_ID],[ORDER_TYPE],[PRIORITY],[SHIPPING_ADDRESS_KEY],[SHORT_ALLOCATION_ALLOWED],[SHORT_RELEASING_ALLOWED],[SHORT_SHIPPING_ALLOWED],[STOP_SEQUENCE],[TOTAL_PALLET_NUMBER],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[WORKSTATION_ID],[WORKSTATION_LOCATION_KEY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_HEADER] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] (
			[CLASS_TYPE],[CREATE_DATE],[ERROR_HANDLING],[EXPRESS],[FROM_STATE],[LAST_REPORTED_POSITION],[TO_STATE],[TRANSITION],[TRANSPORT_ORDER_KEY]
			) INCLUDE (
			[ASSIGNMENT_GROUP_ID],[ASSIGNMENT_GROUP_SIZE],[ASSIGNMENT_ORIENTATION],[ASSIGNMENT_SEQUENCE],[ASSIGNMENT_SEQUENCE_SIZE],[ASSIGNMENT_SUB_SEQUENCE],[CREATED_BY],[CURRENT_LOCATION_ID],[DESTINATION_LOCATION_ID],[DESTINATION_NODE_ID],[ERROR_HANDLING_START_DATE],[LAST_PASSED_SEQUENCE_NODE_ID],[LOOP_COUNTER],[MESSAGE],[OPERATION],[PRIORITY],[RESERVED_TARGET_BUFFERS],[SOURCE_LOCATION_ID],[SOURCE_NODE_ID],[STATUS],[TO_WORKFLOW],[TRANSACTION_COUNT],[TRANSPORT_ASSIGNMENT],[TRANSPORT_EQUIPMENT_ID],[TRANSPORT_LOG_KEY],[TU_ID],[UPDATE_DATE],[UPDATED_BY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG]')
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
		COUNT(*) = 37
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] (
			[CLASS_TYPE],[CREATE_DATE],[ERROR_HANDLING],[EXPRESS],[FROM_STATE],[LAST_REPORTED_POSITION],[TO_STATE],[TRANSITION],[TRANSPORT_ORDER_KEY]
			) INCLUDE (
			[ASSIGNMENT_GROUP_ID],[ASSIGNMENT_GROUP_SIZE],[ASSIGNMENT_ORIENTATION],[ASSIGNMENT_SEQUENCE],[ASSIGNMENT_SEQUENCE_SIZE],[ASSIGNMENT_SUB_SEQUENCE],[CREATED_BY],[CURRENT_LOCATION_ID],[DESTINATION_LOCATION_ID],[DESTINATION_NODE_ID],[ERROR_HANDLING_START_DATE],[LAST_PASSED_SEQUENCE_NODE_ID],[LOOP_COUNTER],[MESSAGE],[OPERATION],[PRIORITY],[RESERVED_TARGET_BUFFERS],[SOURCE_LOCATION_ID],[SOURCE_NODE_ID],[STATUS],[TO_WORKFLOW],[TRANSACTION_COUNT],[TRANSPORT_ASSIGNMENT],[TRANSPORT_EQUIPMENT_ID],[TRANSPORT_LOG_KEY],[TU_ID],[UPDATE_DATE],[UPDATED_BY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TRANSPORT_LOG] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_LINE_KEY]
			) INCLUDE (
			[ASN_LINE_KEY],[ATTRIBUTE_SET],[BEST_BEFORE_DATE],[CHECK_IN_DATE],[CHECKIN_DETAIL_KEY],[CREATE_DATE],[CREATED_BY],[EXPIRY_DATE],[HOST_LOCATION_ID],[LOAD_UNIT_ID],[LOT_CODE],[MANUFACTURING_DATE],[MATERIAL_STATUS_ID],[PRODUCT_UOM_TREE],[QUANTITY],[SENT_TO_HOST],[TRANSACTION_COUNT],[TU_ID],[UOM_ID],[UPDATE_DATE],[UPDATED_BY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL]')
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
		COUNT(*) = 26
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_LINE_KEY]
			) INCLUDE (
			[ASN_LINE_KEY],[ATTRIBUTE_SET],[BEST_BEFORE_DATE],[CHECK_IN_DATE],[CHECKIN_DETAIL_KEY],[CREATE_DATE],[CREATED_BY],[EXPIRY_DATE],[HOST_LOCATION_ID],[LOAD_UNIT_ID],[LOT_CODE],[MANUFACTURING_DATE],[MATERIAL_STATUS_ID],[PRODUCT_UOM_TREE],[QUANTITY],[SENT_TO_HOST],[TRANSACTION_COUNT],[TU_ID],[UOM_ID],[UPDATE_DATE],[UPDATED_BY],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230502 ON [SPRITZERTAIPINGDB].[dbo].[CHECKIN_DETAIL] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] (
			[CLASS_TYPE],[SUBSYSTEM_NAME]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG]')
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
			DROP INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] (
			[CLASS_TYPE],[SUBSYSTEM_NAME]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TELEGRAM_LOG] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TASK] (
			[CLASS_TYPE],[DESTINATION_LOCATION_KEY],[EQUIPMENT_KEY],[STATUS],[TASK_GROUP_KEY],[TASK_TYPE],[TRANSPORT_ORDER_KEY],[UPDATE_DATE]
			) INCLUDE (
			[COLLECTION_SEQUENCE],[COLLECTION_SUB_SEQUENCE],[CREATE_DATE],[CREATED_BY],[CURRENT_LOCATION_KEY],[CURRENT_TU_KEY],[DESTINATION_LU_KEY],[DESTINATION_TU_KEY],[LU_KEY],[ORDER_LINE_KEY],[ORDER_TU_PLAN_POSITION_KEY],[PICK_METHOD],[PRIORITY],[QUANTITY],[ROOT_TU_KEY],[SEQUENCE],[SOURCE_LOCATION_KEY],[STATUS_DATE],[SYSTEM_CREATED],[TASK_KEY],[TRANSACTION_COUNT],[TU_KEY],[UPDATED_BY],[USER_ID],[WORK_LOCATION_KEY],[WORKSTATION_ID],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TASK]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[TASK]')
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
		COUNT(*) = 37
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TASK] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[TASK] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[TASK] (
			[CLASS_TYPE],[DESTINATION_LOCATION_KEY],[EQUIPMENT_KEY],[STATUS],[TASK_GROUP_KEY],[TASK_TYPE],[TRANSPORT_ORDER_KEY],[UPDATE_DATE]
			) INCLUDE (
			[COLLECTION_SEQUENCE],[COLLECTION_SUB_SEQUENCE],[CREATE_DATE],[CREATED_BY],[CURRENT_LOCATION_KEY],[CURRENT_TU_KEY],[DESTINATION_LU_KEY],[DESTINATION_TU_KEY],[LU_KEY],[ORDER_LINE_KEY],[ORDER_TU_PLAN_POSITION_KEY],[PICK_METHOD],[PRIORITY],[QUANTITY],[ROOT_TU_KEY],[SEQUENCE],[SOURCE_LOCATION_KEY],[STATUS_DATE],[SYSTEM_CREATED],[TASK_KEY],[TRANSACTION_COUNT],[TU_KEY],[UPDATED_BY],[USER_ID],[WORK_LOCATION_KEY],[WORKSTATION_ID],[X_POSITION],[Y_POSITION],[Z_POSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230502 ON [SPRITZERTAIPINGDB].[dbo].[TASK] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_ID],[EXPECTED_RECEIPT_TYPE],[STATUS]
			) INCLUDE (
			[CONTACT_KEY],[CREATE_DATE],[CREATED_BY],[EXPECTED_RECEIPT_DATE],[EXPECTED_RECEIPT_KEY],[LOCAL],[OWNER_KEY],[PENDING_FOR_CLOSING],[STATUS_DATE],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT]')
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
			DROP INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] (
			[CLASS_TYPE],[EXPECTED_RECEIPT_ID],[EXPECTED_RECEIPT_TYPE],[STATUS]
			) INCLUDE (
			[CONTACT_KEY],[CREATE_DATE],[CREATED_BY],[EXPECTED_RECEIPT_DATE],[EXPECTED_RECEIPT_KEY],[LOCAL],[OWNER_KEY],[PENDING_FOR_CLOSING],[STATUS_DATE],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230502 ON [SPRITZERTAIPINGDB].[dbo].[EXPECTED_RECEIPT] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] (
			[CLASS_TYPE],[CREATE_DATE],[MESSAGE_STATUS],[UPDATE_DATE]
			) INCLUDE (
			[MESSAGE_ID],[MESSAGE_TYPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE]')
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
			DROP INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] (
			[CLASS_TYPE],[CREATE_DATE],[MESSAGE_STATUS],[UPDATE_DATE]
			) INCLUDE (
			[MESSAGE_ID],[MESSAGE_TYPE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230502 ON [SPRITZERTAIPINGDB].[dbo].[HOST_MESSAGE] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] (
			[BEGIN_DATE],[CLASS_TYPE],[END_DATE]
			) INCLUDE (
			[PAGE_ID],[USER_ID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL]')
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
			DROP INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] (
			[BEGIN_DATE],[CLASS_TYPE],[END_DATE]
			) INCLUDE (
			[PAGE_ID],[USER_ID]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230502 ON [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] (
			[CLASS_TYPE],[CREATE_DATE],[OWNER_KEY]
			) INCLUDE (
			[PRODUCT_KEY],[WORK_ORDER_ID],[WORK_ORDER_KEY]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[WORK_ORDER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[WORK_ORDER]')
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
			DROP INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER];
			CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] (
			[CLASS_TYPE],[CREATE_DATE],[OWNER_KEY]
			) INCLUDE (
			[PRODUCT_KEY],[WORK_ORDER_ID],[WORK_ORDER_KEY]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230502 ON [SPRITZERTAIPINGDB].[dbo].[WORK_ORDER] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] (
			[CLASS_TYPE],[WORK_ORDER_KEY]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER]')
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
			DROP INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER];
			CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] (
			[CLASS_TYPE],[WORK_ORDER_KEY]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ORDER_HEADER] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] (
			[CLASS_TYPE],[OWNER_KEY]
			) INCLUDE (
			[TU_TYPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN]')
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
			DROP INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN];
			CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] (
			[CLASS_TYPE],[OWNER_KEY]
			) INCLUDE (
			[TU_TYPE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ARCHIVED_ASN] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] (
			[CLASS_TYPE]
			) INCLUDE (
			[ORDER_ID],[TRANSITION]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LOG]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LOG]')
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
			DROP INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG];
			CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] (
			[CLASS_TYPE]
			) INCLUDE (
			[ORDER_ID],[TRANSITION]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LOG] CANNOT BE CREATED.';
END CATCH;


USE [SPRITZERTAIPINGDB];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] (
			[CLASS_TYPE],[ORDER_KEY]
			) INCLUDE (
			[ORDER_LINE_KEY],[ORDER_LINE_NUMBER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230502' AND i.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LINE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230502' AND i2.object_id = OBJECT_ID('[SPRITZERTAIPINGDB].[dbo].[ORDER_LINE]')
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
			DROP INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230502
			ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] (
			[CLASS_TYPE],[ORDER_KEY]
			) INCLUDE (
			[ORDER_LINE_KEY],[ORDER_LINE_NUMBER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230502 ON [SPRITZERTAIPINGDB].[dbo].[ORDER_LINE] CANNOT BE CREATED.';
END CATCH;

