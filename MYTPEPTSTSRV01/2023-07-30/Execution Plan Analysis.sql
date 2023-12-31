
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 7/30/2023 5:07:24 AM UTC
*/
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK_PODETAIL] ON [E101TEST].[ERP].[PODETAIL] ([COMPANY],[POLINE],[PONUM]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_PK__FSW_TBLD__3214EC079F6F972D] ON [SWISSLOG].[DBO].[FSW_TBLDELORDERMASTER] ([ID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSUSERFILE_SYSINDEX] ON [E101TRAIN].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSUSERFILE_SYSINDEX] ON [E101TEST].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSAGENTSCHED_SYSINDEX] ON [E101TEST].[ICE].[SYSAGENTSCHED] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE  INDEX [IX_AIDBA_FARD_IX_86] ON [E101TEST].[ERP].[PART] ([COMPANY],[PARTNUM]) INCLUDE ([PRODCODE],[SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
