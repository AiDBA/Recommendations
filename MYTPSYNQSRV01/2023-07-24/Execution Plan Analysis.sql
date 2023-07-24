
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 7/24/2023 9:30:27 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230724093029 ON [SPRITZERTAIPINGDB].[DBO].[POWER_CONSUMPTION] ([CLASS_TYPE],[CREATE_DATE]) INCLUDE ([CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[CRANE_01],[CRANE_02],[CRANE_03],[CRANE_04],[CRANE_05],[CRANE_06],[CRANE_07],[CRANE_08]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230724093034 ON [SPRITZERTAIPINGDB].[DBO].[ORDER_LINE] ([CLASS_TYPE],[ORDER_LINE_KEY],[QUANTITY_TO_ALLOCATE]) ;
 END TRY BEGIN CATCH END CATCH;
