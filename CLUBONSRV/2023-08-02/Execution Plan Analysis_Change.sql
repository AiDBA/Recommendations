
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/2/2023 11:34:07 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230802113409 ON [CLUBON].[DBO].[INVITEM] ([ID],[BARCODE]) INCLUDE ([DESCRIPTION],[LASTQTY]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_2_20220926] ON [FAS].[DBO].[GLTRANSACTION] ([BRANCHCODE],[COMPANYCODE],[GLCODE],[TXNDATE]) INCLUDE ([ANALYSISCODE],[CREDIT],[CREDITORCODE],[DEBIT],[DEBITCREDIT],[DEBTORCODE],[DEPARTMENTCODE],[DOCUMENTNO],[DOCUMENTTYPE],[ITEMNO],[MODULETYPE],[REMARK],[VOUCHERTYPE]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
