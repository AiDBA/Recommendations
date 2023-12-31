

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230613194440 ON [OCS].[DBO].[A_WILORRYUNLOADINGTRANSACTION]; 
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

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230613194445 ON [VEEAMONE].[MONITOR].[BPJOBSESSION]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_BPJOBSESSION] ON [VEEAMONE].[MONITOR].[BPJOBSESSION] ([BP_SERVER_ID],[UID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_LATESTOBJECTPROPERTY_PROPERTYID] ON [VEEAMONE].[REPORTER].[LATESTOBJECTPROPERTY] ([PROPERTYID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_ENTITYID] ON [VEEAMONE].[REPORTING].[OBJECTENTITYRELATIONS] ([ENDDATE],[ENTITYID],[ENTITYPARENTID],[STARTDATE]) INCLUDE ([ENTITYPARENTTYPEID],[ENTITYPROPERTYTYPEID],[ENTITYTYPEID],[ISDELETED]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    DROP INDEX [IX_AIDBA_15_20220908] ON [COLOS].[DBO].[PPALLET]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDX_OBJECTPROPERTY_RELATIONS] ON [VEEAMONE].[REPORTER].[OBJECTPROPERTY] ([ISDELETED],[OBJECTID],[PARENTID],[PROPERTYID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_SESSIONLOG] ON [VEEAMONE].[REPORTER].[SESSIONLOG] ([SESSIONID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;
