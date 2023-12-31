
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/16/2023 8:52:08 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230816085211 ON [SPRITZERTAIPINGDB].[DBO].[SCHEDULER_TASK_CONF_VALUE] ([CLASS_TYPE],[SCH_TASK_CONF_ID]) INCLUDE ([SCH_TASK_CONF_VALUE_ID],[SCH_TASK_CONF_VALUE_KEY],[SCH_TASK_CONF_VALUE_VALUE]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230816085213 ON [SPRITZERTAIPINGDB].[DBO].[EVENTLOG] ([EVENT_KEY],[SEVERITY],[CLASS_TYPE],[ORIGIN_CATEGORY]) INCLUDE ([OCCURRENCE_DATE],[MESSAGE],[OCCURRENCE_COUNT],[TRANSLATED_MESSAGE]) ;
 END TRY BEGIN CATCH END CATCH;
