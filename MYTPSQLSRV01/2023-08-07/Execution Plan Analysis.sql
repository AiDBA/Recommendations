
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/7/2023 12:36:03 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230807123605 ON [OCS].[DBO].[A_10101_SCHEDULEOTCHARGE] ([ACTIVEIND],[ROWID],[CREATEDDATE],[MODULE_NAME],[SCHEDULE_COL1],[SCHEDULE_STARTDATE]) INCLUDE ([CREATEDBY],[UPDATEDDATE],[UPDATEDBY],[SCHEDULE_ENDDATE],[SCHEDULE_REASON],[SCHEDULE_REMARKS],[SCHEDULE_REMARKS_ITEM1],[SCHEDULE_REMARKS_ITEM2],[SCHEDULE_OTCHARGESIND],[SCHEDULE_COL2],[SCHEDULE_COL3],[SCHEDULE_COL4]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_4_20220830] ON [OCS].[DBO].[AB_A_LOADINGAPPOINTMENTTIMETRANSACTION_CSSA] ([ACTIVEIND],[BOOKED_DATE],[CREATEDDATE],[ERP_DPNO],[ERP_DPTIMESTAMP],[GOWMSDOCK],[INDATE],[LORRYNO],[OTHERSNOAPPOINTMENT],[ROWID],[TOTALPALLETLOAD],[TRANSPORTER],[TRANSSTATUS],[VEHICLETYPE]) INCLUDE ([BOOKED_TIME_FROM],[BOOKED_TIME_TO],[CHECKOUTDRIVER],[CONT_BOOKINGNO],[CONT_CLOSINGDATE],[CONT_CLOSINGTIME],[CONT_CSWHPLANNING],[CONT_DESTINATION],[CONT_LINER],[CONT_PORTOFLOADING],[CONT_POSTPONEBOOKEDDATE],[CONT_POSTPONECOUNTER],[CONT_SEALNO],[CONT_TRUCKNO],[CONTAINERSEALNOSTATUS],[CREATEDBY],[ERP_SONO],[INBY],[OUTBY],[OUTDATE],[REMARKS],[REVERSALBY],[REVERSALDATE],[STATUSCUSTOMERCOMPLAINT],[STATUSTRUCKFULFILLMENT],[TRUCKPRIORITYIND],[TRUCKTRAILERNO],[UPDATEDBY],[UPDATEDDATE],[DAYLOADSHIP]) WITH (DROP_EXISTING=ON );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SLIST_UNIQUE] ON [COLOS].[DBO].[SLIST] ([INTVALUE],[STRLISTNAME]) INCLUDE ([STRDESCRIPTION]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;