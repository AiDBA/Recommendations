
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3493CFA7' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_crane4_x_throughput' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] [_WA_Sys_00000002_3493CFA7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3493CFA7] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3493CFA7] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3493CFA7' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_crane4_x_throughput' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] [_WA_Sys_00000003_3493CFA7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3493CFA7] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3493CFA7] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3493CFA7' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_crane4_x_throughput' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] [_WA_Sys_00000004_3493CFA7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3493CFA7] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3493CFA7] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_crane4_x_throughput_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_crane4_x_throughput' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] [dwh_crane4_x_throughput_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_crane4_x_throughput_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_crane4_x_throughput_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_crane4_x_throughput] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5CD6CB2B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_total_downtimeper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] [_WA_Sys_00000002_5CD6CB2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5CD6CB2B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5CD6CB2B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5CD6CB2B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_total_downtimeper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] [_WA_Sys_00000003_5CD6CB2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5CD6CB2B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5CD6CB2B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5CD6CB2B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_total_downtimeper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] [_WA_Sys_00000004_5CD6CB2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5CD6CB2B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5CD6CB2B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_total_downtimeper_subsystem_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_total_downtimeper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] [dwh_total_downtimeper_subsystem_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_total_downtimeper_subsystem_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_total_downtimeper_subsystem_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimeper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_60A75C0F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_error' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_error] [_WA_Sys_00000003_60A75C0F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_60A75C0F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_60A75C0F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_60A75C0F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_error' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_error] [_WA_Sys_00000002_60A75C0F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_60A75C0F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_60A75C0F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_error_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_error' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_error] [dwh_error_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_error_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_error_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_60A75C0F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_error' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_error] [_WA_Sys_00000004_60A75C0F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_60A75C0F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_60A75C0F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_error] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_628FA481' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_most_common_errors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] [_WA_Sys_00000002_628FA481] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_628FA481] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_628FA481] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_628FA481' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_most_common_errors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] [_WA_Sys_00000003_628FA481] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_628FA481] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_628FA481] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_628FA481' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_most_common_errors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] [_WA_Sys_00000004_628FA481] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_628FA481] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_628FA481] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_most_common_errors_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_most_common_errors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] [dwh_most_common_errors_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_most_common_errors_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_most_common_errors_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_most_common_errors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_no_of_picks' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] [_WA_Sys_00000002_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6FE99F9F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6FE99F9F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_no_of_picks' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] [_WA_Sys_00000003_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6FE99F9F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6FE99F9F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_no_of_picks' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] [_WA_Sys_00000004_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6FE99F9F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6FE99F9F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_no_of_picks_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_no_of_picks' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] [dwh_no_of_picks_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_no_of_picks_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_no_of_picks_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_no_of_picks] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3864608B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_mean_time_to_repairper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] [_WA_Sys_00000002_3864608B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3864608B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3864608B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3864608B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_mean_time_to_repairper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] [_WA_Sys_00000003_3864608B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3864608B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3864608B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3864608B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_mean_time_to_repairper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] [_WA_Sys_00000004_3864608B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3864608B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3864608B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_mean_time_to_repairper_subsystem_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_mean_time_to_repairper_subsystem' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] [dwh_mean_time_to_repairper_subsystem_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_mean_time_to_repairper_subsystem_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_mean_time_to_repairper_subsystem_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_mean_time_to_repairper_subsystem] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_182C9B23' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_subsystem_performance' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] [_WA_Sys_00000002_182C9B23] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_182C9B23' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_subsystem_performance' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] [_WA_Sys_00000003_182C9B23] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_182C9B23' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_subsystem_performance' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] [_WA_Sys_00000004_182C9B23] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_182C9B23' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_subsystem_performance' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] [_WA_Sys_00000005_182C9B23] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_182C9B23] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_subsystem_performance_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_subsystem_performance' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] [dwh_subsystem_performance_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_subsystem_performance_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_subsystem_performance_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_subsystem_performance] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_367C1819' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_power_consumption' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption] [_WA_Sys_00000002_367C1819] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_367C1819] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_367C1819] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_power_consumption_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_power_consumption' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption] [dwh_power_consumption_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_power_consumption_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_power_consumption_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM_PROP' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] [IX_AIDBA_1_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20220830] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20220830] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_45FE52CB' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] [_WA_Sys_00000002_45FE52CB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_45FE52CB] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_45FE52CB] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AUDIT_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] [IX_AUDIT_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_AUDIT_KEY] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AUDIT_KEY] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__AUDIT_TR__43BAA8EC55C4B6FC' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] [PK__AUDIT_TR__43BAA8EC55C4B6FC] WITH FULLSCAN ;
		END
		PRINT '[PK__AUDIT_TR__43BAA8EC55C4B6FC] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__AUDIT_TR__43BAA8EC55C4B6FC] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_54817C4C' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM_PROP' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] [_WA_Sys_00000002_54817C4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_54817C4C] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_54817C4C] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AUDIT_PARAM_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM_PROP' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] [IX_AUDIT_PARAM_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_AUDIT_PARAM_KEY] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AUDIT_PARAM_KEY] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__AUDIT_TR__27392FF3EC0EDEFA' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL_PARAM_PROP' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] [PK__AUDIT_TR__27392FF3EC0EDEFA] WITH FULLSCAN ;
		END
		PRINT '[PK__AUDIT_TR__27392FF3EC0EDEFA] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__AUDIT_TR__27392FF3EC0EDEFA] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL_PARAM_PROP] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_66603565' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_total_downtimein_wareh' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimein_wareh] [_WA_Sys_00000002_66603565] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_66603565] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimein_wareh] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_66603565] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimein_wareh] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_total_downtimein_wareh_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_total_downtimein_wareh' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimein_wareh] [dwh_total_downtimein_wareh_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_total_downtimein_wareh_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimein_wareh] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_total_downtimein_wareh_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_total_downtimein_wareh] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_569ECEE8' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [_WA_Sys_00000005_569ECEE8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_569ECEE8] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_569ECEE8] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ALLOCATION_ZONE_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_ALLOCATION_ZONE_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_ALLOCATION_ZONE_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ALLOCATION_ZONE_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_EQUIPMENT_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_EQUIPMENT_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_EQUIPMENT_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_EQUIPMENT_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_LOCATION_PROFILE_ID' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_LOCATION_PROFILE_ID] WITH FULLSCAN ;
		END
		PRINT '[IX_LOCATION_PROFILE_ID] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_LOCATION_PROFILE_ID] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_OUTFEED_LOCATION_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_OUTFEED_LOCATION_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_OUTFEED_LOCATION_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_OUTFEED_LOCATION_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PARENT_LOCATION_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_PARENT_LOCATION_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_PARENT_LOCATION_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PARENT_LOCATION_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_STAGING_LOCATION' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_STAGING_LOCATION] WITH FULLSCAN ;
		END
		PRINT '[IX_STAGING_LOCATION] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_STAGING_LOCATION] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_STORAGE_ZONE_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_STORAGE_ZONE_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_STORAGE_ZONE_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_STORAGE_ZONE_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_TRANSPORT_NODE_ID' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_TRANSPORT_NODE_ID] WITH FULLSCAN ;
		END
		PRINT '[IX_TRANSPORT_NODE_ID] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_TRANSPORT_NODE_ID] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_WORK_ZONE_KEY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_WORK_ZONE_KEY] WITH FULLSCAN ;
		END
		PRINT '[IX_WORK_ZONE_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_WORK_ZONE_KEY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_WORKSTATION_ID' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_WORKSTATION_ID] WITH FULLSCAN ;
		END
		PRINT '[IX_WORKSTATION_ID] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_WORKSTATION_ID] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_WORKSTATION_LOCATION_DISPLAY' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [IX_WORKSTATION_LOCATION_DISPLAY] WITH FULLSCAN ;
		END
		PRINT '[IX_WORKSTATION_LOCATION_DISPLAY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_WORKSTATION_LOCATION_DISPLAY] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'LOCATION_OCCUPIED_IDX' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [LOCATION_OCCUPIED_IDX] WITH FULLSCAN ;
		END
		PRINT '[LOCATION_OCCUPIED_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LOCATION_OCCUPIED_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'LOCATION_PARENT_IDX' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [LOCATION_PARENT_IDX] WITH FULLSCAN ;
		END
		PRINT '[LOCATION_PARENT_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LOCATION_PARENT_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_569ECEE8' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [_WA_Sys_00000002_569ECEE8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_569ECEE8] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_569ECEE8] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PTWY_IDX' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [PTWY_IDX] WITH FULLSCAN ;
		END
		PRINT '[PTWY_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PTWY_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PTWY_PREF_IDX' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [PTWY_PREF_IDX] WITH FULLSCAN ;
		END
		PRINT '[PTWY_PREF_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PTWY_PREF_IDX] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UNQ_LOCATION_0' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [UNQ_LOCATION_0] WITH FULLSCAN ;
		END
		PRINT '[UNQ_LOCATION_0] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UNQ_LOCATION_0] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__LOCATION__7DE0FB0E53D206ED' AND OBJECT_NAME(S.OBJECT_ID) = 'LOCATION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[LOCATION] [PK__LOCATION__7DE0FB0E53D206ED] WITH FULLSCAN ;
		END
		PRINT '[PK__LOCATION__7DE0FB0E53D206ED] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__LOCATION__7DE0FB0E53D206ED] on [SPRITZERTAIPINGDB].[dbo].[LOCATION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_54CB950F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders_completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] [_WA_Sys_00000002_54CB950F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_54CB950F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_54CB950F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_54CB950F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders_completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] [_WA_Sys_00000003_54CB950F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_54CB950F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_54CB950F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_54CB950F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders_completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] [_WA_Sys_00000004_54CB950F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_54CB950F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_54CB950F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_orders_completed_order_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders_completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] [dwh_orders_completed_order_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_orders_completed_order_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_orders_completed_order_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders_completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6442E2C9' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] [_WA_Sys_00000002_6442E2C9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6442E2C9] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6442E2C9] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6442E2C9' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] [_WA_Sys_00000003_6442E2C9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6442E2C9] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6442E2C9] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6442E2C9' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] [_WA_Sys_00000004_6442E2C9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6442E2C9] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6442E2C9] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_i__point_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] [dwh_i__point_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_i__point_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_i__point_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_52E34C9D' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__new_orders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] [_WA_Sys_00000002_52E34C9D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_52E34C9D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_52E34C9D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_52E34C9D' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__new_orders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] [_WA_Sys_00000003_52E34C9D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_52E34C9D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_52E34C9D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_52E34C9D' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__new_orders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] [_WA_Sys_00000004_52E34C9D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_52E34C9D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_52E34C9D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_orders__new_orders_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__new_orders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] [dwh_orders__new_orders_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_orders__new_orders_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_orders__new_orders_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__new_orders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_38996AB5' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_trans_summary' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] [_WA_Sys_00000002_38996AB5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_38996AB5] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_38996AB5] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_38996AB5' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_trans_summary' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] [_WA_Sys_00000003_38996AB5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_38996AB5] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_38996AB5] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_38996AB5' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_trans_summary' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] [_WA_Sys_00000004_38996AB5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_38996AB5] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_38996AB5] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_inventory_trans_summary_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_trans_summary' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] [dwh_inventory_trans_summary_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_inventory_trans_summary_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_inventory_trans_summary_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_trans_summary] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_51300E55' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_average_individual_cran' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] [_WA_Sys_00000002_51300E55] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_51300E55] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_51300E55] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_51300E55' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_average_individual_cran' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] [_WA_Sys_00000003_51300E55] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_51300E55] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_51300E55] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_51300E55' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_average_individual_cran' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] [_WA_Sys_00000004_51300E55] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_51300E55] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_51300E55] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_average_individual_cran_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_average_individual_cran' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] [dwh_average_individual_cran_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_average_individual_cran_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_average_individual_cran_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_individual_cran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5165187F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_productivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] [_WA_Sys_00000002_5165187F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5165187F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5165187F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5165187F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_productivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] [_WA_Sys_00000003_5165187F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5165187F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5165187F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5165187F' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_productivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] [_WA_Sys_00000004_5165187F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5165187F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5165187F] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_productivity_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_productivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] [dwh_productivity_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_productivity_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_productivity_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_productivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_ordersby_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] [_WA_Sys_00000002_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_ordersby_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] [_WA_Sys_00000003_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_ordersby_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] [_WA_Sys_00000004_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_ordersby_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] [_WA_Sys_00000005_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2EA5EC27] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_ordersby_status_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_ordersby_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] [dwh_ordersby_status_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_ordersby_status_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_ordersby_status_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_ordersby_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7B264821' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point__success_' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] [_WA_Sys_00000002_7B264821] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7B264821] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7B264821] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7B264821' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point__success_' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] [_WA_Sys_00000003_7B264821] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7B264821] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7B264821] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7B264821' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point__success_' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] [_WA_Sys_00000004_7B264821] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7B264821] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7B264821] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_i__point__success__pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_i__point__success_' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] [dwh_i__point__success__pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_i__point__success__pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_i__point__success__pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_i__point__success_] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000002_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000003_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000004_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000005_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000006_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000007_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000008_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_00000009_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_0000000A_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_6482D9EB' AND OBJECT_NAME(S.OBJECT_ID) = 'POWER_CONSUMPTION' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] [_WA_Sys_0000000B_6482D9EB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_6482D9EB] on [SPRITZERTAIPINGDB].[dbo].[POWER_CONSUMPTION] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1F63A897' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_prod_statistics_outfeed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] [_WA_Sys_00000002_1F63A897] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1F63A897] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1F63A897] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1F63A897' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_prod_statistics_outfeed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] [_WA_Sys_00000003_1F63A897] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1F63A897] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1F63A897] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1F63A897' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_prod_statistics_outfeed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] [_WA_Sys_00000004_1F63A897] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1F63A897] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1F63A897] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_prod_statistics_outfeed_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_prod_statistics_outfeed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] [dwh_prod_statistics_outfeed_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_prod_statistics_outfeed_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_prod_statistics_outfeed_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_prod_statistics_outfeed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_25869641' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_quantity_adjustedby_pro' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] [_WA_Sys_00000002_25869641] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_25869641] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_25869641] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_25869641' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_quantity_adjustedby_pro' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] [_WA_Sys_00000003_25869641] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_25869641] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_25869641] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_25869641' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_quantity_adjustedby_pro' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] [_WA_Sys_00000004_25869641] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_25869641] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_25869641] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_quantity_adjustedby_pro_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_quantity_adjustedby_pro' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] [dwh_quantity_adjustedby_pro_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_quantity_adjustedby_pro_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_quantity_adjustedby_pro_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_quantity_adjustedby_pro] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'AUDIT_TRAIL_CLASS_CDATE_IDX' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] [AUDIT_TRAIL_CLASS_CDATE_IDX] WITH FULLSCAN ;
		END
		PRINT '[AUDIT_TRAIL_CLASS_CDATE_IDX] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AUDIT_TRAIL_CLASS_CDATE_IDX] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__AUDIT_TR__2BB3A94E508F8A7B' AND OBJECT_NAME(S.OBJECT_ID) = 'AUDIT_TRAIL' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] [PK__AUDIT_TR__2BB3A94E508F8A7B] WITH FULLSCAN ;
		END
		PRINT '[PK__AUDIT_TR__2BB3A94E508F8A7B] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__AUDIT_TR__2BB3A94E508F8A7B] on [SPRITZERTAIPINGDB].[dbo].[AUDIT_TRAIL] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3A81B327' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inv_trans_summaryby_use' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] [_WA_Sys_00000002_3A81B327] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3A81B327] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3A81B327] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3A81B327' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inv_trans_summaryby_use' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] [_WA_Sys_00000003_3A81B327] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3A81B327] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3A81B327] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3A81B327' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inv_trans_summaryby_use' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] [_WA_Sys_00000004_3A81B327] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3A81B327] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3A81B327] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_inv_trans_summaryby_use_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inv_trans_summaryby_use' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] [dwh_inv_trans_summaryby_use_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_inv_trans_summaryby_use_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_inv_trans_summaryby_use_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inv_trans_summaryby_use] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1D7B6025' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_production_statistics__' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] [_WA_Sys_00000002_1D7B6025] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1D7B6025] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1D7B6025] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1D7B6025' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_production_statistics__' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] [_WA_Sys_00000003_1D7B6025] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1D7B6025] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1D7B6025] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1D7B6025' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_production_statistics__' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] [_WA_Sys_00000004_1D7B6025] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1D7B6025] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1D7B6025] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_production_statistics___pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_production_statistics__' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] [dwh_production_statistics___pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_production_statistics___pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_production_statistics___pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_production_statistics__] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_64ECEE3F' AND OBJECT_NAME(S.OBJECT_ID) = 'PREFERENCE_VALUE' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] [_WA_Sys_00000002_64ECEE3F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_64ECEE3F] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_64ECEE3F] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PREFERENCE_ID' AND OBJECT_NAME(S.OBJECT_ID) = 'PREFERENCE_VALUE' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] [IX_PREFERENCE_ID] WITH FULLSCAN ;
		END
		PRINT '[IX_PREFERENCE_ID] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PREFERENCE_ID] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_USER_NAME' AND OBJECT_NAME(S.OBJECT_ID) = 'PREFERENCE_VALUE' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] [IX_USER_NAME] WITH FULLSCAN ;
		END
		PRINT '[IX_USER_NAME] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_USER_NAME] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__PREFEREN__448D00A22FA0BDA9' AND OBJECT_NAME(S.OBJECT_ID) = 'PREFERENCE_VALUE' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] [PK__PREFEREN__448D00A22FA0BDA9] WITH FULLSCAN ;
		END
		PRINT '[PK__PREFEREN__448D00A22FA0BDA9] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__PREFEREN__448D00A22FA0BDA9] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PREF_VAL_UNAME_PREFID_IDX' AND OBJECT_NAME(S.OBJECT_ID) = 'PREFERENCE_VALUE' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] [PREF_VAL_UNAME_PREFID_IDX] WITH FULLSCAN ;
		END
		PRINT '[PREF_VAL_UNAME_PREFID_IDX] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PREF_VAL_UNAME_PREFID_IDX] on [SPRITZERTAIPINGDB].[dbo].[PREFERENCE_VALUE] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3E52440B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] [_WA_Sys_00000002_3E52440B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3E52440B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3E52440B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3E52440B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] [_WA_Sys_00000003_3E52440B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3E52440B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3E52440B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3E52440B' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] [_WA_Sys_00000004_3E52440B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3E52440B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3E52440B] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_orders__completed_order_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_orders__completed_order' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] [dwh_orders__completed_order_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_orders__completed_order_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_orders__completed_order_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_orders__completed_order] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_4D5F7D71' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_power_consumption_all_c' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption_all_c] [_WA_Sys_00000002_4D5F7D71] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_4D5F7D71] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption_all_c] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_4D5F7D71] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption_all_c] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_power_consumption_all_c_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_power_consumption_all_c' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption_all_c] [dwh_power_consumption_all_c_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_power_consumption_all_c_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption_all_c] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_power_consumption_all_c_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_power_consumption_all_c] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_246854D6' AND OBJECT_NAME(S.OBJECT_ID) = 'SECURE_PROPERTY' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] [_WA_Sys_00000003_246854D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_246854D6] on [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_246854D6] on [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_246854D6' AND OBJECT_NAME(S.OBJECT_ID) = 'SECURE_PROPERTY' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] [_WA_Sys_0000000B_246854D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_246854D6] on [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_246854D6] on [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_36B12243' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] [_WA_Sys_00000003_36B12243] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_36B12243] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_36B12243] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_36B12243' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] [_WA_Sys_00000004_36B12243] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_36B12243] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_36B12243] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_58D1301D' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_average_crane_power_con' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_average_crane_power_con] [_WA_Sys_00000002_58D1301D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_58D1301D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_crane_power_con] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_58D1301D] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_crane_power_con] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_average_crane_power_con_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_average_crane_power_con' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_average_crane_power_con] [dwh_average_crane_power_con_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_average_crane_power_con_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_crane_power_con] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_average_crane_power_con_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_average_crane_power_con] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDB].sys.stats S CROSS APPLY [SPRITZERTAIPINGDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_246854D6' AND OBJECT_NAME(S.OBJECT_ID) = 'SECURE_PROPERTY' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] [_WA_Sys_00000002_246854D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_246854D6] on [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_246854D6] on [SPRITZERTAIPINGDB].[dbo].[SECURE_PROPERTY] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_36B12243' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] [_WA_Sys_00000002_36B12243] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_36B12243] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_36B12243] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [SPRITZERTAIPINGDWH].sys.stats S CROSS APPLY [SPRITZERTAIPINGDWH].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dwh_inventory_status_pk' AND OBJECT_NAME(S.OBJECT_ID) = 'dwh_inventory_status' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] [dwh_inventory_status_pk] WITH FULLSCAN ;
		END
		PRINT '[dwh_inventory_status_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dwh_inventory_status_pk] on [SPRITZERTAIPINGDWH].[dbo].[dwh_inventory_status] cannot be updated.';			
	END CATCH;
END
	