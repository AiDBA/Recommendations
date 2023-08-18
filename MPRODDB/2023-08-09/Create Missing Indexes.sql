
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230809
			ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] (
			[IE_ORDEPESA]
			) INCLUDE (
			[DT_ABATENTRAVEVIVA],[DT_ENTRCAMIENTRAVEVIVA],[QN_PESOBRUTENTRAVEVIVA],[QN_PESOTARAENTRAVEVIVA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[ENTRADA_AVE_VIVA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[ENTRADA_AVE_VIVA]')
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
			DROP INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MTECH-EDATA];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230809
			ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] (
			[CondemnationNo],[ImportedFlag],[MfmbReplicationDateTime]
			) INCLUDE (
			[CertificateAvgWeight],[CertificateWeight],[CondemnationPartNo],[CreationUserId],[EdataRefNo],[EntityNo],[EntranceNo],[EventDate],[FarmNo],[hDOA],[Head],[HouseNo],[InspectorNo],[LastModDate],[LotNo],[LotTotalHead],[LotTotalWeight],[PlantNo],[RefNo],[RefNo_Calc],[ReplicationDateTime],[ShiftNo],[UserId],[wDOA],[WeightPart],[WeightWB],[xDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230809' AND i.object_id = OBJECT_ID('[MTECH-EDATA].[mtech].[PmtsCondemnTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230809' AND i2.object_id = OBJECT_ID('[MTECH-EDATA].[mtech].[PmtsCondemnTrans]')
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
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230809
			ON [MIMS].[dbo].[CLIENTE_FILIAL] (
			[FILIAL]
			) INCLUDE (
			[FL_CONTREPEEMPEFILICLIE],[FL_STATSINCFILICLIE],[FX_FILICLIE],[ID_CLIENTE],[ID_CONTA],[ID_INSTCOBR],[ID_SITUCOBR],[ID_TABEPREC],[ID_TABEPREC_PROMO],[ID_TIPOCOBR],[ID_TIPOOPER],[ID_TIPOPEDIVEND],[LASTMODDATE],[ROWID],[SYNCFLAG]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_FILIAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_FILIAL]')
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
			DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[CLIENTE_FILIAL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[FL_IMPRDOCUPEDIVEND],[FL_STATPEDIVEND],[ID_CLIENTE],[IE_PEDIVEND],[NR_INVOPEDIVEND],[NR_ORDEENTRPEDIVEND],[QN_UNIDINDIEXPEPEDIVEND],[SG_DOCUPEDIVEND]
			) INCLUDE (
			[DT_DIGIPEDIVEND],[DT_IMPRINVOPEDIVEND],[DT_IMPRORDEENTRPEDIVEND],[DT_INVOPEDIVEND],[DT_ORDEENTRPEDIVEND],[DT_PEDIVEND],[FL_IMPRINVOPEDIVEND],[FL_IMPRORDEENTRPEDIVEND],[FL_TIPOPEDIVEND],[GN_ESPEPEDIVEND],[ID_CARGEXPE],[ID_CENTDIST],[ID_ENDEPESS_ENTREGA],[ID_VENDEDOR],[IE_FILISIST_IMPRROMAINVO],[NR_ERPPEDIVEND],[NR_ORDEPEDIVEND],[QN_EMBAPEDIVEND],[QN_PESOBRUTPEDIVEND],[QN_PESOPEDIVEND],[QN_TARAPEDIVEND],[QN_UNIDINDIPEDIVEND],[VL_INVOPEDIVEND],[VL_PEDIVEND],[VL_TOTAIMPOINVOPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]')
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
		COUNT(*) = 36
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] (
			[IE_DETAITEMPEDIVEND],[LASTMODDATE],[NR_LINHDETAITEMPEDIVEND],[SYNCFLAG]
			) INCLUDE (
			[ID_ITEMPEDIVEND],[QN_EMBAEXPEDETAITEMPEDIVEND],[QN_PESOEXPEDETAITEMPEDIVEND],[QN_UNIDEXPEDETAITEMPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]')
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
			DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [INTERM];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230809
			ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[DT_FECHCARGEXPE],[DT_ORDEENTRPEDIVEND],[DT_ULTIALTEEXPEERPPEDIVEND],[FL_IMPRDOCUPEDIVEND],[FL_STATPEDIVEND],[IE_CENTDIST],[NR_INVOPEDIVEND],[NR_ORDEENTRPEDIVEND]
			) INCLUDE (
			[DT_ALTESTATPEDIVEND],[DT_DIGIPEDIVEND],[DT_EXPEPEDIVEND],[DT_GERAINVOPEDIVEND],[DT_GERAORDEENTRPEDIVEND],[DT_INVOPEDIVEND],[DT_LIMIEXPEPEDIVEND],[DT_PEDIVEND],[DT_ULTIALTEFATUERPPEDIVEND],[DT_ULTIALTEMIMSPEDIVEND],[DT_ULTIATUAERPPEDIVEND],[DT_ULTIREPLERPPEDIVEND],[FL_IMPRINVOAUTOPEDIVEND],[FL_IMPRMANIPEDIVEND],[FL_RETIENTRPEDIVEND],[FL_TRANPEDIVEND],[GN_ERPTIPOPEDIVEND],[GN_ESPEPEDIVEND],[GN_LACRESIFEXPONFEPEDIVEND],[GN_LACRESIFEXPONFEPEDIVERND],[GN_MODEETIQPALEPEDIVEND],[GN_OBSEEXPEPEDIVEND],[GN_OBSEPADR_PEDIVEND],[GN_OBSEPEDIVEND],[GN_TEXT0001PEDIVEND],[ID_PEDIVEND_INTE],[IE_CARGEXPE],[IE_CLIENTE],[IE_CLIENTE_COBRANCA],[IE_CLIENTE_ENTREGA],[IE_DISTRIBUIDOR],[IE_EMPRESA],[IE_ENDEPESS_ADICIONAL],[IE_ENDEPESS_COBRANCA],[IE_ENDEPESS_ENTREGA],[IE_FILISIST],[IE_FORMPAGA],[IE_MOEDA],[IE_TIPOPEDIVEND],[IE_VENDEDOR],[NM_FORMPAGA],[NM_LOGIUSUAINVOPEDIVEND],[NM_LOGIUSUAORDEENTRPEDIVEND],[NR_ERPPEDIVEND],[NR_PICKSLIPPEDIVEND],[QN_NUMELINHPEDIVEND],[SG_DOCUPEDIVEND],[SG_TIPOFRETPEDIVEND],[VL_ARREIMPOPEDIVEND],[VL_COTAMOEDPEDIVEND],[VL_INVOPEDIVEND],[VL_TOTAIMPOINVOPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230809' AND i.object_id = OBJECT_ID('[INTERM].[dbo].[INTERFACE_PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230809' AND i2.object_id = OBJECT_ID('[INTERM].[dbo].[INTERFACE_PEDIDO_VENDA]')
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
		COUNT(*) = 61
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230809
			ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] (
			[ID_ALMOXARIFADO]
			) INCLUDE (
			[ID_EMBALAGEM],[ID_MATERIAL],[QN_ESTOMINIMATEALMO],[QN_PONTPEDIMATEALMO]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]')
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
			DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230809
			ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] (
			[ID_SISTLOG]
			) INCLUDE (
			[GN_ANTESISTLOGITEM],[GN_NOVOSISTLOGITEM],[ID_CAMPSISTLOGITEM],[NM_CAMPSISTLOGITEM]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SISTEMA_LOG_ITEM]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SISTEMA_LOG_ITEM]')
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
			DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230809
			ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] (
			[ID_INTELOTECRIA]
			) INCLUDE (
			[FL_SEXOCURRGALPINTELOTECRIA],[NM_GALPINTELOTECRIA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO]')
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
			DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_US] (
			[ID_JANELA],[ID_MODULO],[ID_RECURSO],[ID_USUARIO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]')
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
			DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230809
			ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] (
			[DT_ALOJINTELOTECRIA]
			) INCLUDE (
			[DT_ULTIALTEINTELOTECRIA],[FL_ATIVINTELOTECRIA],[FL_ATUALACRINTELOTECRIA],[FL_SEXOINTELOTECRIA],[GN_IDENUNICINTELOTECRIA],[ID_LINHAVE],[ID_MATERIAL],[ID_PROPGRAN],[IE_INTELOTECRIA],[IE_LOTECOMPINTELOTECRIA],[LASTMODDATE],[NR_GALPINTELOTECRIA],[NR_LACRFINAINTELOTECRIA],[NR_LACRINICINTELOTECRIA],[NR_PENINTELOTECRIA],[ROWID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO]')
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
		COUNT(*) = 17
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_GR] (
			[ID_GRUPO]
			) INCLUDE (
			[ID_JANELA],[ID_MODULO],[ID_RECURSO]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR]')
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
			DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[SCT_DIREITOS_GR] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230809
			ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] (
			[FL_EVENPRIMMATEMATEEMBA],[ID_MATEEMBAFILI],[ID_MATEEMBAFILI_MATEPRIM],[ID_RECEPRIMMATEMATEEMBA]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM]')
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
			DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] (
			[FILIAL],[ID_GRUPO],[ID_JANELA],[ID_MODULO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR_JANE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR_JANE]')
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
			DROP INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230809
			ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] (
			[IE_ORDEPESA]
			) INCLUDE (
			[DT_ABATENTRAVEVIVA],[DT_ENTRCAMIENTRAVEVIVA],[QN_PESOBRUTENTRAVEVIVA],[QN_PESOTARAENTRAVEVIVA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[ENTRADA_AVE_VIVA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[ENTRADA_AVE_VIVA]')
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
			DROP INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230809
			ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] (
			[IE_ORDEPESA]
			) INCLUDE (
			[DT_ABATENTRAVEVIVA],[DT_ENTRCAMIENTRAVEVIVA],[QN_PESOBRUTENTRAVEVIVA],[QN_PESOTARAENTRAVEVIVA]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS].[dbo].[ENTRADA_AVE_VIVA] CANNOT BE CREATED.';
END CATCH;


USE [MTECH-EDATA];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230809
			ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] (
			[CondemnationNo],[ImportedFlag],[MfmbReplicationDateTime]
			) INCLUDE (
			[CertificateAvgWeight],[CertificateWeight],[CondemnationPartNo],[CreationUserId],[EdataRefNo],[EntityNo],[EntranceNo],[EventDate],[FarmNo],[hDOA],[Head],[HouseNo],[InspectorNo],[LastModDate],[LotNo],[LotTotalHead],[LotTotalWeight],[PlantNo],[RefNo],[RefNo_Calc],[ReplicationDateTime],[ShiftNo],[UserId],[wDOA],[WeightPart],[WeightWB],[xDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230809' AND i.object_id = OBJECT_ID('[MTECH-EDATA].[mtech].[PmtsCondemnTrans]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230809' AND i2.object_id = OBJECT_ID('[MTECH-EDATA].[mtech].[PmtsCondemnTrans]')
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
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230809
			ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] (
			[CondemnationNo],[ImportedFlag],[MfmbReplicationDateTime]
			) INCLUDE (
			[CertificateAvgWeight],[CertificateWeight],[CondemnationPartNo],[CreationUserId],[EdataRefNo],[EntityNo],[EntranceNo],[EventDate],[FarmNo],[hDOA],[Head],[HouseNo],[InspectorNo],[LastModDate],[LotNo],[LotTotalHead],[LotTotalWeight],[PlantNo],[RefNo],[RefNo_Calc],[ReplicationDateTime],[ShiftNo],[UserId],[wDOA],[WeightPart],[WeightWB],[xDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230809 ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230809
			ON [MIMS].[dbo].[CLIENTE_FILIAL] (
			[FILIAL]
			) INCLUDE (
			[FL_CONTREPEEMPEFILICLIE],[FL_STATSINCFILICLIE],[FX_FILICLIE],[ID_CLIENTE],[ID_CONTA],[ID_INSTCOBR],[ID_SITUCOBR],[ID_TABEPREC],[ID_TABEPREC_PROMO],[ID_TIPOCOBR],[ID_TIPOOPER],[ID_TIPOPEDIVEND],[LASTMODDATE],[ROWID],[SYNCFLAG]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_FILIAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_FILIAL]')
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
			DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[CLIENTE_FILIAL] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[CLIENTE_FILIAL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230809
			ON [MIMS].[dbo].[CLIENTE_FILIAL] (
			[FILIAL]
			) INCLUDE (
			[FL_CONTREPEEMPEFILICLIE],[FL_STATSINCFILICLIE],[FX_FILICLIE],[ID_CLIENTE],[ID_CONTA],[ID_INSTCOBR],[ID_SITUCOBR],[ID_TABEPREC],[ID_TABEPREC_PROMO],[ID_TIPOCOBR],[ID_TIPOOPER],[ID_TIPOPEDIVEND],[LASTMODDATE],[ROWID],[SYNCFLAG]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[CLIENTE_FILIAL] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[FL_IMPRDOCUPEDIVEND],[FL_STATPEDIVEND],[ID_CLIENTE],[IE_PEDIVEND],[NR_INVOPEDIVEND],[NR_ORDEENTRPEDIVEND],[QN_UNIDINDIEXPEPEDIVEND],[SG_DOCUPEDIVEND]
			) INCLUDE (
			[DT_DIGIPEDIVEND],[DT_IMPRINVOPEDIVEND],[DT_IMPRORDEENTRPEDIVEND],[DT_INVOPEDIVEND],[DT_ORDEENTRPEDIVEND],[DT_PEDIVEND],[FL_IMPRINVOPEDIVEND],[FL_IMPRORDEENTRPEDIVEND],[FL_TIPOPEDIVEND],[GN_ESPEPEDIVEND],[ID_CARGEXPE],[ID_CENTDIST],[ID_ENDEPESS_ENTREGA],[ID_VENDEDOR],[IE_FILISIST_IMPRROMAINVO],[NR_ERPPEDIVEND],[NR_ORDEPEDIVEND],[QN_EMBAPEDIVEND],[QN_PESOBRUTPEDIVEND],[QN_PESOPEDIVEND],[QN_TARAPEDIVEND],[QN_UNIDINDIPEDIVEND],[VL_INVOPEDIVEND],[VL_PEDIVEND],[VL_TOTAIMPOINVOPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]')
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
		COUNT(*) = 36
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[FL_IMPRDOCUPEDIVEND],[FL_STATPEDIVEND],[ID_CLIENTE],[IE_PEDIVEND],[NR_INVOPEDIVEND],[NR_ORDEENTRPEDIVEND],[QN_UNIDINDIEXPEPEDIVEND],[SG_DOCUPEDIVEND]
			) INCLUDE (
			[DT_DIGIPEDIVEND],[DT_IMPRINVOPEDIVEND],[DT_IMPRORDEENTRPEDIVEND],[DT_INVOPEDIVEND],[DT_ORDEENTRPEDIVEND],[DT_PEDIVEND],[FL_IMPRINVOPEDIVEND],[FL_IMPRORDEENTRPEDIVEND],[FL_TIPOPEDIVEND],[GN_ESPEPEDIVEND],[ID_CARGEXPE],[ID_CENTDIST],[ID_ENDEPESS_ENTREGA],[ID_VENDEDOR],[IE_FILISIST_IMPRROMAINVO],[NR_ERPPEDIVEND],[NR_ORDEPEDIVEND],[QN_EMBAPEDIVEND],[QN_PESOBRUTPEDIVEND],[QN_PESOPEDIVEND],[QN_TARAPEDIVEND],[QN_UNIDINDIPEDIVEND],[VL_INVOPEDIVEND],[VL_PEDIVEND],[VL_TOTAIMPOINVOPEDIVEND]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] (
			[IE_DETAITEMPEDIVEND],[LASTMODDATE],[NR_LINHDETAITEMPEDIVEND],[SYNCFLAG]
			) INCLUDE (
			[ID_ITEMPEDIVEND],[QN_EMBAEXPEDETAITEMPEDIVEND],[QN_PESOEXPEDETAITEMPEDIVEND],[QN_UNIDEXPEDETAITEMPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]')
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
			DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] (
			[IE_DETAITEMPEDIVEND],[LASTMODDATE],[NR_LINHDETAITEMPEDIVEND],[SYNCFLAG]
			) INCLUDE (
			[ID_ITEMPEDIVEND],[QN_EMBAEXPEDETAITEMPEDIVEND],[QN_PESOEXPEDETAITEMPEDIVEND],[QN_UNIDEXPEDETAITEMPEDIVEND]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] CANNOT BE CREATED.';
END CATCH;


USE [INTERM];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230809
			ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[DT_FECHCARGEXPE],[DT_ORDEENTRPEDIVEND],[DT_ULTIALTEEXPEERPPEDIVEND],[FL_IMPRDOCUPEDIVEND],[FL_STATPEDIVEND],[IE_CENTDIST],[NR_INVOPEDIVEND],[NR_ORDEENTRPEDIVEND]
			) INCLUDE (
			[DT_ALTESTATPEDIVEND],[DT_DIGIPEDIVEND],[DT_EXPEPEDIVEND],[DT_GERAINVOPEDIVEND],[DT_GERAORDEENTRPEDIVEND],[DT_INVOPEDIVEND],[DT_LIMIEXPEPEDIVEND],[DT_PEDIVEND],[DT_ULTIALTEFATUERPPEDIVEND],[DT_ULTIALTEMIMSPEDIVEND],[DT_ULTIATUAERPPEDIVEND],[DT_ULTIREPLERPPEDIVEND],[FL_IMPRINVOAUTOPEDIVEND],[FL_IMPRMANIPEDIVEND],[FL_RETIENTRPEDIVEND],[FL_TRANPEDIVEND],[GN_ERPTIPOPEDIVEND],[GN_ESPEPEDIVEND],[GN_LACRESIFEXPONFEPEDIVEND],[GN_LACRESIFEXPONFEPEDIVERND],[GN_MODEETIQPALEPEDIVEND],[GN_OBSEEXPEPEDIVEND],[GN_OBSEPADR_PEDIVEND],[GN_OBSEPEDIVEND],[GN_TEXT0001PEDIVEND],[ID_PEDIVEND_INTE],[IE_CARGEXPE],[IE_CLIENTE],[IE_CLIENTE_COBRANCA],[IE_CLIENTE_ENTREGA],[IE_DISTRIBUIDOR],[IE_EMPRESA],[IE_ENDEPESS_ADICIONAL],[IE_ENDEPESS_COBRANCA],[IE_ENDEPESS_ENTREGA],[IE_FILISIST],[IE_FORMPAGA],[IE_MOEDA],[IE_TIPOPEDIVEND],[IE_VENDEDOR],[NM_FORMPAGA],[NM_LOGIUSUAINVOPEDIVEND],[NM_LOGIUSUAORDEENTRPEDIVEND],[NR_ERPPEDIVEND],[NR_PICKSLIPPEDIVEND],[QN_NUMELINHPEDIVEND],[SG_DOCUPEDIVEND],[SG_TIPOFRETPEDIVEND],[VL_ARREIMPOPEDIVEND],[VL_COTAMOEDPEDIVEND],[VL_INVOPEDIVEND],[VL_TOTAIMPOINVOPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230809' AND i.object_id = OBJECT_ID('[INTERM].[dbo].[INTERFACE_PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230809' AND i2.object_id = OBJECT_ID('[INTERM].[dbo].[INTERFACE_PEDIDO_VENDA]')
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
		COUNT(*) = 61
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230809
			ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[DT_FECHCARGEXPE],[DT_ORDEENTRPEDIVEND],[DT_ULTIALTEEXPEERPPEDIVEND],[FL_IMPRDOCUPEDIVEND],[FL_STATPEDIVEND],[IE_CENTDIST],[NR_INVOPEDIVEND],[NR_ORDEENTRPEDIVEND]
			) INCLUDE (
			[DT_ALTESTATPEDIVEND],[DT_DIGIPEDIVEND],[DT_EXPEPEDIVEND],[DT_GERAINVOPEDIVEND],[DT_GERAORDEENTRPEDIVEND],[DT_INVOPEDIVEND],[DT_LIMIEXPEPEDIVEND],[DT_PEDIVEND],[DT_ULTIALTEFATUERPPEDIVEND],[DT_ULTIALTEMIMSPEDIVEND],[DT_ULTIATUAERPPEDIVEND],[DT_ULTIREPLERPPEDIVEND],[FL_IMPRINVOAUTOPEDIVEND],[FL_IMPRMANIPEDIVEND],[FL_RETIENTRPEDIVEND],[FL_TRANPEDIVEND],[GN_ERPTIPOPEDIVEND],[GN_ESPEPEDIVEND],[GN_LACRESIFEXPONFEPEDIVEND],[GN_LACRESIFEXPONFEPEDIVERND],[GN_MODEETIQPALEPEDIVEND],[GN_OBSEEXPEPEDIVEND],[GN_OBSEPADR_PEDIVEND],[GN_OBSEPEDIVEND],[GN_TEXT0001PEDIVEND],[ID_PEDIVEND_INTE],[IE_CARGEXPE],[IE_CLIENTE],[IE_CLIENTE_COBRANCA],[IE_CLIENTE_ENTREGA],[IE_DISTRIBUIDOR],[IE_EMPRESA],[IE_ENDEPESS_ADICIONAL],[IE_ENDEPESS_COBRANCA],[IE_ENDEPESS_ENTREGA],[IE_FILISIST],[IE_FORMPAGA],[IE_MOEDA],[IE_TIPOPEDIVEND],[IE_VENDEDOR],[NM_FORMPAGA],[NM_LOGIUSUAINVOPEDIVEND],[NM_LOGIUSUAORDEENTRPEDIVEND],[NR_ERPPEDIVEND],[NR_PICKSLIPPEDIVEND],[QN_NUMELINHPEDIVEND],[SG_DOCUPEDIVEND],[SG_TIPOFRETPEDIVEND],[VL_ARREIMPOPEDIVEND],[VL_COTAMOEDPEDIVEND],[VL_INVOPEDIVEND],[VL_TOTAIMPOINVOPEDIVEND]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230809 ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230809
			ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] (
			[ID_ALMOXARIFADO]
			) INCLUDE (
			[ID_EMBALAGEM],[ID_MATERIAL],[QN_ESTOMINIMATEALMO],[QN_PONTPEDIMATEALMO]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]')
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
			DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230809
			ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] (
			[ID_ALMOXARIFADO]
			) INCLUDE (
			[ID_EMBALAGEM],[ID_MATERIAL],[QN_ESTOMINIMATEALMO],[QN_PONTPEDIMATEALMO]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230809
			ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] (
			[ID_SISTLOG]
			) INCLUDE (
			[GN_ANTESISTLOGITEM],[GN_NOVOSISTLOGITEM],[ID_CAMPSISTLOGITEM],[NM_CAMPSISTLOGITEM]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SISTEMA_LOG_ITEM]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SISTEMA_LOG_ITEM]')
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
			DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230809
			ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] (
			[ID_SISTLOG]
			) INCLUDE (
			[GN_ANTESISTLOGITEM],[GN_NOVOSISTLOGITEM],[ID_CAMPSISTLOGITEM],[NM_CAMPSISTLOGITEM]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SISTEMA_LOG_ITEM] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230809
			ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] (
			[ID_INTELOTECRIA]
			) INCLUDE (
			[FL_SEXOCURRGALPINTELOTECRIA],[NM_GALPINTELOTECRIA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO]')
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
			DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230809
			ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] (
			[ID_INTELOTECRIA]
			) INCLUDE (
			[FL_SEXOCURRGALPINTELOTECRIA],[NM_GALPINTELOTECRIA]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO_GALPAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_US] (
			[ID_JANELA],[ID_MODULO],[ID_RECURSO],[ID_USUARIO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]')
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
			DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_US] (
			[ID_JANELA],[ID_MODULO],[ID_RECURSO],[ID_USUARIO]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230809
			ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] (
			[DT_ALOJINTELOTECRIA]
			) INCLUDE (
			[DT_ULTIALTEINTELOTECRIA],[FL_ATIVINTELOTECRIA],[FL_ATUALACRINTELOTECRIA],[FL_SEXOINTELOTECRIA],[GN_IDENUNICINTELOTECRIA],[ID_LINHAVE],[ID_MATERIAL],[ID_PROPGRAN],[IE_INTELOTECRIA],[IE_LOTECOMPINTELOTECRIA],[LASTMODDATE],[NR_GALPINTELOTECRIA],[NR_LACRFINAINTELOTECRIA],[NR_LACRINICINTELOTECRIA],[NR_PENINTELOTECRIA],[ROWID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO]')
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
		COUNT(*) = 17
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230809
			ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] (
			[DT_ALOJINTELOTECRIA]
			) INCLUDE (
			[DT_ULTIALTEINTELOTECRIA],[FL_ATIVINTELOTECRIA],[FL_ATUALACRINTELOTECRIA],[FL_SEXOINTELOTECRIA],[GN_IDENUNICINTELOTECRIA],[ID_LINHAVE],[ID_MATERIAL],[ID_PROPGRAN],[IE_INTELOTECRIA],[IE_LOTECOMPINTELOTECRIA],[LASTMODDATE],[NR_GALPINTELOTECRIA],[NR_LACRFINAINTELOTECRIA],[NR_LACRINICINTELOTECRIA],[NR_PENINTELOTECRIA],[ROWID]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS].[dbo].[CRIACAO_LOTE_INTEGRACAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_GR] (
			[ID_GRUPO]
			) INCLUDE (
			[ID_JANELA],[ID_MODULO],[ID_RECURSO]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR]')
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
			DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_GR] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_GR] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_GR] (
			[ID_GRUPO]
			) INCLUDE (
			[ID_JANELA],[ID_MODULO],[ID_RECURSO]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230809
			ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] (
			[FL_EVENPRIMMATEMATEEMBA],[ID_MATEEMBAFILI],[ID_MATEEMBAFILI_MATEPRIM],[ID_RECEPRIMMATEMATEEMBA]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM]')
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
			DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230809
			ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] (
			[FL_EVENPRIMMATEMATEEMBA],[ID_MATEEMBAFILI],[ID_MATEEMBAFILI_MATEPRIM],[ID_RECEPRIMMATEMATEEMBA]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_MATE_PRIM] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] (
			[FILIAL],[ID_GRUPO],[ID_JANELA],[ID_MODULO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR_JANE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_GR_JANE]')
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
			DROP INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] (
			[FILIAL],[ID_GRUPO],[ID_JANELA],[ID_MODULO]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_GR_JANE] CANNOT BE CREATED.';
END CATCH;

