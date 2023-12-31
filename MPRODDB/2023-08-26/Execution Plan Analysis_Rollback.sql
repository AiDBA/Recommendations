

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230826175939 ON [MIMS].[DBO].[SCT_DIREITOS_US_JANE]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_EXCEGRUPPROD] ON [MIMS].[DBO].[PRODUCAO_GRUPO_EXCECAO] ([ID_EXCEGRUPPROD]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE  INDEX [IX_PEDIDO_VENDA_ITEM_DETALHE_ID_ITEMPEDIVEND] ON [MIMS].[DBO].[PEDIDO_VENDA_ITEM_DETALHE] ([ID_ITEMPEDIVEND]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [PEDIDO_VENDA_ITEM] ON [MIMS].[DBO].[PEDIDO_VENDA_ITEM] ([ID_MATEEMBA],[ID_PEDIVEND],[QN_EMBAITEMPEDIVEND],[QN_PESOITEMPEDIVEND],[VL_UNITITEMPEDIVEND]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;





BEGIN TRY 
    DROP INDEX [IX_AIDBA_1_20220131] ON [MIMS].[DBO].[PEDIDO_DEVO_VEND_ITEM_DETA]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [HITACHI_45509_45508] ON [MIMS].[DBO].[PRODUCAO_DESCARTE] ([ID_ENTRAVEVIVA]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [HITACHI_210_209] ON [MIMS].[DBO].[MATERIAL_EMBALAGEM_FILIAL] ([FILIAL]) INCLUDE ([ID_DEFIMATEEMBA],[ID_MATEEMBAFILI],[ID_UNIDMEDI_PECAMATEEMBAFILI],[ID_UNIDMEDI_UNIDMATEEMBAFILI],[QN_PECAPRODMATEEMBAFILI],[QN_PRODEMBAMATEEMBAFILI]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;