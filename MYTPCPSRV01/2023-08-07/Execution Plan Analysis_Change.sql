
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/7/2023 12:31:39 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230807123142 ON [SPRITZERTAIPINGDWH].[DBO].[DWH_SUBSYSTEM_PERFORMANCE] ([TIMESTAMP],[TOTAL_COUNT]) INCLUDE ([SUBSYSTEM_NAME],[SEVERITY]) ;
 END TRY BEGIN CATCH END CATCH;
