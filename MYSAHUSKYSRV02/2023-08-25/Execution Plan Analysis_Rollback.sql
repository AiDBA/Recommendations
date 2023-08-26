

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230825054838 ON [FUSIONOPERATIONAL].[DBO].[BOMPARTITEM]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_CYCLE_RUNID_RUNCNUM] ON [FUSIONOPERATIONAL].[DBO].[CYCLE] ([RUNCYCLENUMBER],[RUNID]) INCLUDE ([CYCLEID],[CYCLENUMBER],[STATUS],[TIMESTAMP]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230825054841 ON [FUSIONOPERATIONAL].[DBO].[PROCESSTARGET]; 
END TRY 
BEGIN CATCH 
END CATCH;





BEGIN TRY 
    CREATE  INDEX [IX_DOWNTIMEASSIGNEDREASON_DOWNTIMID] ON [FUSIONOPERATIONAL].[DBO].[DOWNTIMEASSIGNEDREASON] ([DOWNTIMEID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;






BEGIN TRY 
    CREATE UNIQUE INDEX [PK_EVENT] ON [REPORTSERVER].[DBO].[EVENT] ([EVENTID]) WITH (DROP_EXISTING=ON ); 
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
