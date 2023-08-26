
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/4/2023 12:38:55 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230604123857 ON [FUSIONOPERATIONAL].[DBO].[MESSAGINGRULEMACHINE] ([MACHINEID],[RULEID]) INCLUDE ([RULEMACHINEID]) WITH (ONLINE=ON,DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_MACHINECYCLE] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([CYCLEID],[MACHINEID]) INCLUDE ([CYCLEEXTRAHISTORYID],[VALUE],[EXCLUDE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_OBJECTCACHE] ON [FUSIONOPERATIONAL].[DBO].[OBJECTCACHE] ([OBJECTCACHEID],[TIMESTAMP]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_RUN_JOB] ON [FUSIONOPERATIONAL].[DBO].[RUN] ([JOBID],[RUNID]) INCLUDE ([MFGOPTIONID],[TARGETCOMPLETIONTIME],[STARTTIME],[STATE],[AVERAGECYCLETIME],[CYCLEEXTRAHISTORYID],[CYCLENUMBER],[ENDTIME],[RUNORDER],[NUMBEROUTOFSPECCYCLES],[PLANNEDSTARTDATE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_SCRAP_JOB_MACHINE] ON [FUSIONOPERATIONAL].[DBO].[SCRAP] ([JOBID],[MACHINEID],[SCRAPID]) INCLUDE ([PARTID],[QUANTITY],[TIME],[REASONID]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID],[PROCESSSTART],[EVENTTYPE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_NOTIFICATIONS] ON [REPORTSERVER].[DBO].[NOTIFICATIONS] ([NOTIFICATIONID],[PROCESSSTART],[PROCESSAFTER]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_CATALOG] ON [REPORTSERVER].[DBO].[CATALOG] ([ITEMID],[PATH]) INCLUDE ([TYPE],[POLICYID]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_SHIFT_TIME] ON [FUSIONOPERATIONAL].[DBO].[SHIFTCALENDAR] ([ENDDATETIME],[STARTDATETIME],[SHIFTCALENDARID]) INCLUDE ([ISWORK],[NAME]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
