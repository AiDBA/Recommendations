
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 7/26/2023 10:30:24 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230726103026 ON [CLUBON].[DBO].[FREBUGGYSETUP] ([TYPE],[STATUS]) INCLUDE ([REMARK]) ;
 END TRY BEGIN CATCH END CATCH;
