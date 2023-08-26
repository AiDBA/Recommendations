

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230522124809 ON [FUSIONOPERATIONAL].[DBO].[MACHINESETUPMODE]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_DOWNTIME_MC_J_PS_ST_ET] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIME] ([ENDTIME],[JOBID],[MACHINEID],[PRODUCTIONSTATE],[STARTTIME]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_DOWNTIMEASSIGNEDREASON_DOWNTIMID] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIMEASSIGNEDREASON] ([DOWNTIMEID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_OBJECTCACHE] ON [FUSIONOPERATIONAL].[DBO].[OBJECTCACHE] ([OBJECTCACHEID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_SCRAP_JOB_MACHINE] ON [FUSIONOPERATIONAL].[DBO].[SCRAP] ([JOBID],[MACHINEID]) INCLUDE ([PARTID],[QUANTITY],[TIME]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_CYCLE_RUNID_RUNCNUM] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([RUNCYCLENUMBER],[RUNID]) INCLUDE ([CYCLEID],[CYCLENUMBER],[STATUS],[TIMESTAMP]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID]) WITH (DROP_EXISTING=ON , ONLINE=ON, DATA_COMPRESSION=PAGE,ALLOW_PAGE_LOCKS=OFF); 
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





