
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_0000001C_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000010_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_2_20230415' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [IX_AIDBA_2_20230415] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_2_20230415] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_2_20230415] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000015_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_0000000A_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000003_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000004_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000009_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000002_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000005_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000016_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_0000000B_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_0000000E_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_0000000F_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000010_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000011_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000006_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000007_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [IX_AIDBA_1_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20220926] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20220926] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_0000000B_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000002_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_0000000A_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220912' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [IX_AIDBA_3_20220912] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220912] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220912] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000003_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000004_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000005_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_2_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [IX_AIDBA_2_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_2_20220926] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_2_20220926] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20220912' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [IX_AIDBA_1_20220912] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20220912] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20220912] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000013_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000014_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000007_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000008_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000009_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GlJournalDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [PK_GlJournalDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_GlJournalDetail] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GlJournalDetail] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GlTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [PK_GlTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_GlTransaction] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GlTransaction] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[ComLog] [_WA_Sys_ID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOn].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOn].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[ComLog] [_WA_Sys_ModuleID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOn].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOn].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_4_20230103' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [IX_AIDBA_4_20230103] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_4_20230103] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_4_20230103] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000013_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalDetail] [_WA_Sys_00000012_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_3D5EEB29] on [FAS].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionDateTime_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[ComLog] [_WA_Sys_ActionDateTime_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOn].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOn].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesDetails] [PK_mrmSalesDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesDetails] on [ClubOn].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesDetails] on [ClubOn].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesDetails] [_WA_Sys_ItemPrice_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOn].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOn].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[ComLog] [_WA_Sys_ID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOnTest19].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOnTest19].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesDetails] [_WA_Sys_ItemClass_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOn].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOn].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemAmount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesDetails] [_WA_Sys_ItemAmount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemAmount_04515656] on [ClubOn].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemAmount_04515656] on [ClubOn].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionDateTime_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[ComLog] [_WA_Sys_ActionDateTime_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOnTest19].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOnTest19].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[ComLog] [_WA_Sys_ModuleID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOnTest19].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOnTest19].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Month_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[fasDepreciation] [_WA_Sys_Month_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOnTest19].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOnTest19].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Year_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[fasDepreciation] [_WA_Sys_Year_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOnTest19].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOnTest19].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_fasDepreciation' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[fasDepreciation] [PK_fasDepreciation] WITH FULLSCAN ;
		END
		PRINT '[PK_fasDepreciation] on [ClubOnTest19].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_fasDepreciation] on [ClubOnTest19].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Month_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[fasDepreciation] [_WA_Sys_Month_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOn_Train].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOn_Train].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Year_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[fasDepreciation] [_WA_Sys_Year_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOn_Train].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOn_Train].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_fasDepreciation' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[fasDepreciation] [PK_fasDepreciation] WITH FULLSCAN ;
		END
		PRINT '[PK_fasDepreciation] on [ClubOn_Train].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_fasDepreciation] on [ClubOn_Train].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Month_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[fasDepreciation] [_WA_Sys_Month_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOn].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOn].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Year_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[fasDepreciation] [_WA_Sys_Year_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOn].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOn].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Month_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[fasDepreciation] [_WA_Sys_Month_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOn99].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOn99].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Year_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[fasDepreciation] [_WA_Sys_Year_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOn99].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOn99].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_fasDepreciation' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[fasDepreciation] [PK_fasDepreciation] WITH FULLSCAN ;
		END
		PRINT '[PK_fasDepreciation] on [ClubOn99].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_fasDepreciation] on [ClubOn99].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Month_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[fasDepreciation] [_WA_Sys_Month_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOnTest].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Month_00E0B825] on [ClubOnTest].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Year_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[fasDepreciation] [_WA_Sys_Year_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOnTest].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Year_00E0B825] on [ClubOnTest].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_fasDepreciation' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[fasDepreciation] [PK_fasDepreciation] WITH FULLSCAN ;
		END
		PRINT '[PK_fasDepreciation] on [ClubOnTest].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_fasDepreciation] on [ClubOnTest].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[fasDepreciation] [_WA_Sys_00000004_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOnTest].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOnTest].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[fasDepreciation] [_WA_Sys_00000004_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOn99].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOn99].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[fasDepreciation] [_WA_Sys_00000004_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOn].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOn].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[fasDepreciation] [_WA_Sys_00000004_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOn_Train].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOn_Train].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_00E0B825' AND OBJECT_NAME(S.OBJECT_ID) = 'fasDepreciation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[fasDepreciation] [_WA_Sys_00000004_00E0B825] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOnTest19].[dbo].[fasDepreciation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_00E0B825] on [ClubOnTest19].[dbo].[fasDepreciation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemCategory_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemCategory_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemCategory_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemCategory_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PackageCode_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_PackageCode_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PackageCode_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PackageCode_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemClass_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [PK_PrsTransactionDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionDetails] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionDetails] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[ComLog] [_WA_Sys_ID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOn99].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOn99].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionDateTime_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[ComLog] [_WA_Sys_ActionDateTime_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOn99].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOn99].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[ComLog] [_WA_Sys_ModuleID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOn99].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOn99].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemCode_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemCode_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemCode_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemCode_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20221226' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [IX_AIDBA_3_20221226] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20221226] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20221226] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderItem' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [PK_posOrderItem] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderItem] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderItem] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000004_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000012_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000007_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000009_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000002_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_0000000F_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000014_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000011_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000004_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000005_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000008_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000007_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000003_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invDepartmentItemMovement' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [PK_invDepartmentItemMovement] WITH FULLSCAN ;
		END
		PRINT '[PK_invDepartmentItemMovement] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invDepartmentItemMovement] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invGoodsSoldDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldDetail] [PK_invGoodsSoldDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_invGoodsSoldDetail] on [CMS].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invGoodsSoldDetail] on [CMS].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_6_20220526' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [IX_AIDBA_6_20220526] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_6_20220526] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_6_20220526] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000002_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000003_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000004_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000005_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000009_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_0000000A_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GlJournalDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [PK_GlJournalDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_GlJournalDetail] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GlJournalDetail] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000002_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000003_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000004_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000005_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_0000000A_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_0000000B_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GlTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [PK_GlTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_GlTransaction] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GlTransaction] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000004_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000002_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000003_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_058EC7FB] on [CMS].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000002_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000016_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_0000000B_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000006_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000007_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_0000000E_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_0000000F_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000010_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000011_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesDetails] [_WA_Sys_ItemPrice_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000014_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000007_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000008_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000009_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000013_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesDetails] [_WA_Sys_ItemClass_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesDetails] [PK_mrmSalesDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesDetails] on [ClubOnTest19].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesDetails] on [ClubOnTest19].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_0000001C_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_TransactionClass_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_TransactionDate_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_0000000D_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ChequeNumber_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_ChequeNumber_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ChequeNumber_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ChequeNumber_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_CreditCardType_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_CreditCardType_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_CreditCardType_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_CreditCardType_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OthersType_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_OthersType_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OthersType_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OthersType_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_TransactionClass_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_TransactionDate_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000012_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasTransfer_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_FasTransfer_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasTransfer_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasTransfer_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasTransfer_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_FasTransfer_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasTransfer_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasTransfer_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20230103' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [IX_AIDBA_1_20230103] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20230103] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20230103] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentCode_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_PaymentCode_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentCode_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentCode_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_0000000B_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [PK_mrmSalesMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesMaster] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesMaster] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PaymentMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [PK_PaymentMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_PaymentMaster] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PaymentMaster] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PaymentMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [IX_PaymentMaster] WITH FULLSCAN ;
		END
		PRINT '[IX_PaymentMaster] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PaymentMaster] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_AccountID_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_AccountID_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_AccountID_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_AccountID_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGovtTax_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemGovtTax_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGovtTax_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGovtTax_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGrossAmount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemGrossAmount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGrossAmount_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGrossAmount_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemServChrg_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemServChrg_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemServChrg_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemServChrg_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemDiscount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemDiscount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemDiscount_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemDiscount_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemDiscount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesDetails] [_WA_Sys_ItemDiscount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemDiscount_04515656] on [ClubOn].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemDiscount_04515656] on [ClubOn].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemDiscount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesDetails] [_WA_Sys_ItemDiscount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemDiscount_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemDiscount_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_0000000F_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [PK_PrsTransactionMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionMaster] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionMaster] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000014_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000011_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000004_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000012_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000007_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000009_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000002_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderItem' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [PK_posOrderItem] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderItem] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderItem] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PaymentDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentDetails] [PK_PaymentDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PaymentDetails] on [ClubOn].[dbo].[mrmPaymentDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PaymentDetails] on [ClubOn].[dbo].[mrmPaymentDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_7E987D00' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentDetails] [_WA_Sys_ItemClass_7E987D00] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_7E987D00] on [ClubOn].[dbo].[mrmPaymentDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_7E987D00] on [ClubOn].[dbo].[mrmPaymentDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RegChitID_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [_WA_Sys_RegChitID_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RegChitID_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RegChitID_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_0000000E_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_3D5EEB29' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalDetail] [_WA_Sys_00000013_3D5EEB29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_3D5EEB29] on [FASTest19].[dbo].[GlJournalDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemAmount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemAmount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemAmount_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemAmount_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemAmount_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesDetails] [_WA_Sys_ItemAmount_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemAmount_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemAmount_04515656] on [ClubOnTest19].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20230309' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [IX_AIDBA_3_20230309] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20230309] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20230309] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_mrmSalesMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [IX_mrmSalesMaster] WITH FULLSCAN ;
		END
		PRINT '[IX_mrmSalesMaster] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_mrmSalesMaster] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_2_20220526' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [IX_AIDBA_2_20220526] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_2_20220526] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_2_20220526] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemPrice_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_UserID_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [_WA_Sys_UserID_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_UserID_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_UserID_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_2_20221226' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [IX_AIDBA_2_20221226] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_2_20221226] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_2_20221226] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [PK_mrmSalesDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesDetails] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesDetails] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesDetails] [_WA_Sys_ItemClass_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOn99].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [_WA_Sys_TransactionDate_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [_WA_Sys_TransactionClass_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RecordStatus_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [_WA_Sys_RecordStatus_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RecordStatus_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RecordStatus_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RefNo_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_RefNo_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RefNo_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RefNo_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_LocalAmount_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_LocalAmount_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_LocalAmount_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_LocalAmount_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_VoucherType_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_VoucherType_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_VoucherType_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_VoucherType_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000003_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasBatchNo_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmPaymentMaster] [_WA_Sys_FasBatchNo_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasBatchNo_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasBatchNo_6DCDE3B1] on [ClubOn].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasBatchNo_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_FasBatchNo_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasBatchNo_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasBatchNo_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [_WA_Sys_0000000D_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_IsCancel_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_IsCancel_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_IsCancel_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_IsCancel_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invGoodsSoldHeader' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [PK_invGoodsSoldHeader] WITH FULLSCAN ;
		END
		PRINT '[PK_invGoodsSoldHeader] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invGoodsSoldHeader] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000015_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20221009' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [IX_AIDBA_1_20221009] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20221009] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20221009] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_5_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [IX_AIDBA_5_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_5_20220926] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_5_20220926] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20230328' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [IX_AIDBA_1_20230328] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20230328] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20230328] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GlJournal' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [PK_GlJournal] WITH FULLSCAN ;
		END
		PRINT '[PK_GlJournal] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GlJournal] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [IX_AIDBA_3_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220926] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220926] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_4_20220912' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [IX_AIDBA_4_20220912] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_4_20220912] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_4_20220912] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderItem] [_WA_Sys_00000003_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6874FD0E] on [ClubOnTest19].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderItem] [_WA_Sys_00000003_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6874FD0E] on [ClubOn].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6874FD0E] on [ClubOn].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000007_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000014_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000011_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_0000000F_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000004_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TxnDate_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_TxnDate_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TxnDate_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TxnDate_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000007_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000012_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DebtorCode_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_DebtorCode_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DebtorCode_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DebtorCode_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000002_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_6874FD0E' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [_WA_Sys_00000009_6874FD0E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_6874FD0E] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderItem' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrderItem] [PK_posOrderItem] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderItem] on [ClubOn99].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderItem] on [ClubOn99].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_CreditorCode_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_CreditorCode_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_CreditorCode_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_CreditorCode_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_BranchCode_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_BranchCode_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_BranchCode_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_BranchCode_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DocumentNo_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_DocumentNo_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DocumentNo_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DocumentNo_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DocumentType_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_DocumentType_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DocumentType_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DocumentType_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Remark_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_Remark_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Remark_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Remark_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20221226' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [IX_AIDBA_1_20221226] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20221226] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20221226] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleType_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_ModuleType_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleType_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleType_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000004_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemCategory_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemCategory_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemCategory_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemCategory_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemClass_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PackageCode_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_PackageCode_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PackageCode_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PackageCode_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [PK_PrsTransactionDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionDetails] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionDetails] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000002_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_BaseAmount_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlJournalHeader] [_WA_Sys_BaseAmount_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_BaseAmount_041B80D5] on [FAS].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_BaseAmount_041B80D5] on [FAS].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemCode_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemCode_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemCode_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemCode_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[ComLog] [_WA_Sys_00000004_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOnTest].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOnTest].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[ComLog] [_WA_Sys_00000004_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOn].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOn].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[ComLog] [_WA_Sys_00000004_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOn99].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOn99].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[ComLog] [_WA_Sys_00000004_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOnTest19].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOnTest19].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[ComLog] [_WA_Sys_00000004_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOn_Train].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_519BB957] on [ClubOn_Train].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Amount_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionMaster] [_WA_Sys_Amount_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Amount_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Amount_33B5855E] on [ClubOn].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_AccountID_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_AccountID_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_AccountID_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_AccountID_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PaymentMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [IX_PaymentMaster] WITH FULLSCAN ;
		END
		PRINT '[IX_PaymentMaster] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PaymentMaster] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasTransfer_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_FasTransfer_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasTransfer_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasTransfer_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasTransfer_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_FasTransfer_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasTransfer_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasTransfer_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGovtTax_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemGovtTax_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGovtTax_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGovtTax_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGovtTax_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemGovtTax_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGovtTax_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGovtTax_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGrossAmount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemGrossAmount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGrossAmount_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGrossAmount_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGrossAmount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemGrossAmount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGrossAmount_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGrossAmount_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemDiscount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemDiscount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemDiscount_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemDiscount_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemDiscount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemDiscount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemDiscount_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemDiscount_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGrossAmount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemGrossAmount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGrossAmount_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGrossAmount_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemDiscount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemDiscount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemDiscount_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemDiscount_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_0000000B_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000003_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000007_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invDepartmentItemMovement' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [PK_invDepartmentItemMovement] WITH FULLSCAN ;
		END
		PRINT '[PK_invDepartmentItemMovement] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invDepartmentItemMovement] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemAmount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemAmount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemAmount_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemAmount_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemAmount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemAmount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemAmount_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemAmount_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemAmount_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemAmount_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemAmount_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemAmount_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_0000000D_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OthersType_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_OthersType_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OthersType_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OthersType_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ChequeNumber_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_ChequeNumber_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ChequeNumber_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ChequeNumber_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_CreditCardType_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_CreditCardType_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_CreditCardType_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_CreditCardType_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_TransactionClass_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_TransactionDate_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemCode_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemCode_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemCode_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemCode_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_TransactionClass_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_TransactionDate_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PaymentMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [PK_PaymentMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_PaymentMaster] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PaymentMaster] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000002_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_058EC7FB] on [CMSTest19].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_058EC7FB] on [CMSTest19].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000003_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_058EC7FB] on [CMSTest19].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_058EC7FB] on [CMSTest19].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldDetail] [_WA_Sys_00000004_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_058EC7FB] on [CMSTest19].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_058EC7FB] on [CMSTest19].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invGoodsSoldDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldDetail] [PK_invGoodsSoldDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_invGoodsSoldDetail] on [CMSTest19].[dbo].[invGoodsSoldDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invGoodsSoldDetail] on [CMSTest19].[dbo].[invGoodsSoldDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000004_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000005_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [PK_mrmSalesMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesMaster] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesMaster] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentCode_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_PaymentCode_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentCode_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentCode_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasBatchNo_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentMaster] [_WA_Sys_FasBatchNo_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasBatchNo_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasBatchNo_6DCDE3B1] on [ClubOnTest19].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000005_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3AA1AEB8] on [CMS].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemCategory_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemCategory_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemCategory_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemCategory_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemClass_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PackageCode_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_PackageCode_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PackageCode_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PackageCode_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [PK_PrsTransactionDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionDetails] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionDetails] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasBatchNo_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_FasBatchNo_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasBatchNo_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasBatchNo_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000002_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasTransfer_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_FasTransfer_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasTransfer_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasTransfer_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_0000000C_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_0000000C_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_0000000A_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_0000000B_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_0000000A_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_0000000B_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PaymentMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [PK_PaymentMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_PaymentMaster] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PaymentMaster] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasBatchNo_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_FasBatchNo_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasBatchNo_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasBatchNo_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_TransactionClass_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_TransactionDate_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OthersType_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_OthersType_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OthersType_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OthersType_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ChequeNumber_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_ChequeNumber_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ChequeNumber_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ChequeNumber_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_CreditCardType_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_CreditCardType_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_CreditCardType_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_CreditCardType_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_0000000D_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [_WA_Sys_TransactionClass_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [_WA_Sys_TransactionDate_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [PK_mrmSalesMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesMaster] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesMaster] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_0000000B_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentCode_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_PaymentCode_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentCode_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentCode_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_AccountID_6DCDE3B1' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [_WA_Sys_AccountID_6DCDE3B1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_AccountID_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_AccountID_6DCDE3B1] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PaymentMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentMaster] [IX_PaymentMaster] WITH FULLSCAN ;
		END
		PRINT '[IX_PaymentMaster] on [ClubOn99].[dbo].[mrmPaymentMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PaymentMaster] on [ClubOn99].[dbo].[mrmPaymentMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_46E78A0C' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentCountDetail] [_WA_Sys_00000009_46E78A0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_46E78A0C] on [CMS].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_46E78A0C] on [CMS].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_UserID_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [_WA_Sys_UserID_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_UserID_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_UserID_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invDepartmentCountDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentCountDetail] [PK_invDepartmentCountDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_invDepartmentCountDetail] on [CMS].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invDepartmentCountDetail] on [CMS].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_46E78A0C' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentCountDetail] [_WA_Sys_00000002_46E78A0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_46E78A0C] on [CMS].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_46E78A0C] on [CMS].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_46E78A0C' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentCountDetail] [_WA_Sys_00000003_46E78A0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_46E78A0C] on [CMS].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_46E78A0C] on [CMS].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasTransfer_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [_WA_Sys_FasTransfer_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasTransfer_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasTransfer_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [_WA_Sys_TransactionClass_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [_WA_Sys_TransactionDate_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_0000000E_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [_WA_Sys_0000000E_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RecordStatus_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [_WA_Sys_RecordStatus_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RecordStatus_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RecordStatus_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [PK_PrsTransactionMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionMaster] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionMaster] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FasBatchNo_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [_WA_Sys_FasBatchNo_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FasBatchNo_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FasBatchNo_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_7E987D00' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentDetails] [_WA_Sys_ItemClass_7E987D00] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_7E987D00] on [ClubOnTest19].[dbo].[mrmPaymentDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_7E987D00] on [ClubOnTest19].[dbo].[mrmPaymentDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PaymentDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmPaymentDetails] [PK_PaymentDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PaymentDetails] on [ClubOnTest19].[dbo].[mrmPaymentDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PaymentDetails] on [ClubOnTest19].[dbo].[mrmPaymentDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RegChitID_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [_WA_Sys_RegChitID_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RegChitID_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RegChitID_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS_Train].sys.stats S CROSS APPLY [CMS_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS_Train].[dbo].[invDepartmentItemMovement] [_WA_Sys_00000005_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1C1D2798] on [CMS_Train].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1C1D2798] on [CMS_Train].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionDateTime_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[ComLog] [_WA_Sys_ActionDateTime_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOn_Train].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOn_Train].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[ComLog] [_WA_Sys_ModuleID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOn_Train].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOn_Train].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DebtorCode_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_DebtorCode_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DebtorCode_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DebtorCode_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TxnDate_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_TxnDate_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TxnDate_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TxnDate_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_CreditorCode_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_CreditorCode_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_CreditorCode_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_CreditorCode_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Remark_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_Remark_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Remark_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Remark_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleType_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_ModuleType_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleType_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleType_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RefNo_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_RefNo_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RefNo_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RefNo_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000008_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000004_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionMaster' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [PK_PrsTransactionMaster] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionMaster] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionMaster] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_LocalAmount_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_LocalAmount_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_LocalAmount_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_LocalAmount_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000002_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invGoodsSoldHeader' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [PK_invGoodsSoldHeader] WITH FULLSCAN ;
		END
		PRINT '[PK_invGoodsSoldHeader] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invGoodsSoldHeader] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_0000000D_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_7E987D00' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentDetails] [_WA_Sys_ItemClass_7E987D00] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_7E987D00] on [ClubOn99].[dbo].[mrmPaymentDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_7E987D00] on [ClubOn99].[dbo].[mrmPaymentDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PaymentDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmPaymentDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmPaymentDetails] [PK_PaymentDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PaymentDetails] on [ClubOn99].[dbo].[mrmPaymentDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PaymentDetails] on [ClubOn99].[dbo].[mrmPaymentDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Amount_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionMaster] [_WA_Sys_Amount_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Amount_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Amount_33B5855E] on [ClubOnTest19].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Amount_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [_WA_Sys_Amount_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Amount_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Amount_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000007_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RegChitID_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [_WA_Sys_RegChitID_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RegChitID_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RegChitID_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000003_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_BaseAmount_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_BaseAmount_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_BaseAmount_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_BaseAmount_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_IsCancel_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_IsCancel_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_IsCancel_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_IsCancel_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DocumentNo_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_DocumentNo_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DocumentNo_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DocumentNo_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DocumentType_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_DocumentType_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DocumentType_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DocumentType_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_BranchCode_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_BranchCode_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_BranchCode_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_BranchCode_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GlJournal' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [PK_GlJournal] WITH FULLSCAN ;
		END
		PRINT '[PK_GlJournal] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GlJournal] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Status_1DC70F96' AND OBJECT_NAME(S.OBJECT_ID) = 'FreTeeTimeDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[FreTeeTimeDetails] [_WA_Sys_Status_1DC70F96] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOnTest].[dbo].[FreTeeTimeDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOnTest].[dbo].[FreTeeTimeDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Status_1DC70F96' AND OBJECT_NAME(S.OBJECT_ID) = 'FreTeeTimeDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[FreTeeTimeDetails] [_WA_Sys_Status_1DC70F96] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOnTest19].[dbo].[FreTeeTimeDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOnTest19].[dbo].[FreTeeTimeDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Status_1DC70F96' AND OBJECT_NAME(S.OBJECT_ID) = 'FreTeeTimeDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[FreTeeTimeDetails] [_WA_Sys_Status_1DC70F96] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOn_Train].[dbo].[FreTeeTimeDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOn_Train].[dbo].[FreTeeTimeDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Status_1DC70F96' AND OBJECT_NAME(S.OBJECT_ID) = 'FreTeeTimeDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[FreTeeTimeDetails] [_WA_Sys_Status_1DC70F96] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOn].[dbo].[FreTeeTimeDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOn].[dbo].[FreTeeTimeDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Status_1DC70F96' AND OBJECT_NAME(S.OBJECT_ID) = 'FreTeeTimeDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[FreTeeTimeDetails] [_WA_Sys_Status_1DC70F96] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOn99].[dbo].[FreTeeTimeDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Status_1DC70F96] on [ClubOn99].[dbo].[FreTeeTimeDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_UserID_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [_WA_Sys_UserID_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_UserID_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_UserID_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionClass_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [_WA_Sys_TransactionClass_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionClass_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionClass_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TransactionDate_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [_WA_Sys_TransactionDate_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TransactionDate_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TransactionDate_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_RecordStatus_33B5855E' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionMaster] [_WA_Sys_RecordStatus_33B5855E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_RecordStatus_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_RecordStatus_33B5855E] on [ClubOn99].[dbo].[RetTransactionMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionName_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[ComLog] [_WA_Sys_ActionName_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOnTest19].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOnTest19].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionName_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[ComLog] [_WA_Sys_ActionName_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOn_Train].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOn_Train].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionName_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[ComLog] [_WA_Sys_ActionName_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOn99].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOn99].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionName_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[ComLog] [_WA_Sys_ActionName_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOn].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOn].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionName_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[ComLog] [_WA_Sys_ActionName_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOnTest].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionName_519BB957] on [ClubOnTest].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[ComLog] [_WA_Sys_ID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOnTest].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOnTest].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ModuleID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[ComLog] [_WA_Sys_ModuleID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOnTest].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ModuleID_519BB957] on [ClubOnTest].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[ComLog] [_WA_Sys_00000005_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOnTest].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOnTest].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ActionDateTime_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[ComLog] [_WA_Sys_ActionDateTime_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOnTest].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ActionDateTime_519BB957] on [ClubOnTest].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[ComLog] [_WA_Sys_00000005_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOn].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOn].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[ComLog] [_WA_Sys_00000005_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOn99].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOn99].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ID_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[ComLog] [_WA_Sys_ID_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOn_Train].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ID_519BB957] on [ClubOn_Train].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[ComLog] [_WA_Sys_00000005_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOn_Train].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOn_Train].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_519BB957' AND OBJECT_NAME(S.OBJECT_ID) = 'ComLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[ComLog] [_WA_Sys_00000005_519BB957] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOnTest19].[dbo].[ComLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_519BB957] on [ClubOnTest19].[dbo].[ComLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrder' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [PK_posOrder] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrder] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrder] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DiscountType_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_DiscountType_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DiscountType_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DiscountType_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderScan' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderScan' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderScan] [PK_posOrderScan] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderScan] on [ClubOn].[dbo].[posOrderScan] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderScan] on [ClubOn].[dbo].[posOrderScan] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentMode_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_PaymentMode_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentMode_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentMode_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Server_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_Server_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Server_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Server_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Void_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_Void_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Void_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Void_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OrderType_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_OrderType_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OrderType_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OrderType_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderPayment' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderPayment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderPayment] [PK_posOrderPayment] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderPayment] on [ClubOn].[dbo].[posOrderPayment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderPayment] on [ClubOn].[dbo].[posOrderPayment] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FolioRefund_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_FolioRefund_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FolioRefund_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FolioRefund_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_GuestType_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_GuestType_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_GuestType_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_GuestType_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Refund_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_Refund_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Refund_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Refund_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_AccountID_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_AccountID_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_AccountID_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_AccountID_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FolioSettle_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_FolioSettle_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FolioSettle_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FolioSettle_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TableNo_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_TableNo_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TableNo_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TableNo_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TimeOrdered_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_TimeOrdered_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TimeOrdered_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TimeOrdered_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DateOrdered_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_DateOrdered_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DateOrdered_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DateOrdered_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OutletID_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_OutletID_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OutletID_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OutletID_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[mrmSalesDetails] [_WA_Sys_ItemClass_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOn_Train].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOn_Train].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[mrmSalesDetails] [PK_mrmSalesDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesDetails] on [ClubOn_Train].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesDetails] on [ClubOn_Train].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentType_79A9AAB1' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderPayment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderPayment] [_WA_Sys_PaymentType_79A9AAB1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentType_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentType_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TimeSettled_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_TimeSettled_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TimeSettled_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TimeSettled_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DateSettled_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_DateSettled_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DateSettled_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DateSettled_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_MasterID_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[mrmSalesMaster] [_WA_Sys_MasterID_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_MasterID_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_MasterID_05457A8F] on [ClubOn].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_MasterID_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[mrmSalesMaster] [_WA_Sys_MasterID_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_MasterID_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_MasterID_05457A8F] on [ClubOnTest19].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_MasterID_05457A8F' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesMaster' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[mrmSalesMaster] [_WA_Sys_MasterID_05457A8F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_MasterID_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_MasterID_05457A8F] on [ClubOn99].[dbo].[mrmSalesMaster] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Sequence_79A9AAB1' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderPayment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderPayment] [_WA_Sys_Sequence_79A9AAB1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Sequence_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Sequence_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3AA1AEB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invGoodsSoldHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invGoodsSoldHeader] [_WA_Sys_00000005_3AA1AEB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3AA1AEB8] on [CMSTest19].[dbo].[invGoodsSoldHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentMode_79A9AAB1' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderPayment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderPayment] [_WA_Sys_PaymentMode_79A9AAB1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentMode_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentMode_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_InvoiceNumber_79A9AAB1' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderPayment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderPayment] [_WA_Sys_InvoiceNumber_79A9AAB1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_InvoiceNumber_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_InvoiceNumber_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Description_79A9AAB1' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderPayment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrderPayment] [_WA_Sys_Description_79A9AAB1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Description_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Description_79A9AAB1] on [ClubOn].[dbo].[posOrderPayment] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[mrmSalesDetails] [_WA_Sys_ItemPrice_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOn_Train].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOn_Train].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[mrmSalesDetails] [_WA_Sys_ItemPrice_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOnTest].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_04515656] on [ClubOnTest].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemGovtTax_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemGovtTax_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemGovtTax_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemGovtTax_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemPrice_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemQuantity_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemQuantity_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemQuantity_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemQuantity_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemServChrg_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionDetails] [_WA_Sys_ItemServChrg_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemServChrg_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemServChrg_359DCDD0] on [ClubOn99].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemPrice_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemQuantity_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemQuantity_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemQuantity_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemQuantity_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemServChrg_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionDetails] [_WA_Sys_ItemServChrg_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemServChrg_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemServChrg_359DCDD0] on [ClubOn].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemPrice_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemPrice_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemPrice_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemPrice_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemQuantity_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemQuantity_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemQuantity_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemQuantity_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemServChrg_359DCDD0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionDetails] [_WA_Sys_ItemServChrg_359DCDD0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemServChrg_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemServChrg_359DCDD0] on [ClubOnTest19].[dbo].[RetTransactionDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_0000000D_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invDepartmentItemMovement] [_WA_Sys_0000000E_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_1C1D2798] on [CMS].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_0000000D_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_1C1D2798' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentItemMovement' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentItemMovement] [_WA_Sys_0000000E_1C1D2798] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_1C1D2798] on [CMSTest19].[dbo].[invDepartmentItemMovement] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_mrmSalesDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[mrmSalesDetails] [PK_mrmSalesDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_mrmSalesDetails] on [ClubOnTest].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_mrmSalesDetails] on [ClubOnTest].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_ItemClass_04515656' AND OBJECT_NAME(S.OBJECT_ID) = 'mrmSalesDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[mrmSalesDetails] [_WA_Sys_ItemClass_04515656] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOnTest].[dbo].[mrmSalesDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_ItemClass_04515656] on [ClubOnTest].[dbo].[mrmSalesDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TotalAmount_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrder] [_WA_Sys_TotalAmount_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOnTest].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOnTest].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TotalAmount_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[posOrder] [_WA_Sys_TotalAmount_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOn99].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOn99].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TotalAmount_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_TotalAmount_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TotalAmount_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[posOrder] [_WA_Sys_TotalAmount_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOn].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOn].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TotalAmount_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrder] [_WA_Sys_TotalAmount_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOn_Train].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TotalAmount_75D919CD] on [ClubOn_Train].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000007_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000008_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000009_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000A_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000B_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_11_20220526' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [IX_AIDBA_11_20220526] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_11_20220526] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_11_20220526] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionPackageDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [PK_PrsTransactionPackageDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionPackageDetails] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionPackageDetails] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000007_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000008_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000009_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000A_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000B_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000008_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000009_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_52593CB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invCountDetail] [_WA_Sys_00000002_52593CB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_52593CB8] on [CMS].[dbo].[invCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_52593CB8] on [CMS].[dbo].[invCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_52593CB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invCountDetail] [_WA_Sys_00000003_52593CB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_52593CB8] on [CMS].[dbo].[invCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_52593CB8] on [CMS].[dbo].[invCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_VoucherType_041B80D5' AND OBJECT_NAME(S.OBJECT_ID) = 'GlJournalHeader' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlJournalHeader] [_WA_Sys_VoucherType_041B80D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_VoucherType_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_VoucherType_041B80D5] on [FASTest19].[dbo].[GlJournalHeader] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invCountDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'invCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invCountDetail] [PK_invCountDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_invCountDetail] on [CMS].[dbo].[invCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invCountDetail] on [CMS].[dbo].[invCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000004_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000004_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000004_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000002_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000003_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionPackageDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [PK_PrsTransactionPackageDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionPackageDetails] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionPackageDetails] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000002_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000003_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000002_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000003_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PrsTransactionPackageDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [PK_PrsTransactionPackageDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PrsTransactionPackageDetails] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PrsTransactionPackageDetails] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_46E78A0C' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentCountDetail] [_WA_Sys_00000002_46E78A0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_46E78A0C] on [CMSTest19].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_46E78A0C] on [CMSTest19].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_46E78A0C' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentCountDetail] [_WA_Sys_00000003_46E78A0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_46E78A0C] on [CMSTest19].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_46E78A0C] on [CMSTest19].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_invDepartmentCountDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentCountDetail] [PK_invDepartmentCountDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_invDepartmentCountDetail] on [CMSTest19].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_invDepartmentCountDetail] on [CMSTest19].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMS].sys.stats S CROSS APPLY [CMS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_52593CB8' AND OBJECT_NAME(S.OBJECT_ID) = 'invCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMS].[dbo].[invCountDetail] [_WA_Sys_00000009_52593CB8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_52593CB8] on [CMS].[dbo].[invCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_52593CB8] on [CMS].[dbo].[invCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000007_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000009_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000002_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderItem' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [PK_posOrderItem] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderItem] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderItem] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000014_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_0000000F_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000011_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FAS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FAS].sys.stats S CROSS APPLY [FAS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FAS].[dbo].[GlTransaction] [_WA_Sys_00000012_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_5FB4032D] on [FAS].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_5FB4032D] on [FAS].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000011_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FASTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FASTest19].sys.stats S CROSS APPLY [FASTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_5FB4032D' AND OBJECT_NAME(S.OBJECT_ID) = 'GlTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FASTest19].[dbo].[GlTransaction] [_WA_Sys_00000012_5FB4032D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_5FB4032D] on [FASTest19].[dbo].[GlTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_5FB4032D] on [FASTest19].[dbo].[GlTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000011_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000012_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn_Train')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn_Train].sys.stats S CROSS APPLY [ClubOn_Train].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn_Train].[dbo].[posOrderItem] [_WA_Sys_00000004_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7C7108C3] on [ClubOn_Train].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CMSTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CMSTest19].sys.stats S CROSS APPLY [CMSTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_46E78A0C' AND OBJECT_NAME(S.OBJECT_ID) = 'invDepartmentCountDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CMSTest19].[dbo].[invDepartmentCountDetail] [_WA_Sys_00000009_46E78A0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_46E78A0C] on [CMSTest19].[dbo].[invDepartmentCountDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_46E78A0C] on [CMSTest19].[dbo].[invDepartmentCountDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Void_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_Void_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Void_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Void_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OrderType_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_OrderType_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OrderType_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OrderType_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderScan' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderScan' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrderScan] [PK_posOrderScan] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderScan] on [ClubOnTest19].[dbo].[posOrderScan] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderScan] on [ClubOnTest19].[dbo].[posOrderScan] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FolioRefund_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_FolioRefund_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FolioRefund_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FolioRefund_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000005_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000005_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000005_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_GuestType_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_GuestType_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_GuestType_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_GuestType_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Refund_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_Refund_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Refund_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Refund_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_AccountID_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_AccountID_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_AccountID_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_AccountID_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_FolioSettle_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_FolioSettle_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_FolioSettle_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_FolioSettle_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DateOrdered_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_DateOrdered_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DateOrdered_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DateOrdered_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TableNo_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_TableNo_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TableNo_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TableNo_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TimeOrdered_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_TimeOrdered_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TimeOrdered_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TimeOrdered_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrder' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [PK_posOrder] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrder] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrder] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_OutletID_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_OutletID_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_OutletID_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_OutletID_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_TimeSettled_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_TimeSettled_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_TimeSettled_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_TimeSettled_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DateSettled_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_DateSettled_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DateSettled_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DateSettled_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000006_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000006_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_00000006_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn99')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn99].sys.stats S CROSS APPLY [ClubOn99].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn99].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000C_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_7A68C4C0] on [ClubOn99].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOn')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOn].sys.stats S CROSS APPLY [ClubOn].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOn].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000C_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_7A68C4C0] on [ClubOn].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_7A68C4C0' AND OBJECT_NAME(S.OBJECT_ID) = 'RetTransactionPackageDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[RetTransactionPackageDetails] [_WA_Sys_0000000C_7A68C4C0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_7A68C4C0] on [ClubOnTest19].[dbo].[RetTransactionPackageDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [_WA_Sys_0000000F_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [_WA_Sys_00000014_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_PaymentMode_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_PaymentMode_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_PaymentMode_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_PaymentMode_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [_WA_Sys_00000007_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [_WA_Sys_00000009_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [_WA_Sys_00000002_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_posOrderItem' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [PK_posOrderItem] WITH FULLSCAN ;
		END
		PRINT '[PK_posOrderItem] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_posOrderItem] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_DiscountType_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_DiscountType_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_DiscountType_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_DiscountType_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest].sys.stats S CROSS APPLY [ClubOnTest].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_7C7108C3' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrderItem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest].[dbo].[posOrderItem] [_WA_Sys_00000011_7C7108C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_7C7108C3] on [ClubOnTest].[dbo].[posOrderItem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ClubOnTest19')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ClubOnTest19].sys.stats S CROSS APPLY [ClubOnTest19].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_Server_75D919CD' AND OBJECT_NAME(S.OBJECT_ID) = 'posOrder' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ClubOnTest19].[dbo].[posOrder] [_WA_Sys_Server_75D919CD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_Server_75D919CD] on [ClubOnTest19].[dbo].[posOrder] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_Server_75D919CD] on [ClubOnTest19].[dbo].[posOrder] cannot be updated.';			
	END CATCH;
END
	