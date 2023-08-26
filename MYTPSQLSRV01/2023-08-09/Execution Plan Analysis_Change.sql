
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/9/2023 1:08:09 PM UTC
*/
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SLIST_UNIQUE] ON [COLOS].[DBO].[SLIST] ([INTVALUE],[STRLISTNAME]) INCLUDE ([STRDESCRIPTION]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_23_20220830] ON [OCS].[DBO].[A_WILORRYUNLOADINGTRANSACTION] ([DELETEIND],[LORRYNO],[MATERIAL],[MODEOFTRANSPORT],[PACKINGQUANTITY],[SUPPLIER],[TRANSDATE],[TRANSSTATUS],[UNLOADFINISH],[ROWID]) INCLUDE ([COURIERRUN_NO],[PACKINGTYPE],[REMARKS],[RUN_NO],[RUNNINGNO],[STARTUNLOAD],[TIMEIN],[TOTALWORKERS],[ISLINKTOLOADING],[LORRYSIZE],[CREATEDBY],[CREATEDDATE],[UPDATEDBY],[UPDATEDDATE],[REVERSEDBY],[REVERSEDDATE],[UNLOADINGINPROGRESS],[UNLOADSYNCEMAIL]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_4_20220830] ON [OCS].[DBO].[AB_A_LOADINGAPPOINTMENTTIMETRANSACTION_CSSA] ([ACTIVEIND],[BOOKED_DATE],[CREATEDDATE],[ERP_DPNO],[ERP_DPTIMESTAMP],[GOWMSDOCK],[INDATE],[LORRYNO],[OTHERSNOAPPOINTMENT],[ROWID],[TOTALPALLETLOAD],[TRANSPORTER],[TRANSSTATUS],[VEHICLETYPE]) INCLUDE ([BOOKED_TIME_FROM],[BOOKED_TIME_TO],[CHECKOUTDRIVER],[CONT_BOOKINGNO],[CONT_CLOSINGDATE],[CONT_CLOSINGTIME],[CONT_CSWHPLANNING],[CONT_DESTINATION],[CONT_LINER],[CONT_PORTOFLOADING],[CONT_POSTPONEBOOKEDDATE],[CONT_POSTPONECOUNTER],[CONT_SEALNO],[CONT_TRUCKNO],[CONTAINERSEALNOSTATUS],[CREATEDBY],[ERP_SONO],[INBY],[OUTBY],[OUTDATE],[REMARKS],[REVERSALBY],[REVERSALDATE],[STATUSCUSTOMERCOMPLAINT],[STATUSTRUCKFULFILLMENT],[TRUCKPRIORITYIND],[TRUCKTRAILERNO],[UPDATEDBY],[UPDATEDDATE],[DAYLOADSHIP]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
