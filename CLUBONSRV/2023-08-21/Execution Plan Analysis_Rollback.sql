

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230821100641 ON [CMS].[DBO].[INVGOODSINDETAIL]; 
END TRY 
BEGIN CATCH 
END CATCH;







BEGIN TRY 
    CREATE UNIQUE INDEX [PK_INVGOODSSOLDHEADER] ON [CMS].[DBO].[INVGOODSSOLDHEADER] ([DOCUMENTID],[PROPERTYID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;