
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iNewObject_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iNewObject_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iNewObject_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iNewObject_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iOldObject_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iOldObject_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iOldObject_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iOldObject_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [PK_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[PK_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iOperationType_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iOperationType_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iOperationType_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iOperationType_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iUserName_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iUserName_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iUserName_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iUserName_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iObjectType_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iObjectType_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iObjectType_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iObjectType_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_5441852A' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [_WA_Sys_00000005_5441852A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_5441852A' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [_WA_Sys_00000009_5441852A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_5441852A' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [_WA_Sys_0000000A_5441852A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_5441852A' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [_WA_Sys_0000000F_5441852A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_5441852A' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [_WA_Sys_00000010_5441852A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_5441852A] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iAuditedObject_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iAuditedObject_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iAuditedObject_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iAuditedObject_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGCRecord_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iGCRecord_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iGCRecord_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGCRecord_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iModifiedOn_AuditDataItemPersistent' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditDataItemPersistent' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] [iModifiedOn_AuditDataItemPersistent] WITH FULLSCAN ;
		END
		PRINT '[iModifiedOn_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iModifiedOn_AuditDataItemPersistent] on [CHUANSINCACTUS].[dbo].[AuditDataItemPersistent] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_31D75E8D' AND OBJECT_NAME(S.OBJECT_ID) = 'XPWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[XPWeakReference] [_WA_Sys_00000002_31D75E8D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_31D75E8D] on [CHUANSINCACTUS].[dbo].[XPWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_31D75E8D] on [CHUANSINCACTUS].[dbo].[XPWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGCRecord_XPWeakReference' AND OBJECT_NAME(S.OBJECT_ID) = 'XPWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[XPWeakReference] [iGCRecord_XPWeakReference] WITH FULLSCAN ;
		END
		PRINT '[iGCRecord_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGCRecord_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTargetKey_XPWeakReference' AND OBJECT_NAME(S.OBJECT_ID) = 'XPWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[XPWeakReference] [iTargetKey_XPWeakReference] WITH FULLSCAN ;
		END
		PRINT '[iTargetKey_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTargetKey_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTargetType_XPWeakReference' AND OBJECT_NAME(S.OBJECT_ID) = 'XPWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[XPWeakReference] [iTargetType_XPWeakReference] WITH FULLSCAN ;
		END
		PRINT '[iTargetType_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTargetType_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_XPWeakReference' AND OBJECT_NAME(S.OBJECT_ID) = 'XPWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[XPWeakReference] [PK_XPWeakReference] WITH FULLSCAN ;
		END
		PRINT '[PK_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_XPWeakReference] on [CHUANSINCACTUS].[dbo].[XPWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_5629CD9C' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditedObjectWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] [_WA_Sys_00000004_5629CD9C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5629CD9C] on [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5629CD9C] on [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_AuditedObjectWeakReference' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditedObjectWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] [PK_AuditedObjectWeakReference] WITH FULLSCAN ;
		END
		PRINT '[PK_AuditedObjectWeakReference] on [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_AuditedObjectWeakReference] on [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5629CD9C' AND OBJECT_NAME(S.OBJECT_ID) = 'AuditedObjectWeakReference' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] [_WA_Sys_00000002_5629CD9C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5629CD9C] on [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5629CD9C] on [CHUANSINCACTUS].[dbo].[AuditedObjectWeakReference] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000013_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_0000001C_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTaxCodeId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iTaxCodeId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iTaxCodeId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTaxCodeId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_0000000B_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_0000000C_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPostingDate_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iPostingDate_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iPostingDate_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPostingDate_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDocumentId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iDocumentId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iDocumentId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDocumentId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iGLAccountId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'TransactionTypeId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [TransactionTypeId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[TransactionTypeId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TransactionTypeId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000010_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000012_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000015_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000017_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000017_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000017_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000017_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000004_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_0000001E_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GLTransaction' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [PK_GLTransaction] WITH FULLSCAN ;
		END
		PRINT '[PK_GLTransaction] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GLTransaction] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCurrencyId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iCurrencyId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iCurrencyId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCurrencyId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTransactionDate_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iTransactionDate_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iTransactionDate_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTransactionDate_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000020_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000022_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000022_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000014_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000002_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_0000000F_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000005_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000006_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_0000000A_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCostCentreId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iCostCentreId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iCostCentreId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCostCentreId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iProjectId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iProjectId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iProjectId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iProjectId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTransactionId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iTransactionId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iTransactionId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTransactionId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_70A8B9AE' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [_WA_Sys_00000011_70A8B9AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_70A8B9AE] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_18EBB532' AND OBJECT_NAME(S.OBJECT_ID) = 'CreditControlDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[CreditControlDetail] [_WA_Sys_00000003_18EBB532] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_18EBB532] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_18EBB532] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_18EBB532' AND OBJECT_NAME(S.OBJECT_ID) = 'CreditControlDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[CreditControlDetail] [_WA_Sys_00000004_18EBB532] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_18EBB532] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_18EBB532] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCreditControlId_CreditControlDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'CreditControlDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[CreditControlDetail] [iCreditControlId_CreditControlDetail] WITH FULLSCAN ;
		END
		PRINT '[iCreditControlId_CreditControlDetail] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCreditControlId_CreditControlDetail] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDepartmentId_GLTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'GLTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLTransactions] [iDepartmentId_GLTransactions] WITH FULLSCAN ;
		END
		PRINT '[iDepartmentId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDepartmentId_GLTransactions] on [CHUANSINCACTUS].[dbo].[GLTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_18EBB532' AND OBJECT_NAME(S.OBJECT_ID) = 'CreditControlDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[CreditControlDetail] [_WA_Sys_00000009_18EBB532] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_18EBB532] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_18EBB532] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_CreditControlDetail' AND OBJECT_NAME(S.OBJECT_ID) = 'CreditControlDetail' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[CreditControlDetail] [PK_CreditControlDetail] WITH FULLSCAN ;
		END
		PRINT '[PK_CreditControlDetail] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_CreditControlDetail] on [CHUANSINCACTUS].[dbo].[CreditControlDetail] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000014_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000002_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000000C_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000000F_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000015_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000019_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000001C_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000023_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000029_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002A_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000002A_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002A_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002A_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCostCentreId_StockTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [iCostCentreId_StockTransactions] WITH FULLSCAN ;
		END
		PRINT '[iCostCentreId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCostCentreId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iProjectId_StockTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [iProjectId_StockTransactions] WITH FULLSCAN ;
		END
		PRINT '[iProjectId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iProjectId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTaxCodeId_StockTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [iTaxCodeId_StockTransactions] WITH FULLSCAN ;
		END
		PRINT '[iTaxCodeId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTaxCodeId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000013_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000001D_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000001E_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000001F_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000020_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000022_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000022_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000001B_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000010_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000003_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000009_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000000A_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_0000000B_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPurchaseOrderDetail_PurchaseTransferLink' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseTransferLink] [iPurchaseOrderDetail_PurchaseTransferLink] WITH FULLSCAN ;
		END
		PRINT '[iPurchaseOrderDetail_PurchaseTransferLink] on [CHUANSINCACTUS].[dbo].[PurchaseTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPurchaseOrderDetail_PurchaseTransferLink] on [CHUANSINCACTUS].[dbo].[PurchaseTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_67A95F59' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [_WA_Sys_00000002_67A95F59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_67A95F59] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_67A95F59] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_15A53433' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseTransferLink] [_WA_Sys_00000007_15A53433] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_15A53433] on [CHUANSINCACTUS].[dbo].[PurchaseTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_15A53433] on [CHUANSINCACTUS].[dbo].[PurchaseTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_67A95F59' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [_WA_Sys_00000008_67A95F59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_67A95F59] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_67A95F59] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_67A95F59' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [_WA_Sys_0000000A_67A95F59] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_67A95F59] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_67A95F59] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGCRecord_SecuritySystemTypePermissionsObject' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [iGCRecord_SecuritySystemTypePermissionsObject] WITH FULLSCAN ;
		END
		PRINT '[iGCRecord_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGCRecord_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iObjectType_SecuritySystemTypePermissionsObject' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [iObjectType_SecuritySystemTypePermissionsObject] WITH FULLSCAN ;
		END
		PRINT '[iObjectType_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iObjectType_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iOwner_SecuritySystemTypePermissionsObject' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [iOwner_SecuritySystemTypePermissionsObject] WITH FULLSCAN ;
		END
		PRINT '[iOwner_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iOwner_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SecuritySystemTypePermissionsObject' AND OBJECT_NAME(S.OBJECT_ID) = 'SecuritySystemTypePermissionsObject' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] [PK_SecuritySystemTypePermissionsObject] WITH FULLSCAN ;
		END
		PRINT '[PK_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SecuritySystemTypePermissionsObject] on [CHUANSINCACTUS].[dbo].[SecuritySystemTypePermissionsObject] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DocumentInfo' AND OBJECT_NAME(S.OBJECT_ID) = 'DocumentInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DocumentInfo] [PK_DocumentInfo] WITH FULLSCAN ;
		END
		PRINT '[PK_DocumentInfo] on [CHUANSINCACTUS].[dbo].[DocumentInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DocumentInfo] on [CHUANSINCACTUS].[dbo].[DocumentInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000004_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000014_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000014_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000019_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000001B_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000027_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000027_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000027_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000027_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000029_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002B_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000002B_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002B_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002B_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000050_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000050_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000050_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000050_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDepartmentId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iDepartmentId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iDepartmentId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDepartmentId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000001F_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockBatchNumberId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iStockBatchNumberId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockBatchNumberId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockBatchNumberId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTaxCodeId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iTaxCodeId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iTaxCodeId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTaxCodeId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_43E1002F' AND OBJECT_NAME(S.OBJECT_ID) = 'DocumentInfo' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DocumentInfo] [_WA_Sys_00000009_43E1002F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_43E1002F] on [CHUANSINCACTUS].[dbo].[DocumentInfo] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_43E1002F] on [CHUANSINCACTUS].[dbo].[DocumentInfo] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iProjectId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iProjectId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iProjectId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iProjectId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCostCentreId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iCostCentreId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iCostCentreId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCostCentreId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000032_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000032_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000032_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000032_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [PK_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockLocationId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iStockLocationId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockLocationId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockLocationId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000000F_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTransferLink_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iTransferLink_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iTransferLink_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTransferLink_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSalesInvoiceId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iSalesInvoiceId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iSalesInvoiceId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSalesInvoiceId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iStockId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPackingUOMId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iPackingUOMId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iPackingUOMId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPackingUOMId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000011_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_00000002_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iUOMId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iUOMId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iUOMId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iUOMId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000030_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_00000030_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000030_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000030_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002C_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000002C_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002C_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002C_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000001C_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000047_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_00000047_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000047_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000047_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_00000006_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_0000001B_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_0000001E_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockLocationId_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iStockLocationId_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockLocationId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockLocationId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTransferLink_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iTransferLink_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iTransferLink_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTransferLink_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPurchaseOrderId_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iPurchaseOrderId_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iPurchaseOrderId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPurchaseOrderId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSOTOPOTransferLink_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iSOTOPOTransferLink_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iSOTOPOTransferLink_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSOTOPOTransferLink_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockId_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iStockId_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iUOMId_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iUOMId_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iUOMId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iUOMId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002F_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_0000002F_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002F_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002F_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_0000000A_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_00AA174D' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [_WA_Sys_0000001F_00AA174D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_00AA174D] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000052_74794A92' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [_WA_Sys_00000052_74794A92] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000052_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000052_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_5C37ACAD' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [_WA_Sys_00000002_5C37ACAD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5C37ACAD] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5C37ACAD] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iQuotationDetail_SalesTransferLink' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [iQuotationDetail_SalesTransferLink] WITH FULLSCAN ;
		END
		PRINT '[iQuotationDetail_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iQuotationDetail_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_0000001D_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000036_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_00000036_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000036_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000036_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iGLAccountId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCostCentreId_DeliveryOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [iCostCentreId_DeliveryOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iCostCentreId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCostCentreId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iProjectId_DeliveryOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [iProjectId_DeliveryOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iProjectId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iProjectId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockBatchNumberId_DeliveryOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [iStockBatchNumberId_DeliveryOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockBatchNumberId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockBatchNumberId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockLocationId_DeliveryOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [iStockLocationId_DeliveryOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockLocationId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockLocationId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTaxCodeId_DeliveryOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [iTaxCodeId_DeliveryOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iTaxCodeId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTaxCodeId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPackingUOMId_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [iPackingUOMId_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iPackingUOMId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPackingUOMId_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004F_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_0000004F_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004F_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004F_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGoodsReceivedNoteId_GoodsReceivedNoteDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [iGoodsReceivedNoteId_GoodsReceivedNoteDetails] WITH FULLSCAN ;
		END
		PRINT '[iGoodsReceivedNoteId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGoodsReceivedNoteId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_74794A92' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [_WA_Sys_0000001E_74794A92] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockId_GoodsReceivedNoteDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [iStockId_GoodsReceivedNoteDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iUOMId_GoodsReceivedNoteDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [iUOMId_GoodsReceivedNoteDetails] WITH FULLSCAN ;
		END
		PRINT '[iUOMId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iUOMId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000031_74794A92' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [_WA_Sys_00000031_74794A92] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000031_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000031_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'StockSalesPriceHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] [_WA_Sys_0000000A_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_38B96646] on [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_38B96646] on [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_5C37ACAD' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [_WA_Sys_00000007_5C37ACAD] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_5C37ACAD] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_5C37ACAD] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000031_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_00000031_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000031_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000031_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSourceKey_SalesTransferLink' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [iSourceKey_SalesTransferLink] WITH FULLSCAN ;
		END
		PRINT '[iSourceKey_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSourceKey_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PurchaseOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] [PK_PurchaseOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PurchaseOrderDetails] on [CHUANSINCACTUS].[dbo].[PurchaseOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SalesTransferLink' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [PK_SalesTransferLink] WITH FULLSCAN ;
		END
		PRINT '[PK_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDeliveryOrderDetail_SalesTransferLink' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [iDeliveryOrderDetail_SalesTransferLink] WITH FULLSCAN ;
		END
		PRINT '[iDeliveryOrderDetail_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDeliveryOrderDetail_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSalesOrderDetail_SalesTransferLink' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesTransferLink' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesTransferLink] [iSalesOrderDetail_SalesTransferLink] WITH FULLSCAN ;
		END
		PRINT '[iSalesOrderDetail_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSalesOrderDetail_SalesTransferLink] on [CHUANSINCACTUS].[dbo].[SalesTransferLink] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GoodsReceivedNoteDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [PK_GoodsReceivedNoteDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_0000000E_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002F_79FD19BE' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [_WA_Sys_0000002F_79FD19BE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002F_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002F_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000050_79FD19BE' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [_WA_Sys_00000050_79FD19BE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000050_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000050_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_79FD19BE' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [_WA_Sys_0000001D_79FD19BE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDebtorItemId_SalesInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [iDebtorItemId_SalesInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iDebtorItemId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDebtorItemId_SalesInvoiceDetails] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPurchaseInvoiceId_PurchaseInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [iPurchaseInvoiceId_PurchaseInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iPurchaseInvoiceId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPurchaseInvoiceId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockId_PurchaseInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [iStockId_PurchaseInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTransferLink_PurchaseInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [iTransferLink_PurchaseInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iTransferLink_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTransferLink_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPackingUOMId_DeliveryOrderDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [iPackingUOMId_DeliveryOrderDetails] WITH FULLSCAN ;
		END
		PRINT '[iPackingUOMId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPackingUOMId_DeliveryOrderDetails] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_46136164' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [_WA_Sys_00000011_46136164] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_46136164] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockBatchNumberId_StockTransactions' AND OBJECT_NAME(S.OBJECT_ID) = 'StockTransactions' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockTransactions] [iStockBatchNumberId_StockTransactions] WITH FULLSCAN ;
		END
		PRINT '[iStockBatchNumberId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockBatchNumberId_StockTransactions] on [CHUANSINCACTUS].[dbo].[StockTransactions] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002A_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_0000002A_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002A_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002A_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_0000001A_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_StockSalesPriceHistory' AND OBJECT_NAME(S.OBJECT_ID) = 'StockSalesPriceHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] [PK_StockSalesPriceHistory] WITH FULLSCAN ;
		END
		PRINT '[PK_StockSalesPriceHistory] on [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_StockSalesPriceHistory] on [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_38B96646' AND OBJECT_NAME(S.OBJECT_ID) = 'StockSalesPriceHistory' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] [_WA_Sys_00000006_38B96646] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_38B96646] on [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_38B96646] on [CHUANSINCACTUS].[dbo].[StockSalesPriceHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_4DE98D56' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] [_WA_Sys_0000001E_4DE98D56] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_4DE98D56] on [CHUANSINCACTUS].[dbo].[SalesInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPackingUOMId_GoodsReceivedNoteDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [iPackingUOMId_GoodsReceivedNoteDetails] WITH FULLSCAN ;
		END
		PRINT '[iPackingUOMId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPackingUOMId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_PurchaseInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [PK_PurchaseInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002C_74794A92' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [_WA_Sys_0000002C_74794A92] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002C_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002C_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_74794A92' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [_WA_Sys_0000001C_74794A92] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_18B6AB08' AND OBJECT_NAME(S.OBJECT_ID) = 'InvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[InvoiceDetails] [_WA_Sys_00000029_18B6AB08] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_18B6AB08] on [CHUANSINCACTUS].[dbo].[InvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_18B6AB08] on [CHUANSINCACTUS].[dbo].[InvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001D_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000001D_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000029_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002F_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000002F_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002F_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002F_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000000E_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000001C_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000006_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000000C_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000000D_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000024_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCurrencyId_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iCurrencyId_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iCurrencyId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCurrencyId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000048_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000048_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000048_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000048_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000030_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000030_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000030_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000030_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iUOMId_PurchaseInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [iUOMId_PurchaseInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iUOMId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iUOMId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ__Invoices__DocDate' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [UQ__Invoices__DocDate] WITH FULLSCAN ;
		END
		PRINT '[UQ__Invoices__DocDate] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ__Invoices__DocDate] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSalesPersonId_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iSalesPersonId_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iSalesPersonId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSalesPersonId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTermId_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iTermId_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iTermId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTermId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000031_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000031_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000031_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000031_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000032_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000032_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000032_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000032_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000001F_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000020_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004C_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000004C_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004C_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004C_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004D_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000004D_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDebtorId_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iDebtorId_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iDebtorId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDebtorId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002D_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000002D_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002D_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002E_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000002E_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002E_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002E_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000008_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_0000000F_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000003_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCostCentreId_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iCostCentreId_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iCostCentreId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCostCentreId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iProjectId_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iProjectId_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iProjectId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iProjectId_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000053_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000053_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000053_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000053_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000054_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000054_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000054_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000054_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000028_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000028_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ__Invoices__0D9D7FF304859529' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [UQ__Invoices__0D9D7FF304859529] WITH FULLSCAN ;
		END
		PRINT '[UQ__Invoices__0D9D7FF304859529] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ__Invoices__0D9D7FF304859529] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_74794A92' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [_WA_Sys_0000001F_74794A92] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_74794A92] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001C_40058253' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrderDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] [_WA_Sys_0000001C_40058253] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_40058253] on [CHUANSINCACTUS].[dbo].[DeliveryOrderDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_00000005_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPayForType_ARMatched' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [iPayForType_ARMatched] WITH FULLSCAN ;
		END
		PRINT '[iPayForType_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPayForType_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSalesPersonId_SalesInvoices' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [iSalesPersonId_SalesInvoices] WITH FULLSCAN ;
		END
		PRINT '[iSalesPersonId_SalesInvoices] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSalesPersonId_SalesInvoices] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000005_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000015_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000015_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000016_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000017_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000017_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000017_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000017_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000018_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000018_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000019_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000033_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000033_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000033_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000033_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000003_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ_SalesInvoices_SalesInvoiceDate' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [UQ_SalesInvoices_SalesInvoiceDate] WITH FULLSCAN ;
		END
		PRINT '[UQ_SalesInvoices_SalesInvoiceDate] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ_SalesInvoices_SalesInvoiceDate] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_79FD19BE' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [_WA_Sys_0000000A_79FD19BE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_79FD19BE' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [_WA_Sys_0000001B_79FD19BE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002B_79FD19BE' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [_WA_Sys_0000002B_79FD19BE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002B_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002B_79FD19BE] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_1A9EF37A' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [_WA_Sys_00000004_1A9EF37A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_1A9EF37A] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [IX_Invoices] WITH FULLSCAN ;
		END
		PRINT '[IX_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDepartmentId_SalesInvoices' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [iDepartmentId_SalesInvoices] WITH FULLSCAN ;
		END
		PRINT '[iDepartmentId_SalesInvoices] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDepartmentId_SalesInvoices] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iObjectType_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iObjectType_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iObjectType_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iObjectType_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_0000000B_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_0000000C_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_00000008_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_0000000A_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [PK_Invoices] WITH FULLSCAN ;
		END
		PRINT '[PK_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ARMatched' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [PK_ARMatched] WITH FULLSCAN ;
		END
		PRINT '[PK_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000066_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000066_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000066_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000066_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000067_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000067_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000067_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000067_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000068_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000068_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000068_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000068_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_0000000D_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_SalesInvoices' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [PK_SalesInvoices] WITH FULLSCAN ;
		END
		PRINT '[PK_SalesInvoices] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_SalesInvoices] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_00000007_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_00000006_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_ARMatched' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [iGLAccountId_ARMatched] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPayForId_ARMatched' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [iPayForId_ARMatched] WITH FULLSCAN ;
		END
		PRINT '[iPayForId_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPayForId_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iARTranId_ARMatched' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [iARTranId_ARMatched] WITH FULLSCAN ;
		END
		PRINT '[iARTranId_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iARTranId_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000046_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000046_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000046_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000046_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ_SalesInvoices_SalesInvoiceCode' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [UQ_SalesInvoices_SalesInvoiceCode] WITH FULLSCAN ;
		END
		PRINT '[UQ_SalesInvoices_SalesInvoiceCode] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ_SalesInvoices_SalesInvoiceCode] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCostCentreId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iCostCentreId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iCostCentreId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCostCentreId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iGLAccountId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iRoundingAdjustmentAccount_Invoices' AND OBJECT_NAME(S.OBJECT_ID) = 'Invoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Invoices] [iRoundingAdjustmentAccount_Invoices] WITH FULLSCAN ;
		END
		PRINT '[iRoundingAdjustmentAccount_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iRoundingAdjustmentAccount_Invoices] on [CHUANSINCACTUS].[dbo].[Invoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_InvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'InvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[InvoiceDetails] [iGLAccountId_InvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_InvoiceDetails] on [CHUANSINCACTUS].[dbo].[InvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_InvoiceDetails] on [CHUANSINCACTUS].[dbo].[InvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iProjectId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iProjectId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iProjectId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iProjectId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000016_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000016_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000024_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000033_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000033_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000033_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000033_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000034_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000034_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000034_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000034_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000039_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000039_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000039_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000039_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003A_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000003A_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000069_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000069_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000069_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000069_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000072_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000072_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000072_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000072_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000073_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000073_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000073_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000073_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000047_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000047_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000047_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000047_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000048_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000048_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000048_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000048_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004F_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_0000004F_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004F_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004F_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000050_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000050_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000050_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000050_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000051_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000051_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000051_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000051_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000052_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000052_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000052_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000052_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000053_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000053_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000053_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000053_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000054_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000054_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000054_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000054_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000005E_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_0000005E_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005E_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005E_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000061_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000061_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000061_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000061_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000062_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000062_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000062_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000062_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000034_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000034_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000034_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000034_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000035_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000035_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000035_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000035_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000036_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000036_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000036_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000036_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000037_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000037_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000037_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000037_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000038_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000038_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000038_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000038_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000039_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000039_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000039_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000039_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003F_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_0000003F_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003F_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003F_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000040_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000040_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000040_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000040_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000043_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000043_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000043_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000043_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000044_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000044_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000044_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000044_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000023_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000024_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000025_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000025_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000025_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000025_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000032_4FD1D5C8' AND OBJECT_NAME(S.OBJECT_ID) = 'SalesInvoices' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[SalesInvoices] [_WA_Sys_00000032_4FD1D5C8] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000032_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000032_4FD1D5C8] on [CHUANSINCACTUS].[dbo].[SalesInvoices] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSalesPersonId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iSalesPersonId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iSalesPersonId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSalesPersonId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iARType_ARMatched' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [iARType_ARMatched] WITH FULLSCAN ;
		END
		PRINT '[iARType_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iARType_ARMatched] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_00000004_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_00000005_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_00000007_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_00000008_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_00000009_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_0000000A_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_0000000B_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000022_22FF2F51' AND OBJECT_NAME(S.OBJECT_ID) = 'ReceiptDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReceiptDetails] [_WA_Sys_00000022_22FF2F51] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_22FF2F51] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_22FF2F51] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_ReceiptDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'ReceiptDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReceiptDetails] [iGLAccountId_ReceiptDetails] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_ReceiptDetails] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_ReceiptDetails] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ReceiptDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'ReceiptDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReceiptDetails] [PK_ReceiptDetails] WITH FULLSCAN ;
		END
		PRINT '[PK_ReceiptDetails] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ReceiptDetails] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002F_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000002F_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002F_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002F_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000023_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ__Receipts__DocDate' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [UQ__Receipts__DocDate] WITH FULLSCAN ;
		END
		PRINT '[UQ__Receipts__DocDate] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ__Receipts__DocDate] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000003_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000000D_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000019_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000019_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000008_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iReceiptId_ReceiptDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'ReceiptDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReceiptDetails] [iReceiptId_ReceiptDetails] WITH FULLSCAN ;
		END
		PRINT '[iReceiptId_ReceiptDetails] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iReceiptId_ReceiptDetails] on [CHUANSINCACTUS].[dbo].[ReceiptDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000000A_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPaymentReceiptInfoId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iPaymentReceiptInfoId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iPaymentReceiptInfoId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPaymentReceiptInfoId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000046_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000046_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000046_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000046_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000047_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000047_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000047_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000047_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000048_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000048_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000048_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000048_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000049_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000049_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000049_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000049_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004A_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000004A_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004B_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000004B_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004B_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004B_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004C_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000004C_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004C_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004C_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004D_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000004D_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004E_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000004E_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004E_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004E_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004F_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000004F_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004F_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004F_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCurrencyId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iCurrencyId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iCurrencyId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCurrencyId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000028_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000028_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000000B_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000005_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPaymentMethodMaintenanceId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iPaymentMethodMaintenanceId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iPaymentMethodMaintenanceId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPaymentMethodMaintenanceId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000051_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000051_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000051_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000051_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000053_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000053_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000053_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000053_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000054_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000054_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000054_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000054_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002D_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000002D_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002E_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000002E_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002E_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002E_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000025_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000025_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000025_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000025_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000026_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000026_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000026_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000026_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003D_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000003D_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003D_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003E_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000003E_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003E_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003E_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003F_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000003F_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003F_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003F_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000043_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000043_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000043_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000043_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000044_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000044_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000044_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000044_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000045_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000045_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000045_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000045_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000013_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001A_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000001A_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000021_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000021_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000022_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000022_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_0000000C_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPackingUOMId_PurchaseInvoiceDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'PurchaseInvoiceDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] [iPackingUOMId_PurchaseInvoiceDetails] WITH FULLSCAN ;
		END
		PRINT '[iPackingUOMId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPackingUOMId_PurchaseInvoiceDetails] on [CHUANSINCACTUS].[dbo].[PurchaseInvoiceDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000036_24E777C3' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [_WA_Sys_00000036_24E777C3] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000036_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000036_24E777C3] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDebtorId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iDebtorId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iDebtorId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDebtorId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iBankCharges_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iBankCharges_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iBankCharges_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iBankCharges_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ__Receipts__1AB76D000FF747D5' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [UQ__Receipts__1AB76D000FF747D5] WITH FULLSCAN ;
		END
		PRINT '[UQ__Receipts__1AB76D000FF747D5] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ__Receipts__1AB76D000FF747D5] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_0000000C_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_00000006_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_00000008_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_0000000A_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_0000000D_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_00000002_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTariffCodeId_GLAccounts' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [iTariffCodeId_GLAccounts] WITH FULLSCAN ;
		END
		PRINT '[iTariffCodeId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTariffCodeId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_0000000E_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000010_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000011_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000013_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001B_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_0000001B_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_00000003_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iAccountId_GLAccounts' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [iAccountId_GLAccounts] WITH FULLSCAN ;
		END
		PRINT '[iAccountId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iAccountId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCurrencyId_GLAccounts' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [iCurrencyId_GLAccounts] WITH FULLSCAN ;
		END
		PRINT '[iCurrencyId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCurrencyId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSpecialAccountId_GLAccounts' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [iSpecialAccountId_GLAccounts] WITH FULLSCAN ;
		END
		PRINT '[iSpecialAccountId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSpecialAccountId_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000012_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ__GLAccoun__585349B001A9287E' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [UQ__GLAccoun__585349B001A9287E] WITH FULLSCAN ;
		END
		PRINT '[UQ__GLAccoun__585349B001A9287E] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ__GLAccoun__585349B001A9287E] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000002_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000002_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000005_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000006_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000006_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_00000008_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_662B2B3B' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [_WA_Sys_0000000B_662B2B3B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_662B2B3B] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000056_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000056_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000056_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000056_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000066_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000066_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000066_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000066_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_DeliveryOrders' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [PK_DeliveryOrders] WITH FULLSCAN ;
		END
		PRINT '[PK_DeliveryOrders] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_DeliveryOrders] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_GLAccounts' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [IX_GLAccounts] WITH FULLSCAN ;
		END
		PRINT '[IX_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000005_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000005_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000026_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000026_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000026_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000026_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000033_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000033_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000033_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000033_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000024_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_GLAccounts' AND OBJECT_NAME(S.OBJECT_ID) = 'GLAccounts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GLAccounts] [PK_GLAccounts] WITH FULLSCAN ;
		END
		PRINT '[PK_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GLAccounts] on [CHUANSINCACTUS].[dbo].[GLAccounts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStockLocationId_GoodsReceivedNoteDetails' AND OBJECT_NAME(S.OBJECT_ID) = 'GoodsReceivedNoteDetails' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] [iStockLocationId_GoodsReceivedNoteDetails] WITH FULLSCAN ;
		END
		PRINT '[iStockLocationId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStockLocationId_GoodsReceivedNoteDetails] on [CHUANSINCACTUS].[dbo].[GoodsReceivedNoteDetails] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_44FF419A' AND OBJECT_NAME(S.OBJECT_ID) = 'ARMatched' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ARMatched] [_WA_Sys_00000010_44FF419A] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_44FF419A] on [CHUANSINCACTUS].[dbo].[ARMatched] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000046_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000046_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000046_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000046_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iRoundingAdjustmentAccount_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iRoundingAdjustmentAccount_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iRoundingAdjustmentAccount_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iRoundingAdjustmentAccount_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_ReportFiles' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [PK_ReportFiles] WITH FULLSCAN ;
		END
		PRINT '[PK_ReportFiles] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_ReportFiles] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_2D7CBDC4' AND OBJECT_NAME(S.OBJECT_ID) = 'ReportFiles' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[ReportFiles] [_WA_Sys_0000000B_2D7CBDC4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_2D7CBDC4] on [CHUANSINCACTUS].[dbo].[ReportFiles] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccount_BankCharges' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [iGLAccount_BankCharges] WITH FULLSCAN ;
		END
		PRINT '[iGLAccount_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccount_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDebtorId_DeliveryOrders' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [iDebtorId_DeliveryOrders] WITH FULLSCAN ;
		END
		PRINT '[iDebtorId_DeliveryOrders] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDebtorId_DeliveryOrders] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000003_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ_DeliveryOrders_DeliveryOrderDate' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [UQ_DeliveryOrders_DeliveryOrderDate] WITH FULLSCAN ;
		END
		PRINT '[UQ_DeliveryOrders_DeliveryOrderDate] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ_DeliveryOrders_DeliveryOrderDate] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTaxCodeId_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iTaxCodeId_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iTaxCodeId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTaxCodeId_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [IX_Receipts] WITH FULLSCAN ;
		END
		PRINT '[IX_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_BankCharges' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [PK_BankCharges] WITH FULLSCAN ;
		END
		PRINT '[PK_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [PK_Receipts] WITH FULLSCAN ;
		END
		PRINT '[PK_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iObjectType_Receipts' AND OBJECT_NAME(S.OBJECT_ID) = 'Receipts' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Receipts] [iObjectType_Receipts] WITH FULLSCAN ;
		END
		PRINT '[iObjectType_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iObjectType_Receipts] on [CHUANSINCACTUS].[dbo].[Receipts] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_656C112C' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [_WA_Sys_0000000D_656C112C] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_656C112C] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000012_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000012_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000013_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000013_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001E_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000001E_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000001F_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000001F_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000020_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000020_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000021_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000021_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000022_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000022_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000023_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000023_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000024_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000024_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000025_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000025_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000025_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000025_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000026_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000026_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000026_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000026_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000027_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000027_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000027_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000027_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000028_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000028_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000029_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000029_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002B_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000002B_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002C_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000002C_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002D_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000002D_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000055_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000055_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000055_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000055_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000005B_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000005B_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000005C_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000005C_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000005D_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000005D_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000060_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000060_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000060_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000060_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000050_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000050_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000050_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000050_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000034_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000034_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000034_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000034_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003C_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000003C_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003D_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000003D_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000003E_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000003E_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000040_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000040_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000040_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000040_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000042_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000042_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000042_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000042_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000043_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000043_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000043_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000043_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000044_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000044_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000044_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000044_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000045_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000045_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000045_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000045_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000C_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000000C_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000D_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000000D_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000E_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000000E_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000F_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000000F_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000010_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000010_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004B_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000004B_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004D_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000004D_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004D_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iStateId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iStateId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iStateId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iStateId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000004_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000004_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000011_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000011_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000008_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000008_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000009_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000009_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000A_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000000A_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000000B_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000000B_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTaxCode_BankCharges' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [iTaxCode_BankCharges] WITH FULLSCAN ;
		END
		PRINT '[iTaxCode_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTaxCode_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCurrency_BankCharges' AND OBJECT_NAME(S.OBJECT_ID) = 'BankCharges' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[BankCharges] [iCurrency_BankCharges] WITH FULLSCAN ;
		END
		PRINT '[iCurrency_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCurrency_BankCharges] on [CHUANSINCACTUS].[dbo].[BankCharges] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000003_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000003_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000007_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000007_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000004E_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000004E_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000049_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000049_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000049_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000049_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000053_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_00000053_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000053_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000053_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iBIRClassification_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iBIRClassification_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iBIRClassification_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iBIRClassification_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'UQ_Debtors_CompanyCode' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [UQ_Debtors_CompanyCode] WITH FULLSCAN ;
		END
		PRINT '[UQ_Debtors_CompanyCode] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UQ_Debtors_CompanyCode] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGLAccountId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iGLAccountId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iGLAccountId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGLAccountId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDefaultTaxCodeId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iDefaultTaxCodeId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iDefaultTaxCodeId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDefaultTaxCodeId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDefaultWTaxCodeId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iDefaultWTaxCodeId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iDefaultWTaxCodeId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDefaultWTaxCodeId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iDefaultWVatCodeId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iDefaultWVatCodeId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iDefaultWVatCodeId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iDefaultWVatCodeId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGroupId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iGroupId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iGroupId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGroupId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPostingAccountGroupId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iPostingAccountGroupId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iPostingAccountGroupId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPostingAccountGroupId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCurrencyId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iCurrencyId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iCurrencyId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCurrencyId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iCategoryId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iCategoryId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iCategoryId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iCategoryId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iAreaId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iAreaId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iAreaId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iAreaId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'IX_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [IX_Debtors] WITH FULLSCAN ;
		END
		PRINT '[IX_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_0000002E_3587F3E0' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [_WA_Sys_0000002E_3587F3E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002E_3587F3E0] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iGroupCompanyId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iGroupCompanyId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iGroupCompanyId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iGroupCompanyId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iTermId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iTermId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iTermId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iTermId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'PK_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [PK_Debtors] WITH FULLSCAN ;
		END
		PRINT '[PK_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iControlAccountId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iControlAccountId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iControlAccountId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iControlAccountId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iPriceGroupId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iPriceGroupId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iPriceGroupId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iPriceGroupId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = 'iSalesPersonId_Debtors' AND OBJECT_NAME(S.OBJECT_ID) = 'Debtors' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[Debtors] [iSalesPersonId_Debtors] WITH FULLSCAN ;
		END
		PRINT '[iSalesPersonId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[iSalesPersonId_Debtors] on [CHUANSINCACTUS].[dbo].[Debtors] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM [CHUANSINCACTUS].sys.stats S CROSS APPLY [CHUANSINCACTUS].sys.dm_db_stats_properties(S.object_id,S.stats_id) P WHERE S.NAME = '_WA_Sys_00000057_41EDCAC5' AND OBJECT_NAME(S.OBJECT_ID) = 'DeliveryOrders' AND P.last_updated <= DATEADD(HOUR,-48,SYSDATETIME()))
		BEGIN
			UPDATE STATISTICS [CHUANSINCACTUS].[dbo].[DeliveryOrders] [_WA_Sys_00000057_41EDCAC5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000057_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000057_41EDCAC5] on [CHUANSINCACTUS].[dbo].[DeliveryOrders] cannot be updated.';			
	END CATCH;
END
	