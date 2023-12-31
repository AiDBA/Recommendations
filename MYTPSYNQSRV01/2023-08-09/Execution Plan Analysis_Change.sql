
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/9/2023 1:11:50 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230809131152 ON [SPRITZERTAIPINGDB].[DBO].[POWER_CONSUMPTION] ([CLASS_TYPE],[CREATE_DATE]) INCLUDE ([CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[CRANE_01],[CRANE_02],[CRANE_03],[CRANE_04],[CRANE_05],[CRANE_06],[CRANE_07],[CRANE_08]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230809131153 ON [SPRITZERTAIPINGDB].[DBO].[EXPECTED_RECEIPT_LINE] ([CLASS_TYPE],[CREATE_DATE],[EXPECTED_RECEIPT_LINE_KEY]) INCLUDE ([CREATED_BY],[STATUS],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[PRODUCT_KEY]) ;
 END TRY BEGIN CATCH END CATCH;
