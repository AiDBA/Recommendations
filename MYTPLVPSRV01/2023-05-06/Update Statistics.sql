
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2A4B4B5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Faults' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Faults] [_WA_Sys_00000003_2A4B4B5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2A4B4B5E] on [LineView4Reports].[dbo].[Faults] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2A4B4B5E] on [LineView4Reports].[dbo].[Faults] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_2A4B4B5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Faults' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Faults] [_WA_Sys_00000004_2A4B4B5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_2A4B4B5E] on [LineView4Reports].[dbo].[Faults] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_2A4B4B5E] on [LineView4Reports].[dbo].[Faults] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2A4B4B5E' AND OBJECT_NAME(S.OBJECT_ID) = 'Faults' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Faults] [_WA_Sys_00000005_2A4B4B5E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2A4B4B5E] on [LineView4Reports].[dbo].[Faults] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2A4B4B5E] on [LineView4Reports].[dbo].[Faults] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_36B12243' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [_WA_Sys_00000019_36B12243] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_36B12243] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_36B12243] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dtMachineLossIndex' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [dtMachineLossIndex] WITH FULLSCAN ;
		END
		PRINT '[dtMachineLossIndex] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dtMachineLossIndex] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_MachineLoss_Machine_Modified_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [Index_MachineLoss_Machine_Modified_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_MachineLoss_Machine_Modified_DTStamp] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_MachineLoss_Machine_Modified_DTStamp] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Loss_MachineLossSumEarnedUnallocated_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [Loss_MachineLossSumEarnedUnallocated_Index] WITH FULLSCAN ;
		END
		PRINT '[Loss_MachineLossSumEarnedUnallocated_Index] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Loss_MachineLossSumEarnedUnallocated_Index] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Loss_PDTMachineLossEarned_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [Loss_PDTMachineLossEarned_Index] WITH FULLSCAN ;
		END
		PRINT '[Loss_PDTMachineLossEarned_Index] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Loss_PDTMachineLossEarned_Index] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'MachineLoss_PDTLoss_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [MachineLoss_PDTLoss_Index] WITH FULLSCAN ;
		END
		PRINT '[MachineLoss_PDTLoss_Index] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[MachineLoss_PDTLoss_Index] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [_WA_Sys_00000007_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_32E0915F] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_32E0915F] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [_WA_Sys_00000024_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_32E0915F] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_32E0915F] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dtMachineIndex' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [dtMachineIndex] WITH FULLSCAN ;
		END
		PRINT '[dtMachineIndex] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dtMachineIndex] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_Machines_Line_Code_Machine_Modified_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [Index_Machines_Line_Code_Machine_Modified_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_Machines_Line_Code_Machine_Modified_DTStamp] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_Machines_Line_Code_Machine_Modified_DTStamp] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [_WA_Sys_00000005_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_32E0915F] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_32E0915F] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_30F848ED' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [_WA_Sys_00000009_30F848ED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dtLossPDTIndex' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [dtLossPDTIndex] WITH FULLSCAN ;
		END
		PRINT '[dtLossPDTIndex] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dtLossPDTIndex] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_Loss_PDT_Line_Code_Modified_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [Index_Loss_PDT_Line_Code_Modified_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_Loss_PDT_Line_Code_Modified_DTStamp] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_Loss_PDT_Line_Code_Modified_DTStamp] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Loss_PDT_Stop_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [Loss_PDT_Stop_Index] WITH FULLSCAN ;
		END
		PRINT '[Loss_PDT_Stop_Index] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Loss_PDT_Stop_Index] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_30F848ED' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [_WA_Sys_00000006_30F848ED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_30F848ED' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [_WA_Sys_00000007_30F848ED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_30F848ED' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [_WA_Sys_00000004_30F848ED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_30F848ED' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_PDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_PDT] [_WA_Sys_00000005_30F848ED] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_30F848ED] on [LineView4Reports].[dbo].[Loss_PDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_4BAC3F29' AND OBJECT_NAME(S.OBJECT_ID) = 'Speed_Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Speed_Loss] [_WA_Sys_00000006_4BAC3F29] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_4BAC3F29] on [LineView4Reports].[dbo].[Speed_Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_4BAC3F29] on [LineView4Reports].[dbo].[Speed_Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dtSpeedLossIndex' AND OBJECT_NAME(S.OBJECT_ID) = 'Speed_Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Speed_Loss] [dtSpeedLossIndex] WITH FULLSCAN ;
		END
		PRINT '[dtSpeedLossIndex] on [LineView4Reports].[dbo].[Speed_Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dtSpeedLossIndex] on [LineView4Reports].[dbo].[Speed_Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_Speed_Loss_Line_Code_AreaId_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'Speed_Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Speed_Loss] [Index_Speed_Loss_Line_Code_AreaId_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_Speed_Loss_Line_Code_AreaId_DTStamp] on [LineView4Reports].[dbo].[Speed_Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_Speed_Loss_Line_Code_AreaId_DTStamp] on [LineView4Reports].[dbo].[Speed_Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [_WA_Sys_00000006_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_32E0915F] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_32E0915F] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Machine' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Machine] [_WA_Sys_00000004_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_32E0915F] on [LineView4Reports].[dbo].[Machine] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_32E0915F] on [LineView4Reports].[dbo].[Machine] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_36B12243' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineLoss] [_WA_Sys_00000015_36B12243] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_36B12243] on [LineView4Reports].[dbo].[MachineLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_36B12243] on [LineView4Reports].[dbo].[MachineLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_33D4B598' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineCategoryStops' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineCategoryStops] [_WA_Sys_0000000D_33D4B598] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_33D4B598] on [LineView4Reports].[dbo].[MachineCategoryStops] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_33D4B598] on [LineView4Reports].[dbo].[MachineCategoryStops] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dtMachineCateogryStopsIndex' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineCategoryStops' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineCategoryStops] [dtMachineCateogryStopsIndex] WITH FULLSCAN ;
		END
		PRINT '[dtMachineCateogryStopsIndex] on [LineView4Reports].[dbo].[MachineCategoryStops] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dtMachineCateogryStopsIndex] on [LineView4Reports].[dbo].[MachineCategoryStops] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_MachineCategoryStops_Machine_Modified_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'MachineCategoryStops' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachineCategoryStops] [Index_MachineCategoryStops_Machine_Modified_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_MachineCategoryStops_Machine_Modified_DTStamp] on [LineView4Reports].[dbo].[MachineCategoryStops] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_MachineCategoryStops_Machine_Modified_DTStamp] on [LineView4Reports].[dbo].[MachineCategoryStops] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_2B3F6F97' AND OBJECT_NAME(S.OBJECT_ID) = 'FirstFaultCausal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[FirstFaultCausal] [_WA_Sys_00000004_2B3F6F97] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_2B3F6F97' AND OBJECT_NAME(S.OBJECT_ID) = 'FirstFaultCausal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[FirstFaultCausal] [_WA_Sys_00000006_2B3F6F97] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_FirstFaultCausalClustered_LineCode__DTStamp_Modified_LossID_FaultID' AND OBJECT_NAME(S.OBJECT_ID) = 'FirstFaultCausal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[FirstFaultCausal] [IX_FirstFaultCausalClustered_LineCode__DTStamp_Modified_LossID_FaultID] WITH FULLSCAN ;
		END
		PRINT '[IX_FirstFaultCausalClustered_LineCode__DTStamp_Modified_LossID_FaultID] on [LineView4Reports].[dbo].[FirstFaultCausal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_FirstFaultCausalClustered_LineCode__DTStamp_Modified_LossID_FaultID] on [LineView4Reports].[dbo].[FirstFaultCausal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_22AA2996' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [_WA_Sys_00000004_22AA2996] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_22AA2996' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [_WA_Sys_00000005_22AA2996] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_CategorisedCausalLoss_LineId_Off_On_LossConditionId' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [IX_CategorisedCausalLoss_LineId_Off_On_LossConditionId] WITH FULLSCAN ;
		END
		PRINT '[IX_CategorisedCausalLoss_LineId_Off_On_LossConditionId] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_CategorisedCausalLoss_LineId_Off_On_LossConditionId] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_22AA2996' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [_WA_Sys_00000006_22AA2996] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_31EC6D26' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_Stops' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_Stops] [_WA_Sys_00000004_31EC6D26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_31EC6D26] on [LineView4Reports].[dbo].[Loss_Stops] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_31EC6D26] on [LineView4Reports].[dbo].[Loss_Stops] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_31EC6D26' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_Stops' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_Stops] [_WA_Sys_00000005_31EC6D26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_31EC6D26] on [LineView4Reports].[dbo].[Loss_Stops] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_31EC6D26] on [LineView4Reports].[dbo].[Loss_Stops] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_31EC6D26' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss_Stops' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss_Stops] [_WA_Sys_00000006_31EC6D26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_31EC6D26] on [LineView4Reports].[dbo].[Loss_Stops] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_31EC6D26] on [LineView4Reports].[dbo].[Loss_Stops] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_MachinePDT_10_1442104178__K3_K2_K4' AND OBJECT_NAME(S.OBJECT_ID) = 'MachinePDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachinePDT] [_dta_index_MachinePDT_10_1442104178__K3_K2_K4] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_MachinePDT_10_1442104178__K3_K2_K4] on [LineView4Reports].[dbo].[MachinePDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_MachinePDT_10_1442104178__K3_K2_K4] on [LineView4Reports].[dbo].[MachinePDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_stat_1442104178_2_4' AND OBJECT_NAME(S.OBJECT_ID) = 'MachinePDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachinePDT] [_dta_stat_1442104178_2_4] WITH FULLSCAN ;
		END
		PRINT '[_dta_stat_1442104178_2_4] on [LineView4Reports].[dbo].[MachinePDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_stat_1442104178_2_4] on [LineView4Reports].[dbo].[MachinePDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_stat_1442104178_4_3' AND OBJECT_NAME(S.OBJECT_ID) = 'MachinePDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachinePDT] [_dta_stat_1442104178_4_3] WITH FULLSCAN ;
		END
		PRINT '[_dta_stat_1442104178_4_3] on [LineView4Reports].[dbo].[MachinePDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_stat_1442104178_4_3] on [LineView4Reports].[dbo].[MachinePDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_stat_1442104178_9_2_4_3' AND OBJECT_NAME(S.OBJECT_ID) = 'MachinePDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachinePDT] [_dta_stat_1442104178_9_2_4_3] WITH FULLSCAN ;
		END
		PRINT '[_dta_stat_1442104178_9_2_4_3] on [LineView4Reports].[dbo].[MachinePDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_stat_1442104178_9_2_4_3] on [LineView4Reports].[dbo].[MachinePDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_37A5467C' AND OBJECT_NAME(S.OBJECT_ID) = 'MachinePDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachinePDT] [_WA_Sys_0000000A_37A5467C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_37A5467C] on [LineView4Reports].[dbo].[MachinePDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_37A5467C] on [LineView4Reports].[dbo].[MachinePDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_MachinePDT_Line_Code_MachineId_Modified_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'MachinePDT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[MachinePDT] [Index_MachinePDT_Line_Code_MachineId_Modified_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_MachinePDT_Line_Code_MachineId_Modified_DTStamp] on [LineView4Reports].[dbo].[MachinePDT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_MachinePDT_Line_Code_MachineId_Modified_DTStamp] on [LineView4Reports].[dbo].[MachinePDT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_Main_10_754101727__K3_K13_K2' AND OBJECT_NAME(S.OBJECT_ID) = 'Main' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Main] [_dta_index_Main_10_754101727__K3_K13_K2] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_Main_10_754101727__K3_K13_K2] on [LineView4Reports].[dbo].[Main] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_Main_10_754101727__K3_K13_K2] on [LineView4Reports].[dbo].[Main] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_Main_10_754101727__K3_K2_K13' AND OBJECT_NAME(S.OBJECT_ID) = 'Main' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Main] [_dta_index_Main_10_754101727__K3_K2_K13] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_Main_10_754101727__K3_K2_K13] on [LineView4Reports].[dbo].[Main] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_Main_10_754101727__K3_K2_K13] on [LineView4Reports].[dbo].[Main] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_stat_754101727_13_2' AND OBJECT_NAME(S.OBJECT_ID) = 'Main' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Main] [_dta_stat_754101727_13_2] WITH FULLSCAN ;
		END
		PRINT '[_dta_stat_754101727_13_2] on [LineView4Reports].[dbo].[Main] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_stat_754101727_13_2] on [LineView4Reports].[dbo].[Main] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_stat_754101727_2_3' AND OBJECT_NAME(S.OBJECT_ID) = 'Main' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Main] [_dta_stat_754101727_2_3] WITH FULLSCAN ;
		END
		PRINT '[_dta_stat_754101727_2_3] on [LineView4Reports].[dbo].[Main] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_stat_754101727_2_3] on [LineView4Reports].[dbo].[Main] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'CriticalMachines' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CriticalMachines] [_WA_Sys_00000001_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'CriticalMachines' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CriticalMachines] [_WA_Sys_00000005_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Index_CriticalMachines_LineId_Modified_DTStamp' AND OBJECT_NAME(S.OBJECT_ID) = 'CriticalMachines' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CriticalMachines] [Index_CriticalMachines_LineId_Modified_DTStamp] WITH FULLSCAN ;
		END
		PRINT '[Index_CriticalMachines_LineId_Modified_DTStamp] on [LineView4Reports].[dbo].[CriticalMachines] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Index_CriticalMachines_LineId_Modified_DTStamp] on [LineView4Reports].[dbo].[CriticalMachines] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_00000019_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'dtLossIndex' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [dtLossIndex] WITH FULLSCAN ;
		END
		PRINT '[dtLossIndex] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[dtLossIndex] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Loss_LossSumEarnedUnallocated_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [Loss_LossSumEarnedUnallocated_Index] WITH FULLSCAN ;
		END
		PRINT '[Loss_LossSumEarnedUnallocated_Index] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Loss_LossSumEarnedUnallocated_Index] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Loss_PDTLoss_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [Loss_PDTLoss_Index] WITH FULLSCAN ;
		END
		PRINT '[Loss_PDTLoss_Index] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Loss_PDTLoss_Index] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'Loss_PDTLossEarned_Index' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [Loss_PDTLossEarned_Index] WITH FULLSCAN ;
		END
		PRINT '[Loss_PDTLossEarned_Index] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Loss_PDTLossEarned_Index] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_00000004_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_00000005_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_00000006_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_0000000D_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_00000015_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_300424B4' AND OBJECT_NAME(S.OBJECT_ID) = 'Loss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Loss] [_WA_Sys_00000016_300424B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_300424B4] on [LineView4Reports].[dbo].[Loss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_300424B4] on [LineView4Reports].[dbo].[Loss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'CriticalMachines' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CriticalMachines] [_WA_Sys_00000003_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_276EDEB3' AND OBJECT_NAME(S.OBJECT_ID) = 'CriticalMachines' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CriticalMachines] [_WA_Sys_00000004_276EDEB3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_276EDEB3] on [LineView4Reports].[dbo].[CriticalMachines] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2B3F6F97' AND OBJECT_NAME(S.OBJECT_ID) = 'FirstFaultCausal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[FirstFaultCausal] [_WA_Sys_00000002_2B3F6F97] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2B3F6F97' AND OBJECT_NAME(S.OBJECT_ID) = 'FirstFaultCausal' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[FirstFaultCausal] [_WA_Sys_00000003_2B3F6F97] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2B3F6F97] on [LineView4Reports].[dbo].[FirstFaultCausal] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_38996AB5' AND OBJECT_NAME(S.OBJECT_ID) = 'Main' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Main] [_WA_Sys_00000004_38996AB5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_38996AB5] on [LineView4Reports].[dbo].[Main] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_38996AB5] on [LineView4Reports].[dbo].[Main] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_38996AB5' AND OBJECT_NAME(S.OBJECT_ID) = 'Main' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Main] [_WA_Sys_00000005_38996AB5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_38996AB5] on [LineView4Reports].[dbo].[Main] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_38996AB5] on [LineView4Reports].[dbo].[Main] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_Comments_SignalStart_LineId_MachineId_SignalType' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_dta_index_Comments_SignalStart_LineId_MachineId_SignalType] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_Comments_SignalStart_LineId_MachineId_SignalType] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_Comments_SignalStart_LineId_MachineId_SignalType] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Comments' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [PK_Comments] WITH FULLSCAN ;
		END
		PRINT '[PK_Comments] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Comments] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000004_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000005_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000006_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_4316F928' AND OBJECT_NAME(S.OBJECT_ID) = 'RunPeriodMetricValues' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[RunPeriodMetricValues] [_WA_Sys_00000004_4316F928] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_4316F928] on [LineView4Reports].[dbo].[RunPeriodMetricValues] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_4316F928] on [LineView4Reports].[dbo].[RunPeriodMetricValues] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000016_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_22AA2996' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [_WA_Sys_00000009_22AA2996] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_22AA2996' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [_WA_Sys_0000000A_22AA2996] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_22AA2996' AND OBJECT_NAME(S.OBJECT_ID) = 'CategorisedCausalLoss' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[CategorisedCausalLoss] [_WA_Sys_0000000B_22AA2996] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_22AA2996] on [LineView4Reports].[dbo].[CategorisedCausalLoss] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_4F7CD00D' AND OBJECT_NAME(S.OBJECT_ID) = 'ViewerLabels' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[ViewerLabels] [_WA_Sys_00000002_4F7CD00D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_4F7CD00D] on [LineView4Reports].[dbo].[ViewerLabels] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_4F7CD00D] on [LineView4Reports].[dbo].[ViewerLabels] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_4F7CD00D' AND OBJECT_NAME(S.OBJECT_ID) = 'ViewerLabels' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[ViewerLabels] [_WA_Sys_00000003_4F7CD00D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_4F7CD00D] on [LineView4Reports].[dbo].[ViewerLabels] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_4F7CD00D] on [LineView4Reports].[dbo].[ViewerLabels] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_00000003_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_0000000F_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_0000000C_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_0000000D_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_00000001_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000003_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000007_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000008_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_00000009_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_0000000A_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_0000000B_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_0000000C_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_0000000D_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_32E0915F' AND OBJECT_NAME(S.OBJECT_ID) = 'Comments' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[Comments] [_WA_Sys_0000000E_32E0915F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_32E0915F] on [LineView4].[dbo].[Comments] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_32E0915F] on [LineView4].[dbo].[Comments] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_Shifts_c_9_725577623__K2_K3_K1' AND OBJECT_NAME(S.OBJECT_ID) = 'Shifts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Shifts] [_dta_index_Shifts_c_9_725577623__K2_K3_K1] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_Shifts_c_9_725577623__K2_K3_K1] on [LineView4Reports].[dbo].[Shifts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_Shifts_c_9_725577623__K2_K3_K1] on [LineView4Reports].[dbo].[Shifts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_47DBAE45' AND OBJECT_NAME(S.OBJECT_ID) = 'Shifts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Shifts] [_WA_Sys_00000001_47DBAE45] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_47DBAE45] on [LineView4Reports].[dbo].[Shifts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_47DBAE45] on [LineView4Reports].[dbo].[Shifts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4Reports].sys.stats S CROSS APPLY [LineView4Reports].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_47DBAE45' AND OBJECT_NAME(S.OBJECT_ID) = 'Shifts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4Reports].[dbo].[Shifts] [_WA_Sys_00000003_47DBAE45] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_47DBAE45] on [LineView4Reports].[dbo].[Shifts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_47DBAE45] on [LineView4Reports].[dbo].[Shifts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_PDTDatas_10_1442104178__K4_K1' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_dta_index_PDTDatas_10_1442104178__K4_K1] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_PDTDatas_10_1442104178__K4_K1] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_PDTDatas_10_1442104178__K4_K1] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_dta_index_PDTDatas_c_10_1442104178__K2_K4_K5' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_dta_index_PDTDatas_c_10_1442104178__K2_K4_K5] WITH FULLSCAN ;
		END
		PRINT '[_dta_index_PDTDatas_c_10_1442104178__K2_K4_K5] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_dta_index_PDTDatas_c_10_1442104178__K2_K4_K5] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_00000005_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ReportServer')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ReportServer].sys.stats S CROSS APPLY [ReportServer].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ChunkSegmentMapping_SegmentId' AND OBJECT_NAME(S.OBJECT_ID) = 'ChunkSegmentMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ReportServer].[dbo].[ChunkSegmentMapping] [IX_ChunkSegmentMapping_SegmentId] WITH FULLSCAN ;
		END
		PRINT '[IX_ChunkSegmentMapping_SegmentId] on [ReportServer].[dbo].[ChunkSegmentMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ChunkSegmentMapping_SegmentId] on [ReportServer].[dbo].[ChunkSegmentMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ReportServer')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ReportServer].sys.stats S CROSS APPLY [ReportServer].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ChunkSegmentMapping' AND OBJECT_NAME(S.OBJECT_ID) = 'ChunkSegmentMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ReportServer].[dbo].[ChunkSegmentMapping] [PK_ChunkSegmentMapping] WITH FULLSCAN ;
		END
		PRINT '[PK_ChunkSegmentMapping] on [ReportServer].[dbo].[ChunkSegmentMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ChunkSegmentMapping] on [ReportServer].[dbo].[ChunkSegmentMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ReportServer')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ReportServer].sys.stats S CROSS APPLY [ReportServer].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UNIQ_ChunkId_StartByte' AND OBJECT_NAME(S.OBJECT_ID) = 'ChunkSegmentMapping' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ReportServer].[dbo].[ChunkSegmentMapping] [UNIQ_ChunkId_StartByte] WITH FULLSCAN ;
		END
		PRINT '[UNIQ_ChunkId_StartByte] on [ReportServer].[dbo].[ChunkSegmentMapping] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UNIQ_ChunkId_StartByte] on [ReportServer].[dbo].[ChunkSegmentMapping] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_00000008_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'LineView4')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [LineView4].sys.stats S CROSS APPLY [LineView4].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_74AE54BC' AND OBJECT_NAME(S.OBJECT_ID) = 'PDTDatas' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [LineView4].[dbo].[PDTDatas] [_WA_Sys_00000011_74AE54BC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_74AE54BC] on [LineView4].[dbo].[PDTDatas] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_74AE54BC] on [LineView4].[dbo].[PDTDatas] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'ReportServer')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [ReportServer].sys.stats S CROSS APPLY [ReportServer].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Segment' AND OBJECT_NAME(S.OBJECT_ID) = 'Segment' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [ReportServer].[dbo].[Segment] [PK_Segment] WITH FULLSCAN ;
		END
		PRINT '[PK_Segment] on [ReportServer].[dbo].[Segment] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Segment] on [ReportServer].[dbo].[Segment] cannot be updated.';			
	END CATCH;
END
	