

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230818092142 ON [FUSIONOPERATIONAL].[DBO].[GETTRACKTIMESTABLE]; 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_OBJECTCACHE] ON [FUSIONOPERATIONAL].[DBO].[OBJECTCACHE] ([OBJECTCACHEID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;




BEGIN TRY 
    CREATE UNIQUE INDEX [PK_MACHINECYCLE] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([CYCLEID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_DOWNTIME_MC_J_PS] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIME] ([JOBID],[MACHINEID],[PRODUCTIONSTATE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_NOTIFICATIONS] ON [REPORTSERVER].[DBO].[NOTIFICATIONS] ([NOTIFICATIONID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_CATALOG] ON [REPORTSERVER].[DBO].[CATALOG] ([ITEMID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;

