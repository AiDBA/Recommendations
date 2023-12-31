
USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_1_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO];
		PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_1_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_2_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA];
		PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_2_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230809 ON [MIMS_TEST].[dbo].[EXPEDICAO_CARGA] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_3_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA];
		PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_3_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230809 ON [MIMS].[dbo].[EXPEDICAO_CARGA] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_4_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA];
		PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_4_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230809 ON [MIMS_TEST].[dbo].[PEDIDO_VENDA] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_5_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA];
		PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_5_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_6_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE];
		PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_6_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_7_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO];
		PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_7_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_8_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US];
		PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_8_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230809 ON [MIMS].[dbo].[SCT_DIREITOS_US] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_9_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE];
		PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_9_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230809 ON [MIMS].[dbo].[EMBALAGEM_CONTROLE] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_10_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
		PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_10_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_11_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC];
		PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_11_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_12_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL];
		PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_12_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230809 ON [MIMS].[dbo].[CLIENTE_GERAL] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_13_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE];
		PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_13_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230809 ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS_TEST];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_14_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO];
		PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_14_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230809 ON [MIMS_TEST].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DROPPED.';
END CATCH;

USE [MIMS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_15_20230809')
	BEGIN
		DROP INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER];
		PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_15_20230809 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230809 ON [MIMS].[dbo].[PRODUCAO_REGISTRO_TRANSFER] CANNOT BE DROPPED.';
END CATCH;
