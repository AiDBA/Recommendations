
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/23/2023 11:11:54 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230823111156 ON [FUSIONOPERATIONAL].[DBO].[BOMPARTITEM] ([PARTID],[MATERIALID]) INCLUDE ([BOMPARTITEMID],[LABELID],[QUANTITY],[BATCHTRACKINGSOURCE],[CONTENTPARAMETERLISTID]) WITH (ONLINE=ON,DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_RUN_JOB] ON [FUSIONOPERATIONAL].[DBO].[RUN] ([JOBID],[STATE],[RUNID]) INCLUDE ([MFGOPTIONID],[TARGETCOMPLETIONTIME],[STARTTIME],[AVERAGECYCLETIME],[CYCLEEXTRAHISTORYID],[CYCLENUMBER],[ENDTIME],[RUNORDER],[NUMBEROUTOFSPECCYCLES],[PLANNEDSTARTDATE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_2_20220820] ON [FUSIONOPERATIONAL].[DBO].[AUTOMATICPRINTEVENT] ([BOXNUMBER],[BOXSTATUS],[MACHINEID],[RUNID],[AUTOMATICPRINTEVENTID]) INCLUDE ([BOXPOSITION],[PALLETNUMBER],[SCRAPID],[TIMESTAMP],[UNIQUEBOXCOUNTER],[BATCH],[SSCCCODE]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_SQCVALUE] ON [FUSIONOPERATIONAL].[DBO].[SQCVALUE] ([VALUEID]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_DOWNTIME_MC_J_PS] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIME] ([JOBID],[MACHINEID],[PRODUCTIONSTATE],[DOWNTIMEID],[STARTTIME],[ENDTIME]) INCLUDE ([MACHINEREASON]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_DOWNTIMEASSIGNEDREASON_DOWNTIMID] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIMEASSIGNEDREASON] ([DOWNTIMEID],[DOWNTIMEASSIGNEDREASONID],[STARTTIME],[ENDTIME]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_MACHINECYCLE] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([CYCLEID],[MACHINEID]) INCLUDE ([CYCLEEXTRAHISTORYID],[VALUE],[EXCLUDE]) WITH (DROP_EXISTING=OFF , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF);
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