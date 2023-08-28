
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000008_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_0000000A_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Cycle_RunID_RunCNum' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [IX_Cycle_RunID_RunCNum] WITH FULLSCAN ;
		END
		PRINT '[IX_Cycle_RunID_RunCNum] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Cycle_RunID_RunCNum] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000005_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000002_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000007_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000003_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000006_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MachineCycle' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [PK_MachineCycle] WITH FULLSCAN ;
		END
		PRINT '[PK_MachineCycle] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MachineCycle] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1BC821DD' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [_WA_Sys_00000004_1BC821DD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1BC821DD] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1BC821DD] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1BFD2C07' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Event] [_WA_Sys_00000002_1BFD2C07] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1BFD2C07] on [FusionOperational].[dbo].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1BFD2C07] on [FusionOperational].[dbo].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1BFD2C07' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Event] [_WA_Sys_00000003_1BFD2C07] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1BFD2C07] on [FusionOperational].[dbo].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1BFD2C07] on [FusionOperational].[dbo].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1BFD2C07' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Event] [_WA_Sys_00000004_1BFD2C07] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1BFD2C07] on [FusionOperational].[dbo].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1BFD2C07] on [FusionOperational].[dbo].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1BFD2C07' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Event] [_WA_Sys_00000005_1BFD2C07] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1BFD2C07] on [FusionOperational].[dbo].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1BFD2C07] on [FusionOperational].[dbo].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1BFD2C07' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Event] [_WA_Sys_00000007_1BFD2C07] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1BFD2C07] on [FusionOperational].[dbo].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1BFD2C07] on [FusionOperational].[dbo].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Event' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Event] [PK_Event] WITH FULLSCAN ;
		END
		PRINT '[PK_Event] on [FusionOperational].[dbo].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Event] on [FusionOperational].[dbo].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_0D0FEE32' AND OBJECT_NAME(S.OBJECT_ID) = 'EnergySensorData' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[EnergySensorData] [_WA_Sys_00000005_0D0FEE32] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_0D0FEE32] on [FusionOperational].[dbo].[EnergySensorData] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_0D0FEE32] on [FusionOperational].[dbo].[EnergySensorData] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_0D0FEE32' AND OBJECT_NAME(S.OBJECT_ID) = 'EnergySensorData' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[EnergySensorData] [_WA_Sys_00000004_0D0FEE32] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_0D0FEE32] on [FusionOperational].[dbo].[EnergySensorData] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_0D0FEE32] on [FusionOperational].[dbo].[EnergySensorData] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_EnergySensorData' AND OBJECT_NAME(S.OBJECT_ID) = 'EnergySensorData' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[EnergySensorData] [PK_EnergySensorData] WITH FULLSCAN ;
		END
		PRINT '[PK_EnergySensorData] on [FusionOperational].[dbo].[EnergySensorData] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_EnergySensorData] on [FusionOperational].[dbo].[EnergySensorData] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_0D0FEE32' AND OBJECT_NAME(S.OBJECT_ID) = 'EnergySensorData' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[EnergySensorData] [_WA_Sys_00000003_0D0FEE32] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_0D0FEE32] on [FusionOperational].[dbo].[EnergySensorData] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_0D0FEE32] on [FusionOperational].[dbo].[EnergySensorData] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_8_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'EnergySensorData' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[EnergySensorData] [IX_AIDBA_8_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_8_20220820] on [FusionOperational].[dbo].[EnergySensorData] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_8_20220820] on [FusionOperational].[dbo].[EnergySensorData] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_EnergySensorData_Timestamp_EnergySensorID' AND OBJECT_NAME(S.OBJECT_ID) = 'EnergySensorData' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[EnergySensorData] [IX_EnergySensorData_Timestamp_EnergySensorID] WITH FULLSCAN ;
		END
		PRINT '[IX_EnergySensorData_Timestamp_EnergySensorID] on [FusionOperational].[dbo].[EnergySensorData] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_EnergySensorData_Timestamp_EnergySensorID] on [FusionOperational].[dbo].[EnergySensorData] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_178D7CA5' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineMaterialConsumption' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineMaterialConsumption] [_WA_Sys_00000004_178D7CA5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_178D7CA5] on [FusionOperational].[dbo].[MachineMaterialConsumption] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_178D7CA5] on [FusionOperational].[dbo].[MachineMaterialConsumption] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_MachineMaterialConsumption_Timestamp_MachineID' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineMaterialConsumption' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineMaterialConsumption] [IX_MachineMaterialConsumption_Timestamp_MachineID] WITH FULLSCAN ;
		END
		PRINT '[IX_MachineMaterialConsumption_Timestamp_MachineID] on [FusionOperational].[dbo].[MachineMaterialConsumption] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_MachineMaterialConsumption_Timestamp_MachineID] on [FusionOperational].[dbo].[MachineMaterialConsumption] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_178D7CA5' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineMaterialConsumption' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineMaterialConsumption] [_WA_Sys_00000003_178D7CA5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_178D7CA5] on [FusionOperational].[dbo].[MachineMaterialConsumption] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_178D7CA5] on [FusionOperational].[dbo].[MachineMaterialConsumption] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SQCValue' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [PK_SQCValue] WITH FULLSCAN ;
		END
		PRINT '[PK_SQCValue] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SQCValue] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7FEAFD3E' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [_WA_Sys_00000003_7FEAFD3E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7FEAFD3E' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [_WA_Sys_00000005_7FEAFD3E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7FEAFD3E' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [_WA_Sys_00000006_7FEAFD3E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_SQCValue_DataSetVariableCycleNumber' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [IX_SQCValue_DataSetVariableCycleNumber] WITH FULLSCAN ;
		END
		PRINT '[IX_SQCValue_DataSetVariableCycleNumber] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_SQCValue_DataSetVariableCycleNumber] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_SQCValue' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [IX_Unique_SQCValue] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_SQCValue] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_SQCValue] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7FEAFD3E' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCValue] [_WA_Sys_00000004_7FEAFD3E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7FEAFD3E] on [FusionOperational].[dbo].[SQCValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MachineMaterialConsumption' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineMaterialConsumption' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineMaterialConsumption] [PK_MachineMaterialConsumption] WITH FULLSCAN ;
		END
		PRINT '[PK_MachineMaterialConsumption] on [FusionOperational].[dbo].[MachineMaterialConsumption] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MachineMaterialConsumption] on [FusionOperational].[dbo].[MachineMaterialConsumption] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ETLAuditDimension' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditDimension' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditDimension] [PK_ETLAuditDimension] WITH FULLSCAN ;
		END
		PRINT '[PK_ETLAuditDimension] on [FusionDW].[dbo].[ETLAuditDimension] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ETLAuditDimension] on [FusionDW].[dbo].[ETLAuditDimension] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_4D94879B' AND OBJECT_NAME(S.OBJECT_ID) = 'FactStatus' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactStatus] [_WA_Sys_00000005_4D94879B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_4D94879B] on [FusionDW].[dbo].[FactStatus] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_4D94879B] on [FusionDW].[dbo].[FactStatus] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_6_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'FactStatus' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactStatus] [IX_AIDBA_6_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_6_20220820] on [FusionDW].[dbo].[FactStatus] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_6_20220820] on [FusionDW].[dbo].[FactStatus] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactStatus' AND OBJECT_NAME(S.OBJECT_ID) = 'FactStatus' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactStatus] [PK_FactStatus] WITH FULLSCAN ;
		END
		PRINT '[PK_FactStatus] on [FusionDW].[dbo].[FactStatus] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactStatus] on [FusionDW].[dbo].[FactStatus] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000002_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000003_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000004_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000005_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000006_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000007_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000008_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_00000009_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_0000000A_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_0000000B_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_0000000C_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_571DF1D5' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [_WA_Sys_0000000D_571DF1D5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_571DF1D5] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_571DF1D5] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_7_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [IX_AIDBA_7_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_7_20220820] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_7_20220820] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactProduction' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProduction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProduction] [PK_FactProduction] WITH FULLSCAN ;
		END
		PRINT '[PK_FactProduction] on [FusionDW].[dbo].[FactProduction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactProduction] on [FusionDW].[dbo].[FactProduction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5649C92D' AND OBJECT_NAME(S.OBJECT_ID) = 'Sequence' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Sequence] [_WA_Sys_00000002_5649C92D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5649C92D] on [FusionOperational].[dbo].[Sequence] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5649C92D] on [FusionOperational].[dbo].[Sequence] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5649C92D' AND OBJECT_NAME(S.OBJECT_ID) = 'Sequence' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Sequence] [_WA_Sys_00000003_5649C92D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5649C92D] on [FusionOperational].[dbo].[Sequence] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5649C92D] on [FusionOperational].[dbo].[Sequence] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Sequence' AND OBJECT_NAME(S.OBJECT_ID) = 'Sequence' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Sequence] [PK_Sequence] WITH FULLSCAN ;
		END
		PRINT '[PK_Sequence] on [FusionOperational].[dbo].[Sequence] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Sequence] on [FusionOperational].[dbo].[Sequence] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000003_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000008_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000009_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_5_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [IX_AIDBA_5_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_5_20220820] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_5_20220820] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactDowntime' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [PK_FactDowntime] WITH FULLSCAN ;
		END
		PRINT '[PK_FactDowntime] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactDowntime] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000002_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_0000000A_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_0000000B_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000006_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000007_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000004_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_00000005_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_398D8EEE' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntime] [_WA_Sys_0000000C_398D8EEE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_398D8EEE] on [FusionDW].[dbo].[FactDowntime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_398D8EEE] on [FusionDW].[dbo].[FactDowntime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000008_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000002_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000003_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000004_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000005_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3B75D760' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [_WA_Sys_00000004_3B75D760] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7AF13DF7' AND OBJECT_NAME(S.OBJECT_ID) = 'SetPoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SetPoint] [_WA_Sys_00000003_7AF13DF7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7AF13DF7] on [FusionOperational].[dbo].[SetPoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7AF13DF7] on [FusionOperational].[dbo].[SetPoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7AF13DF7' AND OBJECT_NAME(S.OBJECT_ID) = 'SetPoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SetPoint] [_WA_Sys_00000009_7AF13DF7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7AF13DF7] on [FusionOperational].[dbo].[SetPoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7AF13DF7] on [FusionOperational].[dbo].[SetPoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_SetPoint_RunID_RunCycleNumber' AND OBJECT_NAME(S.OBJECT_ID) = 'SetPoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SetPoint] [IX_SetPoint_RunID_RunCycleNumber] WITH FULLSCAN ;
		END
		PRINT '[IX_SetPoint_RunID_RunCycleNumber] on [FusionOperational].[dbo].[SetPoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_SetPoint_RunID_RunCycleNumber] on [FusionOperational].[dbo].[SetPoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SetPoint' AND OBJECT_NAME(S.OBJECT_ID) = 'SetPoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SetPoint] [PK_SetPoint] WITH FULLSCAN ;
		END
		PRINT '[PK_SetPoint] on [FusionOperational].[dbo].[SetPoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SetPoint] on [FusionOperational].[dbo].[SetPoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_AutomaticPrintEvent' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [PK_AutomaticPrintEvent] WITH FULLSCAN ;
		END
		PRINT '[PK_AutomaticPrintEvent] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_AutomaticPrintEvent] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3B75D760' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [_WA_Sys_00000005_3B75D760] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_4_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [IX_AIDBA_4_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_4_20220820] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_4_20220820] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MachineOperatingState' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [PK_MachineOperatingState] WITH FULLSCAN ;
		END
		PRINT '[PK_MachineOperatingState] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MachineOperatingState] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3B75D760' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [_WA_Sys_00000002_3B75D760] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3B75D760' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [_WA_Sys_00000003_3B75D760] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3B75D760] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6754599E' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditPackageExec' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditPackageExec] [_WA_Sys_00000002_6754599E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6754599E] on [FusionDW].[dbo].[ETLAuditPackageExec] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6754599E] on [FusionDW].[dbo].[ETLAuditPackageExec] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6754599E' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditPackageExec' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditPackageExec] [_WA_Sys_00000003_6754599E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6754599E] on [FusionDW].[dbo].[ETLAuditPackageExec] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6754599E] on [FusionDW].[dbo].[ETLAuditPackageExec] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ETLAuditPackageExec' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditPackageExec' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditPackageExec] [PK_ETLAuditPackageExec] WITH FULLSCAN ;
		END
		PRINT '[PK_ETLAuditPackageExec] on [FusionDW].[dbo].[ETLAuditPackageExec] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ETLAuditPackageExec] on [FusionDW].[dbo].[ETLAuditPackageExec] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7F60ED59' AND OBJECT_NAME(S.OBJECT_ID) = 'DimTimeOfDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimTimeOfDay] [_WA_Sys_00000002_7F60ED59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7F60ED59' AND OBJECT_NAME(S.OBJECT_ID) = 'DimTimeOfDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimTimeOfDay] [_WA_Sys_00000003_7F60ED59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7F60ED59' AND OBJECT_NAME(S.OBJECT_ID) = 'DimTimeOfDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimTimeOfDay] [_WA_Sys_00000004_7F60ED59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7F60ED59' AND OBJECT_NAME(S.OBJECT_ID) = 'DimTimeOfDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimTimeOfDay] [_WA_Sys_00000006_7F60ED59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7F60ED59' AND OBJECT_NAME(S.OBJECT_ID) = 'DimTimeOfDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimTimeOfDay] [_WA_Sys_00000007_7F60ED59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7F60ED59] on [FusionDW].[dbo].[DimTimeOfDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DimTimeOfDay' AND OBJECT_NAME(S.OBJECT_ID) = 'DimTimeOfDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimTimeOfDay] [PK_DimTimeOfDay] WITH FULLSCAN ;
		END
		PRINT '[PK_DimTimeOfDay] on [FusionDW].[dbo].[DimTimeOfDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DimTimeOfDay] on [FusionDW].[dbo].[DimTimeOfDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1940BAED' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000002_1940BAED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1940BAED' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000004_1940BAED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1940BAED' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000005_1940BAED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_1940BAED' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000006_1940BAED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1940BAED' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000007_1940BAED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1940BAED] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_OperatorTraceability' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [PK_OperatorTraceability] WITH FULLSCAN ;
		END
		PRINT '[PK_OperatorTraceability] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_OperatorTraceability] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ETLAuditTableProcessing' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditTableProcessing' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditTableProcessing] [PK_ETLAuditTableProcessing] WITH FULLSCAN ;
		END
		PRINT '[PK_ETLAuditTableProcessing] on [FusionDW].[dbo].[ETLAuditTableProcessing] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ETLAuditTableProcessing] on [FusionDW].[dbo].[ETLAuditTableProcessing] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_47DBAE45' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntimeAssignedReason] [_WA_Sys_00000002_47DBAE45] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_47DBAE45] on [FusionDW].[dbo].[FactDowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_47DBAE45] on [FusionDW].[dbo].[FactDowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_47DBAE45' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntimeAssignedReason] [_WA_Sys_00000003_47DBAE45] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_47DBAE45] on [FusionDW].[dbo].[FactDowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_47DBAE45] on [FusionDW].[dbo].[FactDowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_339FAB6E' AND OBJECT_NAME(S.OBJECT_ID) = 'SpecLimitHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SpecLimitHistory] [_WA_Sys_00000003_339FAB6E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_339FAB6E' AND OBJECT_NAME(S.OBJECT_ID) = 'SpecLimitHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SpecLimitHistory] [_WA_Sys_00000004_339FAB6E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_339FAB6E' AND OBJECT_NAME(S.OBJECT_ID) = 'SpecLimitHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SpecLimitHistory] [_WA_Sys_00000005_339FAB6E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_339FAB6E' AND OBJECT_NAME(S.OBJECT_ID) = 'SpecLimitHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SpecLimitHistory] [_WA_Sys_00000006_339FAB6E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_339FAB6E] on [FusionOperational].[dbo].[SpecLimitHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_SpecLimitHistory_RunMasterVarCycleNumber' AND OBJECT_NAME(S.OBJECT_ID) = 'SpecLimitHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SpecLimitHistory] [IX_Unique_SpecLimitHistory_RunMasterVarCycleNumber] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_SpecLimitHistory_RunMasterVarCycleNumber] on [FusionOperational].[dbo].[SpecLimitHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_SpecLimitHistory_RunMasterVarCycleNumber] on [FusionOperational].[dbo].[SpecLimitHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SpecLimitHistoryID' AND OBJECT_NAME(S.OBJECT_ID) = 'SpecLimitHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SpecLimitHistory] [PK_SpecLimitHistoryID] WITH FULLSCAN ;
		END
		PRINT '[PK_SpecLimitHistoryID] on [FusionOperational].[dbo].[SpecLimitHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SpecLimitHistoryID] on [FusionOperational].[dbo].[SpecLimitHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLWatermark' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLWatermark] [_WA_Sys_00000002_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLWatermark' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLWatermark] [_WA_Sys_00000003_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLWatermark' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLWatermark] [_WA_Sys_00000004_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLWatermark' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLWatermark] [_WA_Sys_0000000A_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ETLWatermark' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLWatermark' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLWatermark] [PK_ETLWatermark] WITH FULLSCAN ;
		END
		PRINT '[PK_ETLWatermark] on [FusionDW].[dbo].[ETLWatermark] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ETLWatermark] on [FusionDW].[dbo].[ETLWatermark] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactDowntimeAssignedReason' AND OBJECT_NAME(S.OBJECT_ID) = 'FactDowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactDowntimeAssignedReason] [PK_FactDowntimeAssignedReason] WITH FULLSCAN ;
		END
		PRINT '[PK_FactDowntimeAssignedReason] on [FusionDW].[dbo].[FactDowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactDowntimeAssignedReason] on [FusionDW].[dbo].[FactDowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_0000000A_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [_WA_Sys_00000003_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2E70E1FD' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [_WA_Sys_00000003_2E70E1FD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_2E70E1FD' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [_WA_Sys_00000004_2E70E1FD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2E70E1FD' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [_WA_Sys_00000005_2E70E1FD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_2E70E1FD' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [_WA_Sys_00000006_2E70E1FD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_2E70E1FD] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_BatchTracking_MaterialID_Batchcode' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [IX_BatchTracking_MaterialID_Batchcode] WITH FULLSCAN ;
		END
		PRINT '[IX_BatchTracking_MaterialID_Batchcode] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_BatchTracking_MaterialID_Batchcode] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_BatchTracking_RunID_RunCycleNumber' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [IX_BatchTracking_RunID_RunCycleNumber] WITH FULLSCAN ;
		END
		PRINT '[IX_BatchTracking_RunID_RunCycleNumber] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_BatchTracking_RunID_RunCycleNumber] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_BatchTracking_RunCycleNumberMaterial' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [IX_Unique_BatchTracking_RunCycleNumberMaterial] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_BatchTracking_RunCycleNumberMaterial] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_BatchTracking_RunCycleNumberMaterial] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BatchTracking' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [PK_BatchTracking] WITH FULLSCAN ;
		END
		PRINT '[PK_BatchTracking] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BatchTracking] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_9_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [IX_AIDBA_9_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_9_20220820] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_9_20220820] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Downtime_Mc_J_PS_ST_ET' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [IX_Downtime_Mc_J_PS_ST_ET] WITH FULLSCAN ;
		END
		PRINT '[IX_Downtime_Mc_J_PS_ST_ET] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Downtime_Mc_J_PS_ST_ET] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000005_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [_WA_Sys_00000005_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [IX_AIDBA_3_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220820] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220820] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Downtime' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [PK_Downtime] WITH FULLSCAN ;
		END
		PRINT '[PK_Downtime] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Downtime] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Downtime_Mc_J_PS' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [IX_Downtime_Mc_J_PS] WITH FULLSCAN ;
		END
		PRINT '[IX_Downtime_Mc_J_PS] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Downtime_Mc_J_PS] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000006_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000007_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000008_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000002_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000003_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [_WA_Sys_00000004_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_276EDEB3] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_276EDEB3] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [_WA_Sys_00000006_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [_WA_Sys_00000004_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_300424B4] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_DowntimeAssignedReason_DowntimID' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [IX_DowntimeAssignedReason_DowntimID] WITH FULLSCAN ;
		END
		PRINT '[IX_DowntimeAssignedReason_DowntimID] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_DowntimeAssignedReason_DowntimID] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DowntimeAssignedReason' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [PK_DowntimeAssignedReason] WITH FULLSCAN ;
		END
		PRINT '[PK_DowntimeAssignedReason] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DowntimeAssignedReason] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_07020F21' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [_WA_Sys_00000002_07020F21] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_07020F21] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_07020F21] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_07020F21' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [_WA_Sys_00000004_07020F21] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_07020F21] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_07020F21] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_07020F21' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [_WA_Sys_00000005_07020F21] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_07020F21] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_07020F21] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_07020F21' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [_WA_Sys_00000008_07020F21] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_07020F21] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_07020F21] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AppLog_M_J_T' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [IX_AppLog_M_J_T] WITH FULLSCAN ;
		END
		PRINT '[IX_AppLog_M_J_T] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AppLog_M_J_T] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_07020F21' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [_WA_Sys_00000003_07020F21] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_07020F21] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_07020F21] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_07020F21' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [_WA_Sys_00000006_07020F21] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_07020F21] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_07020F21] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ApplicationLog' AND OBJECT_NAME(S.OBJECT_ID) = 'ApplicationLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ApplicationLog] [PK_ApplicationLog] WITH FULLSCAN ;
		END
		PRINT '[PK_ApplicationLog] on [FusionOperational].[dbo].[ApplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ApplicationLog] on [FusionOperational].[dbo].[ApplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__ETLAudit__86C65F815AB9788F' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditTableProcessingDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditTableProcessingDetails] [PK__ETLAudit__86C65F815AB9788F] WITH FULLSCAN ;
		END
		PRINT '[PK__ETLAudit__86C65F815AB9788F] on [FusionDW].[dbo].[ETLAuditTableProcessingDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__ETLAudit__86C65F815AB9788F] on [FusionDW].[dbo].[ETLAuditTableProcessingDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_66B53B20' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [_WA_Sys_00000002_66B53B20] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_66B53B20' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [_WA_Sys_00000003_66B53B20] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_66B53B20' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [_WA_Sys_00000004_66B53B20] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_66B53B20' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [_WA_Sys_00000005_66B53B20] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_66B53B20' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [_WA_Sys_00000006_66B53B20] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_66B53B20' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [_WA_Sys_00000007_66B53B20] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_66B53B20] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MaintenanceIntervalTrigger' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceIntervalTrigger' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceIntervalTrigger] [PK_MaintenanceIntervalTrigger] WITH FULLSCAN ;
		END
		PRINT '[PK_MaintenanceIntervalTrigger] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MaintenanceIntervalTrigger] on [FusionOperational].[dbo].[MaintenanceIntervalTrigger] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_63D8CE75' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceProgram' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceProgram] [_WA_Sys_00000002_63D8CE75] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_63D8CE75] on [FusionOperational].[dbo].[MaintenanceProgram] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_63D8CE75] on [FusionOperational].[dbo].[MaintenanceProgram] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_63D8CE75' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceProgram' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceProgram] [_WA_Sys_00000003_63D8CE75] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_63D8CE75] on [FusionOperational].[dbo].[MaintenanceProgram] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_63D8CE75] on [FusionOperational].[dbo].[MaintenanceProgram] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_63D8CE75' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceProgram' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceProgram] [_WA_Sys_00000004_63D8CE75] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_63D8CE75] on [FusionOperational].[dbo].[MaintenanceProgram] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_63D8CE75] on [FusionOperational].[dbo].[MaintenanceProgram] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MaintenanceProgram' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceProgram' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceProgram] [PK_MaintenanceProgram] WITH FULLSCAN ;
		END
		PRINT '[PK_MaintenanceProgram] on [FusionOperational].[dbo].[MaintenanceProgram] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MaintenanceProgram] on [FusionOperational].[dbo].[MaintenanceProgram] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7B264821' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCDataset' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCDataset] [_WA_Sys_00000005_7B264821] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7B264821] on [FusionOperational].[dbo].[SQCDataset] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7B264821] on [FusionOperational].[dbo].[SQCDataset] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_SQCDataset_RunPlan' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCDataset' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCDataset] [IX_SQCDataset_RunPlan] WITH FULLSCAN ;
		END
		PRINT '[IX_SQCDataset_RunPlan] on [FusionOperational].[dbo].[SQCDataset] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_SQCDataset_RunPlan] on [FusionOperational].[dbo].[SQCDataset] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7B264821' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCDataset' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCDataset] [_WA_Sys_00000003_7B264821] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7B264821] on [FusionOperational].[dbo].[SQCDataset] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7B264821] on [FusionOperational].[dbo].[SQCDataset] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SQCDataset' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCDataset' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCDataset] [PK_SQCDataset] WITH FULLSCAN ;
		END
		PRINT '[PK_SQCDataset] on [FusionOperational].[dbo].[SQCDataset] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SQCDataset] on [FusionOperational].[dbo].[SQCDataset] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_SQCDataset' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCDataset' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCDataset] [IX_Unique_SQCDataset] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_SQCDataset] on [FusionOperational].[dbo].[SQCDataset] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_SQCDataset] on [FusionOperational].[dbo].[SQCDataset] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_14270015' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProductionGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProductionGlobal] [_WA_Sys_0000000F_14270015] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_14270015] on [FusionDW].[dbo].[FactProductionGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_14270015] on [FusionDW].[dbo].[FactProductionGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactProductionGlobal' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProductionGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProductionGlobal] [PK_FactProductionGlobal] WITH FULLSCAN ;
		END
		PRINT '[PK_FactProductionGlobal] on [FusionDW].[dbo].[FactProductionGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactProductionGlobal] on [FusionDW].[dbo].[FactProductionGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000002_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000003_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000005_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000007_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000009_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_0000000A_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_0000000B_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_0000000D_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000016_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_00000018_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_0000001A_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_7D78A4E7' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [_WA_Sys_0000001B_7D78A4E7] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_7D78A4E7] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_7D78A4E7] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Time' AND OBJECT_NAME(S.OBJECT_ID) = 'DimDate' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimDate] [PK_Time] WITH FULLSCAN ;
		END
		PRINT '[PK_Time] on [FusionDW].[dbo].[DimDate] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Time] on [FusionDW].[dbo].[DimDate] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DowntimeAssignedReasonLog' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReasonLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReasonLog] [PK_DowntimeAssignedReasonLog] WITH FULLSCAN ;
		END
		PRINT '[PK_DowntimeAssignedReasonLog] on [FusionOperational].[dbo].[DowntimeAssignedReasonLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DowntimeAssignedReasonLog] on [FusionOperational].[dbo].[DowntimeAssignedReasonLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000002_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000003_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000004_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000005_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000006_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000007_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_46B27FE2' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000008_46B27FE2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_46B27FE2] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DimShiftGlobal' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [PK_DimShiftGlobal] WITH FULLSCAN ;
		END
		PRINT '[PK_DimShiftGlobal] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DimShiftGlobal] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_0AD2A005' AND OBJECT_NAME(S.OBJECT_ID) = 'ShiftCalendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ShiftCalendar] [_WA_Sys_00000002_0AD2A005] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_0AD2A005] on [FusionOperational].[dbo].[ShiftCalendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_0AD2A005] on [FusionOperational].[dbo].[ShiftCalendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_0AD2A005' AND OBJECT_NAME(S.OBJECT_ID) = 'ShiftCalendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ShiftCalendar] [_WA_Sys_00000004_0AD2A005] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_0AD2A005] on [FusionOperational].[dbo].[ShiftCalendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_0AD2A005] on [FusionOperational].[dbo].[ShiftCalendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_0AD2A005' AND OBJECT_NAME(S.OBJECT_ID) = 'ShiftCalendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ShiftCalendar] [_WA_Sys_00000005_0AD2A005] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_0AD2A005] on [FusionOperational].[dbo].[ShiftCalendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_0AD2A005] on [FusionOperational].[dbo].[ShiftCalendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Shift_Time' AND OBJECT_NAME(S.OBJECT_ID) = 'ShiftCalendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ShiftCalendar] [IX_Shift_Time] WITH FULLSCAN ;
		END
		PRINT '[IX_Shift_Time] on [FusionOperational].[dbo].[ShiftCalendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Shift_Time] on [FusionOperational].[dbo].[ShiftCalendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ShiftCalendar' AND OBJECT_NAME(S.OBJECT_ID) = 'ShiftCalendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[ShiftCalendar] [PK_ShiftCalendar] WITH FULLSCAN ;
		END
		PRINT '[PK_ShiftCalendar] on [FusionOperational].[dbo].[ShiftCalendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ShiftCalendar] on [FusionOperational].[dbo].[ShiftCalendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_29572725' AND OBJECT_NAME(S.OBJECT_ID) = 'FactScrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactScrap] [_WA_Sys_00000002_29572725] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_29572725] on [FusionDW].[dbo].[FactScrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_29572725] on [FusionDW].[dbo].[FactScrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_29572725' AND OBJECT_NAME(S.OBJECT_ID) = 'FactScrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactScrap] [_WA_Sys_00000007_29572725] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_29572725] on [FusionDW].[dbo].[FactScrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_29572725] on [FusionDW].[dbo].[FactScrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactScrap' AND OBJECT_NAME(S.OBJECT_ID) = 'FactScrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactScrap] [PK_FactScrap] WITH FULLSCAN ;
		END
		PRINT '[PK_FactScrap] on [FusionDW].[dbo].[FactScrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactScrap] on [FusionDW].[dbo].[FactScrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000002_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000004_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000005_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000006_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000007_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000008_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_693CA210' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [_WA_Sys_00000009_693CA210] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_693CA210] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_693CA210] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Scrap_Job_Machine' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [IX_Scrap_Job_Machine] WITH FULLSCAN ;
		END
		PRINT '[IX_Scrap_Job_Machine] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Scrap_Job_Machine] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Scrap' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [PK_Scrap] WITH FULLSCAN ;
		END
		PRINT '[PK_Scrap] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Scrap] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000002_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000003_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000004_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000005_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000006_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000007_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000008_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_00000009_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_108B795B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [_WA_Sys_0000000A_108B795B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_108B795B] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_108B795B] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DimShift' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShift' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShift] [PK_DimShift] WITH FULLSCAN ;
		END
		PRINT '[PK_DimShift] on [FusionDW].[dbo].[DimShift] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DimShift] on [FusionDW].[dbo].[DimShift] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_15702A09' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000002_15702A09] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_15702A09' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000003_15702A09] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_15702A09' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000004_15702A09] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_15702A09' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000005_15702A09] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_15702A09] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_OperatorTimecard' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [PK_OperatorTimecard] WITH FULLSCAN ;
		END
		PRINT '[PK_OperatorTimecard] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_OperatorTimecard] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000011_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000012_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000001_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000002_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000003_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000004_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000005_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000006_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_4336F4B9' AND OBJECT_NAME(S.OBJECT_ID) = 'PartPlant' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[PartPlant] [_WA_Sys_00000007_4336F4B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_4336F4B9] on [FusionOperational].[dbo].[PartPlant] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_4336F4B9] on [FusionOperational].[dbo].[PartPlant] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000003_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000004_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000005_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000006_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000007_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000008_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_00000009_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_53A266AC' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [_WA_Sys_0000000A_53A266AC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_53A266AC] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_53A266AC] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_ConsumableNumber' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [IX_Unique_ConsumableNumber] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_ConsumableNumber] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_ConsumableNumber] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Consumable' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable] [PK_Consumable] WITH FULLSCAN ;
		END
		PRINT '[PK_Consumable] on [FusionOperational].[dbo].[Consumable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Consumable] on [FusionOperational].[dbo].[Consumable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000001_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000002_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000003_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000004_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000005_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000006_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Consumable12' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Consumable12] [_WA_Sys_00000007_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_451F3D2B] on [FusionOperational].[dbo].[Consumable12] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_451F3D2B] on [FusionOperational].[dbo].[Consumable12] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MaintenanceActivity' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [PK_MaintenanceActivity] WITH FULLSCAN ;
		END
		PRINT '[PK_MaintenanceActivity] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MaintenanceActivity] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000002_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000003_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000004_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000005_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000006_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000007_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000008_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000009_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_0000000A_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_0000000B_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_0000000C_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_0000000D_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_0000000E_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_0000000F_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_6C6E1476' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceActivity] [_WA_Sys_00000010_6C6E1476] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_6C6E1476] on [FusionOperational].[dbo].[MaintenanceActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'RunActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunActivity] [_WA_Sys_00000002_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2EA5EC27] on [FusionOperational].[dbo].[RunActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2EA5EC27] on [FusionOperational].[dbo].[RunActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'RunActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunActivity] [_WA_Sys_00000003_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2EA5EC27] on [FusionOperational].[dbo].[RunActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2EA5EC27] on [FusionOperational].[dbo].[RunActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_2EA5EC27' AND OBJECT_NAME(S.OBJECT_ID) = 'RunActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunActivity] [_WA_Sys_00000004_2EA5EC27] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_2EA5EC27] on [FusionOperational].[dbo].[RunActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_2EA5EC27] on [FusionOperational].[dbo].[RunActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_RunActivity' AND OBJECT_NAME(S.OBJECT_ID) = 'RunActivity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunActivity] [PK_RunActivity] WITH FULLSCAN ;
		END
		PRINT '[PK_RunActivity] on [FusionOperational].[dbo].[RunActivity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_RunActivity] on [FusionOperational].[dbo].[RunActivity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_2CF2ADDF' AND OBJECT_NAME(S.OBJECT_ID) = 'FactMaterialTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactMaterialTracking] [_WA_Sys_00000007_2CF2ADDF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_2CF2ADDF] on [FusionDW].[dbo].[FactMaterialTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_2CF2ADDF] on [FusionDW].[dbo].[FactMaterialTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_FactMaterialTracking' AND OBJECT_NAME(S.OBJECT_ID) = 'FactMaterialTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactMaterialTracking] [PK_FactMaterialTracking] WITH FULLSCAN ;
		END
		PRINT '[PK_FactMaterialTracking] on [FusionDW].[dbo].[FactMaterialTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_FactMaterialTracking] on [FusionDW].[dbo].[FactMaterialTracking] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000007_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000008_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000009_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_0000000A_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_Number' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [IX_Unique_Number] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_Number] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_Number] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_MaintenanceJobRecord' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [PK_MaintenanceJobRecord] WITH FULLSCAN ;
		END
		PRINT '[PK_MaintenanceJobRecord] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_MaintenanceJobRecord] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000003_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000004_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000005_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_731B1205' AND OBJECT_NAME(S.OBJECT_ID) = 'MaintenanceJobRecord' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MaintenanceJobRecord] [_WA_Sys_00000006_731B1205] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_731B1205] on [FusionOperational].[dbo].[MaintenanceJobRecord] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7C4F7684' AND OBJECT_NAME(S.OBJECT_ID) = 'CycleExtra' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[CycleExtra] [_WA_Sys_00000002_7C4F7684] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7C4F7684] on [FusionOperational].[dbo].[CycleExtra] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7C4F7684] on [FusionOperational].[dbo].[CycleExtra] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7C4F7684' AND OBJECT_NAME(S.OBJECT_ID) = 'CycleExtra' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[CycleExtra] [_WA_Sys_00000003_7C4F7684] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7C4F7684] on [FusionOperational].[dbo].[CycleExtra] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7C4F7684] on [FusionOperational].[dbo].[CycleExtra] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7C4F7684' AND OBJECT_NAME(S.OBJECT_ID) = 'CycleExtra' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[CycleExtra] [_WA_Sys_00000004_7C4F7684] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7C4F7684] on [FusionOperational].[dbo].[CycleExtra] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7C4F7684] on [FusionOperational].[dbo].[CycleExtra] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ActiveCavities' AND OBJECT_NAME(S.OBJECT_ID) = 'CycleExtra' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[CycleExtra] [PK_ActiveCavities] WITH FULLSCAN ;
		END
		PRINT '[PK_ActiveCavities] on [FusionOperational].[dbo].[CycleExtra] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ActiveCavities] on [FusionOperational].[dbo].[CycleExtra] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_22751F6C' AND OBJECT_NAME(S.OBJECT_ID) = 'VariableDefinitionMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[VariableDefinitionMapping] [_WA_Sys_00000003_22751F6C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_22751F6C] on [FusionOperational].[dbo].[VariableDefinitionMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_22751F6C] on [FusionOperational].[dbo].[VariableDefinitionMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_22751F6C' AND OBJECT_NAME(S.OBJECT_ID) = 'VariableDefinitionMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[VariableDefinitionMapping] [_WA_Sys_00000004_22751F6C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_22751F6C] on [FusionOperational].[dbo].[VariableDefinitionMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_22751F6C] on [FusionOperational].[dbo].[VariableDefinitionMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_22751F6C' AND OBJECT_NAME(S.OBJECT_ID) = 'VariableDefinitionMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[VariableDefinitionMapping] [_WA_Sys_00000005_22751F6C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_22751F6C] on [FusionOperational].[dbo].[VariableDefinitionMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_22751F6C] on [FusionOperational].[dbo].[VariableDefinitionMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_SourceNameDescriptionUnits' AND OBJECT_NAME(S.OBJECT_ID) = 'VariableDefinitionMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[VariableDefinitionMapping] [IX_Unique_SourceNameDescriptionUnits] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_SourceNameDescriptionUnits] on [FusionOperational].[dbo].[VariableDefinitionMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_SourceNameDescriptionUnits] on [FusionOperational].[dbo].[VariableDefinitionMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_VariableDefinitionMappingID' AND OBJECT_NAME(S.OBJECT_ID) = 'VariableDefinitionMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[VariableDefinitionMapping] [PK_VariableDefinitionMappingID] WITH FULLSCAN ;
		END
		PRINT '[PK_VariableDefinitionMappingID] on [FusionOperational].[dbo].[VariableDefinitionMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_VariableDefinitionMappingID] on [FusionOperational].[dbo].[VariableDefinitionMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_060DEAE8' AND OBJECT_NAME(S.OBJECT_ID) = 'DimJob' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimJob] [_WA_Sys_00000002_060DEAE8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_060DEAE8] on [FusionDW].[dbo].[DimJob] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_060DEAE8] on [FusionDW].[dbo].[DimJob] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_060DEAE8' AND OBJECT_NAME(S.OBJECT_ID) = 'DimJob' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimJob] [_WA_Sys_00000003_060DEAE8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_060DEAE8] on [FusionDW].[dbo].[DimJob] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_060DEAE8] on [FusionDW].[dbo].[DimJob] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_060DEAE8' AND OBJECT_NAME(S.OBJECT_ID) = 'DimJob' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimJob] [_WA_Sys_00000004_060DEAE8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_060DEAE8] on [FusionDW].[dbo].[DimJob] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_060DEAE8] on [FusionDW].[dbo].[DimJob] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DimJob' AND OBJECT_NAME(S.OBJECT_ID) = 'DimJob' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimJob] [PK_DimJob] WITH FULLSCAN ;
		END
		PRINT '[PK_DimJob] on [FusionDW].[dbo].[DimJob] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DimJob] on [FusionDW].[dbo].[DimJob] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_00000003_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_00000004_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_00000005_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_00000007_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_00000008_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_00000009_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_0000000A_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_0000000B_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [_WA_Sys_0000000C_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_02FC7413] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_RunPart' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [IX_Unique_RunPart] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_RunPart] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_RunPart] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_RunPartAllocation' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPartAllocation' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[RunPartAllocation] [PK_RunPartAllocation] WITH FULLSCAN ;
		END
		PRINT '[PK_RunPartAllocation] on [FusionOperational].[dbo].[RunPartAllocation] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_RunPartAllocation] on [FusionOperational].[dbo].[RunPartAllocation] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_00000003_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_00000004_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_00000005_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_00000006_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_00000008_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_0000000A_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_0000000B_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_7F2BE32F' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [_WA_Sys_0000000D_7F2BE32F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_7F2BE32F] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_7F2BE32F] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Run_Job' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [IX_Run_Job] WITH FULLSCAN ;
		END
		PRINT '[IX_Run_Job] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Run_Job] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Run' AND OBJECT_NAME(S.OBJECT_ID) = 'Run' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Run] [PK_Run] WITH FULLSCAN ;
		END
		PRINT '[PK_Run] on [FusionOperational].[dbo].[Run] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Run] on [FusionOperational].[dbo].[Run] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_117F9D94' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [_WA_Sys_00000003_117F9D94] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_117F9D94] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_117F9D94] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_117F9D94' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [_WA_Sys_00000004_117F9D94] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_117F9D94] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_117F9D94] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_117F9D94' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [_WA_Sys_00000007_117F9D94] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_117F9D94] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_117F9D94] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_117F9D94' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [_WA_Sys_00000008_117F9D94] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_117F9D94] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_117F9D94] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_117F9D94' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [_WA_Sys_00000009_117F9D94] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_117F9D94] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_117F9D94] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_117F9D94' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [_WA_Sys_0000000A_117F9D94] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_117F9D94] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_117F9D94] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Unique_JobNumber' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [IX_Unique_JobNumber] WITH FULLSCAN ;
		END
		PRINT '[IX_Unique_JobNumber] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Unique_JobNumber] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Job' AND OBJECT_NAME(S.OBJECT_ID) = 'Job' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Job] [PK_Job] WITH FULLSCAN ;
		END
		PRINT '[PK_Job] on [FusionOperational].[dbo].[Job] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Job] on [FusionOperational].[dbo].[Job] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_014935CB' AND OBJECT_NAME(S.OBJECT_ID) = 'DocumentGroup' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DocumentGroup] [_WA_Sys_00000003_014935CB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_014935CB] on [FusionOperational].[dbo].[DocumentGroup] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_014935CB] on [FusionOperational].[dbo].[DocumentGroup] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DocumentGroup' AND OBJECT_NAME(S.OBJECT_ID) = 'DocumentGroup' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DocumentGroup] [PK_DocumentGroup] WITH FULLSCAN ;
		END
		PRINT '[PK_DocumentGroup] on [FusionOperational].[dbo].[DocumentGroup] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DocumentGroup] on [FusionOperational].[dbo].[DocumentGroup] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UK_DocumentGroup' AND OBJECT_NAME(S.OBJECT_ID) = 'DocumentGroup' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DocumentGroup] [UK_DocumentGroup] WITH FULLSCAN ;
		END
		PRINT '[UK_DocumentGroup] on [FusionOperational].[dbo].[DocumentGroup] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UK_DocumentGroup] on [FusionOperational].[dbo].[DocumentGroup] cannot be updated.';			
	END CATCH;
END
	