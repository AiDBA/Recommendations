

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230807123605 ON [OCS].[DBO].[A_10101_SCHEDULEOTCHARGE]; 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    DROP INDEX [IX_AIDBA_4_20220830] ON [OCS].[DBO].[AB_A_LOADINGAPPOINTMENTTIMETRANSACTION_CSSA]; 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [IX_SLIST_UNIQUE] ON [COLOS].[DBO].[SLIST] ([INTVALUE],[STRLISTNAME]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;