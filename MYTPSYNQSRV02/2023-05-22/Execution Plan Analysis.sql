
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 5/22/2023 12:55:03 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230522125505 ON [SPRITZERTAIPINGDB].[DBO].[PICK_LABEL] ([PICK_UOM_ID],[CLASS_TYPE],[CREATE_DATE],[UPDATED_BY],[CREATED_BY],[TASK_KEY]) INCLUDE ([TRANSACTION_COUNT],[UPDATE_DATE]) ;
 END TRY BEGIN CATCH END CATCH;