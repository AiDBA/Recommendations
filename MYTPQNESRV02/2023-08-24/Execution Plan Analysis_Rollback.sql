

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230824053912 ON [CHUANSINCACTUS].[DBO].[BANKACCOUNTSETTINGS]; 
END TRY 
BEGIN CATCH 
END CATCH;



BEGIN TRY 
    CREATE UNIQUE INDEX [PK_RECEIPTS] ON [CHUANSINCACTUS].[DBO].[RECEIPTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_RECEIPTS] ON [CHUANSINCACTUS].[DBO].[RECEIPTS] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;

BEGIN TRY 
    DROP INDEX AIDBA_NCIX_230824053917 ON [CHUANSINCACTUS].[DBO].[ROLEROLES_ROLEMODELDIFFERENCEOBJECTROLEMODELDIFFERENCEOBJECTS]; 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_ARCN] ON [CHUANSINCACTUS].[DBO].[ARCN] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [IX_JOURNALS] ON [CHUANSINCACTUS].[DBO].[JOURNALS] ([ROWINDEX]) WITH (DROP_EXISTING=ON ); 
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
    CREATE  INDEX [IGLACCOUNTID_CREDITCONTROL] ON [CHUANSINCACTUS].[DBO].[CREDITCONTROL] ([GLACCOUNTID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [UQ__ARCN__DOCDATE] ON [CHUANSINCACTUS].[DBO].[ARCN] ([CNDATE]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IMODELDIFFERENCEOBJECT_ASPECTOBJECT] ON [CHUANSINCACTUS].[DBO].[ASPECTOBJECT] ([MODELDIFFERENCEOBJECT]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE UNIQUE INDEX [PK_SPECIALACCOUNTS] ON [CHUANSINCACTUS].[DBO].[SPECIALACCOUNTS] ([ID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;


BEGIN TRY 
    CREATE  INDEX [IDOCUMENTID_DOCUMENTINFO] ON [CHUANSINCACTUS].[DBO].[DOCUMENTINFO] ([DOCUMENTID]) WITH (DROP_EXISTING=ON ); 
END TRY 
BEGIN CATCH 
END CATCH;