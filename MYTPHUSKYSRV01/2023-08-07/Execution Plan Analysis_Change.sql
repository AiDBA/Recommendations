
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/7/2023 12:32:30 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230807123233 ON [FUSIONOPERATIONAL].[DBO].[PARTSCRAPREASON] ([REASONID]) INCLUDE ([PARTID],[PARTSCRAPREASONID],[IMAGESTOREID]) WITH (ONLINE=ON,DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_SCRAP_JOB_MACHINE] ON [FUSIONOPERATIONAL].[DBO].[SCRAP] ([JOBID],[MACHINEID],[SCRAPID]) INCLUDE ([PARTID],[QUANTITY],[TIME],[REASONID]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([RUNCYCLENUMBER],[RUNID],[MACHINEID]) INCLUDE ([CYCLEID],[CYCLENUMBER],[STATUS],[TIMESTAMP],[CYCLEEXTRAHISTORYID],[VALUE],[EXCLUDE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_2_20220820] ON [FUSIONOPERATIONAL].[DBO].[AUTOMATICPRINTEVENT] ([BOXNUMBER],[BOXSTATUS],[MACHINEID],[RUNID],[AUTOMATICPRINTEVENTID]) INCLUDE ([BOXPOSITION],[PALLETNUMBER],[SCRAPID],[TIMESTAMP],[UNIQUEBOXCOUNTER],[BATCH],[SSCCCODE]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_RUN_JOB] ON [FUSIONOPERATIONAL].[DBO].[RUN] ([JOBID],[RUNID]) INCLUDE ([MFGOPTIONID],[TARGETCOMPLETIONTIME],[STARTTIME],[STATE],[AVERAGECYCLETIME],[CYCLEEXTRAHISTORYID],[CYCLENUMBER],[ENDTIME],[RUNORDER],[NUMBEROUTOFSPECCYCLES],[PLANNEDSTARTDATE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_OBJECTCACHE] ON [FUSIONOPERATIONAL].[DBO].[OBJECTCACHE] ([OBJECTCACHEID],[TIMESTAMP]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_NOTIFICATIONS] ON [REPORTSERVER].[DBO].[NOTIFICATIONS] ([NOTIFICATIONID],[PROCESSSTART],[PROCESSAFTER]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_CATALOG] ON [REPORTSERVER].[DBO].[CATALOG] ([ITEMID],[PATH]) INCLUDE ([TYPE],[POLICYID]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID],[PROCESSSTART],[EVENTTYPE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_DOWNTIME_MC_J_PS] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIME] ([JOBID],[MACHINEID],[PRODUCTIONSTATE],[DOWNTIMEID],[STARTTIME],[ENDTIME]) INCLUDE ([MACHINESTATE],[MACHINEREASON]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_DOWNTIMEASSIGNEDREASON_DOWNTIMID] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIMEASSIGNEDREASON] ([DOWNTIMEID],[DOWNTIMEASSIGNEDREASONID],[REASONID]) INCLUDE ([STARTTIME],[ENDTIME]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
