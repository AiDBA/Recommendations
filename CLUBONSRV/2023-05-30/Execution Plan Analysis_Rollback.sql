

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230530000512 ON [CLUBON].[DBO].[MRMPAYMENTDELETEMASTER]; 
END TRY 
BEGIN CATCH 
END CATCH;







BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PRSITEMMASTER] ON [CLUBON].[DBO].[RETITEMMASTER] ([ITEMCODE],[TRANSACTIONCLASS]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;