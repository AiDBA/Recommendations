
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] (
			[ID_FORNECEDOR]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230809
			ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] (
			[ID_VEICTRAN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[EXPEDICAO_CARGA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[EXPEDICAO_CARGA]')
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
			DROP INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230809
			ON [MIMS].[dbo].[EXPEDICAO_CARGA] (
			[ID_ALMOXARIFADO_TRANSF],[ID_VEICTRAN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]')
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
			DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230809
			ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] (
			[ID_CLIENTE],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]')
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
			DROP INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[FL_IMPRDOCUPEDIVEND],[FL_STATENVICDPEDIVEND],[FL_STATPEDIVEND],[ID_CLIENTE],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO],[ID_USUASIST_AUTOCRED],[ID_USUASIST_CONSCADA],[ID_USUASIST_DESM],[ID_VENDEDOR],[NR_INVOPEDIVEND],[QN_UNIDINDIEXPEPEDIVEND]
			) INCLUDE (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[ID_CARGEXPE],[ID_ENDEPESS_ENTREGA],[ID_PEDIVEND],[ID_TIPOLOGI]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]')
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
		COUNT(*) = 21
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] (
			[DT_ESTOREGIPROD]
			) INCLUDE (
			[ID_ALMOXARIFADO],[ID_ESTOREGIPROD],[ID_PRODMATEEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]')
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
			DROP INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO] (
			[FILIAL],[FL_STATREGIPROD],[ID_EMBALAGEM],[ID_FORNECEDOR],[ID_MATERIAL],[ID_PEDIDEVOVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[DT_PADRREGIPROD],[ID_ALMOXARIFADO],[ID_REGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_US] (
			[ID_JANELA],[ID_USUARIO]
			) INCLUDE (
			[ID_MODULO],[ID_RECURSO]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]')
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
			DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230809
			ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] (
			[DT_CONTEMBA],[ID_CENTDIST],[ID_CLIENTE],[ID_DISTRIBUIDOR],[ID_EMBALAGEM],[ID_FORNECEDOR_TRANSPORTADOR]
			) INCLUDE (
			[EMPRESA],[FILIAL],[FL_AJUSLANCCONTEMBA],[FL_DEBICREDCONTEMBA],[FL_ORIGLANCCONTEMBA],[FX_CONTEMBA],[GN_HISTCONTEMBA],[ID_CARGEXPE],[ID_CONTEMBA],[ID_PEDIDEVO],[ID_PEDIVEND],[QN_EMBACENTDISTCONTEMBA],[QN_EMBACLIECONTEMBA],[QN_EMBADISTCONTEMBA],[QN_EMBATRANCONTEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]')
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
		COUNT(*) = 21
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[DT_MOVIREGIPROD],[FL_OPERMOVIREGIPROD],[ID_PRODMATEEMBA_ALTERADO],[ID_PRODMATEEMBA_ANTERIOR],[ID_REGIPROD]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]')
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
			DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] (
			[ID_REGIPROD]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC]')
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
			DROP INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230809
			ON [MIMS].[dbo].[CLIENTE_GERAL] (
			[ID_BAIRRO]
			) INCLUDE (
			[ID_CLIENTE],[ID_INTECLIE],[IE_CLIENTE],[NM_CLIENTE],[NM_FANTCLIE],[NM_REDUCLIE],[NR_CNPJCLIE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]')
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
			DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[CLIENTE_GERAL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] (
			[LASTMODDATE]
			) INCLUDE (
			[ID_DETAITEMPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]')
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
			DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[ID_REGIPROD]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]')
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
			DROP INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] (
			[FILIAL]
			) INCLUDE (
			[DT_ABERTRANREGIPROD],[DT_FECHTRANREGIPROD],[EMPRESA],[FL_STATTRANREGIPROD],[FL_TIPOTRANREGIPROD],[GN_PLACTRANREGIPROD],[ID_ALMODESTTRANREGIPROD],[ID_ALMOTRANTRANREGIPROD],[ID_CARGEXPETRANREGIPROD],[ID_PEDIVENDTRANREGIPROD],[ID_TRANREGIPROD],[ID_USUASIST_ABERTURA],[ID_USUASIST_FECHAMENTO],[IE_PEDIVENDTRANREGIPROD],[NR_NOTAFISCTRANREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]')
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
			DROP INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230809 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] (
			[ID_FORNECEDOR]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] (
			[ID_FORNECEDOR]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230809
			ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] (
			[ID_VEICTRAN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[EXPEDICAO_CARGA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[EXPEDICAO_CARGA]')
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
			DROP INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230809
			ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] (
			[ID_VEICTRAN]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230809
			ON [MIMS].[dbo].[EXPEDICAO_CARGA] (
			[ID_ALMOXARIFADO_TRANSF],[ID_VEICTRAN]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]')
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
			DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230809
			ON [MIMS].[dbo].[EXPEDICAO_CARGA] (
			[ID_ALMOXARIFADO_TRANSF],[ID_VEICTRAN]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230809
			ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] (
			[ID_CLIENTE],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]')
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
			DROP INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230809
			ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] (
			[ID_CLIENTE],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[FL_IMPRDOCUPEDIVEND],[FL_STATENVICDPEDIVEND],[FL_STATPEDIVEND],[ID_CLIENTE],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO],[ID_USUASIST_AUTOCRED],[ID_USUASIST_CONSCADA],[ID_USUASIST_DESM],[ID_VENDEDOR],[NR_INVOPEDIVEND],[QN_UNIDINDIEXPEPEDIVEND]
			) INCLUDE (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[ID_CARGEXPE],[ID_ENDEPESS_ENTREGA],[ID_PEDIVEND],[ID_TIPOLOGI]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]')
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
		COUNT(*) = 21
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[FL_IMPRDOCUPEDIVEND],[FL_STATENVICDPEDIVEND],[FL_STATPEDIVEND],[ID_CLIENTE],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO],[ID_USUASIST_AUTOCRED],[ID_USUASIST_CONSCADA],[ID_USUASIST_DESM],[ID_VENDEDOR],[NR_INVOPEDIVEND],[QN_UNIDINDIEXPEPEDIVEND]
			) INCLUDE (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[ID_CARGEXPE],[ID_ENDEPESS_ENTREGA],[ID_PEDIVEND],[ID_TIPOLOGI]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] (
			[DT_ESTOREGIPROD]
			) INCLUDE (
			[ID_ALMOXARIFADO],[ID_ESTOREGIPROD],[ID_PRODMATEEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]')
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
			DROP INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] (
			[DT_ESTOREGIPROD]
			) INCLUDE (
			[ID_ALMOXARIFADO],[ID_ESTOREGIPROD],[ID_PRODMATEEMBA]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO] (
			[FILIAL],[FL_STATREGIPROD],[ID_EMBALAGEM],[ID_FORNECEDOR],[ID_MATERIAL],[ID_PEDIDEVOVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[DT_PADRREGIPROD],[ID_ALMOXARIFADO],[ID_REGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO] (
			[FILIAL],[FL_STATREGIPROD],[ID_EMBALAGEM],[ID_FORNECEDOR],[ID_MATERIAL],[ID_PEDIDEVOVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[DT_PADRREGIPROD],[ID_ALMOXARIFADO],[ID_REGIPROD]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_US] (
			[ID_JANELA],[ID_USUARIO]
			) INCLUDE (
			[ID_MODULO],[ID_RECURSO]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US]')
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
			DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230809
			ON [MIMS].[dbo].[SCT_DIREITOS_US] (
			[ID_JANELA],[ID_USUARIO]
			) INCLUDE (
			[ID_MODULO],[ID_RECURSO]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230809
			ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] (
			[DT_CONTEMBA],[ID_CENTDIST],[ID_CLIENTE],[ID_DISTRIBUIDOR],[ID_EMBALAGEM],[ID_FORNECEDOR_TRANSPORTADOR]
			) INCLUDE (
			[EMPRESA],[FILIAL],[FL_AJUSLANCCONTEMBA],[FL_DEBICREDCONTEMBA],[FL_ORIGLANCCONTEMBA],[FX_CONTEMBA],[GN_HISTCONTEMBA],[ID_CARGEXPE],[ID_CONTEMBA],[ID_PEDIDEVO],[ID_PEDIVEND],[QN_EMBACENTDISTCONTEMBA],[QN_EMBACLIECONTEMBA],[QN_EMBADISTCONTEMBA],[QN_EMBATRANCONTEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]')
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
		COUNT(*) = 21
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230809
			ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] (
			[DT_CONTEMBA],[ID_CENTDIST],[ID_CLIENTE],[ID_DISTRIBUIDOR],[ID_EMBALAGEM],[ID_FORNECEDOR_TRANSPORTADOR]
			) INCLUDE (
			[EMPRESA],[FILIAL],[FL_AJUSLANCCONTEMBA],[FL_DEBICREDCONTEMBA],[FL_ORIGLANCCONTEMBA],[FX_CONTEMBA],[GN_HISTCONTEMBA],[ID_CARGEXPE],[ID_CONTEMBA],[ID_PEDIDEVO],[ID_PEDIVEND],[QN_EMBACENTDISTCONTEMBA],[QN_EMBACLIECONTEMBA],[QN_EMBADISTCONTEMBA],[QN_EMBATRANCONTEMBA]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[DT_MOVIREGIPROD],[FL_OPERMOVIREGIPROD],[ID_PRODMATEEMBA_ALTERADO],[ID_PRODMATEEMBA_ANTERIOR],[ID_REGIPROD]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]')
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
			DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[DT_MOVIREGIPROD],[FL_OPERMOVIREGIPROD],[ID_PRODMATEEMBA_ALTERADO],[ID_PRODMATEEMBA_ANTERIOR],[ID_REGIPROD]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] (
			[ID_REGIPROD]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC]')
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
			DROP INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] (
			[ID_REGIPROD]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230809
			ON [MIMS].[dbo].[CLIENTE_GERAL] (
			[ID_BAIRRO]
			) INCLUDE (
			[ID_CLIENTE],[ID_INTECLIE],[IE_CLIENTE],[NM_CLIENTE],[NM_FANTCLIE],[NM_REDUCLIE],[NR_CNPJCLIE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]')
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
			DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[CLIENTE_GERAL] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[CLIENTE_GERAL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230809
			ON [MIMS].[dbo].[CLIENTE_GERAL] (
			[ID_BAIRRO]
			) INCLUDE (
			[ID_CLIENTE],[ID_INTECLIE],[IE_CLIENTE],[NM_CLIENTE],[NM_FANTCLIE],[NM_REDUCLIE],[NR_CNPJCLIE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] (
			[LASTMODDATE]
			) INCLUDE (
			[ID_DETAITEMPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE]')
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
			DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230809
			ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] (
			[LASTMODDATE]
			) INCLUDE (
			[ID_DETAITEMPEDIVEND]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[ID_REGIPROD]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230809' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230809' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]')
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
			DROP INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230809
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[ID_REGIPROD]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230809')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] (
			[FILIAL]
			) INCLUDE (
			[DT_ABERTRANREGIPROD],[DT_FECHTRANREGIPROD],[EMPRESA],[FL_STATTRANREGIPROD],[FL_TIPOTRANREGIPROD],[GN_PLACTRANREGIPROD],[ID_ALMODESTTRANREGIPROD],[ID_ALMOTRANTRANREGIPROD],[ID_CARGEXPETRANREGIPROD],[ID_PEDIVENDTRANREGIPROD],[ID_TRANREGIPROD],[ID_USUASIST_ABERTURA],[ID_USUASIST_FECHAMENTO],[IE_PEDIVENDTRANREGIPROD],[NR_NOTAFISCTRANREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230809' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230809' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]')
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
			DROP INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
			CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230809
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] (
			[FILIAL]
			) INCLUDE (
			[DT_ABERTRANREGIPROD],[DT_FECHTRANREGIPROD],[EMPRESA],[FL_STATTRANREGIPROD],[FL_TIPOTRANREGIPROD],[GN_PLACTRANREGIPROD],[ID_ALMODESTTRANREGIPROD],[ID_ALMOTRANTRANREGIPROD],[ID_CARGEXPETRANREGIPROD],[ID_PEDIVENDTRANREGIPROD],[ID_TRANREGIPROD],[ID_USUASIST_ABERTURA],[ID_USUASIST_FECHAMENTO],[IE_PEDIVENDTRANREGIPROD],[NR_NOTAFISCTRANREGIPROD]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230809 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] CANNOT BE CREATED.';
END CATCH;

