
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/19/2023 7:44:00 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230619194402 ON [SPRITZERTAIPINGDB].[DBO].[WORKSTATION] ([STATUS],[CLASS_TYPE],[SESSION_ID]) INCLUDE ([CREATE_DATE],[CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[WORKSTATION_ID],[BLIND_RECEIVING],[HOSTNAME],[LAST_ACTIVITY],[LB_WORKSTATION_TYPE_ID],[LOGIN_REQUIRED_FOR_OPERATION],[PRINTER_NAME],[PRIORITY],[SCAN_ORDER_TU],[SEQUENCE],[STATUS_DATE],[WORKSTATION_TYPE],[CURRENT_OPERATION_DEF_ID],[DEFAULT_OPERATION_DEF_ID],[NEGATIVE_PICKING_THRESHOLD],[SCAN_PUTAWAY_TU]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230619194404 ON [SPRITZERTAIPINGDB].[DBO].[EVENTLOG] ([CLASS_TYPE],[EVENT_KEY],[ORIGIN_CATEGORY],[SEVERITY]) INCLUDE ([CREATE_DATE],[CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[MESSAGE],[OCCURRENCE_COUNT],[OCCURRENCE_DATE],[TRANSLATED_MESSAGE]) ;
 END TRY BEGIN CATCH END CATCH;
