
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/3/2023 5:50:25 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230803055036 ON [CHUANSINCACTUS].[DBO].[VALIDPOSTINGPERIODS] ([ID],[USERID],[ISACTIVE],[ISFIRSTLEVEL]) INCLUDE ([OPTIMISTICLOCKFIELD],[VALIDDATEFROM],[VALIDDATETO],[USERNAME]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_GLACCOUNTS] ON [CHUANSINCACTUS].[DBO].[GLACCOUNTS] ([ID],[ROWINDEX]) INCLUDE ([PARENT],[GLACCOUNTCODE],[ACCOUNT],[SPECIALACCOUNT],[CURRENCY],[DESCRIPTION],[DRCR],[ISCREDITCARD],[ISACTIVE],[ISREVALUATION],[NOTES],[ISSUBACCOUNT],[BANKACCOUNTNO],[GSTMSICCODE],[OPTIMISTICLOCKFIELD],[SAC],[HASCHILDINCOA],[INCLUDEINCASHFLOWFORECASTADVISOR],[SSTTARIFFCODE],[TARIFFCODE],[ATCCODE],[DESCRIPTION2]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230803055039 ON [CHUANSINCACTUS].[DBO].[CREDITCONTROLDETAIL] ([ID],[ISSELECTED],[APPLYTO]) INCLUDE ([OPTIMISTICLOCKFIELD],[IFCREDITLIMITEXCEEDS],[IFOVERDUEEXCEEDS],[ISSUSPENDED],[SUSPENDREASON]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IDOCUMENTID_DOCUMENTINFO] ON [CHUANSINCACTUS].[DBO].[DOCUMENTINFO] ([DOCUMENTID]) INCLUDE ([DOCTYPE],[FIRSTCREATEDDATE],[FIRSTCREATEDUSERID],[LASTMODIFIEDDATE],[LASTMODIFIEDUSERID],[PRINTCOUNT],[OPTIMISTICLOCKFIELD]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_AUDITEDOBJECTWEAKREFERENCE] ON [CHUANSINCACTUS].[DBO].[AUDITEDOBJECTWEAKREFERENCE] ([OID],[GUIDID],[ROWINDEX]) INCLUDE ([INTID],[DISPLAYNAME]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_STOCKS] ON [CHUANSINCACTUS].[DBO].[STOCKS] ([ID],[STOCKCODE],[ITEMTYPECODE],[STOCKCONTROL],[ISACTIVE],[ROWINDEX]) INCLUDE ([STOCKNAME],[CATEGORY],[CLASS],[GROUP],[BARCODE],[OBJECTTYPE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_RECEIPTS] ON [CHUANSINCACTUS].[DBO].[RECEIPTS] ([ROWINDEX],[ISCANCELLED],[DEBTORID],[OBJECTTYPE],[DNDATE]) INCLUDE ([TERMID],[DUEDATE],[SALESPERSONID],[NETTOTALAMOUNTLOCAL],[ROUNDINGADJUSTMENT],[ROUNDINGADJUSTMENTLOCAL],[WTAXTOTALAMOUNT],[WTAXTOTALAMOUNTLOCAL],[REFERENCENO],[PROJECTID],[DESCRIPTION],[DNCODE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_ARCN] ON [CHUANSINCACTUS].[DBO].[ARCN] ([ROWINDEX],[JOURNALID]) INCLUDE ([REFERENCENO],[PROJECTID],[DESCRIPTION],[GLACCOUNTID],[NETDEBIT],[NETDEBITLOCAL],[NETCREDIT],[NETCREDITLOCAL]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_ICREDITCONTROLID_CREDITCONTROLDETAIL] ON [CHUANSINCACTUS].[DBO].[CREDITCONTROLDETAIL] ([CREDITCONTROLID]) INCLUDE ([CREDITLIMIT],[OVERDUELIMIT],[ISPDCHEQUEINCLUDED],[OVERDUEDAYS],[OVERDUEMONTHS],[ADDITIONALCREDITLIMIT],[ADDITIONALCREDITLIMITEXPIRYDATE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IDELIVERYORDERID_DELIVERYORDERDETAILS] ON [CHUANSINCACTUS].[DBO].[DELIVERYORDERDETAILS] ([DELIVERYORDERID]) INCLUDE ([QTY],[UOMID],[UNITPRICE],[DISCOUNT],[STOCKLOCATIONID],[STOCKID],[POS],[DESCRIPTION],[PROJECTID],[REFERENCENO],[AMOUNT],[DEPARTMENTID],[NUMBERING],[COSTCENTREID],[AMOUNTLOCAL],[DISCOUNTAMOUNT],[DISCOUNTAMOUNTLOCAL],[NETAMOUNT],[NETAMOUNTLOCAL],[ITEMTYPECODE],[ISBUNDLED],[ISSUBITEM],[BUNDLEDTRANSACTIONID],[TAXCODEID],[ISTAXINCLUSIVE],[TAXRATE],[TAXCLASS],[TAXCLASSVALUE],[TAXAMOUNT],[TAXAMOUNTLOCAL],[SUBAMOUNT],[SUBAMOUNTLOCAL],[TAXEXCLUSIVEAMOUNT],[TAXEXCLUSIVEAMOUNTLOCAL],[TAXCLASSVALUEREF],[TRANSFERLINK],[TRANSFERRED],[STOCKTYPE],[MSUNITCOST],[MSREFERENCEID],[OPTIMISTICLOCKFIELD],[WTAXCODE],[WTAXRATE],[WTAXAMOUNT],[WTAXAMOUNTLOCAL],[CANCELLEDQTY],[SGSTAMOUNT],[CGSTAMOUNT],[IGSTAMOUNT],[SGSTAMOUNTLOCAL],[CGSTAMOUNTLOCAL],[IGSTAMOUNTLOCAL],[DEBTORITEMID],[STOCKBATCHNUMBERID],[REF],[REF2],[REF3],[REF4],[REF5],[DATEREF1],[DATEREF2],[NUMREF1],[NUMREF2],[SERIALNUMBERREF1],[SERIALNUMBERREF2],[TARIFFCODEID],[LOCALONECENTSDIFF],[SERVICEAMOUNT],[SERVICEAMOUNTLOCAL],[SUBCODEID],[COMMISSIONGROUPID],[SERVICECOST],[PACKINGUOMID],[PACKING],[PACKINGQTY],[PROGRESSINVOICINGRATE],[CANCELLEDSERIALNUMBER],[PACKINGUOM1],[PACKINGUOM2],[HIGHESTUOM],[REFTRANSFERFROM]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IDELIVERYORDERDETAIL_SALESTRANSFERLINK] ON [CHUANSINCACTUS].[DBO].[SALESTRANSFERLINK] ([DELIVERYORDERDETAIL],[ID]) INCLUDE ([TRANSFERREDBASEUNIT],[SOURCEKEY],[QUOTATIONDETAIL],[SALESORDERDETAIL],[OPTIMISTICLOCKFIELD]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_ACCOUNTS] ON [CHUANSINCACTUS].[DBO].[ACCOUNTS] ([ID],[ROWINDEX]) INCLUDE ([ACCOUNTCODE],[DESCRIPTION],[CHARTSEQUENCE],[DRCR],[OPTIMISTICLOCKFIELD],[CHARTSEQUENCEPH],[ACCOUNTCODEPH]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_XPWEAKREFERENCE] ON [CHUANSINCACTUS].[DBO].[XPWEAKREFERENCE] ([ROWINDEX],[TARGETTYPE],[GCRECORD]) INCLUDE ([OID],[OPTIMISTICLOCKFIELD],[OBJECTTYPE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IDOCUMENTID_STOCKTRANSACTIONS] ON [CHUANSINCACTUS].[DBO].[STOCKTRANSACTIONS] ([DOCUMENTID]) INCLUDE ([TRANSACTIONDATE],[DESCRIPTION],[STOCKID],[LOCATIONID],[PROJECTID],[QTY],[UOMID],[UOMQTY],[UOMPRICE],[DISCOUNT],[DOCTYPE],[ISCANCELLED],[DOCUMENTCODE],[REFERENCENO],[ISBUNDLED],[COSTCENTREID],[DISCOUNTAMOUNT],[DTLID],[DTLPOS],[FROMTYPE],[FROMDOCID],[FROMDTLID],[AMOUNT],[AMOUNTLOCAL],[NETAMOUNTLOCAL],[DISCOUNTAMOUNTLOCAL],[NETAMOUNT],[REF1],[REF2],[ITEMDESCRIPTION],[TAXEXCLUSIVEAMOUNT],[TAXEXCLUSIVEAMOUNTLOCAL],[OPTIMISTICLOCKFIELD],[STOCKBATCHNUMBERID],[UOMPRICEEXCLANDINGCOST],[SUBCODEID],[TAXCODEID],[TAXEXCLUSIVEAMOUNTLOCALWITHDP],[NETAMOUNTLOCALWITHDP]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_DELIVERYADDRESSES] ON [CHUANSINCACTUS].[DBO].[DELIVERYADDRESSES] ([ID],[ISDEFAULT]) INCLUDE ([DELIVERYADDRESSCODE],[DELIVERYADDRESSNAME],[DELIVERYADDRESS1],[DELIVERYADDRESS2],[DELIVERYADDRESS3],[DELIVERYADDRESS4],[CONTACTPERSON],[PHONE],[FAX],[ISBASEADDRESS],[OPTIMISTICLOCKFIELD],[REGISTATIONNO],[GSTREGNO],[DELIVERYAREA],[PHONE2],[EMAIL],[REMARK]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_SPECIALACCOUNTS] ON [CHUANSINCACTUS].[DBO].[SPECIALACCOUNTS] ([ID],[ROWINDEX]) INCLUDE ([ACCOUNT],[SPECIALACCOUNTCODE],[DESCRIPTION],[ACCOUNTCODE],[OPTIMISTICLOCKFIELD]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
