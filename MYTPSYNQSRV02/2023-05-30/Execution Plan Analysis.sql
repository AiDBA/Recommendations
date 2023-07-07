
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 5/30/2023 12:19:40 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230530001942 ON [SPRITZERTAIPINGDB].[DBO].[TASK_ASSIGNMENT_RULE] ([CLASS_TYPE],[CREATE_DATE],[CREATED_BY],[UPDATED_BY],[TU_TYPE_ID],[TASK_TYPE],[DESTINATION_SPEC_KEY],[PARTIAL_TASK_ALLOWED],[FULL_PARITAL_TASK_ALLOWED],[FULL_TASK_ALLOWED],[TASK_ASSIGNMENT_RULE_KEY]) INCLUDE ([TRANSACTION_COUNT],[UPDATE_DATE]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230530002003 ON [SPRITZERTAIPINGDB].[DBO].[HOST_MESSAGE] ([CLASS_TYPE],[HOST_MESSAGE_KEY]) ;
 END TRY BEGIN CATCH END CATCH;
