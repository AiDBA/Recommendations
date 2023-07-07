
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 5/19/2023 12:35:02 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230519003504 ON [SPRITZERTAIPINGDB].[DBO].[ORDER_TU_PLAN] ([CLASS_TYPE],[STATUS],[HEIGHT],[WEIGHT],[UPDATED_BY],[CREATED_BY],[CREATE_DATE]) INCLUDE ([STATUS_DATE],[TRANSACTION_COUNT],[UPDATE_DATE]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230519003507 ON [SPRITZERTAIPINGDB].[DBO].[EXPECTED_RECEIPT_LINE] ([CLASS_TYPE],[STATUS],[EXPECTED_RECEIPT_LINE_KEY]) INCLUDE ([EXPECTED_RECEIPT_KEY],[PRODUCT_KEY],[BEST_BEFORE_DATE],[CHECK_IN_DATE],[CREATE_DATE],[CREATED_BY],[EXPIRY_DATE],[LOAD_UNIT_ID],[LOT_CODE],[MANUFACTURING_DATE],[QUANTITY_EXPECTED],[QUANTITY_RECEIVED],[STATUS_DATE],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[ATTRIBUTE_SET],[MATERIAL_STATUS_ID],[PRODUCT_UOM_KEY]) ;
 END TRY BEGIN CATCH END CATCH;
