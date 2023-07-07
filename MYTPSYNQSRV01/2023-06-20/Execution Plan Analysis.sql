
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/20/2023 2:33:52 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230620023354 ON [SPRITZERTAIPINGDB].[DBO].[POWER_CONSUMPTION] ([CLASS_TYPE],[CREATE_DATE]) INCLUDE ([CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[CRANE_01],[CRANE_02],[CRANE_03],[CRANE_04],[CRANE_05],[CRANE_06],[CRANE_07],[CRANE_08]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230620023356 ON [SPRITZERTAIPINGDB].[DBO].[ASN_LINE] ([CREATE_DATE],[CLASS_TYPE],[ASN_LINE_KEY],[TU_ID]) INCLUDE ([CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY]) ;
 END TRY BEGIN CATCH END CATCH;
