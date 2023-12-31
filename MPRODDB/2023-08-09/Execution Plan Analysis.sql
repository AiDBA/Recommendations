
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/9/2023 7:43:24 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230809194327 ON [MIMS].[DBO].[ABAT_UNID_ESTR_LINH_PROD_RECU] ([LASTMODDATE]) INCLUDE ([ROWID],[ID_LINHESTRUNIDABAT]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230809194329 ON [MIMS].[DBO].[PEDIDO_VENDA] ([ID_PEDIVEND],[NR_LOTEINTEPEDIVEND],[NR_LOTEINTEFILIPEDIVEND],[SYNCFLAG],[LASTMODDATE],[FL_SINCINTEPEDIVEND],[FL_SINCINTEFILIPEDIVEND],[IE_PEDIVEND],[FL_STATPEDIVEND]) INCLUDE ([ID_CARGEXPE],[DT_ALTESTATPEDIVEND],[NR_ORDEENTRPEDIVEND],[DT_ORDEENTRPEDIVEND],[NM_LOGIUSUAORDEENTRPEDIVEND],[NR_INVOPEDIVEND],[DT_INVOPEDIVEND],[NM_LOGIUSUAINVOPEDIVEND],[VL_INVOPEDIVEND],[VL_TOTAIMPOINVOPEDIVEND],[VL_ARREIMPOPEDIVEND],[FL_STATPICKPEDIVEND],[DT_LIMIEXPEPEDIVEND],[FILIAL],[QN_PESOREALEXPEPEDIVEND]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_EXCEGRUPPROD] ON [MIMS].[DBO].[PRODUCAO_GRUPO_EXCECAO] ([ID_EXCEGRUPPROD],[ID_DEFIMATEEMBA]) INCLUDE ([ID_TIPOAVE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_PEDIDO_VENDA_ITEM_DETALHE_ID_ITEMPEDIVEND] ON [MIMS].[DBO].[PEDIDO_VENDA_ITEM_DETALHE] ([ID_ITEMPEDIVEND],[ID_DETAITEMPEDIVEND]) INCLUDE ([IE_DETAITEMPEDIVEND],[NR_LINHDETAITEMPEDIVEND],[LASTMODDATE],[SYNCFLAG],[QN_PESOEXPEDETAITEMPEDIVEND]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_1_20220131] ON [MIMS].[DBO].[PEDIDO_DEVO_VEND_ITEM_DETA] ([ID_ITEMPEDIDEVOVEND],[ID_DETAITEMPEDIDEVOVEND]) INCLUDE ([IE_DETAITEMPEDIDEVOVEND],[FL_UNIDOPERDETAITEMPEDIDEVOVEN],[FL_UNIDIMPRDETAITEMPEDIDEVOVEN],[QN_EMBARECEDETAITEMPEDIDEVOVEN],[QN_UNIDRECEDETAITEMPEDIDEVOVEN],[QN_PESORECEDETAITEMPEDIDEVOVEN]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IDX_MATEEMBA_06] ON [MIMS].[DBO].[MATERIAL_EMBALAGEM_FILIAL] ([ID_DEFIMATEEMBA],[ID_MATEEMBAFILI]) INCLUDE ([FILIAL]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_MATERIAL_EMBALAGEM_LOCAL_ID_MATEEMBAFILI] ON [MIMS].[DBO].[MATERIAL_EMBALAGEM_LOCAL] ([ID_MATEEMBAFILI],[ID_MATEEMBALOCA]) INCLUDE ([FILIAL]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_HITACHI_45509_45508] ON [MIMS].[DBO].[PRODUCAO_DESCARTE] ([ID_ENTRAVEVIVA],[ID_DESCPROD]) INCLUDE ([ID_MOTIDESCPROD],[QN_UNIDDESCPROD]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
