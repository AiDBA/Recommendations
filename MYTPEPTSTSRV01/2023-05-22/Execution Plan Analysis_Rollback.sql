

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230522185800 ON [SWISSLOG].[DBO].[FSW_TBLMAPCOL]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK__FSW_TBLD__3214EC079F6F972D] ON [SWISSLOG].[DBO].[FSW_TBLDELORDERMASTER] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [FARD_IX_1030] ON [SWISSLOG].[DBO].[FSW_TBLSWISSREQUEST] ([TYPENAME]) INCLUDE ([COMPANY],[EXCEPTIONERR],[KEYVALUE],[REQUESTDATE],[REQUESTID],[RESCODE],[RESDATE],[RESDESC],[RESTRANSCODE],[SERVICETYPE],[SUBTYPE],[TYPEOFACTION],[XMLREQUEST],[XMLRESPONSE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;