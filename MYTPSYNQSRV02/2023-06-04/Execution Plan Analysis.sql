
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 6/4/2023 12:45:17 PM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230604124519 ON [SPRITZERTAIPINGDB].[DBO].[PICK_RESERVATION] ([STATUS],[CLASS_TYPE],[CREATE_DATE],[UPDATED_BY],[CREATED_BY],[ALLOCATION_ZONE_KEY]) INCLUDE ([TRANSACTION_COUNT],[UPDATE_DATE],[ORDER_LINE_KEY],[QUANTITY],[MATERIAL_STATUS_ID],[BEST_BEFORE_DATE],[EXPIRY_DATE],[LOAD_UNIT_ID],[LOT_CODE],[MANUFACTURING_DATE],[ATTRIBUTE_SET],[PRODUCT_UOM_KEY]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230604124530 ON [SPRITZERTAIPINGDB].[DBO].[LOCATION] ([CLASS_TYPE],[TRANSPORT_NODE_ID],[LOCATION_KEY]) INCLUDE ([CREATE_DATE],[CREATED_BY],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[X_POSITION],[Z_POSITION],[PARENT_LOCATION_KEY]) ;
 END TRY BEGIN CATCH END CATCH;
