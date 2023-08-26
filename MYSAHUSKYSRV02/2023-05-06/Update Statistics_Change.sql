
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_4_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [IX_AIDBA_4_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_4_20220820] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_4_20220820] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM' AND OBJECT_NAME(S.OBJECT_ID) = 'Cycle' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Cycle] [IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] on [FusionOperational].[dbo].[Cycle] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] on [FusionOperational].[dbo].[Cycle] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineOperatingState' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[MachineOperatingState] [IX_AIDBA_3_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220820] on [FusionOperational].[dbo].[MachineOperatingState] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220820] on [FusionOperational].[dbo].[MachineOperatingState] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_2_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'Downtime' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Downtime] [IX_AIDBA_2_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_2_20220820] on [FusionOperational].[dbo].[Downtime] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_2_20220820] on [FusionOperational].[dbo].[Downtime] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_8_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [IX_AIDBA_8_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_8_20220820] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_8_20220820] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON' AND OBJECT_NAME(S.OBJECT_ID) = 'DowntimeAssignedReason' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[DowntimeAssignedReason] [IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] on [FusionOperational].[dbo].[DowntimeAssignedReason] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] on [FusionOperational].[dbo].[DowntimeAssignedReason] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000002_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000004_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000005_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000006_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTraceability' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTraceability] [_WA_Sys_00000007_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_184C96B4] on [FusionOperational].[dbo].[OperatorTraceability] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Sequence' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Sequence] [_WA_Sys_00000002_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_451F3D2B] on [FusionOperational].[dbo].[Sequence] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_451F3D2B] on [FusionOperational].[dbo].[Sequence] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_451F3D2B' AND OBJECT_NAME(S.OBJECT_ID) = 'Sequence' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Sequence] [_WA_Sys_00000003_451F3D2B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_451F3D2B] on [FusionOperational].[dbo].[Sequence] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_451F3D2B] on [FusionOperational].[dbo].[Sequence] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_9_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditPackageExec' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditPackageExec] [IX_AIDBA_9_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_9_20220820] on [FusionDW].[dbo].[ETLAuditPackageExec] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_9_20220820] on [FusionDW].[dbo].[ETLAuditPackageExec] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_5_20220820' AND OBJECT_NAME(S.OBJECT_ID) = 'SQCDataset' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[SQCDataset] [IX_AIDBA_5_20220820] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_5_20220820] on [FusionOperational].[dbo].[SQCDataset] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_5_20220820] on [FusionOperational].[dbo].[SQCDataset] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000006_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000007_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'AutomaticPrintEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[AutomaticPrintEvent] [_WA_Sys_00000009_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_3335971A] on [FusionOperational].[dbo].[AutomaticPrintEvent] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Operator' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [PK_Operator] WITH FULLSCAN ;
		END
		PRINT '[PK_Operator] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Operator] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000006_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000005_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_6FE99F9F' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLWatermark' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLWatermark] [_WA_Sys_00000005_6FE99F9F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_6FE99F9F] on [FusionDW].[dbo].[ETLWatermark] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000007_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000008_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000009_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000002_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000003_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1293BD5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Operator' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Operator] [_WA_Sys_00000004_1293BD5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1293BD5E] on [FusionOperational].[dbo].[Operator] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1293BD5E] on [FusionOperational].[dbo].[Operator] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_PK_BATCHTRACKING' AND OBJECT_NAME(S.OBJECT_ID) = 'BatchTracking' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[BatchTracking] [IX_AIDBA_PK_BATCHTRACKING] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_PK_BATCHTRACKING] on [FusionOperational].[dbo].[BatchTracking] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_PK_BATCHTRACKING] on [FusionOperational].[dbo].[BatchTracking] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK__ETLAudit__86C65F81540C7B00' AND OBJECT_NAME(S.OBJECT_ID) = 'ETLAuditTableProcessingDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[ETLAuditTableProcessingDetails] [PK__ETLAudit__86C65F81540C7B00] WITH FULLSCAN ;
		END
		PRINT '[PK__ETLAudit__86C65F81540C7B00] on [FusionDW].[dbo].[ETLAuditTableProcessingDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK__ETLAudit__86C65F81540C7B00] on [FusionDW].[dbo].[ETLAuditTableProcessingDetails] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_14270015' AND OBJECT_NAME(S.OBJECT_ID) = 'FactProductionGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[FactProductionGlobal] [_WA_Sys_0000000C_14270015] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_14270015] on [FusionDW].[dbo].[FactProductionGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_14270015] on [FusionDW].[dbo].[FactProductionGlobal] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_147C05D0' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000002_147C05D0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_147C05D0' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000003_147C05D0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_147C05D0' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000004_147C05D0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionOperational')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_147C05D0' AND OBJECT_NAME(S.OBJECT_ID) = 'OperatorTimecard' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[OperatorTimecard] [_WA_Sys_00000005_147C05D0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_147C05D0] on [FusionOperational].[dbo].[OperatorTimecard] cannot be updated.';			
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
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000002_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000003_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000004_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000005_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000006_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000007_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'FusionDW')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [FusionDW].sys.stats S CROSS APPLY [FusionDW].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_47A6A41B' AND OBJECT_NAME(S.OBJECT_ID) = 'DimShiftGlobal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionDW].[dbo].[DimShiftGlobal] [_WA_Sys_00000008_47A6A41B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_47A6A41B] on [FusionDW].[dbo].[DimShiftGlobal] cannot be updated.';			
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
		IF EXISTS (SELECT 1 FROM [FusionOperational].sys.stats S CROSS APPLY [FusionOperational].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_IX_SCRAP_JOB_MACHINE' AND OBJECT_NAME(S.OBJECT_ID) = 'Scrap' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [FusionOperational].[dbo].[Scrap] [IX_AIDBA_IX_SCRAP_JOB_MACHINE] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_IX_SCRAP_JOB_MACHINE] on [FusionOperational].[dbo].[Scrap] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_IX_SCRAP_JOB_MACHINE] on [FusionOperational].[dbo].[Scrap] cannot be updated.';			
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
	