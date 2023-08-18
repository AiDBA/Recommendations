BEGIN TRY
				ALTER INDEX [Hitachi_45493_45492] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Hitachi_45493_45492 on INTERM.dbo.INTERFACE_PEDIDO_VENDA has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45493_45492 does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_45826_45825] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REORGANIZE;PRINT 'Index Hitachi_45826_45825 on INTERM.dbo.INTERFACE_PEDIDO_VENDA has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45826_45825 does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Hitachi_45838_45837] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Hitachi_45838_45837 on INTERM.dbo.INTERFACE_PEDIDO_VENDA has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45838_45837 does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Hitachi_46276_46275] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Hitachi_46276_46275 on INTERM.dbo.INTERFACE_PEDIDO_VENDA has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_46276_46275 does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_46565_46564] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REORGANIZE;PRINT 'Index Hitachi_46565_46564 on INTERM.dbo.INTERFACE_PEDIDO_VENDA has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_46565_46564 does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_46705_46704] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA] REORGANIZE;PRINT 'Index Hitachi_46705_46704 on INTERM.dbo.INTERFACE_PEDIDO_VENDA has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_46705_46704 does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_INTERFACE_PEDIDO_VENDA_ITEM_IE_ITEMPEDIVEND] ON [INTERM].[dbo].[INTERFACE_PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index IX_INTERFACE_PEDIDO_VENDA_ITEM_IE_ITEMPEDIVEND on INTERM.dbo.INTERFACE_PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_INTERFACE_PEDIDO_VENDA_ITEM_IE_ITEMPEDIVEND does not exist on INTERM.dbo.INTERFACE_PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_45412_45411] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index Hitachi_45412_45411 on MIMS.dbo.PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45412_45411 does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_45467_45466] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index Hitachi_45467_45466 on MIMS.dbo.PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45467_45466 does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_45575_45574] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index Hitachi_45575_45574 on MIMS.dbo.PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45575_45574 does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_N00663] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index IDX_N00663 on MIMS.dbo.PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_N00663 does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_PEDIDO_VENDA_ITEM_FILIAL] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index IX_PEDIDO_VENDA_ITEM_FILIAL on MIMS.dbo.PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PEDIDO_VENDA_ITEM_FILIAL does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [PEDIDO_VENDA_ITEM] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM] REORGANIZE;PRINT 'Index PEDIDO_VENDA_ITEM on MIMS.dbo.PEDIDO_VENDA_ITEM has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index PEDIDO_VENDA_ITEM does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [Hitachi_45422_45421] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] REORGANIZE;PRINT 'Index Hitachi_45422_45421 on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45422_45421 does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_DETAITEMPEDIVEND_ITEM] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] REORGANIZE;PRINT 'Index IDX_DETAITEMPEDIVEND_ITEM on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_DETAITEMPEDIVEND_ITEM does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_PEDIDO_VENDA_ITEM_DETALHE_ID_ITEMPEDIVEND] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] REORGANIZE;PRINT 'Index IX_PEDIDO_VENDA_ITEM_DETALHE_ID_ITEMPEDIVEND on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PEDIDO_VENDA_ITEM_DETALHE_ID_ITEMPEDIVEND does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_PEDIDO_VENDA_ITEM_DETALHE_ROWID] ON [MIMS].[dbo].[PEDIDO_VENDA_ITEM_DETALHE] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_PEDIDO_VENDA_ITEM_DETALHE_ROWID on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PEDIDO_VENDA_ITEM_DETALHE_ROWID does not exist on MIMS.dbo.PEDIDO_VENDA_ITEM_DETALHE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_3_20220131] ON [MIMS].[dbo].[PRODUCAO_DESCARTE] REORGANIZE;PRINT 'Index IX_AIDBA_3_20220131 on MIMS.dbo.PRODUCAO_DESCARTE has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_3_20220131 does not exist on MIMS.dbo.PRODUCAO_DESCARTE, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Hitachi_45403_45402] ON [MIMS].[dbo].[SISTEMA_REPLICACAO_EXCLUSAO] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Hitachi_45403_45402 on MIMS.dbo.SISTEMA_REPLICACAO_EXCLUSAO has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45403_45402 does not exist on MIMS.dbo.SISTEMA_REPLICACAO_EXCLUSAO, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Hitachi_45405_45404] ON [MIMS].[dbo].[SISTEMA_REPLICACAO_EXCLUSAO] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Hitachi_45405_45404 on MIMS.dbo.SISTEMA_REPLICACAO_EXCLUSAO has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_45405_45404 does not exist on MIMS.dbo.SISTEMA_REPLICACAO_EXCLUSAO, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [Hitachi_46569_46568] ON [MIMS].[dbo].[SISTEMA_REPLICACAO_EXCLUSAO] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index Hitachi_46569_46568 on MIMS.dbo.SISTEMA_REPLICACAO_EXCLUSAO has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index Hitachi_46569_46568 does not exist on MIMS.dbo.SISTEMA_REPLICACAO_EXCLUSAO, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_SISTEMA_REPLICACAO_MERGE_LOG_ROWID] ON [MIMS].[dbo].[SISTEMA_REPLICACAO_MERGE_LOG] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_SISTEMA_REPLICACAO_MERGE_LOG_ROWID on MIMS.dbo.SISTEMA_REPLICACAO_MERGE_LOG has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_SISTEMA_REPLICACAO_MERGE_LOG_ROWID does not exist on MIMS.dbo.SISTEMA_REPLICACAO_MERGE_LOG, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_9_20220131] ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_AIDBA_9_20220131 on MTECH-EDATA.mtech.PmtsCondemnTrans has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_9_20220131 does not exist on MTECH-EDATA.mtech.PmtsCondemnTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_Hitachi_183_182_PmtsCondemnTrans] ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_Hitachi_183_182_PmtsCondemnTrans on MTECH-EDATA.mtech.PmtsCondemnTrans has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_183_182_PmtsCondemnTrans does not exist on MTECH-EDATA.mtech.PmtsCondemnTrans, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_Hitachi_185_184_PmtsCondemnTrans] ON [MTECH-EDATA].[mtech].[PmtsCondemnTrans] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_Hitachi_185_184_PmtsCondemnTrans on MTECH-EDATA.mtech.PmtsCondemnTrans has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Hitachi_185_184_PmtsCondemnTrans does not exist on MTECH-EDATA.mtech.PmtsCondemnTrans, or operation encountered an error.'
				END CATCH;
				