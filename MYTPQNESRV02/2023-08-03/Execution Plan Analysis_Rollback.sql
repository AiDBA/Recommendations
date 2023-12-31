

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230803055036 ON [CHUANSINCACTUS].[DBO].[VALIDPOSTINGPERIODS]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_GLACCOUNTS] ON [CHUANSINCACTUS].[DBO].[GLACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230803055039 ON [CHUANSINCACTUS].[DBO].[CREDITCONTROLDETAIL]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDOCUMENTID_DOCUMENTINFO] ON [CHUANSINCACTUS].[DBO].[DOCUMENTINFO] ([DOCUMENTID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_AUDITEDOBJECTWEAKREFERENCE] ON [CHUANSINCACTUS].[DBO].[AUDITEDOBJECTWEAKREFERENCE] ([OID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_STOCKS] ON [CHUANSINCACTUS].[DBO].[STOCKS] ([ID]) WITH (DROP_EXISTING=ON ); 
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
    CREATE  INDEX [ICREDITCONTROLID_CREDITCONTROLDETAIL] ON [CHUANSINCACTUS].[DBO].[CREDITCONTROLDETAIL] ([CREDITCONTROLID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDELIVERYORDERID_DELIVERYORDERDETAILS] ON [CHUANSINCACTUS].[DBO].[DELIVERYORDERDETAILS] ([DELIVERYORDERID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDELIVERYORDERDETAIL_SALESTRANSFERLINK] ON [CHUANSINCACTUS].[DBO].[SALESTRANSFERLINK] ([DELIVERYORDERDETAIL]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_ACCOUNTS] ON [CHUANSINCACTUS].[DBO].[ACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_XPWEAKREFERENCE] ON [CHUANSINCACTUS].[DBO].[XPWEAKREFERENCE] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDOCUMENTID_STOCKTRANSACTIONS] ON [CHUANSINCACTUS].[DBO].[STOCKTRANSACTIONS] ([DOCUMENTID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_DELIVERYADDRESSES] ON [CHUANSINCACTUS].[DBO].[DELIVERYADDRESSES] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_SPECIALACCOUNTS] ON [CHUANSINCACTUS].[DBO].[SPECIALACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;