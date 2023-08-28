
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000002_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000003_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000004_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000007_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000008_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000009_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_0000000A_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_0000000B_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_0000000C_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_0000000D_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_0000000E_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_0000000F_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000010_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_0682EC34' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [_WA_Sys_00000012_0682EC34] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_0682EC34] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_ModificationID' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [IDX_ModificationID] WITH FULLSCAN ;
		END
		PRINT '[IDX_ModificationID] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_ModificationID] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_ObjectProperty_Alive' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [IDX_ObjectProperty_Alive] WITH FULLSCAN ;
		END
		PRINT '[IDX_ObjectProperty_Alive] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_ObjectProperty_Alive] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_ObjectProperty_Relations' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [IDX_ObjectProperty_Relations] WITH FULLSCAN ;
		END
		PRINT '[IDX_ObjectProperty_Relations] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_ObjectProperty_Relations] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_12_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [IX_AIDBA_12_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_12_20220830] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_12_20220830] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ObjectProperties' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ObjectProperty] [PK_ObjectProperties] WITH FULLSCAN ;
		END
		PRINT '[PK_ObjectProperties] on [VeeamOne].[reporter].[ObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ObjectProperties] on [VeeamOne].[reporter].[ObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_743621E5' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [_WA_Sys_00000002_743621E5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_743621E5' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [_WA_Sys_00000003_743621E5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_743621E5' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [_WA_Sys_00000007_743621E5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_743621E5' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [_WA_Sys_0000000B_743621E5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_743621E5' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [_WA_Sys_0000000C_743621E5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_743621E5] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_LatestObjectProperty_ObjectPropertyValue' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IDX_LatestObjectProperty_ObjectPropertyValue] WITH FULLSCAN ;
		END
		PRINT '[IDX_LatestObjectProperty_ObjectPropertyValue] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_LatestObjectProperty_ObjectPropertyValue] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_LatestObjectProperty_ParentToObject' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IDX_LatestObjectProperty_ParentToObject] WITH FULLSCAN ;
		END
		PRINT '[IDX_LatestObjectProperty_ParentToObject] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_LatestObjectProperty_ParentToObject] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_LatestObjectPropertyObjectID' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IDX_LatestObjectPropertyObjectID] WITH FULLSCAN ;
		END
		PRINT '[IDX_LatestObjectPropertyObjectID] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_LatestObjectPropertyObjectID] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_LatestObjectPropertyObjType' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IDX_LatestObjectPropertyObjType] WITH FULLSCAN ;
		END
		PRINT '[IDX_LatestObjectPropertyObjType] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_LatestObjectPropertyObjType] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_LatestObjectPropertyParentID' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IDX_LatestObjectPropertyParentID] WITH FULLSCAN ;
		END
		PRINT '[IDX_LatestObjectPropertyParentID] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_LatestObjectPropertyParentID] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_LatestObjectPropertyParentType' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IDX_LatestObjectPropertyParentType] WITH FULLSCAN ;
		END
		PRINT '[IDX_LatestObjectPropertyParentType] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_LatestObjectPropertyParentType] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_LatestObjectProperty_PropertyID' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty] [IX_LatestObjectProperty_PropertyID] WITH FULLSCAN ;
		END
		PRINT '[IX_LatestObjectProperty_PropertyID] on [VeeamOne].[reporter].[LatestObjectProperty] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_LatestObjectProperty_PropertyID] on [VeeamOne].[reporter].[LatestObjectProperty] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_LatestObjectProperty_PropertyID' AND OBJECT_NAME(S.OBJECT_ID) = 'LatestObjectProperty_' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[LatestObjectProperty_] [IX_LatestObjectProperty_PropertyID] WITH FULLSCAN ;
		END
		PRINT '[IX_LatestObjectProperty_PropertyID] on [VeeamOne].[reporter].[LatestObjectProperty_] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_LatestObjectProperty_PropertyID] on [VeeamOne].[reporter].[LatestObjectProperty_] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_3B7C63E2' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [_WA_Sys_00000008_3B7C63E2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId] WITH FULLSCAN ;
		END
		PRINT '[INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3B7C63E2' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [_WA_Sys_00000003_3B7C63E2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3B7C63E2' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [_WA_Sys_00000004_3B7C63E2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3B7C63E2' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [_WA_Sys_00000005_3B7C63E2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3B7C63E2' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [_WA_Sys_00000007_3B7C63E2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3B7C63E2] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ObjectEntityPropertyValue_Value' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [IX_ObjectEntityPropertyValue_Value] WITH FULLSCAN ;
		END
		PRINT '[IX_ObjectEntityPropertyValue_Value] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ObjectEntityPropertyValue_Value] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ObjectEntityPropertyValue' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [PK_ObjectEntityPropertyValue] WITH FULLSCAN ;
		END
		PRINT '[PK_ObjectEntityPropertyValue] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ObjectEntityPropertyValue] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ObjectEntityPropertyValue_EntityId_IsDeleted' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityPropertyValue' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityPropertyValue] [IX_ObjectEntityPropertyValue_EntityId_IsDeleted] WITH FULLSCAN ;
		END
		PRINT '[IX_ObjectEntityPropertyValue_EntityId_IsDeleted] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ObjectEntityPropertyValue_EntityId_IsDeleted] on [VeeamOne].[reporting].[ObjectEntityPropertyValue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_17_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleMed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleMed] [IX_AIDBA_17_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_17_20220830] on [VeeamOne].[monitor].[PerfSampleMed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_17_20220830] on [VeeamOne].[monitor].[PerfSampleMed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PerfSampleMed' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleMed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleMed] [IX_PerfSampleMed] WITH FULLSCAN ;
		END
		PRINT '[IX_PerfSampleMed] on [VeeamOne].[monitor].[PerfSampleMed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PerfSampleMed] on [VeeamOne].[monitor].[PerfSampleMed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Timestamp' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleMed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleMed] [IX_Timestamp] WITH FULLSCAN ;
		END
		PRINT '[IX_Timestamp] on [VeeamOne].[monitor].[PerfSampleMed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Timestamp] on [VeeamOne].[monitor].[PerfSampleMed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_5BAD9CC8' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleMed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleMed] [_WA_Sys_00000001_5BAD9CC8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_5BAD9CC8] on [VeeamOne].[monitor].[PerfSampleMed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_5BAD9CC8] on [VeeamOne].[monitor].[PerfSampleMed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5BAD9CC8' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleMed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleMed] [_WA_Sys_00000004_5BAD9CC8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5BAD9CC8] on [VeeamOne].[monitor].[PerfSampleMed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5BAD9CC8] on [VeeamOne].[monitor].[PerfSampleMed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_5BAD9CC8' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleMed' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleMed] [_WA_Sys_00000006_5BAD9CC8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_5BAD9CC8] on [VeeamOne].[monitor].[PerfSampleMed] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_5BAD9CC8] on [VeeamOne].[monitor].[PerfSampleMed] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1F4E99FE' AND OBJECT_NAME(S.OBJECT_ID) = 'SessionLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[SessionLog] [_WA_Sys_00000003_1F4E99FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1F4E99FE] on [VeeamOne].[reporter].[SessionLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1F4E99FE] on [VeeamOne].[reporter].[SessionLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1F4E99FE' AND OBJECT_NAME(S.OBJECT_ID) = 'SessionLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[SessionLog] [_WA_Sys_00000004_1F4E99FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1F4E99FE] on [VeeamOne].[reporter].[SessionLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1F4E99FE] on [VeeamOne].[reporter].[SessionLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_SessionLog' AND OBJECT_NAME(S.OBJECT_ID) = 'SessionLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[SessionLog] [IX_SessionLog] WITH FULLSCAN ;
		END
		PRINT '[IX_SessionLog] on [VeeamOne].[reporter].[SessionLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_SessionLog] on [VeeamOne].[reporter].[SessionLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SessionLogs' AND OBJECT_NAME(S.OBJECT_ID) = 'SessionLog' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[SessionLog] [PK_SessionLogs] WITH FULLSCAN ;
		END
		PRINT '[PK_SessionLogs] on [VeeamOne].[reporter].[SessionLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SessionLogs] on [VeeamOne].[reporter].[SessionLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_00000003_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_00000004_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_00000005_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_00000006_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_00000007_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_00000008_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_0000000A_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_0000000C_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_37ABD2FE' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [_WA_Sys_0000000D_37ABD2FE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_37ABD2FE] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_EntityId' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [IX_EntityId] WITH FULLSCAN ;
		END
		PRINT '[IX_EntityId] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_EntityId] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ObjectEntityRelations' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntityRelations' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntityRelations] [PK_ObjectEntityRelations] WITH FULLSCAN ;
		END
		PRINT '[PK_ObjectEntityRelations] on [VeeamOne].[reporting].[ObjectEntityRelations] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ObjectEntityRelations] on [VeeamOne].[reporting].[ObjectEntityRelations] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000002_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000003_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000004_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000005_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000006_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000007_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_31F2F9A8' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [_WA_Sys_00000008_31F2F9A8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_31F2F9A8] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_ObjectEntity_CollectorIdEntityKeyHash' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [INDX_ObjectEntity_CollectorIdEntityKeyHash] WITH FULLSCAN ;
		END
		PRINT '[INDX_ObjectEntity_CollectorIdEntityKeyHash] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_ObjectEntity_CollectorIdEntityKeyHash] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_8_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [IX_AIDBA_8_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_8_20220830] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_8_20220830] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ObjectEntity_IsDeleted_EntityTypeId' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [IX_ObjectEntity_IsDeleted_EntityTypeId] WITH FULLSCAN ;
		END
		PRINT '[IX_ObjectEntity_IsDeleted_EntityTypeId] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ObjectEntity_IsDeleted_EntityTypeId] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ObjectEntity' AND OBJECT_NAME(S.OBJECT_ID) = 'ObjectEntity' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[ObjectEntity] [PK_ObjectEntity] WITH FULLSCAN ;
		END
		PRINT '[PK_ObjectEntity] on [VeeamOne].[reporting].[ObjectEntity] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ObjectEntity] on [VeeamOne].[reporting].[ObjectEntity] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000002_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000003_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000004_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000005_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000006_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000007_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_01BE3717' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [_WA_Sys_00000008_01BE3717] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_01BE3717] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_01BE3717] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_Deleted_Objects' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [IDX_Deleted_Objects] WITH FULLSCAN ;
		END
		PRINT '[IDX_Deleted_Objects] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_Deleted_Objects] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [IX_AIDBA_1_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20220908] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20220908] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_1_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [IX_AIDBA_1_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20220926] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20220926] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [IX_AIDBA_3_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220830] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220830] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Objects' AND OBJECT_NAME(S.OBJECT_ID) = 'Object' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[Object] [PK_Objects] WITH FULLSCAN ;
		END
		PRINT '[PK_Objects] on [VeeamOne].[reporter].[Object] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Objects] on [VeeamOne].[reporter].[Object] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2101D846' AND OBJECT_NAME(S.OBJECT_ID) = 'VISessionTree' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[VISessionTree] [_WA_Sys_00000002_2101D846] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2101D846] on [VeeamOne].[reporter].[VISessionTree] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2101D846] on [VeeamOne].[reporter].[VISessionTree] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_2101D846' AND OBJECT_NAME(S.OBJECT_ID) = 'VISessionTree' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[VISessionTree] [_WA_Sys_00000008_2101D846] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_2101D846] on [VeeamOne].[reporter].[VISessionTree] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_2101D846] on [VeeamOne].[reporter].[VISessionTree] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_2101D846' AND OBJECT_NAME(S.OBJECT_ID) = 'VISessionTree' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[VISessionTree] [_WA_Sys_00000009_2101D846] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_2101D846] on [VeeamOne].[reporter].[VISessionTree] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_2101D846] on [VeeamOne].[reporter].[VISessionTree] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ObjectID' AND OBJECT_NAME(S.OBJECT_ID) = 'VISessionTree' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[VISessionTree] [IX_ObjectID] WITH FULLSCAN ;
		END
		PRINT '[IX_ObjectID] on [VeeamOne].[reporter].[VISessionTree] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ObjectID] on [VeeamOne].[reporter].[VISessionTree] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ObjectTypeID' AND OBJECT_NAME(S.OBJECT_ID) = 'VISessionTree' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[VISessionTree] [IX_ObjectTypeID] WITH FULLSCAN ;
		END
		PRINT '[IX_ObjectTypeID] on [VeeamOne].[reporter].[VISessionTree] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ObjectTypeID] on [VeeamOne].[reporter].[VISessionTree] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'CIDX_Calendar' AND OBJECT_NAME(S.OBJECT_ID) = 'Calendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[Calendar] [CIDX_Calendar] WITH FULLSCAN ;
		END
		PRINT '[CIDX_Calendar] on [VeeamOne].[reporting].[Calendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CIDX_Calendar] on [VeeamOne].[reporting].[Calendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_Calendar' AND OBJECT_NAME(S.OBJECT_ID) = 'Calendar' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporting].[Calendar] [IDX_Calendar] WITH FULLSCAN ;
		END
		PRINT '[IDX_Calendar] on [VeeamOne].[reporting].[Calendar] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_Calendar] on [VeeamOne].[reporting].[Calendar] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_5D95E53A' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleLow' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleLow] [_WA_Sys_00000001_5D95E53A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_5D95E53A] on [VeeamOne].[monitor].[PerfSampleLow] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_5D95E53A] on [VeeamOne].[monitor].[PerfSampleLow] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5D95E53A' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleLow' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleLow] [_WA_Sys_00000004_5D95E53A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5D95E53A] on [VeeamOne].[monitor].[PerfSampleLow] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5D95E53A] on [VeeamOne].[monitor].[PerfSampleLow] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PerfSampleLow' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleLow' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleLow] [IX_PerfSampleLow] WITH FULLSCAN ;
		END
		PRINT '[IX_PerfSampleLow] on [VeeamOne].[monitor].[PerfSampleLow] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PerfSampleLow] on [VeeamOne].[monitor].[PerfSampleLow] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Timestamp' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleLow' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleLow] [IX_Timestamp] WITH FULLSCAN ;
		END
		PRINT '[IX_Timestamp] on [VeeamOne].[monitor].[PerfSampleLow] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Timestamp] on [VeeamOne].[monitor].[PerfSampleLow] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3C34F16F' AND OBJECT_NAME(S.OBJECT_ID) = 'EventEntityLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[EventEntityLink] [_WA_Sys_00000002_3C34F16F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3C34F16F] on [VeeamOne].[monitor].[EventEntityLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3C34F16F] on [VeeamOne].[monitor].[EventEntityLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UN_EventEntityLink' AND OBJECT_NAME(S.OBJECT_ID) = 'EventEntityLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[EventEntityLink] [UN_EventEntityLink] WITH FULLSCAN ;
		END
		PRINT '[UN_EventEntityLink] on [VeeamOne].[monitor].[EventEntityLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UN_EventEntityLink] on [VeeamOne].[monitor].[EventEntityLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000000C_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000000B_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_8_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [IX_AIDBA_8_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_8_20220908] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_8_20220908] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000009_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000012_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_a_10000_VisitorManagementTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [PK_a_10000_VisitorManagementTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_a_10000_VisitorManagementTransaction] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_a_10000_VisitorManagementTransaction] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000000D_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000001A_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000001B_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000019_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000000A_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000002_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000003_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000004_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000007_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000005_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_13_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [IX_AIDBA_13_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_13_20220830] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_13_20220830] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000004_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_033E01E3' AND OBJECT_NAME(S.OBJECT_ID) = 'record' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[collector].[record] [_WA_Sys_00000002_033E01E3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_033E01E3] on [VeeamOne].[collector].[record] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_033E01E3] on [VeeamOne].[collector].[record] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_collection_id' AND OBJECT_NAME(S.OBJECT_ID) = 'record' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[collector].[record] [IX_collection_id] WITH FULLSCAN ;
		END
		PRINT '[IX_collection_id] on [VeeamOne].[collector].[record] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_collection_id] on [VeeamOne].[collector].[record] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_collector.record' AND OBJECT_NAME(S.OBJECT_ID) = 'record' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[collector].[record] [PK_collector.record] WITH FULLSCAN ;
		END
		PRINT '[PK_collector.record] on [VeeamOne].[collector].[record] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_collector.record] on [VeeamOne].[collector].[record] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000005_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000003_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_0000000F_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000027_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000027_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000027_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000027_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_395884C4' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [_WA_Sys_0000000D_395884C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_395884C4] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_395884C4] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_EntityId' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [IX_EntityId] WITH FULLSCAN ;
		END
		PRINT '[IX_EntityId] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_EntityId] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_HostId' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [IX_HostId] WITH FULLSCAN ;
		END
		PRINT '[IX_HostId] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_HostId] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_InternalId' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [IX_InternalId] WITH FULLSCAN ;
		END
		PRINT '[IX_InternalId] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_InternalId] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Time' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [IX_Time] WITH FULLSCAN ;
		END
		PRINT '[IX_Time] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Time] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Type' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [IX_Type] WITH FULLSCAN ;
		END
		PRINT '[IX_Type] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Type] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_0000000F_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000006_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000002_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000003_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000004_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000005_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000006_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000007_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000008_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_00000009_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_7B113988' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [_WA_Sys_0000000A_7B113988] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7B113988] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7B113988] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_StartDate' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [IDX_StartDate] WITH FULLSCAN ;
		END
		PRINT '[IDX_StartDate] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_StartDate] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_11_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [IX_AIDBA_11_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_11_20220830] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_11_20220830] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [IX_AIDBA_3_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220926] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220926] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_4_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [IX_AIDBA_4_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_4_20220908] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_4_20220908] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_TaskSession' AND OBJECT_NAME(S.OBJECT_ID) = 'TaskSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[TaskSession] [PK_TaskSession] WITH FULLSCAN ;
		END
		PRINT '[PK_TaskSession] on [VeeamOne].[reporter].[TaskSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_TaskSession] on [VeeamOne].[reporter].[TaskSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_16644E42' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction] [_WA_Sys_00000015_16644E42] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_16644E42] on [OCS].[dbo].[a_10000_VisitorManagementTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_DBWriterSession' AND OBJECT_NAME(S.OBJECT_ID) = 'DBWriterSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[DBWriterSession] [IX_DBWriterSession] WITH FULLSCAN ;
		END
		PRINT '[IX_DBWriterSession] on [VeeamOne].[reporter].[DBWriterSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_DBWriterSession] on [VeeamOne].[reporter].[DBWriterSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DBWriterSession' AND OBJECT_NAME(S.OBJECT_ID) = 'DBWriterSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[DBWriterSession] [PK_DBWriterSession] WITH FULLSCAN ;
		END
		PRINT '[PK_DBWriterSession] on [VeeamOne].[reporter].[DBWriterSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DBWriterSession] on [VeeamOne].[reporter].[DBWriterSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_160F4887' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] [_WA_Sys_00000001_160F4887] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_160F4887] on [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_160F4887] on [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_160F4887' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] [_WA_Sys_00000002_160F4887] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_160F4887] on [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_160F4887] on [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_160F4887' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10000_VisitorManagementTransaction_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] [_WA_Sys_00000003_160F4887] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_160F4887] on [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_160F4887] on [OCS].[dbo].[a_10000_VisitorManagementTransaction_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000005_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000008_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000009_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000029_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_2_20220926' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [IX_AIDBA_2_20220926] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_2_20220926] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_2_20220926] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_3_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [IX_AIDBA_3_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_3_20220908] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_3_20220908] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_5_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [IX_AIDBA_5_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_5_20220830] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_5_20220830] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_a_a_LoadingAppointmentTimeTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [PK_a_a_LoadingAppointmentTimeTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_a_a_LoadingAppointmentTimeTransaction] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_a_a_LoadingAppointmentTimeTransaction] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000018_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000023_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000024_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000028_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000028_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000007_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2AC04CAA' AND OBJECT_NAME(S.OBJECT_ID) = 'a_a_LoadingAppointmentTimeTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] [_WA_Sys_00000002_2AC04CAA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2AC04CAA] on [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000002_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000004_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000007_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000000A_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000000C_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000000D_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000000E_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000010_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000011_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000012_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000013_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000014_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000015_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000016_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000001D_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000001E_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_0000001F_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000021_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [_WA_Sys_00000021_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_3335971A] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_3335971A] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpSessionTask_Session' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [idx_BpSessionTask_Session] WITH FULLSCAN ;
		END
		PRINT '[idx_BpSessionTask_Session] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpSessionTask_Session] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpSessionTask_src_proxy_uid' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [idx_BpSessionTask_src_proxy_uid] WITH FULLSCAN ;
		END
		PRINT '[idx_BpSessionTask_src_proxy_uid] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpSessionTask_src_proxy_uid] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpSessionTask_start_time' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [idx_BpSessionTask_start_time] WITH FULLSCAN ;
		END
		PRINT '[idx_BpSessionTask_start_time] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpSessionTask_start_time] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpSessionTask_target_proxy_uid' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [idx_BpSessionTask_target_proxy_uid] WITH FULLSCAN ;
		END
		PRINT '[idx_BpSessionTask_target_proxy_uid] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpSessionTask_target_proxy_uid] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpSessionTask_vm_uid' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [idx_BpSessionTask_vm_uid] WITH FULLSCAN ;
		END
		PRINT '[idx_BpSessionTask_vm_uid] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpSessionTask_vm_uid] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_BpSessionTask_bpserveridstarttime' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [INDX_BpSessionTask_bpserveridstarttime] WITH FULLSCAN ;
		END
		PRINT '[INDX_BpSessionTask_bpserveridstarttime] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_BpSessionTask_bpserveridstarttime] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_BpSessionTask_js_status_delete' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [INDX_BpSessionTask_js_status_delete] WITH FULLSCAN ;
		END
		PRINT '[INDX_BpSessionTask_js_status_delete] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_BpSessionTask_js_status_delete] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpSessionTask' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTask' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTask] [PK_BpSessionTask] WITH FULLSCAN ;
		END
		PRINT '[PK_BpSessionTask] on [VeeamOne].[monitor].[BpSessionTask] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpSessionTask] on [VeeamOne].[monitor].[BpSessionTask] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_VwEvent' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [PK_VwEvent] WITH FULLSCAN ;
		END
		PRINT '[PK_VwEvent] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_VwEvent] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_InitiatorId' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [IX_InitiatorId] WITH FULLSCAN ;
		END
		PRINT '[IX_InitiatorId] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_InitiatorId] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_395884C4' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [_WA_Sys_00000007_395884C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_395884C4] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_395884C4] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_395884C4' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [_WA_Sys_00000008_395884C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_395884C4] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_395884C4] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_395884C4' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [_WA_Sys_0000000A_395884C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_395884C4] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_395884C4] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_395884C4' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [_WA_Sys_0000000B_395884C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_395884C4] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_395884C4] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_395884C4' AND OBJECT_NAME(S.OBJECT_ID) = 'Event' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[Event] [_WA_Sys_0000000C_395884C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_395884C4] on [VeeamOne].[monitor].[Event] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_395884C4] on [VeeamOne].[monitor].[Event] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000020_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000007_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_18_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [IX_AIDBA_18_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_18_20220830] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_18_20220830] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000009_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000012_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000013_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000007_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000010_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000018_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000019_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_0000001C_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'Colos')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [Colos].sys.stats S CROSS APPLY [Colos].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_67FE6514' AND OBJECT_NAME(S.OBJECT_ID) = 'pPallet' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [Colos].[dbo].[pPallet] [_WA_Sys_00000020_67FE6514] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_67FE6514] on [Colos].[dbo].[pPallet] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_67FE6514] on [Colos].[dbo].[pPallet] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000008_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_02084FDA' AND OBJECT_NAME(S.OBJECT_ID) = 'aaza_LoadingAppointmentTime_Linkage' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] [_WA_Sys_00000001_02084FDA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_02084FDA' AND OBJECT_NAME(S.OBJECT_ID) = 'aaza_LoadingAppointmentTime_Linkage' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] [_WA_Sys_00000002_02084FDA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_02084FDA' AND OBJECT_NAME(S.OBJECT_ID) = 'aaza_LoadingAppointmentTime_Linkage' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] [_WA_Sys_00000003_02084FDA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000006_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_10_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [IX_AIDBA_10_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_10_20220908] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_10_20220908] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_20_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [IX_AIDBA_20_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_20_20220830] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_20_20220830] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_a_10200_PODs' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [PK_a_10200_PODs] WITH FULLSCAN ;
		END
		PRINT '[PK_a_10200_PODs] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_a_10200_PODs] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000000A_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_0000001C_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_0000000C_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_0000000D_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000006_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_a_WOLorryLoadingTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [PK_a_WOLorryLoadingTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_a_WOLorryLoadingTransaction] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_a_WOLorryLoadingTransaction] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000002_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_0000000A_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000000B_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000005_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000007_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000002_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000019_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000001A_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000000E_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000000F_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000015_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_0000001E_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_06ED0088' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgDtl' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgDtl] [_WA_Sys_00000006_06ED0088] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_06ED0088] on [OCS].[dbo].[PDManArgDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_06ED0088] on [OCS].[dbo].[PDManArgDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_06ED0088' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgDtl' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgDtl] [_WA_Sys_0000000B_06ED0088] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_06ED0088] on [OCS].[dbo].[PDManArgDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_06ED0088] on [OCS].[dbo].[PDManArgDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_12_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [IX_AIDBA_12_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_12_20220908] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_12_20220908] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000001D_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_0000001E_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_0000001B_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2D47B39A' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WOLorryLoadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WOLorryLoadingTransaction] [_WA_Sys_00000005_2D47B39A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2D47B39A] on [OCS].[dbo].[a_WOLorryLoadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_02084FDA' AND OBJECT_NAME(S.OBJECT_ID) = 'aaza_LoadingAppointmentTime_Linkage' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] [_WA_Sys_00000005_02084FDA] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_02084FDA] on [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000021_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000021_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_314D4EA8' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10200_PODs' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10200_PODs] [_WA_Sys_00000008_314D4EA8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_314D4EA8] on [OCS].[dbo].[a_10200_PODs] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_314D4EA8] on [OCS].[dbo].[a_10200_PODs] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000005_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000002_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000018_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000023_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000024_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000028_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000028_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000029_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_13_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [IX_AIDBA_13_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_13_20220908] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_13_20220908] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_4_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [IX_AIDBA_4_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_4_20220830] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_4_20220830] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ab_a_LoadingAppointmentTimeTransaction_CSSA' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [PK_ab_a_LoadingAppointmentTimeTransaction_CSSA] WITH FULLSCAN ;
		END
		PRINT '[PK_ab_a_LoadingAppointmentTimeTransaction_CSSA] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ab_a_LoadingAppointmentTimeTransaction_CSSA] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_2CA8951C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_a_LoadingAppointmentTimeTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] [_WA_Sys_00000007_2CA8951C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_2CA8951C] on [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_0000000C_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_0000000F_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_0000001A_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_00000019_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_7_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [IX_AIDBA_7_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_7_20220908] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_7_20220908] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_0000000A_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_0000000B_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_0000001A_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_0000001B_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000009_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000007_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ab_10000_VisitorManagementTransaction_CSSA' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [PK_ab_10000_VisitorManagementTransaction_CSSA] WITH FULLSCAN ;
		END
		PRINT '[PK_ab_10000_VisitorManagementTransaction_CSSA] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ab_10000_VisitorManagementTransaction_CSSA] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_0000000A_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000019_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_0000000D_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000012_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000002_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000003_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000004_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000005_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_10_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [IX_AIDBA_10_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_10_20220830] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_10_20220830] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_11_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [IX_AIDBA_11_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_11_20220908] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_11_20220908] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000006_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_19_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [IX_AIDBA_19_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_19_20220830] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_19_20220830] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ab_10200_PODs_CSSA' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [PK_ab_10200_PODs_CSSA] WITH FULLSCAN ;
		END
		PRINT '[PK_ab_10200_PODs_CSSA] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ab_10200_PODs_CSSA] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_00000002_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_00000005_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_00000006_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_00000007_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000008_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000001_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000003_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000004_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000005_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000006_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000007_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000008_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_00000009_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_0000000A_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_0000000B_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_0000000C_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [_WA_Sys_0000000D_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_38B96646] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_BpSessionTaskEvent_sessiontaskuidbpserverideventtype' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [INDX_BpSessionTaskEvent_sessiontaskuidbpserverideventtype] WITH FULLSCAN ;
		END
		PRINT '[INDX_BpSessionTaskEvent_sessiontaskuidbpserverideventtype] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_BpSessionTaskEvent_sessiontaskuidbpserverideventtype] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_BpSessionTaskEvent' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [IX_BpSessionTaskEvent] WITH FULLSCAN ;
		END
		PRINT '[IX_BpSessionTaskEvent] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_BpSessionTaskEvent] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpSessionTaskEvent' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskEvent] [PK_BpSessionTaskEvent] WITH FULLSCAN ;
		END
		PRINT '[PK_BpSessionTaskEvent] on [VeeamOne].[monitor].[BpSessionTaskEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpSessionTaskEvent] on [VeeamOne].[monitor].[BpSessionTaskEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_16_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [IX_AIDBA_16_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_16_20220908] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_16_20220908] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ab_WOLorryLoadingTransaction_CSSA' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [PK_ab_WOLorryLoadingTransaction_CSSA] WITH FULLSCAN ;
		END
		PRINT '[PK_ab_WOLorryLoadingTransaction_CSSA] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ab_WOLorryLoadingTransaction_CSSA] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_0000000C_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_0000000D_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_0000001C_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000002_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_15_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [IX_AIDBA_15_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_15_20220830] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_15_20220830] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_0000000A_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000003_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_236943A5' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] [_WA_Sys_00000001_236943A5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_236943A5] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_236943A5] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_236943A5' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] [_WA_Sys_00000002_236943A5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_236943A5] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_236943A5] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_236943A5' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] [_WA_Sys_00000003_236943A5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_236943A5] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_236943A5] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_184C96B4' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10000_VisitorManagementTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] [_WA_Sys_00000015_184C96B4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_184C96B4] on [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_0000001B_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000009_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000006_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000007_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000021_3335971A' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_10200_PODs_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_10200_PODs_CSSA] [_WA_Sys_00000021_3335971A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_3335971A] on [OCS].[dbo].[ab_10200_PODs_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000020_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'bbza_LoadingAppointmentTime_Linkage_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] [_WA_Sys_00000001_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_02FC7413] on [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_02FC7413] on [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'bbza_LoadingAppointmentTime_Linkage_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] [_WA_Sys_00000002_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_02FC7413] on [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_02FC7413] on [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_02FC7413' AND OBJECT_NAME(S.OBJECT_ID) = 'bbza_LoadingAppointmentTime_Linkage_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] [_WA_Sys_00000003_02FC7413] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_02FC7413] on [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_02FC7413] on [OCS].[dbo].[bbza_LoadingAppointmentTime_Linkage_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000013_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2F2FFC0C' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WOLorryLoadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] [_WA_Sys_00000005_2F2FFC0C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2F2FFC0C] on [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_180E3640' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleDay] [_WA_Sys_00000002_180E3640] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_180E3640] on [VeeamOne].[monitor].[PerfSampleDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_180E3640] on [VeeamOne].[monitor].[PerfSampleDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_24_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleDay] [IX_AIDBA_24_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_24_20220830] on [VeeamOne].[monitor].[PerfSampleDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_24_20220830] on [VeeamOne].[monitor].[PerfSampleDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_PerfSampleDay' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleDay] [IX_PerfSampleDay] WITH FULLSCAN ;
		END
		PRINT '[IX_PerfSampleDay] on [VeeamOne].[monitor].[PerfSampleDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_PerfSampleDay] on [VeeamOne].[monitor].[PerfSampleDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Timestamp' AND OBJECT_NAME(S.OBJECT_ID) = 'PerfSampleDay' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[PerfSampleDay] [IX_Timestamp] WITH FULLSCAN ;
		END
		PRINT '[IX_Timestamp] on [VeeamOne].[monitor].[PerfSampleDay] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Timestamp] on [VeeamOne].[monitor].[PerfSampleDay] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000002_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000004_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000005_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000007_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000009_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000000A_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000000B_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000000C_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000000D_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000000F_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000010_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000012_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000013_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000014_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000017_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000017_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000017_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000017_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000001A_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000001B_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000001C_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000001D_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_0000001E_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_0A338187' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [_WA_Sys_00000020_0A338187] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_0A338187] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_0A338187] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IBpJobSession_start_time' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [IBpJobSession_start_time] WITH FULLSCAN ;
		END
		PRINT '[IBpJobSession_start_time] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IBpJobSession_start_time] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpJobSession_bp_server_id_job_id' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [idx_BpJobSession_bp_server_id_job_id] WITH FULLSCAN ;
		END
		PRINT '[idx_BpJobSession_bp_server_id_job_id] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpJobSession_bp_server_id_job_id] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'idx_BpJobSession_job_id' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [idx_BpJobSession_job_id] WITH FULLSCAN ;
		END
		PRINT '[idx_BpJobSession_job_id] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idx_BpJobSession_job_id] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_5_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [IX_AIDBA_5_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_5_20220908] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_5_20220908] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_6_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [IX_AIDBA_6_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_6_20220830] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_6_20220830] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpJobSession' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSession' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSession] [PK_BpJobSession] WITH FULLSCAN ;
		END
		PRINT '[PK_BpJobSession] on [VeeamOne].[monitor].[BpJobSession] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpJobSession] on [VeeamOne].[monitor].[BpJobSession] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000006_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000003_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_0000001C_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000009_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_0000000A_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000016_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000019_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000008_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000007_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_0000000C_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000018_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_23_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [IX_AIDBA_23_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_23_20220830] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_23_20220830] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_a_WILorryUnloadingTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [PK_a_WILorryUnloadingTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_a_WILorryUnloadingTransaction] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_a_WILorryUnloadingTransaction] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000005_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_086B34A6' AND OBJECT_NAME(S.OBJECT_ID) = 'a_WILorryUnloadingTransaction' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_WILorryUnloadingTransaction] [_WA_Sys_00000002_086B34A6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_086B34A6] on [OCS].[dbo].[a_WILorryUnloadingTransaction] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_0000000C_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000006_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_0000000D_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_9_20220908' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [IX_AIDBA_9_20220908] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_9_20220908] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_9_20220908] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_0000001A_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_0000001B_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000019_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_c_10000_VisitorManagementTransaction_AGT' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [PK_c_10000_VisitorManagementTransaction_AGT] WITH FULLSCAN ;
		END
		PRINT '[PK_c_10000_VisitorManagementTransaction_AGT] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_c_10000_VisitorManagementTransaction_AGT] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000012_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000002_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000007_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_0000000B_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000009_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_0000000A_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000003_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000004_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_21_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [IX_AIDBA_21_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_21_20220830] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_21_20220830] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000005_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002B_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_0000002B_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002B_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002B_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5AEE82B9' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [_WA_Sys_00000002_5AEE82B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5AEE82B9' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [_WA_Sys_00000003_5AEE82B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5AEE82B9' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [_WA_Sys_00000004_5AEE82B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_5AEE82B9' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [_WA_Sys_00000005_5AEE82B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_5AEE82B9' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [_WA_Sys_00000006_5AEE82B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_5AEE82B9' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [_WA_Sys_00000007_5AEE82B9] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_5AEE82B9] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1387E197' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [_WA_Sys_00000002_1387E197] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1387E197' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [_WA_Sys_00000003_1387E197] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1387E197' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [_WA_Sys_00000004_1387E197] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'AIDBA_NCIX_220522073110' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [AIDBA_NCIX_220522073110] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_NCIX_220522073110] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_NCIX_220522073110] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000005_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000003_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000002_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_c_a_LoadingAppointmentTimeTransaction_AGT' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [PK_c_a_LoadingAppointmentTimeTransaction_AGT] WITH FULLSCAN ;
		END
		PRINT '[PK_c_a_LoadingAppointmentTimeTransaction_AGT] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_c_a_LoadingAppointmentTimeTransaction_AGT] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000007_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000016_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000018_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000023_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000024_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000028_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000028_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_2E90DD8E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_a_LoadingAppointmentTimeTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] [_WA_Sys_00000029_2E90DD8E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_2E90DD8E] on [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_5C37ACAD' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] [_WA_Sys_00000001_5C37ACAD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_5C37ACAD] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_5C37ACAD] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5C37ACAD' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] [_WA_Sys_00000002_5C37ACAD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5C37ACAD] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5C37ACAD] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_5C37ACAD' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT_Link' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] [_WA_Sys_00000003_5C37ACAD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5C37ACAD] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5C37ACAD] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT_Link] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_0000001C_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_0000000D_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000007_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000006_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_0000000C_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000013_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_c_WOLorryLoadingTransaction_AGT' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [PK_c_WOLorryLoadingTransaction_AGT] WITH FULLSCAN ;
		END
		PRINT '[PK_c_WOLorryLoadingTransaction_AGT] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_c_WOLorryLoadingTransaction_AGT] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000002_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000005_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000003_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_0000000A_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000020_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_7226EDCC' AND OBJECT_NAME(S.OBJECT_ID) = 'ccza_LoadingAppointmentTime_Linkage_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] [_WA_Sys_00000001_7226EDCC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_7226EDCC] on [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_7226EDCC] on [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7226EDCC' AND OBJECT_NAME(S.OBJECT_ID) = 'ccza_LoadingAppointmentTime_Linkage_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] [_WA_Sys_00000002_7226EDCC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7226EDCC] on [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7226EDCC] on [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7226EDCC' AND OBJECT_NAME(S.OBJECT_ID) = 'ccza_LoadingAppointmentTime_Linkage_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] [_WA_Sys_00000003_7226EDCC] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7226EDCC] on [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7226EDCC] on [OCS].[dbo].[ccza_LoadingAppointmentTime_Linkage_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'EventTag' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[EventTag] [_WA_Sys_00000002_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_40058253] on [VeeamOne].[monitor].[EventTag] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_40058253] on [VeeamOne].[monitor].[EventTag] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'EventTag' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[EventTag] [_WA_Sys_00000003_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_40058253] on [VeeamOne].[monitor].[EventTag] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_40058253] on [VeeamOne].[monitor].[EventTag] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_EventId' AND OBJECT_NAME(S.OBJECT_ID) = 'EventTag' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[EventTag] [IX_EventId] WITH FULLSCAN ;
		END
		PRINT '[IX_EventId] on [VeeamOne].[monitor].[EventTag] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_EventId] on [VeeamOne].[monitor].[EventTag] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_1A34DF26' AND OBJECT_NAME(S.OBJECT_ID) = 'c_10000_VisitorManagementTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] [_WA_Sys_00000015_1A34DF26] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_1A34DF26] on [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000015_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CommonDB')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CommonDB].sys.stats S CROSS APPLY [CommonDB].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_QueryDate' AND OBJECT_NAME(S.OBJECT_ID) = 'ERP_EpicorLicense' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CommonDB].[dbo].[ERP_EpicorLicense] [IX_QueryDate] WITH FULLSCAN ;
		END
		PRINT '[IX_QueryDate] on [CommonDB].[dbo].[ERP_EpicorLicense] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_QueryDate] on [CommonDB].[dbo].[ERP_EpicorLicense] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_1387E197' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [_WA_Sys_00000006_1387E197] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_1387E197' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [_WA_Sys_0000000B_1387E197] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_1387E197' AND OBJECT_NAME(S.OBJECT_ID) = 'a_COMMON_WIUnloadingMaterialList' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] [_WA_Sys_00000013_1387E197] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_1387E197] on [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'c_WOLorryLoadingTransaction_AGT' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] [_WA_Sys_00000008_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_3118447E] on [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_782B7693' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionFailsInfo] [_WA_Sys_00000002_782B7693] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_782B7693] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_782B7693] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_782B7693' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionFailsInfo] [_WA_Sys_00000003_782B7693] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_782B7693] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_782B7693] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_782B7693' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionFailsInfo] [_WA_Sys_00000004_782B7693] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_782B7693] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_782B7693] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpJobSessionFailsInfo' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionFailsInfo] [PK_BpJobSessionFailsInfo] WITH FULLSCAN ;
		END
		PRINT '[PK_BpJobSessionFailsInfo] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpJobSessionFailsInfo] on [VeeamOne].[monitor].[BpJobSessionFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_7D63964E' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgLineDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgLineDetail] [_WA_Sys_00000006_7D63964E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_7D63964E' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgLineDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgLineDetail] [_WA_Sys_0000000B_7D63964E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000001_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionEvent] [_WA_Sys_00000001_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionEvent] [_WA_Sys_00000003_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionEvent] [_WA_Sys_00000004_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionEvent] [_WA_Sys_00000005_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_3118447E' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionEvent] [_WA_Sys_00000006_3118447E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3118447E] on [VeeamOne].[monitor].[BpJobSessionEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpJobSessionEvent' AND OBJECT_NAME(S.OBJECT_ID) = 'BpJobSessionEvent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpJobSessionEvent] [PK_BpJobSessionEvent] WITH FULLSCAN ;
		END
		PRINT '[PK_BpJobSessionEvent] on [VeeamOne].[monitor].[BpJobSessionEvent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpJobSessionEvent] on [VeeamOne].[monitor].[BpJobSessionEvent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PDManArgLineDetail_1' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgLineDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgLineDetail] [PK_PDManArgLineDetail_1] WITH FULLSCAN ;
		END
		PRINT '[PK_PDManArgLineDetail_1] on [OCS].[dbo].[PDManArgLineDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PDManArgLineDetail_1] on [OCS].[dbo].[PDManArgLineDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7D63964E' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgLineDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgLineDetail] [_WA_Sys_00000003_7D63964E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_36B649E1' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePoint] [_WA_Sys_00000003_36B649E1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_36B649E1' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePoint] [_WA_Sys_00000004_36B649E1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_6C390A4C' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [_WA_Sys_00000003_6C390A4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_6C390A4C' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [_WA_Sys_00000004_6C390A4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_6C390A4C' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [_WA_Sys_00000006_6C390A4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_6C390A4C' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [_WA_Sys_00000007_6C390A4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_AIDBA_16_20220830' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [IX_AIDBA_16_20220830] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_16_20220830] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_16_20220830] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7D63964E' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgLineDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgLineDetail] [_WA_Sys_00000004_7D63964E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7D63964E] on [OCS].[dbo].[PDManArgLineDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'CK_PDManArgLineDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'PDManArgLineDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[PDManArgLineDetail] [CK_PDManArgLineDetail] WITH FULLSCAN ;
		END
		PRINT '[CK_PDManArgLineDetail] on [OCS].[dbo].[PDManArgLineDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CK_PDManArgLineDetail] on [OCS].[dbo].[PDManArgLineDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpVmRestorePoint' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [PK_BpVmRestorePoint] WITH FULLSCAN ;
		END
		PRINT '[PK_BpVmRestorePoint] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpVmRestorePoint] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IDX_BpVmRestorePoint' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [IDX_BpVmRestorePoint] WITH FULLSCAN ;
		END
		PRINT '[IDX_BpVmRestorePoint] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDX_BpVmRestorePoint] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] WITH FULLSCAN ;
		END
		PRINT '[INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] WITH FULLSCAN ;
		END
		PRINT '[INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_6C390A4C' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [_WA_Sys_00000005_6C390A4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_6C390A4C' AND OBJECT_NAME(S.OBJECT_ID) = 'BpVmRestorePointTable' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpVmRestorePointTable] [_WA_Sys_00000002_6C390A4C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_6C390A4C] on [VeeamOne].[monitor].[BpVmRestorePointTable] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_36B649E1' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePoint] [_WA_Sys_00000012_36B649E1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpObjectRestorePoint' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePoint] [PK_BpObjectRestorePoint] WITH FULLSCAN ;
		END
		PRINT '[PK_BpObjectRestorePoint] on [VeeamOne].[monitor].[BpObjectRestorePoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpObjectRestorePoint] on [VeeamOne].[monitor].[BpObjectRestorePoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_3A86DAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePointEx' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePointEx] [_WA_Sys_00000002_3A86DAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3A86DAC5] on [VeeamOne].[monitor].[BpObjectRestorePointEx] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3A86DAC5] on [VeeamOne].[monitor].[BpObjectRestorePointEx] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_3A86DAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePointEx' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePointEx] [_WA_Sys_00000009_3A86DAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_3A86DAC5] on [VeeamOne].[monitor].[BpObjectRestorePointEx] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_3A86DAC5] on [VeeamOne].[monitor].[BpObjectRestorePointEx] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpObjectRestorePointEx' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePointEx' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePointEx] [PK_BpObjectRestorePointEx] WITH FULLSCAN ;
		END
		PRINT '[PK_BpObjectRestorePointEx] on [VeeamOne].[monitor].[BpObjectRestorePointEx] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpObjectRestorePointEx] on [VeeamOne].[monitor].[BpObjectRestorePointEx] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_36B649E1' AND OBJECT_NAME(S.OBJECT_ID) = 'BpObjectRestorePoint' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpObjectRestorePoint] [_WA_Sys_00000002_36B649E1] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_36B649E1] on [VeeamOne].[monitor].[BpObjectRestorePoint] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BackupTrustHistory' AND OBJECT_NAME(S.OBJECT_ID) = 'BackupTrustHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BackupTrustHistory] [PK_BackupTrustHistory] WITH FULLSCAN ;
		END
		PRINT '[PK_BackupTrustHistory] on [VeeamOne].[monitor].[BackupTrustHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BackupTrustHistory] on [VeeamOne].[monitor].[BackupTrustHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_43A1090D' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10100_OTCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10100_OTCharges] [_WA_Sys_00000005_43A1090D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_43A1090D] on [OCS].[dbo].[a_10100_OTCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_43A1090D] on [OCS].[dbo].[a_10100_OTCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_43A1090D' AND OBJECT_NAME(S.OBJECT_ID) = 'a_10100_OTCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[a_10100_OTCharges] [_WA_Sys_0000000B_43A1090D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_43A1090D] on [OCS].[dbo].[a_10100_OTCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_43A1090D] on [OCS].[dbo].[a_10100_OTCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_7CF02BB0' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskFailsInfo] [_WA_Sys_00000002_7CF02BB0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7CF02BB0] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7CF02BB0] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_7CF02BB0' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskFailsInfo] [_WA_Sys_00000003_7CF02BB0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7CF02BB0] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7CF02BB0] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_7CF02BB0' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskFailsInfo] [_WA_Sys_00000004_7CF02BB0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7CF02BB0] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7CF02BB0] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BpSessionTaskFailsInfo' AND OBJECT_NAME(S.OBJECT_ID) = 'BpSessionTaskFailsInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[BpSessionTaskFailsInfo] [PK_BpSessionTaskFailsInfo] WITH FULLSCAN ;
		END
		PRINT '[PK_BpSessionTaskFailsInfo] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BpSessionTaskFailsInfo] on [VeeamOne].[monitor].[BpSessionTaskFailsInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_ReportDataSetFields_DataSetID' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportDataSetFields' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ReportDataSetFields] [IX_ReportDataSetFields_DataSetID] WITH FULLSCAN ;
		END
		PRINT '[IX_ReportDataSetFields_DataSetID] on [VeeamOne].[reporter].[ReportDataSetFields] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_ReportDataSetFields_DataSetID] on [VeeamOne].[reporter].[ReportDataSetFields] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ReportDataSetFields' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportDataSetFields' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[reporter].[ReportDataSetFields] [PK_ReportDataSetFields] WITH FULLSCAN ;
		END
		PRINT '[PK_ReportDataSetFields] on [VeeamOne].[reporter].[ReportDataSetFields] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ReportDataSetFields] on [VeeamOne].[reporter].[ReportDataSetFields] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000016_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000009_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_0000000A_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000008_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000006_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000007_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000018_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ab_WILorryUnloadingTransaction_CSSA' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [PK_ab_WILorryUnloadingTransaction_CSSA] WITH FULLSCAN ;
		END
		PRINT '[PK_ab_WILorryUnloadingTransaction_CSSA] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ab_WILorryUnloadingTransaction_CSSA] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_0000000C_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000015_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000002_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000003_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'OCS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [OCS].sys.stats S CROSS APPLY [OCS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_058EC7FB' AND OBJECT_NAME(S.OBJECT_ID) = 'ab_WILorryUnloadingTransaction_CSSA' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] [_WA_Sys_00000005_058EC7FB] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_058EC7FB] on [OCS].[dbo].[ab_WILorryUnloadingTransaction_CSSA] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_1CD2EB5D' AND OBJECT_NAME(S.OBJECT_ID) = 'HistoryAdvTriggAlarm' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[HistoryAdvTriggAlarm] [_WA_Sys_00000002_1CD2EB5D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_1CD2EB5D] on [VeeamOne].[monitor].[HistoryAdvTriggAlarm] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_1CD2EB5D] on [VeeamOne].[monitor].[HistoryAdvTriggAlarm] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1CD2EB5D' AND OBJECT_NAME(S.OBJECT_ID) = 'HistoryAdvTriggAlarm' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[HistoryAdvTriggAlarm] [_WA_Sys_00000003_1CD2EB5D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1CD2EB5D] on [VeeamOne].[monitor].[HistoryAdvTriggAlarm] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1CD2EB5D] on [VeeamOne].[monitor].[HistoryAdvTriggAlarm] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'VeeamOne')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [VeeamOne].sys.stats S CROSS APPLY [VeeamOne].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1CD2EB5D' AND OBJECT_NAME(S.OBJECT_ID) = 'HistoryAdvTriggAlarm' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [VeeamOne].[monitor].[HistoryAdvTriggAlarm] [_WA_Sys_00000004_1CD2EB5D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1CD2EB5D] on [VeeamOne].[monitor].[HistoryAdvTriggAlarm] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1CD2EB5D] on [VeeamOne].[monitor].[HistoryAdvTriggAlarm] cannot be updated.';			
	END CATCH;
END
	