
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/30/2023 12:52:25 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230830125230 ON [SPRITZERTAIPINGDB].[DBO].[CONFIGURATION_VALUE] ([CLASS_TYPE],[CONFIG_VALUE_KEY]) INCLUDE ([CONFIG_VALUE_DESCRIPTION],[CREATE_DATE],[CREATED_BY],[DATA],[DATA_TYPE],[DATA_KEY],[LOB_DATA],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY]) ;
 END TRY BEGIN CATCH END CATCH;
