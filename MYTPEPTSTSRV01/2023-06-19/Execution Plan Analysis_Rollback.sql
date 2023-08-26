

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230619194514 ON [E101TRAIN].[ICE].[IMPORTDOCUMENTBLOB]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [FARD_IX_1030] ON [SWISSLOG].[DBO].[FSW_TBLSWISSREQUEST] ([TYPENAME]) INCLUDE ([COMPANY],[EXCEPTIONERR],[KEYVALUE],[REQUESTDATE],[REQUESTID],[RESCODE],[RESDATE],[RESDESC],[RESTRANSCODE],[SERVICETYPE],[SUBTYPE],[TYPEOFACTION],[XMLREQUEST],[XMLRESPONSE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230619194539 ON [E101TEST].[ERP].[RMAHEAD]; 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [IX_SYSACTIVITYLOG_SYSINDEX] ON [E101TEST].[ICE].[SYSACTIVITYLOG] ([SYSROWID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK__FSW_TBLD__3214EC079F6F972D] ON [SWISSLOG].[DBO].[FSW_TBLDELORDERMASTER] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [FARD_IX_86] ON [E101TEST].[ERP].[PART] ([COMPANY],[PARTNUM]) INCLUDE ([PRODCODE],[SYSROWID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PODETAIL] ON [E101TEST].[ERP].[PODETAIL] ([COMPANY],[POLINE],[PONUM]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_RMAHEAD] ON [E101TEST].[ERP].[RMAHEAD] ([COMPANY],[RMANUM]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_SYSUSERFILE_SYSINDEX] ON [E101TEST].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IX_TFORDDTL_I_ORDER] ON [E101TEST].[ERP].[TFORDDTL] ([COMPANY],[PARTNUM],[TFORDLINE],[TFORDNUM]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_SYSUSERFILE_SYSINDEX] ON [E101TRAIN].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;