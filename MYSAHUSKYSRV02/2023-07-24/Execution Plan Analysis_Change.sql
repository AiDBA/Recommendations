
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 7/24/2023 3:35:15 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230724153518 ON [REPORTSERVER].[DBO].[KEYS] ([CLIENT]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID],[PROCESSSTART],[EVENTTYPE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_NOTIFICATIONS] ON [REPORTSERVER].[DBO].[NOTIFICATIONS] ([NOTIFICATIONID],[PROCESSSTART],[PROCESSAFTER]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_CATALOG] ON [REPORTSERVER].[DBO].[CATALOG] ([ITEMID],[PATH]) INCLUDE ([TYPE],[POLICYID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIMEASSIGNEDREASON] ([DOWNTIMEASSIGNEDREASONID]) INCLUDE ([STARTTIME],[ENDTIME],[DOWNTIMEID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([RUNCYCLENUMBER],[RUNID],[MACHINEID]) INCLUDE ([CYCLEID],[CYCLENUMBER],[STATUS],[TIMESTAMP],[CYCLEEXTRAHISTORYID],[VALUE],[EXCLUDE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_OBJECTCACHE] ON [FUSIONOPERATIONAL].[DBO].[OBJECTCACHE] ([OBJECTCACHEID],[TIMESTAMP]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;