

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230518060806 ON [PDSNT].[DBO].[AQS_TRAJECT_DEFINITION]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PROC_ORDERL] ON [INNOVA].[DBO].[PROC_ORDERL] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [IX_PROC_LOTS_CODE] ON [INNOVA].[DBO].[PROC_LOTS] ([CODE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_DEVICES] ON [PDSNT].[DBO].[DEVICES] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [IX_PROC_ORDERSERVICEPROCESSES_ORDERPROCESS_ORDERPROCESSTYPE] ON [INNOVA].[DBO].[PROC_ORDERSERVICEPROCESSES] ([ORDERPROCESS],[ORDERPROCESSTYPE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_PROC_UNITMATERIALC_UNITID_UNITTYPE] ON [INNOVA].[DBO].[PROC_UNITMATERIALC] ([UNITID],[UNITTYPE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PROC_HISTOGRAMS] ON [INNOVA].[DBO].[PROC_HISTOGRAMS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PROC_ITEMS] ON [INNOVA].[DBO].[PROC_ITEMS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_BASE_FEATURES_NAME] ON [INNOVA].[DBO].[BASE_FEATURES] ([NAME]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;