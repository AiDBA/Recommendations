
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [IDB_MTECH_MAREL_SL];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] (
			[ProductionDate],[RecordSource]
			) INCLUDE (
			[ActualWeight],[BoxSerialNumber],[CostCenter],[ElaborationDate],[ExpiryDate],[GrossWeight],[PackagingType],[PackingStation],[ProductionOrderID],[ProductionProcessingLine],[ProductionRecordDate],[ProductionShift],[QAHold],[Quantity],[RecordSyncStatus],[RowID],[SKUCode],[StandardWeight],[TareWeight],[TraceabilityExternalLot],[TraceabilityLot],[WarehouseCode]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION]')
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
		COUNT(*) = 24
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [IDB_MTECH_MAREL_SL];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] (
			[DT_Start],[Itgrstatus],[Line_ID],[Lotcode]
			) INCLUDE (
			[Exporttime],[In_Line]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History]')
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
			DROP INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [innova].[dbo].[base_guinodes] (
			[accesslevel],[active],[application],[systemid]
			) INCLUDE (
			[billboarddisplaytime],[billboardrefreshrate],[canopenmultiple],[displayname],[documentid],[gui],[guiitem],[helpcontext],[hint],[nodetype],[openonstartup],[parent],[sequence],[translation],[xmldata]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[base_guinodes]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[base_guinodes]')
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
		COUNT(*) = 19
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[base_guinodes] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [innova].[dbo].[grd_pieceregs] (
			[material],[piecetype],[regtime],[rtype],[valuetype]
			) INCLUDE (
			[class],[pieces],[sprperiod],[value],[valuesqr]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[grd_pieceregs]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[grd_pieceregs]')
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
			DROP INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[grd_pieceregs] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [PDSNT];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] (
			[ARTC],[PDA_ID],[QUA],[TOP_FLOCK]
			) INCLUDE (
			[DT_FLOCK],[FLOCK],[GTH_NB],[LT_PERC_NB],[LTH_NB],[PERC_W],[TOT_NB],[TOT_W]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_QTD_ARCHIVE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_QTD_ARCHIVE]')
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
			DROP INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [innova].[dbo].[proc_packs] (
			[regtime],[rtype],[sprperiod]
			) INCLUDE (
			[aseconds],[gross],[material],[nominal],[nregs],[pieces],[station],[target],[weight]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_packs]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_packs]')
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
			DROP INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[proc_packs] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [innova].[dbo].[proc_prcontexthistory] (
			[regtime]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_prcontexthistory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_prcontexthistory]')
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
			DROP INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[proc_prcontexthistory] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [PDSNT];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] (
			[MODULE_ID]
			) INCLUDE (
			[FLOCK],[INPUT_ARTC],[NUMBER],[OUTPUT_ARTC],[PDA_ID],[QUA],[ROUTE_ID],[ROUTE_TAP_ID],[TOP_FLOCK],[TRAJECT_ID],[WEIGHT],[WEIGHT_AVG]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_RTD_ARCHIVE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_RTD_ARCHIVE]')
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
			DROP INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [innova].[dbo].[proc_orders] (
			[active],[dispatchtime],[orderstatus]
			) INCLUDE (
			[code]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_orders]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_orders]')
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
			DROP INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[proc_orders] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [innova].[dbo].[proc_lots] (
			[dimension1],[processor],[slday]
			) INCLUDE (
			[flocknumber],[topflockid]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_lots]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_lots]')
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
			DROP INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[proc_lots] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [innova].[dbo].[proc_prperiods] (
			[begtime],[prday],[prunit]
			) INCLUDE (
			[activity],[endtime]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_prperiods]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_prperiods]')
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
			DROP INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[proc_prperiods] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [innova];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [innova].[dbo].[base_recordhistory] (
			[entrytype],[regtime]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[base_recordhistory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[base_recordhistory]')
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
			DROP INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [innova].[dbo].[base_recordhistory] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [IDB_MTECH_MAREL_SL];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] (
			[ProductionDate],[RecordSource]
			) INCLUDE (
			[ActualWeight],[BoxSerialNumber],[CostCenter],[ElaborationDate],[ExpiryDate],[GrossWeight],[PackagingType],[PackingStation],[ProductionOrderID],[ProductionProcessingLine],[ProductionRecordDate],[ProductionShift],[QAHold],[Quantity],[RecordSyncStatus],[RowID],[SKUCode],[StandardWeight],[TareWeight],[TraceabilityExternalLot],[TraceabilityLot],[WarehouseCode]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION]')
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
		COUNT(*) = 24
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] (
			[ProductionDate],[RecordSource]
			) INCLUDE (
			[ActualWeight],[BoxSerialNumber],[CostCenter],[ElaborationDate],[ExpiryDate],[GrossWeight],[PackagingType],[PackingStation],[ProductionOrderID],[ProductionProcessingLine],[ProductionRecordDate],[ProductionShift],[QAHold],[Quantity],[RecordSyncStatus],[RowID],[SKUCode],[StandardWeight],[TareWeight],[TraceabilityExternalLot],[TraceabilityLot],[WarehouseCode]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[ITF_PRODUCTION] CANNOT BE CREATED.';
END CATCH;


USE [IDB_MTECH_MAREL_SL];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] (
			[DT_Start],[Itgrstatus],[Line_ID],[Lotcode]
			) INCLUDE (
			[Exporttime],[In_Line]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History]')
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
			DROP INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] (
			[DT_Start],[Itgrstatus],[Line_ID],[Lotcode]
			) INCLUDE (
			[Exporttime],[In_Line]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [IDB_MTECH_MAREL_SL].[dbo].[cust_itgr_FlockStatus_Export_History] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [innova].[dbo].[base_guinodes] (
			[accesslevel],[active],[application],[systemid]
			) INCLUDE (
			[billboarddisplaytime],[billboardrefreshrate],[canopenmultiple],[displayname],[documentid],[gui],[guiitem],[helpcontext],[hint],[nodetype],[openonstartup],[parent],[sequence],[translation],[xmldata]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[base_guinodes]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[base_guinodes]')
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
		COUNT(*) = 19
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[base_guinodes] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[base_guinodes] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [innova].[dbo].[base_guinodes] (
			[accesslevel],[active],[application],[systemid]
			) INCLUDE (
			[billboarddisplaytime],[billboardrefreshrate],[canopenmultiple],[displayname],[documentid],[gui],[guiitem],[helpcontext],[hint],[nodetype],[openonstartup],[parent],[sequence],[translation],[xmldata]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [innova].[dbo].[base_guinodes] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [innova].[dbo].[grd_pieceregs] (
			[material],[piecetype],[regtime],[rtype],[valuetype]
			) INCLUDE (
			[class],[pieces],[sprperiod],[value],[valuesqr]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[grd_pieceregs]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[grd_pieceregs]')
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
			DROP INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[grd_pieceregs] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[grd_pieceregs] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [innova].[dbo].[grd_pieceregs] (
			[material],[piecetype],[regtime],[rtype],[valuetype]
			) INCLUDE (
			[class],[pieces],[sprperiod],[value],[valuesqr]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [innova].[dbo].[grd_pieceregs] CANNOT BE CREATED.';
END CATCH;


USE [PDSNT];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] (
			[ARTC],[PDA_ID],[QUA],[TOP_FLOCK]
			) INCLUDE (
			[DT_FLOCK],[FLOCK],[GTH_NB],[LT_PERC_NB],[LTH_NB],[PERC_W],[TOT_NB],[TOT_W]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_QTD_ARCHIVE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_QTD_ARCHIVE]')
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
			DROP INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] (
			[ARTC],[PDA_ID],[QUA],[TOP_FLOCK]
			) INCLUDE (
			[DT_FLOCK],[FLOCK],[GTH_NB],[LT_PERC_NB],[LTH_NB],[PERC_W],[TOT_NB],[TOT_W]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [PDSNT].[dbo].[PDA_QTD_ARCHIVE] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [innova].[dbo].[proc_packs] (
			[regtime],[rtype],[sprperiod]
			) INCLUDE (
			[aseconds],[gross],[material],[nominal],[nregs],[pieces],[station],[target],[weight]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_packs]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_packs]')
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
			DROP INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[proc_packs] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[proc_packs] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [innova].[dbo].[proc_packs] (
			[regtime],[rtype],[sprperiod]
			) INCLUDE (
			[aseconds],[gross],[material],[nominal],[nregs],[pieces],[station],[target],[weight]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [innova].[dbo].[proc_packs] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [innova].[dbo].[proc_prcontexthistory] (
			[regtime]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_prcontexthistory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_prcontexthistory]')
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
			DROP INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[proc_prcontexthistory] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[proc_prcontexthistory] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [innova].[dbo].[proc_prcontexthistory] (
			[regtime]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [innova].[dbo].[proc_prcontexthistory] CANNOT BE CREATED.';
END CATCH;


USE [PDSNT];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] (
			[MODULE_ID]
			) INCLUDE (
			[FLOCK],[INPUT_ARTC],[NUMBER],[OUTPUT_ARTC],[PDA_ID],[QUA],[ROUTE_ID],[ROUTE_TAP_ID],[TOP_FLOCK],[TRAJECT_ID],[WEIGHT],[WEIGHT_AVG]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_RTD_ARCHIVE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[PDSNT].[dbo].[PDA_RTD_ARCHIVE]')
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
			DROP INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] (
			[MODULE_ID]
			) INCLUDE (
			[FLOCK],[INPUT_ARTC],[NUMBER],[OUTPUT_ARTC],[PDA_ID],[QUA],[ROUTE_ID],[ROUTE_TAP_ID],[TOP_FLOCK],[TRAJECT_ID],[WEIGHT],[WEIGHT_AVG]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [PDSNT].[dbo].[PDA_RTD_ARCHIVE] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [innova].[dbo].[proc_orders] (
			[active],[dispatchtime],[orderstatus]
			) INCLUDE (
			[code]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_orders]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_orders]')
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
			DROP INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[proc_orders] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[proc_orders] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [innova].[dbo].[proc_orders] (
			[active],[dispatchtime],[orderstatus]
			) INCLUDE (
			[code]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [innova].[dbo].[proc_orders] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [innova].[dbo].[proc_lots] (
			[dimension1],[processor],[slday]
			) INCLUDE (
			[flocknumber],[topflockid]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_lots]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_lots]')
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
			DROP INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[proc_lots] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[proc_lots] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [innova].[dbo].[proc_lots] (
			[dimension1],[processor],[slday]
			) INCLUDE (
			[flocknumber],[topflockid]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [innova].[dbo].[proc_lots] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [innova].[dbo].[proc_prperiods] (
			[begtime],[prday],[prunit]
			) INCLUDE (
			[activity],[endtime]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[proc_prperiods]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[proc_prperiods]')
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
			DROP INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[proc_prperiods] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[proc_prperiods] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [innova].[dbo].[proc_prperiods] (
			[begtime],[prday],[prunit]
			) INCLUDE (
			[activity],[endtime]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [innova].[dbo].[proc_prperiods] CANNOT BE CREATED.';
END CATCH;


USE [innova];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [innova].[dbo].[base_recordhistory] (
			[entrytype],[regtime]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[innova].[dbo].[base_recordhistory]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[innova].[dbo].[base_recordhistory]')
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
			DROP INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [innova].[dbo].[base_recordhistory] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [innova].[dbo].[base_recordhistory] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [innova].[dbo].[base_recordhistory] (
			[entrytype],[regtime]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [innova].[dbo].[base_recordhistory] CANNOT BE CREATED.';
END CATCH;

