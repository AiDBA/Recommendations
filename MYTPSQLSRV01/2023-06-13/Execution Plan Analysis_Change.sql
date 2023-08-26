
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/13/2023 7:44:38 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230613194440 ON [OCS].[DBO].[A_WILORRYUNLOADINGTRANSACTION] ([TRANSSTATUS],[ROWID]) INCLUDE ([CREATEDBY],[CREATEDDATE],[UPDATEDBY],[UPDATEDDATE],[LORRYNO],[REMARKS],[UNLOADFINISH],[ISLINKTOLOADING]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_4_20220830] ON [OCS].[DBO].[AB_A_LOADINGAPPOINTMENTTIMETRANSACTION_CSSA] ([ACTIVEIND],[BOOKED_DATE],[CREATEDDATE],[ERP_DPNO],[ERP_DPTIMESTAMP],[GOWMSDOCK],[INDATE],[LORRYNO],[OTHERSNOAPPOINTMENT],[ROWID],[TOTALPALLETLOAD],[TRANSPORTER],[TRANSSTATUS],[VEHICLETYPE]) INCLUDE ([BOOKED_TIME_FROM],[BOOKED_TIME_TO],[CHECKOUTDRIVER],[CONT_BOOKINGNO],[CONT_CLOSINGDATE],[CONT_CLOSINGTIME],[CONT_CSWHPLANNING],[CONT_DESTINATION],[CONT_LINER],[CONT_PORTOFLOADING],[CONT_POSTPONEBOOKEDDATE],[CONT_POSTPONECOUNTER],[CONT_SEALNO],[CONT_TRUCKNO],[CONTAINERSEALNOSTATUS],[CREATEDBY],[ERP_SONO],[INBY],[OUTBY],[OUTDATE],[REMARKS],[REVERSALBY],[REVERSALDATE],[STATUSCUSTOMERCOMPLAINT],[STATUSTRUCKFULFILLMENT],[TRUCKPRIORITYIND],[TRUCKTRAILERNO],[UPDATEDBY],[UPDATEDDATE],[DAYLOADSHIP]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SLIST_UNIQUE] ON [COLOS].[DBO].[SLIST] ([INTVALUE],[STRLISTNAME]) INCLUDE ([STRDESCRIPTION]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230613194445 ON [VEEAMONE].[MONITOR].[BPJOBSESSION] ([UID],[BP_SERVER_ID],[AGG_DURATION],[DELETE_TIME]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_BPJOBSESSION] ON [VEEAMONE].[MONITOR].[BPJOBSESSION] ([BP_SERVER_ID],[UID]) INCLUDE ([DURATION]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_LATESTOBJECTPROPERTY_PROPERTYID] ON [VEEAMONE].[REPORTER].[LATESTOBJECTPROPERTY] ([PROPERTYID],[OBJECTTYPEID]) INCLUDE ([CREATIONID],[MODIFICATIONID],[CALLOUT],[PARENTTYPEID],[VALUE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_ENTITYID] ON [VEEAMONE].[REPORTING].[OBJECTENTITYRELATIONS] ([ENDDATE],[ENTITYID],[ENTITYPARENTID],[STARTDATE]) INCLUDE ([ENTITYPARENTTYPEID],[ENTITYPROPERTYTYPEID],[ENTITYTYPEID],[ISDELETED]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_15_20220908] ON [COLOS].[DBO].[PPALLET] ([BLNCREATEDMANUALLY],[STATUS],[STRPALLETLINENUMBER]) INCLUDE ([STRICONNAME],[BARTICLEID],[BPRODORDERID],[SPALLETLINEID],[PJOBID],[CREATEDON],[CREATEDBY],[MODIFIEDON],[MODIFIEDBY],[STRSSCC],[INTENUM_PALLETLOAD],[INTENUM_IDENTIFICATIONTYPE],[INTLINENUMBER],[STRRECEIVEDDATA],[INTRECEIVEDQUANTITY],[DTEBBE],[DTEQUEUEDTIME],[BLNIGNORE],[BLNOPERATORINPUT],[BLNRECEIVEDLOW],[BLNRECEIVEDINCOMPLETE],[BLNTOBACKUP],[BLNEXPORTED],[INTQUANTITYCASES],[STRLOTCODE],[STRGTIN_PALLET],[STRARTICLENUMBER],[STRARTICLEVARIANT],[STRARTICLEDESCRIPTION01],[STRARTICLEDESCRIPTION02],[STRLAYOUT_PALLET],[BLNPERFORMANCEREGISTERED],[STRORDERNUMBER],[STRMESSAGE],[INTSEQUENCENUMBER],[STRDATEFORMAT],[BLNDATEFIXED],[STRDEFAULTBACKUPPRINTER],[MMWEEKOFMM],[PONUMBER],[CUSTEXPIRYDATE],[STRARTICLEDESCRIPTION03],[STRCOUNTRY],[STRSKUNAME],[SCANNEDLOTCODE],[SCANNEDDATAMATCHED],[PRODLINE],[STRUOM],[BESTBEFOREDATE],[PARTSHORTDESC],[HEALTHCERT]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IDX_OBJECTPROPERTY_RELATIONS] ON [VEEAMONE].[REPORTER].[OBJECTPROPERTY] ([ISDELETED],[OBJECTID],[PARENTID],[PROPERTYID],[MODIFICATIONID]) INCLUDE ([PROPKEY],[VALUE],[INTVALUE],[DATETIMEVALUE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_IX_SESSIONLOG] ON [VEEAMONE].[REPORTER].[SESSIONLOG] ([SESSIONID]) INCLUDE ([DETAILS],[LOGDATETIME]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;