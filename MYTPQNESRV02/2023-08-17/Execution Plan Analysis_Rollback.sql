

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230817091325 ON [CHUANSINCACTUS].[DBO].[TRANSACTIONCODES]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_DEBTORS] ON [CHUANSINCACTUS].[DBO].[DEBTORS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230817091328 ON [CHUANSINCACTUS].[DBO].[STOCKSALESPRICEHISTORY]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_JOURNALS] ON [CHUANSINCACTUS].[DBO].[JOURNALS] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_JOURNALDETAILS] ON [CHUANSINCACTUS].[DBO].[JOURNALDETAILS] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_GLACCOUNTS] ON [CHUANSINCACTUS].[DBO].[GLACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PURCHASERETURNDETAILS] ON [CHUANSINCACTUS].[DBO].[PURCHASERETURNDETAILS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IPAYFORID_ARMATCHED] ON [CHUANSINCACTUS].[DBO].[ARMATCHED] ([PAYFORID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_STOCKS] ON [CHUANSINCACTUS].[DBO].[STOCKS] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PAYMENTS] ON [CHUANSINCACTUS].[DBO].[PAYMENTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;