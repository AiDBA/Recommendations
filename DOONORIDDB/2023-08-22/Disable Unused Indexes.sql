
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_LASTMODDATE_07')
	BEGIN
	ALTER INDEX [IX_LASTMODDATE_07]
	ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] DISABLE;
	PRINT 'INDEX [IX_LASTMODDATE_07] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_LASTMODDATE_07] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'FARD_IX_1344')
	BEGIN
	ALTER INDEX [FARD_IX_1344]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO] DISABLE;
	PRINT 'INDEX [FARD_IX_1344] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_1344] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_FL_OPERMOVIREGIPROD_ID_PALEEXPE_FL_SINCMIDDMOVIREGIPROD_04')
	BEGIN
	ALTER INDEX [IX_FL_OPERMOVIREGIPROD_ID_PALEEXPE_FL_SINCMIDDMOVIREGIPROD_04]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] DISABLE;
	PRINT 'INDEX [IX_FL_OPERMOVIREGIPROD_ID_PALEEXPE_FL_SINCMIDDMOVIREGIPROD_04] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_FL_OPERMOVIREGIPROD_ID_PALEEXPE_FL_SINCMIDDMOVIREGIPROD_04] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ID_PALEEXPE_FL_OPERMOVIREGIPROD_FL_SINCMIDDMOVIREGIPROD_05')
	BEGIN
	ALTER INDEX [IX_ID_PALEEXPE_FL_OPERMOVIREGIPROD_FL_SINCMIDDMOVIREGIPROD_05]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] DISABLE;
	PRINT 'INDEX [IX_ID_PALEEXPE_FL_OPERMOVIREGIPROD_FL_SINCMIDDMOVIREGIPROD_05] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ID_PALEEXPE_FL_OPERMOVIREGIPROD_FL_SINCMIDDMOVIREGIPROD_05] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'ix_PRODUCAO_REGISTRO_FL_PRODPROPREGIPROD_FL_TIPOUNIDREGIPROD_FL_STATREGIPROD_FL_ORIGREGIPROD_includes')
	BEGIN
	ALTER INDEX [ix_PRODUCAO_REGISTRO_FL_PRODPROPREGIPROD_FL_TIPOUNIDREGIPROD_FL_STATREGIPROD_FL_ORIGREGIPROD_includes]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO] DISABLE;
	PRINT 'INDEX [ix_PRODUCAO_REGISTRO_FL_PRODPROPREGIPROD_FL_TIPOUNIDREGIPROD_FL_STATREGIPROD_FL_ORIGREGIPROD_includes] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [ix_PRODUCAO_REGISTRO_FL_PRODPROPREGIPROD_FL_TIPOUNIDREGIPROD_FL_STATREGIPROD_FL_ORIGREGIPROD_includes] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_N00807')
	BEGIN
	ALTER INDEX [IDX_N00807]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] DISABLE;
	PRINT 'INDEX [IDX_N00807] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_N00807] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_N10143')
	BEGIN
	ALTER INDEX [IDX_N10143]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] DISABLE;
	PRINT 'INDEX [IDX_N10143] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_N10143] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_N00801')
	BEGIN
	ALTER INDEX [IDX_N00801]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] DISABLE;
	PRINT 'INDEX [IDX_N00801] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_N00801] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_MOVIMENTACAO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_LANC_ALMO_OPER_TIPO')
	BEGIN
	ALTER INDEX [IDX_LANC_ALMO_OPER_TIPO]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] DISABLE;
	PRINT 'INDEX [IDX_LANC_ALMO_OPER_TIPO] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_LANC_ALMO_OPER_TIPO] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_LANC_REGIPROD_TRAN')
	BEGIN
	ALTER INDEX [IDX_LANC_REGIPROD_TRAN]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] DISABLE;
	PRINT 'INDEX [IDX_LANC_REGIPROD_TRAN] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_LANC_REGIPROD_TRAN] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_ESTOQUE_LANC] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_PEDIVEND_004')
	BEGIN
	ALTER INDEX [IDX_PEDIVEND_004]
	ON [MIMS].[dbo].[PEDIDO_VENDA] DISABLE;
	PRINT 'INDEX [IDX_PEDIVEND_004] ON [MIMS].[dbo].[PEDIDO_VENDA] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_PEDIVEND_004] ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'FARD_IX_119')
	BEGIN
	ALTER INDEX [FARD_IX_119]
	ON [MIMS].[dbo].[PEDIDO_VENDA] DISABLE;
	PRINT 'INDEX [FARD_IX_119] ON [MIMS].[dbo].[PEDIDO_VENDA] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_119] ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_N00628')
	BEGIN
	ALTER INDEX [IDX_N00628]
	ON [MIMS].[dbo].[PEDIDO_VENDA] DISABLE;
	PRINT 'INDEX [IDX_N00628] ON [MIMS].[dbo].[PEDIDO_VENDA] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_N00628] ON [MIMS].[dbo].[PEDIDO_VENDA] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_REGIPROD_SINCMIDD')
	BEGIN
	ALTER INDEX [IDX_REGIPROD_SINCMIDD]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO] DISABLE;
	PRINT 'INDEX [IDX_REGIPROD_SINCMIDD] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_REGIPROD_SINCMIDD] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_N00790')
	BEGIN
	ALTER INDEX [IDX_N00790]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO] DISABLE;
	PRINT 'INDEX [IDX_N00790] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_N00790] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_PRODUCAO_REGISTRO_REGIPROD_BATC')
	BEGIN
	ALTER INDEX [IDX_PRODUCAO_REGISTRO_REGIPROD_BATC]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO] DISABLE;
	PRINT 'INDEX [IDX_PRODUCAO_REGISTRO_REGIPROD_BATC] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_PRODUCAO_REGISTRO_REGIPROD_BATC] ON [MIMS].[dbo].[PRODUCAO_REGISTRO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = '<Name of Missing Index, sysname,>')
	BEGIN
	ALTER INDEX [<Name of Missing Index, sysname,>]
	ON [MIMS].[dbo].[EXPEDICAO_PALETE_MOVIMENTACAO] DISABLE;
	PRINT 'INDEX [<Name of Missing Index, sysname,>] ON [MIMS].[dbo].[EXPEDICAO_PALETE_MOVIMENTACAO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [<Name of Missing Index, sysname,>] ON [MIMS].[dbo].[EXPEDICAO_PALETE_MOVIMENTACAO] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_REGIPROD')
	BEGIN
	ALTER INDEX [IDX_REGIPROD]
	ON [MIMS].[dbo].[PRODUCAO_REGISTRO_DEST_ITEM] DISABLE;
	PRINT 'INDEX [IDX_REGIPROD] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_DEST_ITEM] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_REGIPROD] ON [MIMS].[dbo].[PRODUCAO_REGISTRO_DEST_ITEM] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_FK_PEBAPROD_PRIMMATEBATCPROD_ID_PRIMMATEBATCPROD')
	BEGIN
	ALTER INDEX [IDX_FK_PEBAPROD_PRIMMATEBATCPROD_ID_PRIMMATEBATCPROD]
	ON [MIMS].[dbo].[PRODUCAO_BATCH_PESAGEM] DISABLE;
	PRINT 'INDEX [IDX_FK_PEBAPROD_PRIMMATEBATCPROD_ID_PRIMMATEBATCPROD] ON [MIMS].[dbo].[PRODUCAO_BATCH_PESAGEM] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_FK_PEBAPROD_PRIMMATEBATCPROD_ID_PRIMMATEBATCPROD] ON [MIMS].[dbo].[PRODUCAO_BATCH_PESAGEM] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_MATEEMBATURN_PRODTURN')
	BEGIN
	ALTER INDEX [IDX_MATEEMBATURN_PRODTURN]
	ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_TURNO] DISABLE;
	PRINT 'INDEX [IDX_MATEEMBATURN_PRODTURN] ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_TURNO] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_MATEEMBATURN_PRODTURN] ON [MIMS].[dbo].[MATERIAL_EMBALAGEM_TURNO] CANNOT BE DISABLED.';
END CATCH;
