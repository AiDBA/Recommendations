

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230821101531 ON [FUSIONOPERATIONAL].[DBO].[SEQUENCE]; 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_MACHINECYCLE] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([CYCLEID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;




BEGIN TRY 
    CREATE  INDEX [IX_RUN_JOB] ON [FUSIONOPERATIONAL].[DBO].[RUN] ([JOBID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_NOTIFICATIONS] ON [REPORTSERVER].[DBO].[NOTIFICATIONS] ([NOTIFICATIONID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_CATALOG] ON [REPORTSERVER].[DBO].[CATALOG] ([ITEMID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE  INDEX [IX_SCRAP_JOB_MACHINE] ON [FUSIONOPERATIONAL].[DBO].[SCRAP] ([JOBID],[MACHINEID]) INCLUDE ([PARTID],[QUANTITY],[TIME]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_OBJECTCACHE] ON [FUSIONOPERATIONAL].[DBO].[OBJECTCACHE] ([OBJECTCACHEID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_DOWNTIMEASSIGNEDREASON] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIMEASSIGNEDREASON] ([DOWNTIMEASSIGNEDREASONID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE  INDEX [IX_SHIFT_TIME] ON [FUSIONOPERATIONAL].[DBO].[SHIFTCALENDAR] ([ENDDATETIME],[STARTDATETIME]) INCLUDE ([ISWORK]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;