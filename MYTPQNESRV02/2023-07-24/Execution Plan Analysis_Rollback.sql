

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230724092424 ON [CHUANSINCACTUS].[DBO].[ATTACHMENTLINK]; 
END TRY 
BEGIN CATCH 
END CATCH;

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230724092425 ON [CHUANSINCACTUS].[DBO].[ROLEROLES_ROLEMODELDIFFERENCEOBJECTROLEMODELDIFFERENCEOBJECTS]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_ACCOUNTS] ON [CHUANSINCACTUS].[DBO].[ACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_GLACCOUNTS] ON [CHUANSINCACTUS].[DBO].[GLACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_STOCKACCOUNTPRESETS] ON [CHUANSINCACTUS].[DBO].[STOCKACCOUNTPRESETS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_STOCKS] ON [CHUANSINCACTUS].[DBO].[STOCKS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_DEBTORS] ON [CHUANSINCACTUS].[DBO].[DEBTORS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_INVOICES] ON [CHUANSINCACTUS].[DBO].[INVOICES] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_RECEIPTS] ON [CHUANSINCACTUS].[DBO].[RECEIPTS] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_ARCN] ON [CHUANSINCACTUS].[DBO].[ARCN] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE  INDEX [IINVOICEID_INVOICEDETAILS] ON [CHUANSINCACTUS].[DBO].[INVOICEDETAILS] ([INVOICEID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IARTRANID_ARMATCHED] ON [CHUANSINCACTUS].[DBO].[ARMATCHED] ([ARTRANID]) INCLUDE ([AMOUNT]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDELIVERYORDERID_DELIVERYORDERDETAILS] ON [CHUANSINCACTUS].[DBO].[DELIVERYORDERDETAILS] ([DELIVERYORDERID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_PURCHASERETURNDETAILS] ON [CHUANSINCACTUS].[DBO].[PURCHASERETURNDETAILS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_DELIVERYADDRESSES] ON [CHUANSINCACTUS].[DBO].[DELIVERYADDRESSES] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_STOCKLOCATIONS] ON [CHUANSINCACTUS].[DBO].[STOCKLOCATIONS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [ISTOCKID_UOMS] ON [CHUANSINCACTUS].[DBO].[UOMS] ([STOCKID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;
