
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 7/26/2023 10:42:44 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230726104246 ON [SPRITZERTAIPINGDB].[DBO].[DOCK_ASSIGN] ([STATUS],[CLASS_TYPE],[CREATE_DATE],[TRUCK_QUEUE_KEY],[MAP_LANE]) INCLUDE ([CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[WORK_PATH],[DOCK_ASSIGN_KEY],[ARRIVAL_TIME],[BLOCK_FOR_SL],[DOCK_ASSIGN_ID],[DOCK_CAPABILITY],[DOCK_LOCK_PROCESS],[DOCK_STATUS],[LOADING_CAPABILITY],[DOCK_LOCATION_KEY],[RELEASE_ORDER_TU]) ;
 END TRY BEGIN CATCH END CATCH;
