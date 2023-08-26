
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 7/25/2023 4:19:28 AM UTC
*/
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SLIST_UNIQUE] ON [COLOS].[DBO].[SLIST] ([INTVALUE],[STRLISTNAME]) INCLUDE ([STRDESCRIPTION]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
