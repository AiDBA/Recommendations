
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] (
			[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]')
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
			DROP INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[FL_STATPEDIVEND],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO],[ID_TIPOLOGI],[ID_USUASIST_AUTOCRED],[ID_USUASIST_CONSCADA],[ID_USUASIST_DESM],[NR_ORDEENTRPEDIVEND]
			) INCLUDE (
			[ID_CARGEXPE],[ID_CLIENTE],[ID_ENDEPESS_ENTREGA],[ID_PEDIVEND],[ID_VENDEDOR],[QN_EMBAEXPEPEDIVEND],[QN_EMBAPEDIVEND],[QN_PESOPEDIVEND],[QN_PESOREALEXPEPEDIVEND],[QN_TARAPEDIVEND],[QN_TARAREALEXPEPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]')
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
			DROP INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] (
			[DT_ESTOREGIPROD]
			) INCLUDE (
			[ID_ALMOXARIFADO],[ID_ESTOREGIPROD],[ID_PRODMATEEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]')
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
			DROP INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] (
			[DT_CONTEMBA],[FL_DEBICREDCONTEMBA],[ID_CARGEXPE],[ID_CENTDIST],[ID_EMBALAGEM],[ID_FORNECEDOR_TRANSPORTADOR],[ID_PEDIVEND]
			) INCLUDE (
			[EMPRESA],[FILIAL],[FL_AJUSLANCCONTEMBA],[FL_ORIGLANCCONTEMBA],[FX_CONTEMBA],[GN_HISTCONTEMBA],[ID_CLIENTE],[ID_CONTEMBA],[ID_DISTRIBUIDOR],[ID_PEDIDEVO],[QN_EMBACENTDISTCONTEMBA],[QN_EMBACLIECONTEMBA],[QN_EMBADISTCONTEMBA],[QN_EMBATRANCONTEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]')
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
			DROP INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[ID_PRODMATEEMBA_ALTERADO],[ID_PRODMATEEMBA_ANTERIOR]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]')
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
			DROP INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] (
			[EMPRESA_IMPRESSA],[FILIAL_IMPRESSA]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [MIMS].[dbo].[EXPEDICAO_CARGA] (
			[DT_FECHCARGEXPE],[FL_STATCARGEXPE],[ID_TRANMOTOTRAN]
			) INCLUDE (
			[ID_CARGEXPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]')
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
			DROP INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [MIMS].[dbo].[CLIENTE_GERAL] (
			[ID_BAIRRO]
			) INCLUDE (
			[ID_CLIENTE],[ID_INTECLIE],[IE_CLIENTE],[NM_CLIENTE],[NM_FANTCLIE],[NM_REDUCLIE],[NR_CNPJCLIE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]')
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
			DROP INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[CLIENTE_GERAL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] (
			[FILIAL],[FL_STATTRANREGIPROD],[FL_TIPOTRANREGIPROD],[ID_ALMOTRANTRANREGIPROD]
			) INCLUDE (
			[DT_ABERTRANREGIPROD],[DT_FECHTRANREGIPROD],[EMPRESA],[GN_PLACTRANREGIPROD],[ID_ALMODESTTRANREGIPROD],[ID_CARGEXPETRANREGIPROD],[ID_PEDIVENDTRANREGIPROD],[ID_TRANREGIPROD],[ID_USUASIST_ABERTURA],[ID_USUASIST_FECHAMENTO],[IE_PEDIVENDTRANREGIPROD],[NR_NOTAFISCTRANREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]')
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
			DROP INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO] (
			[DT_PADRREGIPROD],[FL_STATREGIPROD],[ID_ALMOXARIFADO],[ID_PALEEXPE],[ID_PEDIVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[FL_DISPREGIPROD],[FL_SEQUREGIPROD],[FL_SITUREGIPROD],[FL_TIPOUNIDREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] (
			[FILIAL],[FL_UNIDREGIPROD]
			) INCLUDE (
			[DT_UNIDREGIPROD],[EMPRESA],[ID_UNIDREGIPROD],[ID_USUASIST]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE]')
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
			DROP INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] (
			[ID_CARGEXPE]
			) INCLUDE (
			[DT_CARRIDENCARGEXPE],[EMPRESA],[FILIAL],[FL_IMPRETIQIDENCARGEXPE],[FL_MODAREGIIDENCARGEXPE],[ID_IDENCARGEXPE],[ID_PEDIVEND],[ID_REGIPROD],[QN_PESOIDENCARGEXPE],[QN_TARAIDENCARGEXPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO]')
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
		COUNT(*) = 11
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] (
			[EMPRESA],[FILIAL],[ID_JANELA],[ID_USUARIO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US_JANE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US_JANE]')
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
			DROP INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] (
			[ID_PEDIVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[DT_BALAREGIPROD],[DT_CONTREGIPROD],[DT_ENTRTUNEREGIPROD],[DT_EXCLREGIPROD],[DT_PADRREGIPROD],[DT_REFEREGIPROD],[DT_REGIPROD],[DT_SAIDTUNEREGIPROD],[DT_VALIREGIPROD],[EMPRESA],[FILIAL],[FL_MODAREGIPROD],[FL_ORIGREGIPROD],[FL_PRODPROPREGIPROD],[FL_SEQUREGIPROD],[FL_SIMUREGIPROD],[FL_TIPOUNIDREGIPROD],[FX_REGIPROD],[ID_ALMOXARIFADO],[ID_BALANCA],[ID_ESTRUNIDABAT],[ID_IDENORIGREGIPROD],[ID_IDENREGIPROD],[ID_PALEEXPE],[ID_REGIPROD],[ID_VARIDEFIEMBA],[NR_LOTERASTREGIPROD],[QN_ANIMEMBAREGIPROD],[QN_EMBADESMREGIPROD],[QN_PESOLIQUREGIPROD],[QN_PESOORIGREGIPROD],[QN_PESOPADRREGIPROD],[QN_PRODEMBAREGIPROD],[QN_TARACOMPREGIPROD],[QN_TARAEMBAREGIPROD],[QN_TARAPRIMRATEREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO]')
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
		COUNT(*) = 38
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] (
			[FILIAL],[ID_ALMOXARIFADO]
			) INCLUDE (
			[ID_EMBALAGEM],[ID_MATERIAL]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]')
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
			DROP INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] (
			[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PEDIDO_VENDA]')
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
			DROP INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] (
			[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[FL_STATPEDIVEND],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO],[ID_TIPOLOGI],[ID_USUASIST_AUTOCRED],[ID_USUASIST_CONSCADA],[ID_USUASIST_DESM],[NR_ORDEENTRPEDIVEND]
			) INCLUDE (
			[ID_CARGEXPE],[ID_CLIENTE],[ID_ENDEPESS_ENTREGA],[ID_PEDIVEND],[ID_VENDEDOR],[QN_EMBAEXPEPEDIVEND],[QN_EMBAPEDIVEND],[QN_PESOPEDIVEND],[QN_PESOREALEXPEPEDIVEND],[QN_TARAPEDIVEND],[QN_TARAREALEXPEPEDIVEND]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PEDIDO_VENDA]')
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
			DROP INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PEDIDO_VENDA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [MIMS].[dbo].[PEDIDO_VENDA] (
			[DT_ENTRPEDIVEND],[EMPRESA],[FILIAL],[FL_STATPEDIVEND],[ID_FORNECEDOR_DISTRIBUICAO],[ID_MOEDA_DESPESA],[ID_MOEDA_FRETE],[ID_MOEDA_SEGURO],[ID_TIPOLOGI],[ID_USUASIST_AUTOCRED],[ID_USUASIST_CONSCADA],[ID_USUASIST_DESM],[NR_ORDEENTRPEDIVEND]
			) INCLUDE (
			[ID_CARGEXPE],[ID_CLIENTE],[ID_ENDEPESS_ENTREGA],[ID_PEDIVEND],[ID_VENDEDOR],[QN_EMBAEXPEPEDIVEND],[QN_EMBAPEDIVEND],[QN_PESOPEDIVEND],[QN_PESOREALEXPEPEDIVEND],[QN_TARAPEDIVEND],[QN_TARAREALEXPEPEDIVEND]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] (
			[DT_ESTOREGIPROD]
			) INCLUDE (
			[ID_ALMOXARIFADO],[ID_ESTOREGIPROD],[ID_PRODMATEEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE]')
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
			DROP INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] (
			[DT_ESTOREGIPROD]
			) INCLUDE (
			[ID_ALMOXARIFADO],[ID_ESTOREGIPROD],[ID_PRODMATEEMBA]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] (
			[DT_CONTEMBA],[FL_DEBICREDCONTEMBA],[ID_CARGEXPE],[ID_CENTDIST],[ID_EMBALAGEM],[ID_FORNECEDOR_TRANSPORTADOR],[ID_PEDIVEND]
			) INCLUDE (
			[EMPRESA],[FILIAL],[FL_AJUSLANCCONTEMBA],[FL_ORIGLANCCONTEMBA],[FX_CONTEMBA],[GN_HISTCONTEMBA],[ID_CLIENTE],[ID_CONTEMBA],[ID_DISTRIBUIDOR],[ID_PEDIDEVO],[QN_EMBACENTDISTCONTEMBA],[QN_EMBACLIECONTEMBA],[QN_EMBADISTCONTEMBA],[QN_EMBATRANCONTEMBA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EMBALAGEM_CONTROLE]')
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
			DROP INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] (
			[DT_CONTEMBA],[FL_DEBICREDCONTEMBA],[ID_CARGEXPE],[ID_CENTDIST],[ID_EMBALAGEM],[ID_FORNECEDOR_TRANSPORTADOR],[ID_PEDIVEND]
			) INCLUDE (
			[EMPRESA],[FILIAL],[FL_AJUSLANCCONTEMBA],[FL_ORIGLANCCONTEMBA],[FX_CONTEMBA],[GN_HISTCONTEMBA],[ID_CLIENTE],[ID_CONTEMBA],[ID_DISTRIBUIDOR],[ID_PEDIDEVO],[QN_EMBACENTDISTCONTEMBA],[QN_EMBACLIECONTEMBA],[QN_EMBADISTCONTEMBA],[QN_EMBATRANCONTEMBA]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[ID_PRODMATEEMBA_ALTERADO],[ID_PRODMATEEMBA_ANTERIOR]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO]')
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
			DROP INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] (
			[ID_PRODMATEEMBA_ALTERADO],[ID_PRODMATEEMBA_ANTERIOR]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS_TEST];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] (
			[EMPRESA_IMPRESSA],[FILIAL_IMPRESSA]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[MIMS_TEST].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] (
			[EMPRESA_IMPRESSA],[FILIAL_IMPRESSA]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [MIMS].[dbo].[EXPEDICAO_CARGA] (
			[DT_FECHCARGEXPE],[FL_STATCARGEXPE],[ID_TRANMOTOTRAN]
			) INCLUDE (
			[ID_CARGEXPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA]')
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
			DROP INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [MIMS].[dbo].[EXPEDICAO_CARGA] (
			[DT_FECHCARGEXPE],[FL_STATCARGEXPE],[ID_TRANMOTOTRAN]
			) INCLUDE (
			[ID_CARGEXPE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [MIMS].[dbo].[CLIENTE_GERAL] (
			[ID_BAIRRO]
			) INCLUDE (
			[ID_CLIENTE],[ID_INTECLIE],[IE_CLIENTE],[NM_CLIENTE],[NM_FANTCLIE],[NM_REDUCLIE],[NR_CNPJCLIE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[CLIENTE_GERAL]')
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
			DROP INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[CLIENTE_GERAL] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[CLIENTE_GERAL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [MIMS].[dbo].[CLIENTE_GERAL] (
			[ID_BAIRRO]
			) INCLUDE (
			[ID_CLIENTE],[ID_INTECLIE],[IE_CLIENTE],[NM_CLIENTE],[NM_FANTCLIE],[NM_REDUCLIE],[NR_CNPJCLIE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [MIMS].[dbo].[CLIENTE_GERAL] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] (
			[FILIAL],[FL_STATTRANREGIPROD],[FL_TIPOTRANREGIPROD],[ID_ALMOTRANTRANREGIPROD]
			) INCLUDE (
			[DT_ABERTRANREGIPROD],[DT_FECHTRANREGIPROD],[EMPRESA],[GN_PLACTRANREGIPROD],[ID_ALMODESTTRANREGIPROD],[ID_CARGEXPETRANREGIPROD],[ID_PEDIVENDTRANREGIPROD],[ID_TRANREGIPROD],[ID_USUASIST_ABERTURA],[ID_USUASIST_FECHAMENTO],[IE_PEDIVENDTRANREGIPROD],[NR_NOTAFISCTRANREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER]')
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
			DROP INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] (
			[FILIAL],[FL_STATTRANREGIPROD],[FL_TIPOTRANREGIPROD],[ID_ALMOTRANTRANREGIPROD]
			) INCLUDE (
			[DT_ABERTRANREGIPROD],[DT_FECHTRANREGIPROD],[EMPRESA],[GN_PLACTRANREGIPROD],[ID_ALMODESTTRANREGIPROD],[ID_CARGEXPETRANREGIPROD],[ID_PEDIVENDTRANREGIPROD],[ID_TRANREGIPROD],[ID_USUASIST_ABERTURA],[ID_USUASIST_FECHAMENTO],[IE_PEDIVENDTRANREGIPROD],[NR_NOTAFISCTRANREGIPROD]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO] (
			[DT_PADRREGIPROD],[FL_STATREGIPROD],[ID_ALMOXARIFADO],[ID_PALEEXPE],[ID_PEDIVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[FL_DISPREGIPROD],[FL_SEQUREGIPROD],[FL_SITUREGIPROD],[FL_TIPOUNIDREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO]')
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
			DROP INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO] (
			[DT_PADRREGIPROD],[FL_STATREGIPROD],[ID_ALMOXARIFADO],[ID_PALEEXPE],[ID_PEDIVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[FL_DISPREGIPROD],[FL_SEQUREGIPROD],[FL_SITUREGIPROD],[FL_TIPOUNIDREGIPROD]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] (
			[FILIAL],[FL_UNIDREGIPROD]
			) INCLUDE (
			[DT_UNIDREGIPROD],[EMPRESA],[ID_UNIDREGIPROD],[ID_USUASIST]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE]')
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
			DROP INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] (
			[FILIAL],[FL_UNIDREGIPROD]
			) INCLUDE (
			[DT_UNIDREGIPROD],[EMPRESA],[ID_UNIDREGIPROD],[ID_USUASIST]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_UNIDADE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] (
			[ID_CARGEXPE]
			) INCLUDE (
			[DT_CARRIDENCARGEXPE],[EMPRESA],[FILIAL],[FL_IMPRETIQIDENCARGEXPE],[FL_MODAREGIIDENCARGEXPE],[ID_IDENCARGEXPE],[ID_PEDIVEND],[ID_REGIPROD],[QN_PESOIDENCARGEXPE],[QN_TARAIDENCARGEXPE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO]')
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
		COUNT(*) = 11
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] (
			[ID_CARGEXPE]
			) INCLUDE (
			[DT_CARRIDENCARGEXPE],[EMPRESA],[FILIAL],[FL_IMPRETIQIDENCARGEXPE],[FL_MODAREGIIDENCARGEXPE],[ID_IDENCARGEXPE],[ID_PEDIVEND],[ID_REGIPROD],[QN_PESOIDENCARGEXPE],[QN_TARAIDENCARGEXPE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [MIMS].[dbo].[EXPEDICAO_CARGA_IDENTIFICACAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] (
			[EMPRESA],[FILIAL],[ID_JANELA],[ID_USUARIO]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US_JANE]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[SCT_DIREITOS_US_JANE]')
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
			DROP INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] (
			[EMPRESA],[FILIAL],[ID_JANELA],[ID_USUARIO]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_13_20230822 ON [MIMS].[dbo].[SCT_DIREITOS_US_JANE] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] (
			[ID_PEDIVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[DT_BALAREGIPROD],[DT_CONTREGIPROD],[DT_ENTRTUNEREGIPROD],[DT_EXCLREGIPROD],[DT_PADRREGIPROD],[DT_REFEREGIPROD],[DT_REGIPROD],[DT_SAIDTUNEREGIPROD],[DT_VALIREGIPROD],[EMPRESA],[FILIAL],[FL_MODAREGIPROD],[FL_ORIGREGIPROD],[FL_PRODPROPREGIPROD],[FL_SEQUREGIPROD],[FL_SIMUREGIPROD],[FL_TIPOUNIDREGIPROD],[FX_REGIPROD],[ID_ALMOXARIFADO],[ID_BALANCA],[ID_ESTRUNIDABAT],[ID_IDENORIGREGIPROD],[ID_IDENREGIPROD],[ID_PALEEXPE],[ID_REGIPROD],[ID_VARIDEFIEMBA],[NR_LOTERASTREGIPROD],[QN_ANIMEMBAREGIPROD],[QN_EMBADESMREGIPROD],[QN_PESOLIQUREGIPROD],[QN_PESOORIGREGIPROD],[QN_PESOPADRREGIPROD],[QN_PRODEMBAREGIPROD],[QN_TARACOMPREGIPROD],[QN_TARAEMBAREGIPROD],[QN_TARAPRIMRATEREGIPROD]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO]')
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
		COUNT(*) = 38
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] (
			[ID_PEDIVEND],[ID_PRODMATEEMBA]
			) INCLUDE (
			[DT_BALAREGIPROD],[DT_CONTREGIPROD],[DT_ENTRTUNEREGIPROD],[DT_EXCLREGIPROD],[DT_PADRREGIPROD],[DT_REFEREGIPROD],[DT_REGIPROD],[DT_SAIDTUNEREGIPROD],[DT_VALIREGIPROD],[EMPRESA],[FILIAL],[FL_MODAREGIPROD],[FL_ORIGREGIPROD],[FL_PRODPROPREGIPROD],[FL_SEQUREGIPROD],[FL_SIMUREGIPROD],[FL_TIPOUNIDREGIPROD],[FX_REGIPROD],[ID_ALMOXARIFADO],[ID_BALANCA],[ID_ESTRUNIDABAT],[ID_IDENORIGREGIPROD],[ID_IDENREGIPROD],[ID_PALEEXPE],[ID_REGIPROD],[ID_VARIDEFIEMBA],[NR_LOTERASTREGIPROD],[QN_ANIMEMBAREGIPROD],[QN_EMBADESMREGIPROD],[QN_PESOLIQUREGIPROD],[QN_PESOORIGREGIPROD],[QN_PESOPADRREGIPROD],[QN_PRODEMBAREGIPROD],[QN_TARACOMPREGIPROD],[QN_TARAEMBAREGIPROD],[QN_TARAPRIMRATEREGIPROD]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_14_20230822 ON [MIMS].[dbo].[TRP017_IDENTIFICACAO_PRODUCAO] CANNOT BE CREATED.';
END CATCH;


USE [MIMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] (
			[FILIAL],[ID_ALMOXARIFADO]
			) INCLUDE (
			[ID_EMBALAGEM],[ID_MATERIAL]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230822' AND i.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230822' AND i2.object_id = OBJECT_ID('[MIMS].[dbo].[MATERIAL_ALMOXARIFADO]')
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
			DROP INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO];
			CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] (
			[FILIAL],[ID_ALMOXARIFADO]
			) INCLUDE (
			[ID_EMBALAGEM],[ID_MATERIAL]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_15_20230822 ON [MIMS].[dbo].[MATERIAL_ALMOXARIFADO] CANNOT BE CREATED.';
END CATCH;

