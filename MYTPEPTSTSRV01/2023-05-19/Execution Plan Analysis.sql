
/* 
This Query has been Tuned by Ai-DBA Query Optimizer (v1.4.0.0).
Copyright (C) 2019-2023 Fard Technology Corp., all rights reserved.
Date: 5/19/2023 12:26:39 AM UTC
*/
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSUSERFILE_SYSINDEX] ON [E101TRAIN].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_SYSUSERFILE_SYSINDEX] ON [E101TEST].[ICE].[SYSUSERFILE] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
BEGIN TRY     CREATE UNIQUE INDEX [IX_AIDBA_IX_PART_SYSINDEX] ON [E101TEST].[ERP].[PART] ([SYSROWID]) WITH (DROP_EXISTING=OFF );
 END TRY BEGIN CATCH END CATCH;
