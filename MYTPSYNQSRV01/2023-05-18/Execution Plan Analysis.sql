
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 5/18/2023 5:58:50 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230518055852 ON [SPRITZERTAIPINGDB].[DBO].[EXPECTED_RECEIPT] ([STATUS],[CLASS_TYPE],[CREATE_DATE],[EXPECTED_RECEIPT_KEY]) INCLUDE ([CREATED_BY],[STATUS_DATE],[TRANSACTION_COUNT],[UPDATE_DATE],[UPDATED_BY],[LOCAL],[CONTACT_KEY],[OWNER_KEY]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230518055901 ON [SPRITZERTAIPINGDB].[DBO].[ASN_LINE] ([CLASS_TYPE],[ASN_LINE_KEY],[TU_ID]) ;
 END TRY BEGIN CATCH END CATCH;
