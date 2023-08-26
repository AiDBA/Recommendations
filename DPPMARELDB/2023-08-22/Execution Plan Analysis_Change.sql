
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 8/22/2023 10:43:34 AM UTC
*/
BEGIN TRY     CREATE NONCLUSTERED INDEX AIDBA_NCIX_230822104337 ON [PDSNT].[DBO].[AQS_TRAJECT_DEFINITION] ([ASP_DEVICE_ID]) INCLUDE ([MODIFIED],[AQS_QUALITY_MATRIX_ID]) ;
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_PROC_ORDERL] ON [INNOVA].[DBO].[PROC_ORDERL] ([ID],[MATERIAL],[PRUNIT]) INCLUDE ([EXTCODE],[MAXAMOUNT],[CURAMOUNT],[AMOUNTUM],[CURNOMINAL],[EXPIRE1],[EXPIRE2],[EXPIRE3],[VALUE],[CURRENCY],[PRICE],[DPRICE],[ORDER],[PRDAY]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_PROC_LOTS] ON [INNOVA].[DBO].[PROC_LOTS] ([LOT],[DIMENSION1]) INCLUDE ([PROCESSOR],[SHNAME],[EXTCODE],[PATTERN],[DIMENSION2],[DIMENSION3],[DIMENSION4],[DESCRIPTION1],[DESCRIPTION2],[DESCRIPTION3],[DESCRIPTION4],[DESCRIPTION5],[DESCRIPTION6],[DESCRIPTION7],[DESCRIPTION8],[XMLDATA],[OBJECTTEMPLATE],[ITGRSITE],[ITGRSTATUS],[CREATED],[CREATEDBY],[MODIFIED],[MODIFIEDBY],[NAME],[ACTIVE],[STATUS],[VALIDFROM],[VALIDTO],[BRCOUNTRY],[RICOUNTRY],[RICOUNTRY2],[RICOUNTRY3],[RICOUNTRY4],[RICOUNTRY5],[SLHOUSE],[SLSEQUENCE],[PROCESSOR2],[CUSTOMER],[BOM],[REFTIME],[EXPECTEDCOUNT],[CURRENTCOUNT],[QAMARK1],[QAMARK2],[QAMARK3],[QAMARK4],[QAMARK1CODE],[QAMARK2CODE],[QAMARK3CODE],[QAMARK4CODE],[STARTPOS],[ENDPOS],[STARTRMAREA],[ENDRMAREA],[GROUP],[SUBGROUP],[KILLMETHOD],[BEGTIME],[ENDTIME],[SOURCEPACK],[SOURCEPALLET],[TYPE],[SUPPLIER]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PROC_ORDERSERVICEPROCESSES_ORDERPROCESS_ORDERPROCESSTYPE] ON [INNOVA].[DBO].[PROC_ORDERSERVICEPROCESSES] ([ORDERPROCESS],[ORDERPROCESSTYPE],[ID]) INCLUDE ([PROCESSASSEMBLY],[XMLDATA],[ACTIVE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PROC_RECIPEBATCHES_LOT] ON [INNOVA].[DBO].[PROC_RECIPEBATCHES] ([LOT],[ID]) INCLUDE ([RECIPE],[CONTROLRECIPE],[REGTIME],[STATUS],[AMOUNT],[AMOUNTUM],[ORDER],[ORDERLINE],[PRUNIT],[PRDAY],[ROUTE]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
