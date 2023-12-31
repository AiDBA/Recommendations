
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/13/2023 7:30:32 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230613193034 ON [E101LIVE].[ICE].[SESSIONSTATE] ([EXPIRESON]) INCLUDE ([USERID],[SESSIONID]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_ORDERHED_OPENORDER] ON [E101LIVE].[ERP].[ORDERHED] ([COMPANY],[OPENORDER],[ORDERNUM]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_UD110_UD_FS_SHIPBYDATE_C_FS_STATUS_C_FS_TYPE_C_FS_LOADINGBAY_C_FS_PICKINGSTATUS_C_FS_G_CHECKIN_C] ON [E101LIVE].[ICE].[UD110_UD] ([FS_G_CHECKIN_C],[FS_LOADINGBAY_C],[FS_PICKINGSTATUS_C],[FS_SHIPBYDATE_C],[FS_STATUS_C],[FS_TYPE_C]) INCLUDE ([FOREIGNSYSROWID],[FS_DPPRIORITY_C],[FS_G_CHECKINSTATUS_C],[FS_TIMESLOT_C],[FS_TRUCKNO_C],[FS_TRANSPORTERNAME_C],[U_AX175_RECEIVECOMPLETED_C],[U_AX176_GOTRECEIVING_C],[FS_BOOKINGNO_C],[FS_CONTAINERNO_C],[FS_SEALNO_C],[FS_CLOSINGDATETIME_C],[FS_LINERCOMPANY_C],[FS_PORTOFDISCHARGE_C],[FS_PORTOFLOADING_C],[FS_HAULIERNAME_C],[FS_CLOSINGTIME_C],[FS_WMSLOADINGBAY_C]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTQTYDEFERRED_SYSINDEX] ON [E101LIVE].[ERP].[PARTQTYDEFERRED] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SHIPDTL_SYSINDEX] ON [E101LIVE].[ERP].[SHIPDTL] ([SYSROWID],[COMPANY],[PACKNUM],[PACKLINE],[ORDERNUM],[ORDERLINE]) INCLUDE ([OURINVENTORYSHIPQTY]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSUSERFILE_SYSINDEX] ON [E101LIVE].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTBIN_SYSINDEX] ON [E101LIVE].[ERP].[PARTBIN] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTBINDEFERRED_SYSINDEX] ON [E101LIVE].[ERP].[PARTBINDEFERRED] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_PARTTRAN] ON [E101LIVE].[ERP].[PARTTRAN] ([SYSROWID],[COMPANY],[TRANTYPE]) INCLUDE ([PARTNUM],[WAREHOUSECODE],[BINNUM],[TRANCLASS],[TRANDATE],[TRANQTY],[ENTRYPERSON],[PLANT],[LEGALNUMBER],[COSTID],[ACTTRANSUOM],[LOTNUM],[GLTRANS],[EXTCOST],[SYSREVID],[PACKTYPE],[PACKNUM],[PACKLINE],[ORDERNUM],[ORDERLINE],[REVISIONNUM],[CUSTNUM],[INVENTORYTRANS],[MTLUNITCOST],[LBRUNITCOST],[BURUNITCOST],[SUBUNITCOST],[MTLBURUNITCOST],[COSTMETHOD],[JOBNUM],[ASSEMBLYSEQ],[JOBSEQTYPE],[JOBSEQ],[PONUM],[POLINE],[PORELNUM],[WAREHOUSE2],[BINNUM2],[ORDERRELNUM],[TRANREFERENCE],[PARTDESCRIPTION],[VENDORNUM],[PURPOINT],[PORECEIPTQTY],[POUNITCOST],[PACKSLIP],[INVOICENUM],[INVOICELINE],[INVADJSRC],[INVADJREASON],[DIMCODE],[DUM],[DIMCONVFACTOR],[LOTNUM2],[DIMCODE2],[DUM2],[DIMCONVFACTOR2],[POSTEDTOGL],[FISCALYEAR],[FISCALPERIOD],[JOURNALNUM],[COSTED],[DMRNUM],[ACTIONNUM],[RMANUM],[COSPOSTINGREQD],[JOURNALCODE],[PLANT2],[CALLNUM],[CALLLINE],[MATNUM],[JOBNUM2],[ASSEMBLYSEQ2],[JOBSEQ2],[RMALINE],[RMARECEIPT],[RMADISP],[OTHERDIVVALUE],[PLANTTRANNUM],[NONCONFID],[MTLMTLUNITCOST],[MTLLABUNITCOST],[MTLSUBUNITCOST],[MTLBURDENUNITCOST],[REFTYPE],[REFCODE],[BEGINQTY],[AFTERQTY],[BEGBURUNITCOST],[BEGLBRUNITCOST],[BEGMTLBURUNITCOST],[BEGMTLUNITCOST],[BEGSUBUNITCOST],[AFTERBURUNITCOST],[AFTERLBRUNITCOST],[AFTERMTLBURUNITCOST],[AFTERMTLUNITCOST],[AFTERSUBUNITCOST],[PLANTCOSTVALUE],[EMPID],[RECONCILENUM],[FIFODATE],[FIFOSEQ],[ACTTRANQTY],[INVTYUOM],[INVTYUOM2],[FIFOACTION],[FISCALYEARSUFFIX],[FISCALCALENDARID],[BINTYPE],[CCYEAR],[CCMONTH],[CYCLESEQ],[ABTUID],[BASECOSTMETHOD],[REVERTSTATUS],[REVERTID],[DROPSHIPPACKSLIP],[VARTARGET],[FIFOSUBSEQ],[ALTMTLUNITCOST],[ALTLBRUNITCOST],[ALTBURUNITCOST],[ALTSUBUNITCOST],[ALTMTLBURUNITCOST],[ALTEXTCOST],[ALTMTLMTLUNITCOST],[ALTMTLLABUNITCOST],[ALTMTLSUBUNITCOST],[ALTMTLBURDENUNITCOST],[TRANDOCTYPEID],[PBINVNUM],[LOANFLAG],[ASSETNUM],[ADDITIONNUM],[DISPOSALNUM],[PROJPROCESSED],[ASOFDATE],[ASOFSEQ],[MSCNUM],[ODCUNITCOST],[TRANREFTYPE],[PCID],[PCIDCOLLAPSECOUNTER],[PCID2],[CONTRACTID],[LCFLAG],[EXTMTLCOST],[EXTLBRCOST],[EXTBURCOST],[EXTSUBCOST],[EXTMTLBURCOST],[EXTMTLMTLCOST],[EXTMTLLABCOST],[EXTMTLSUBCOST],[EXTMTLBURDENCOST],[MYIMPORTNUM],[AUTOREVERSE],[REVTRANNUM],[REVSYSDATE],[REVSYSTIME],[EXTNONRECOVERABLECOST]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_CHGLOG_SYSINDEX] ON [E101LIVE].[ICE].[CHGLOG] ([SYSROWID],[COMPANY],[IDENTIFIER],[SCHEMANAME],[TABLENAME],[KEY1],[KEY2],[KEY3],[DATESTAMPEDON],[LOGNUM],[USERID]) INCLUDE ([SYSREVID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTWHSE_SYSINDEX] ON [E101LIVE].[ERP].[PARTWHSE] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTQTY_SYSINDEX] ON [E101LIVE].[ERP].[PARTQTY] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_FARD_IX_01_11062022] ON [SWISSLOGLIVE].[DBO].[FSW_TBLSWISSREQUEST] ([REQUESTID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_NOTIFICATIONS] ON [REPORTSERVER].[DBO].[NOTIFICATIONS] ([NOTIFICATIONID],[PROCESSSTART],[PROCESSAFTER]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_CATALOG] ON [REPORTSERVER].[DBO].[CATALOG] ([ITEMID],[PATH]) INCLUDE ([TYPE],[POLICYID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_BITFLAG_SYSINDEX] ON [E101LIVE].[ICE].[BITFLAG] ([SYSROWID],[RELATEDTOSCHEMANAME],[RELATEDTOTABLE],[RELATEDTOROWID]) INCLUDE ([MEMO],[ATTACHMENT],[CRMCALL],[CHGLOG],[REQUIRESGLCONTROL],[SYSREVID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_INTQUEOUT_SYSINDEX] ON [E101LIVE].[ICE].[INTQUEOUT] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTLOT_SYSINDEX] ON [E101LIVE].[ERP].[PARTLOT] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PARTLOTDEFERRED_DEFERREDSEQ] ON [E101LIVE].[ERP].[PARTLOTDEFERRED] ([DEFERREDSEQ]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSACTIVITYLOG_SYSINDEX] ON [E101LIVE].[ICE].[SYSACTIVITYLOG] ([SYSROWID],[ACTIVITYSEQ]) INCLUDE ([SYSREVID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_INTPARAMVALUES_SYSINDEX] ON [E101LIVE].[ICE].[INTPARAMVALUES] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
