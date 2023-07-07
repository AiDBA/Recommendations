
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ReplicationLog') and name = '_WA_Sys_00000001_0B45A2E0')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ReplicationLog] [_WA_Sys_00000001_0B45A2E0] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000001_0B45A2E0] on [epicor905].[dbo].[ReplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000001_0B45A2E0] on [epicor905].[dbo].[ReplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ReplicationLog') and name = 'IdxPrimary')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ReplicationLog] [IdxPrimary] WITH FULLSCAN ;
		END
		PRINT '[IdxPrimary] on [epicor905].[dbo].[ReplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IdxPrimary] on [epicor905].[dbo].[ReplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ReplicationLog') and name = 'ReplicationLog#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ReplicationLog] [ReplicationLog#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[ReplicationLog#_#progress_recid] on [epicor905].[dbo].[ReplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ReplicationLog#_#progress_recid] on [epicor905].[dbo].[ReplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ReplicationLog') and name = 'ReplicationLog#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ReplicationLog] [ReplicationLog#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[ReplicationLog#_#progress_recid_ident] on [epicor905].[dbo].[ReplicationLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ReplicationLog#_#progress_recid_ident] on [epicor905].[dbo].[ReplicationLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000002_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000002_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000003_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000003_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000004_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000004_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000005_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000005_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000006_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000006_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000007_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000007_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000008_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000008_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000009_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000009_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000000A_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000000A_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000000B_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000000B_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000000C_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000000C_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000000D_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000000D_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000000E_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000000E_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000023_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000023_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000024_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000024_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000025_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000025_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000025_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000025_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000026_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000026_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000026_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000026_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000029_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000029_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000002A_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000002A_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002A_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002A_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000002B_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000002B_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002B_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002B_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000002C_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000002C_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002C_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002C_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000002D_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000002D_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002D_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002D_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000002E_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000002E_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002E_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002E_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000034_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000034_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000034_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000034_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000003B_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000003B_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003B_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003B_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000003C_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000003C_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003C_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003C_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_0000003F_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_0000003F_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003F_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003F_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000041_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000041_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000041_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000041_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = '_WA_Sys_00000042_3F11C1AE')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [_WA_Sys_00000042_3F11C1AE] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000042_3F11C1AE] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000042_3F11C1AE] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'abtuid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [abtuid] WITH FULLSCAN ;
		END
		PRINT '[abtuid] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[abtuid] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'BookInvoiceCr')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [BookInvoiceCr] WITH FULLSCAN ;
		END
		PRINT '[BookInvoiceCr] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookInvoiceCr] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'BookInvoiceDb')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [BookInvoiceDb] WITH FULLSCAN ;
		END
		PRINT '[BookInvoiceDb] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookInvoiceDb] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'BookJrnlRef')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [BookJrnlRef] WITH FULLSCAN ;
		END
		PRINT '[BookJrnlRef] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookJrnlRef] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'BookLaborDtl')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [BookLaborDtl] WITH FULLSCAN ;
		END
		PRINT '[BookLaborDtl] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookLaborDtl] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'BookTranNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [BookTranNum] WITH FULLSCAN ;
		END
		PRINT '[BookTranNum] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookTranNum] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'COACodeGLAcct')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [COACodeGLAcct] WITH FULLSCAN ;
		END
		PRINT '[COACodeGLAcct] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[COACodeGLAcct] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'CorrIDx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [CorrIDx] WITH FULLSCAN ;
		END
		PRINT '[CorrIDx] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CorrIDx] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'GLAcctContext')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [GLAcctContext] WITH FULLSCAN ;
		END
		PRINT '[GLAcctContext] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[GLAcctContext] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'PrimIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [PrimIdx] WITH FULLSCAN ;
		END
		PRINT '[PrimIdx] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimIdx] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'SysGLControlType')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [SysGLControlType] WITH FULLSCAN ;
		END
		PRINT '[SysGLControlType] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysGLControlType] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'SysIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [SysIndex] WITH FULLSCAN ;
		END
		PRINT '[SysIndex] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysIndex] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'TranGLC#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [TranGLC#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[TranGLC#_#progress_recid] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TranGLC#_#progress_recid] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'TranGLC#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [TranGLC#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[TranGLC#_#progress_recid_ident] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TranGLC#_#progress_recid_ident] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'TypeCode')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [TypeCode] WITH FULLSCAN ;
		END
		PRINT '[TypeCode] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TypeCode] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TranGLC') and name = 'UserCanModify')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TranGLC] [UserCanModify] WITH FULLSCAN ;
		END
		PRINT '[UserCanModify] on [epicor905].[dbo].[TranGLC] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UserCanModify] on [epicor905].[dbo].[TranGLC] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000002_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000002_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000003_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000003_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000004_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000004_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000006_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000006_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000007_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000007_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000008_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000008_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000000A_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000000A_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000000B_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000000B_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000000C_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000000C_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000000D_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000000D_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000000E_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000000E_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000000F_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000000F_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000010_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000010_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000011_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000011_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000012_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000012_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000016_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000016_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000016_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000016_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000046_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000046_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000046_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000046_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000047_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000047_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000047_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000047_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000048_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000048_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000048_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000048_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000071_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000071_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000071_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000071_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000078_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000078_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000078_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000078_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000079_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000079_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000079_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000079_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000087_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000087_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000087_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000087_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000088_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000088_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000088_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000088_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000089_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000089_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000089_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000089_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000008E_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000008E_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000008E_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000008E_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000008F_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000008F_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000008F_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000008F_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000091_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000091_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000091_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000091_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_00000094_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_00000094_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000094_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000094_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = '_WA_Sys_0000009A_5D96E25B')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [_WA_Sys_0000009A_5D96E25B] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000009A_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000009A_5D96E25B] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'AllocationBatch')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [AllocationBatch] WITH FULLSCAN ;
		END
		PRINT '[AllocationBatch] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AllocationBatch] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'AllocationStamp')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [AllocationStamp] WITH FULLSCAN ;
		END
		PRINT '[AllocationStamp] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AllocationStamp] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookAPInvIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookAPInvIdx] WITH FULLSCAN ;
		END
		PRINT '[BookAPInvIdx] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookAPInvIdx] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookARInvIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookARInvIdx] WITH FULLSCAN ;
		END
		PRINT '[BookARInvIdx] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookARInvIdx] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookBalanceAcct')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookBalanceAcct] WITH FULLSCAN ;
		END
		PRINT '[BookBalanceAcct] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookBalanceAcct] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookBankCheckIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookBankCheckIdx] WITH FULLSCAN ;
		END
		PRINT '[BookBankCheckIdx] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookBankCheckIdx] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookBankSlipIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookBankSlipIndex] WITH FULLSCAN ;
		END
		PRINT '[BookBankSlipIndex] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookBankSlipIndex] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookCheckNumIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookCheckNumIndex] WITH FULLSCAN ;
		END
		PRINT '[BookCheckNumIndex] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookCheckNumIndex] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookCOAAccount')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookCOAAccount] WITH FULLSCAN ;
		END
		PRINT '[BookCOAAccount] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookCOAAccount] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookDailyBal')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookDailyBal] WITH FULLSCAN ;
		END
		PRINT '[BookDailyBal] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookDailyBal] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookFiscalGLAccount')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookFiscalGLAccount] WITH FULLSCAN ;
		END
		PRINT '[BookFiscalGLAccount] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookFiscalGLAccount] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookFisYearCodeNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookFisYearCodeNum] WITH FULLSCAN ;
		END
		PRINT '[BookFisYearCodeNum] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookFisYearCodeNum] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookJEDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookJEDate] WITH FULLSCAN ;
		END
		PRINT '[BookJEDate] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookJEDate] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookJournalSeq')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookJournalSeq] WITH FULLSCAN ;
		END
		PRINT '[BookJournalSeq] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookJournalSeq] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookPerBal')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookPerBal] WITH FULLSCAN ;
		END
		PRINT '[BookPerBal] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookPerBal] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookPeriodDateIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookPeriodDateIdx] WITH FULLSCAN ;
		END
		PRINT '[BookPeriodDateIdx] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookPeriodDateIdx] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookReconciled')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookReconciled] WITH FULLSCAN ;
		END
		PRINT '[BookReconciled] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookReconciled] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookRefCode')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookRefCode] WITH FULLSCAN ;
		END
		PRINT '[BookRefCode] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookRefCode] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookTBFlag')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookTBFlag] WITH FULLSCAN ;
		END
		PRINT '[BookTBFlag] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookTBFlag] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookTrialAcct')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookTrialAcct] WITH FULLSCAN ;
		END
		PRINT '[BookTrialAcct] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookTrialAcct] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'BookYearCodeNumber')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [BookYearCodeNumber] WITH FULLSCAN ;
		END
		PRINT '[BookYearCodeNumber] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BookYearCodeNumber] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'COACode')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [COACode] WITH FULLSCAN ;
		END
		PRINT '[COACode] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[COACode] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'CorrIDX')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [CorrIDX] WITH FULLSCAN ;
		END
		PRINT '[CorrIDX] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CorrIDX] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'FiscalCalYrSufPeriod')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [FiscalCalYrSufPeriod] WITH FULLSCAN ;
		END
		PRINT '[FiscalCalYrSufPeriod] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[FiscalCalYrSufPeriod] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'GLJrnDtl#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [GLJrnDtl#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[GLJrnDtl#_#progress_recid] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[GLJrnDtl#_#progress_recid] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'GLJrnDtl#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [GLJrnDtl#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[GLJrnDtl#_#progress_recid_ident] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[GLJrnDtl#_#progress_recid_ident] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'MatchCode')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [MatchCode] WITH FULLSCAN ;
		END
		PRINT '[MatchCode] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[MatchCode] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'OldPrimaryIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [OldPrimaryIdx] WITH FULLSCAN ;
		END
		PRINT '[OldPrimaryIdx] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[OldPrimaryIdx] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'parentIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [parentIdx] WITH FULLSCAN ;
		END
		PRINT '[parentIdx] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[parentIdx] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'ParentIdx2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [ParentIdx2] WITH FULLSCAN ;
		END
		PRINT '[ParentIdx2] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ParentIdx2] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'PK_GLJrnDtl')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [PK_GLJrnDtl] WITH FULLSCAN ;
		END
		PRINT '[PK_GLJrnDtl] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PK_GLJrnDtl] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'SegVal1SegVal2SegVal3')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [SegVal1SegVal2SegVal3] WITH FULLSCAN ;
		END
		PRINT '[SegVal1SegVal2SegVal3] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SegVal1SegVal2SegVal3] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'StatUOM')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [StatUOM] WITH FULLSCAN ;
		END
		PRINT '[StatUOM] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[StatUOM] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.GLJrnDtl') and name = 'SysIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[GLJrnDtl] [SysIndex] WITH FULLSCAN ;
		END
		PRINT '[SysIndex] on [epicor905].[dbo].[GLJrnDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysIndex] on [epicor905].[dbo].[GLJrnDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.cstp._Crawl') and name = 'AIDBA_CompanyId')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[cstp].[_Crawl] [AIDBA_CompanyId] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_CompanyId] on [SearchIndex900].[cstp].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_CompanyId] on [SearchIndex900].[cstp].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.cstp._Crawl') and name = 'AIDBA_HashId')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[cstp].[_Crawl] [AIDBA_HashId] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_HashId] on [SearchIndex900].[cstp].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_HashId] on [SearchIndex900].[cstp].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.cstp._Crawl') and name = 'AIDBA_KeySpecHashCode')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[cstp].[_Crawl] [AIDBA_KeySpecHashCode] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_KeySpecHashCode] on [SearchIndex900].[cstp].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_KeySpecHashCode] on [SearchIndex900].[cstp].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.cstp._Crawl') and name = 'AIDBA_LocationId')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[cstp].[_Crawl] [AIDBA_LocationId] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_LocationId] on [SearchIndex900].[cstp].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_LocationId] on [SearchIndex900].[cstp].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.cstp._Crawl') and name = 'IX__Crawl')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[cstp].[_Crawl] [IX__Crawl] WITH FULLSCAN ;
		END
		PRINT '[IX__Crawl] on [SearchIndex900].[cstp].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX__Crawl] on [SearchIndex900].[cstp].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.cstp._Crawl') and name = 'IX__KeySpecHashCode')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[cstp].[_Crawl] [IX__KeySpecHashCode] WITH FULLSCAN ;
		END
		PRINT '[IX__KeySpecHashCode] on [SearchIndex900].[cstp].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX__KeySpecHashCode] on [SearchIndex900].[cstp].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = '_WA_Sys_00000004_45DDEF77')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [_WA_Sys_00000004_45DDEF77] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_45DDEF77] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_45DDEF77] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = '_WA_Sys_00000005_45DDEF77')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [_WA_Sys_00000005_45DDEF77] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_45DDEF77] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_45DDEF77] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = '_WA_Sys_00000013_45DDEF77')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [_WA_Sys_00000013_45DDEF77] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_45DDEF77] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_45DDEF77] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'ByCompType')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [ByCompType] WITH FULLSCAN ;
		END
		PRINT '[ByCompType] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ByCompType] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'ByDateTimeUserType')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [ByDateTimeUserType] WITH FULLSCAN ;
		END
		PRINT '[ByDateTimeUserType] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ByDateTimeUserType] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'ByTableCompType')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [ByTableCompType] WITH FULLSCAN ;
		END
		PRINT '[ByTableCompType] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ByTableCompType] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'ByTableDateTime')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [ByTableDateTime] WITH FULLSCAN ;
		END
		PRINT '[ByTableDateTime] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ByTableDateTime] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'ByTypeComp')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [ByTypeComp] WITH FULLSCAN ;
		END
		PRINT '[ByTypeComp] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ByTypeComp] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'ByUserCompDateTime')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [ByUserCompDateTime] WITH FULLSCAN ;
		END
		PRINT '[ByUserCompDateTime] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ByUserCompDateTime] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'SysActivityLog#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [SysActivityLog#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[SysActivityLog#_#progress_recid] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysActivityLog#_#progress_recid] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'SysActivityLog#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [SysActivityLog#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[SysActivityLog#_#progress_recid_ident] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysActivityLog#_#progress_recid_ident] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.SysActivityLog') and name = 'SysActivityLogPrim')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[SysActivityLog] [SysActivityLogPrim] WITH FULLSCAN ;
		END
		PRINT '[SysActivityLogPrim] on [epicor905].[dbo].[SysActivityLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysActivityLogPrim] on [epicor905].[dbo].[SysActivityLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000002_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000002_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000003_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000003_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000004_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000004_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000005_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000005_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000006_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000006_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000007_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000007_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000008_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000008_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000009_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000009_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_0000000B_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_0000000B_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_0000000C_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_0000000C_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_0000000D_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_0000000D_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_0000000E_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_0000000E_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_0000000F_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_0000000F_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000010_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000010_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000010_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000010_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_00000029_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_00000029_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = '_WA_Sys_0000002B_012245F5')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [_WA_Sys_0000002B_012245F5] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002B_012245F5] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002B_012245F5] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'ChgLog#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [ChgLog#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[ChgLog#_#progress_recid] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ChgLog#_#progress_recid] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'ChgLog#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [ChgLog#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[ChgLog#_#progress_recid_ident] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ChgLog#_#progress_recid_ident] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'ComPIDKey')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [ComPIDKey] WITH FULLSCAN ;
		END
		PRINT '[ComPIDKey] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ComPIDKey] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'Date_')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [Date_] WITH FULLSCAN ;
		END
		PRINT '[Date_] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Date_] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'DateTimeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [DateTimeIdx] WITH FULLSCAN ;
		END
		PRINT '[DateTimeIdx] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[DateTimeIdx] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'IDKeyDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [IDKeyDate] WITH FULLSCAN ;
		END
		PRINT '[IDKeyDate] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IDKeyDate] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'IX_AIDBA_5_20220520')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [IX_AIDBA_5_20220520] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_5_20220520] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_5_20220520] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'PrimIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [PrimIdx] WITH FULLSCAN ;
		END
		PRINT '[PrimIdx] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimIdx] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ChgLog') and name = 'UserDateIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ChgLog] [UserDateIdx] WITH FULLSCAN ;
		END
		PRINT '[UserDateIdx] on [epicor905].[dbo].[ChgLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UserDateIdx] on [epicor905].[dbo].[ChgLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_00000002_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_00000002_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_00000003_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_00000003_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_00000004_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_00000004_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_00000005_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_00000005_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_00000007_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_00000007_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_0000000A_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_0000000A_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_0000000B_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_0000000B_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = '_WA_Sys_00000032_5D65D0E4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [_WA_Sys_00000032_5D65D0E4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000032_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000032_5D65D0E4] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = 'FIFOTranIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [FIFOTranIdx] WITH FULLSCAN ;
		END
		PRINT '[FIFOTranIdx] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[FIFOTranIdx] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = 'PartFIFOTran#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [PartFIFOTran#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[PartFIFOTran#_#progress_recid] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartFIFOTran#_#progress_recid] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = 'PartFIFOTran#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [PartFIFOTran#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[PartFIFOTran#_#progress_recid_ident] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartFIFOTran#_#progress_recid_ident] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartFIFOTran') and name = 'PrimeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartFIFOTran] [PrimeIdx] WITH FULLSCAN ;
		END
		PRINT '[PrimeIdx] on [epicor905].[dbo].[PartFIFOTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimeIdx] on [epicor905].[dbo].[PartFIFOTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertLog') and name = '_WA_Sys_00000002_04721D3E')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertLog] [_WA_Sys_00000002_04721D3E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_04721D3E] on [epicor905].[dbo].[AlertLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_04721D3E] on [epicor905].[dbo].[AlertLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertLog') and name = '_WA_Sys_00000003_04721D3E')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertLog] [_WA_Sys_00000003_04721D3E] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_04721D3E] on [epicor905].[dbo].[AlertLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_04721D3E] on [epicor905].[dbo].[AlertLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertLog') and name = 'AlertLog#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertLog] [AlertLog#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[AlertLog#_#progress_recid] on [epicor905].[dbo].[AlertLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AlertLog#_#progress_recid] on [epicor905].[dbo].[AlertLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertLog') and name = 'AlertLog#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertLog] [AlertLog#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[AlertLog#_#progress_recid_ident] on [epicor905].[dbo].[AlertLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AlertLog#_#progress_recid_ident] on [epicor905].[dbo].[AlertLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertLog') and name = 'ErrLogNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertLog] [ErrLogNum] WITH FULLSCAN ;
		END
		PRINT '[ErrLogNum] on [epicor905].[dbo].[AlertLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ErrLogNum] on [epicor905].[dbo].[AlertLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertLog') and name = 'Sender')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertLog] [Sender] WITH FULLSCAN ;
		END
		PRINT '[Sender] on [epicor905].[dbo].[AlertLog] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Sender] on [epicor905].[dbo].[AlertLog] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.TestDB._Crawl') and name = 'AIDBA_CompanyId')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[TestDB].[_Crawl] [AIDBA_CompanyId] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_CompanyId] on [SearchIndex900].[TestDB].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_CompanyId] on [SearchIndex900].[TestDB].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.TestDB._Crawl') and name = 'AIDBA_HashId')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[TestDB].[_Crawl] [AIDBA_HashId] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_HashId] on [SearchIndex900].[TestDB].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_HashId] on [SearchIndex900].[TestDB].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.TestDB._Crawl') and name = 'AIDBA_KeySpecHashCode')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[TestDB].[_Crawl] [AIDBA_KeySpecHashCode] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_KeySpecHashCode] on [SearchIndex900].[TestDB].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_KeySpecHashCode] on [SearchIndex900].[TestDB].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.TestDB._Crawl') and name = 'AIDBA_LocationId')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[TestDB].[_Crawl] [AIDBA_LocationId] WITH FULLSCAN ;
		END
		PRINT '[AIDBA_LocationId] on [SearchIndex900].[TestDB].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AIDBA_LocationId] on [SearchIndex900].[TestDB].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.TestDB._Crawl') and name = 'IX__Crawl')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[TestDB].[_Crawl] [IX__Crawl] WITH FULLSCAN ;
		END
		PRINT '[IX__Crawl] on [SearchIndex900].[TestDB].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX__Crawl] on [SearchIndex900].[TestDB].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('SearchIndex900.TestDB._Crawl') and name = 'IX__KeySpecHashCode')
		BEGIN
			UPDATE STATISTICS [SearchIndex900].[TestDB].[_Crawl] [IX__KeySpecHashCode] WITH FULLSCAN ;
		END
		PRINT '[IX__KeySpecHashCode] on [SearchIndex900].[TestDB].[_Crawl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX__KeySpecHashCode] on [SearchIndex900].[TestDB].[_Crawl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertQue') and name = '_WA_Sys_00000003_26C73542')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertQue] [_WA_Sys_00000003_26C73542] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_26C73542] on [epicor905].[dbo].[AlertQue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_26C73542] on [epicor905].[dbo].[AlertQue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertQue') and name = 'AlertQue#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertQue] [AlertQue#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[AlertQue#_#progress_recid] on [epicor905].[dbo].[AlertQue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AlertQue#_#progress_recid] on [epicor905].[dbo].[AlertQue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertQue') and name = 'AlertQue#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertQue] [AlertQue#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[AlertQue#_#progress_recid_ident] on [epicor905].[dbo].[AlertQue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AlertQue#_#progress_recid_ident] on [epicor905].[dbo].[AlertQue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.AlertQue') and name = 'QueueNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[AlertQue] [QueueNum] WITH FULLSCAN ;
		END
		PRINT '[QueueNum] on [epicor905].[dbo].[AlertQue] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[QueueNum] on [epicor905].[dbo].[AlertQue] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000002_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000002_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000003_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000003_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000004_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000004_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000005_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000005_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000006_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000006_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000007_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000007_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000008_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000008_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000009_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000009_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000000A_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000000A_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000000B_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000000B_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000000C_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000000C_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000013_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000013_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000014_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000014_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000015_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000015_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000019_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000019_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000001A_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000001A_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001A_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001A_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000001B_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000001B_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000001C_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000001C_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001C_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001C_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000001D_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000001D_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000001E_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000001E_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000021_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000021_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000022_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000022_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000024_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000024_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000025_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000025_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000025_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000025_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000026_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000026_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000026_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000026_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000028_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000028_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000029_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000029_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000029_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000029_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000002C_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000002C_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002C_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002C_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000002F_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000002F_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002F_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002F_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000030_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000030_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000030_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000030_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000031_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000031_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000031_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000031_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000039_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000039_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000039_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000039_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000003A_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000003A_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003A_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003A_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000003B_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000003B_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003B_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003B_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000003C_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000003C_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003C_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003C_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000003D_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000003D_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003D_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003D_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000003E_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000003E_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003E_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003E_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000003F_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000003F_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003F_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003F_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000040_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000040_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000040_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000040_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000041_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000041_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000041_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000041_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000043_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000043_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000043_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000043_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000044_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000044_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000044_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000044_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000004C_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000004C_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004C_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004C_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000004D_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000004D_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004D_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004D_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000004E_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000004E_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004E_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004E_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000004F_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000004F_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004F_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004F_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000052_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000052_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000052_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000052_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000059_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000059_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000059_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000059_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000005A_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000005A_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005A_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005A_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000005B_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000005B_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005B_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005B_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000069_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000069_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000069_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000069_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000071_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000071_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000071_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000071_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000087_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000087_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000087_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000087_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000008C_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000008C_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000008C_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000008C_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000008F_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000008F_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000008F_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000008F_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000092_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000092_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000092_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000092_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000094_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000094_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000094_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000094_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000095_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000095_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000095_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000095_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000096_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000096_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000096_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000096_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_00000099_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_00000099_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000099_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000099_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = '_WA_Sys_0000009B_437BE1AF')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [_WA_Sys_0000009B_437BE1AF] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000009B_437BE1AF] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000009B_437BE1AF] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'CallNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [CallNum] WITH FULLSCAN ;
		END
		PRINT '[CallNum] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CallNum] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'Costed')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [Costed] WITH FULLSCAN ;
		END
		PRINT '[Costed] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Costed] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'CoTranDte')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [CoTranDte] WITH FULLSCAN ;
		END
		PRINT '[CoTranDte] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CoTranDte] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'CustClass')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [CustClass] WITH FULLSCAN ;
		END
		PRINT '[CustClass] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CustClass] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'CycleCountIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [CycleCountIdx] WITH FULLSCAN ;
		END
		PRINT '[CycleCountIdx] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CycleCountIdx] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'DemandReconcileNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [DemandReconcileNum] WITH FULLSCAN ;
		END
		PRINT '[DemandReconcileNum] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[DemandReconcileNum] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'DMRAction')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [DMRAction] WITH FULLSCAN ;
		END
		PRINT '[DMRAction] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[DMRAction] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'DMRDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [DMRDate] WITH FULLSCAN ;
		END
		PRINT '[DMRDate] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[DMRDate] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'FIFOCostIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [FIFOCostIdx] WITH FULLSCAN ;
		END
		PRINT '[FIFOCostIdx] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[FIFOCostIdx] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'IdxDatePart')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [IdxDatePart] WITH FULLSCAN ;
		END
		PRINT '[IdxDatePart] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IdxDatePart] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'idxPartDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [idxPartDate] WITH FULLSCAN ;
		END
		PRINT '[idxPartDate] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idxPartDate] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'IdxPartWhse')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [IdxPartWhse] WITH FULLSCAN ;
		END
		PRINT '[IdxPartWhse] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IdxPartWhse] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'IdxWhseActTransUOM')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [IdxWhseActTransUOM] WITH FULLSCAN ;
		END
		PRINT '[IdxWhseActTransUOM] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IdxWhseActTransUOM] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'JobAsmSeq')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [JobAsmSeq] WITH FULLSCAN ;
		END
		PRINT '[JobAsmSeq] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[JobAsmSeq] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'JobMtlLoans')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [JobMtlLoans] WITH FULLSCAN ;
		END
		PRINT '[JobMtlLoans] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[JobMtlLoans] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'JobNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [JobNum] WITH FULLSCAN ;
		END
		PRINT '[JobNum] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[JobNum] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'JournalIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [JournalIdx] WITH FULLSCAN ;
		END
		PRINT '[JournalIdx] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[JournalIdx] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'LegalNumber')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [LegalNumber] WITH FULLSCAN ;
		END
		PRINT '[LegalNumber] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LegalNumber] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'NonConfID')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [NonConfID] WITH FULLSCAN ;
		END
		PRINT '[NonConfID] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[NonConfID] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'OrderNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [OrderNum] WITH FULLSCAN ;
		END
		PRINT '[OrderNum] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[OrderNum] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PackNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PackNum] WITH FULLSCAN ;
		END
		PRINT '[PackNum] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PackNum] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PackSlip')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PackSlip] WITH FULLSCAN ;
		END
		PRINT '[PackSlip] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PackSlip] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PartActivity')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PartActivity] WITH FULLSCAN ;
		END
		PRINT '[PartActivity] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartActivity] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PartDimDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PartDimDate] WITH FULLSCAN ;
		END
		PRINT '[PartDimDate] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartDimDate] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PartLot')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PartLot] WITH FULLSCAN ;
		END
		PRINT '[PartLot] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartLot] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PartTran#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PartTran#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[PartTran#_#progress_recid] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartTran#_#progress_recid] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PartTran#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PartTran#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[PartTran#_#progress_recid_ident] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartTran#_#progress_recid_ident] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PlantTranIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PlantTranIdx] WITH FULLSCAN ;
		END
		PRINT '[PlantTranIdx] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PlantTranIdx] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'PORel')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [PORel] WITH FULLSCAN ;
		END
		PRINT '[PORel] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PORel] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'postSearch')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [postSearch] WITH FULLSCAN ;
		END
		PRINT '[postSearch] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[postSearch] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'RefCodeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [RefCodeIdx] WITH FULLSCAN ;
		END
		PRINT '[RefCodeIdx] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RefCodeIdx] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'RefTypeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [RefTypeIdx] WITH FULLSCAN ;
		END
		PRINT '[RefTypeIdx] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RefTypeIdx] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'RMA')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [RMA] WITH FULLSCAN ;
		END
		PRINT '[RMA] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RMA] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'SysDtTime')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [SysDtTime] WITH FULLSCAN ;
		END
		PRINT '[SysDtTime] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysDtTime] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'SysIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [SysIndex] WITH FULLSCAN ;
		END
		PRINT '[SysIndex] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysIndex] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'UserClass')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [UserClass] WITH FULLSCAN ;
		END
		PRINT '[UserClass] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UserClass] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'WhsePartBinSysDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [WhsePartBinSysDate] WITH FULLSCAN ;
		END
		PRINT '[WhsePartBinSysDate] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[WhsePartBinSysDate] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PartTran') and name = 'WhseWhseBin')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PartTran] [WhseWhseBin] WITH FULLSCAN ;
		END
		PRINT '[WhseWhseBin] on [epicor905].[dbo].[PartTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[WhseWhseBin] on [epicor905].[dbo].[PartTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = '_WA_Sys_00000002_4860925D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [_WA_Sys_00000002_4860925D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_4860925D] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_4860925D] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = '_WA_Sys_00000003_4860925D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [_WA_Sys_00000003_4860925D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_4860925D] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_4860925D] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = '_WA_Sys_00000004_4860925D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [_WA_Sys_00000004_4860925D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_4860925D] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_4860925D] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = '_WA_Sys_00000006_4860925D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [_WA_Sys_00000006_4860925D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_4860925D] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_4860925D] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = '_WA_Sys_00000008_4860925D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [_WA_Sys_00000008_4860925D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_4860925D] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_4860925D] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = '_WA_Sys_00000009_4860925D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [_WA_Sys_00000009_4860925D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_4860925D] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_4860925D] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = 'PatchFld#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [PatchFld#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[PatchFld#_#progress_recid] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PatchFld#_#progress_recid] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = 'PatchFld#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [PatchFld#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[PatchFld#_#progress_recid_ident] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PatchFld#_#progress_recid_ident] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = 'PrimIndx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [PrimIndx] WITH FULLSCAN ;
		END
		PRINT '[PrimIndx] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimIndx] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.PatchFld') and name = 'SysIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[PatchFld] [SysIndex] WITH FULLSCAN ;
		END
		PRINT '[SysIndex] on [epicor905].[dbo].[PatchFld] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysIndex] on [epicor905].[dbo].[PatchFld] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = '_WA_Sys_00000002_7BE56230')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [_WA_Sys_00000002_7BE56230] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7BE56230] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7BE56230] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = '_WA_Sys_00000003_7BE56230')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [_WA_Sys_00000003_7BE56230] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7BE56230] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7BE56230] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = '_WA_Sys_00000004_7BE56230')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [_WA_Sys_00000004_7BE56230] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7BE56230] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7BE56230] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = '_WA_Sys_00000008_7BE56230')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [_WA_Sys_00000008_7BE56230] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7BE56230] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7BE56230] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = 'ABTWork#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [ABTWork#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[ABTWork#_#progress_recid] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ABTWork#_#progress_recid] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = 'ABTWork#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [ABTWork#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[ABTWork#_#progress_recid_ident] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ABTWork#_#progress_recid_ident] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = 'IdxCmp')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [IdxCmp] WITH FULLSCAN ;
		END
		PRINT '[IdxCmp] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IdxCmp] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ABTWork') and name = 'PRIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ABTWork] [PRIdx] WITH FULLSCAN ;
		END
		PRINT '[PRIdx] on [epicor905].[dbo].[ABTWork] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PRIdx] on [epicor905].[dbo].[ABTWork] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = '_WA_Sys_00000002_4EE836C4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [_WA_Sys_00000002_4EE836C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_4EE836C4] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_4EE836C4] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = '_WA_Sys_00000003_4EE836C4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [_WA_Sys_00000003_4EE836C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_4EE836C4] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_4EE836C4] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = '_WA_Sys_00000004_4EE836C4')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [_WA_Sys_00000004_4EE836C4] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_4EE836C4] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_4EE836C4] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = 'ReportID')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [ReportID] WITH FULLSCAN ;
		END
		PRINT '[ReportID] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ReportID] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = 'TaxBoxIndx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [TaxBoxIndx] WITH FULLSCAN ;
		END
		PRINT '[TaxBoxIndx] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TaxBoxIndx] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = 'TaxBoxTran#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [TaxBoxTran#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[TaxBoxTran#_#progress_recid] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TaxBoxTran#_#progress_recid] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxBoxTran') and name = 'TaxBoxTran#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxBoxTran] [TaxBoxTran#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[TaxBoxTran#_#progress_recid_ident] on [epicor905].[dbo].[TaxBoxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TaxBoxTran#_#progress_recid_ident] on [epicor905].[dbo].[TaxBoxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000002_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000002_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000003_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000003_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000004_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000004_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000005_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000005_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000006_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000006_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000007_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000007_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000008_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000008_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_00000009_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_00000009_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_0000000A_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_0000000A_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_0000000B_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_0000000B_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_0000000C_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_0000000C_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_0000000D_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_0000000D_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = '_WA_Sys_0000000E_7F1ACD49')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [_WA_Sys_0000000E_7F1ACD49] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_7F1ACD49] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_7F1ACD49] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = 'CurrExChain#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [CurrExChain#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[CurrExChain#_#progress_recid] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CurrExChain#_#progress_recid] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = 'CurrExChain#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [CurrExChain#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[CurrExChain#_#progress_recid_ident] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CurrExChain#_#progress_recid_ident] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.CurrExChain') and name = 'PrimIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[CurrExChain] [PrimIdx] WITH FULLSCAN ;
		END
		PRINT '[PrimIdx] on [epicor905].[dbo].[CurrExChain] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimIdx] on [epicor905].[dbo].[CurrExChain] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_00000002_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_00000002_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_00000003_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_00000003_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_00000004_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_00000004_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_00000005_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_00000005_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_00000006_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_00000006_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_0000000C_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_0000000C_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = '_WA_Sys_0000000D_198E32D6')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [_WA_Sys_0000000D_198E32D6] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_198E32D6] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_198E32D6] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = 'LegalNumHistory#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [LegalNumHistory#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[LegalNumHistory#_#progress_recid] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LegalNumHistory#_#progress_recid] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = 'LegalNumHistory#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [LegalNumHistory#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[LegalNumHistory#_#progress_recid_ident] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LegalNumHistory#_#progress_recid_ident] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = 'PrimIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [PrimIdx] WITH FULLSCAN ;
		END
		PRINT '[PrimIdx] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimIdx] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.LegalNumHistory') and name = 'Voided')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[LegalNumHistory] [Voided] WITH FULLSCAN ;
		END
		PRINT '[Voided] on [epicor905].[dbo].[LegalNumHistory] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Voided] on [epicor905].[dbo].[LegalNumHistory] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000002_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000002_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000003_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000003_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000004_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000004_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000005_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000005_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000006_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000006_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000007_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000007_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_0000000A_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_0000000A_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000014_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000014_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000014_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000014_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_0000001E_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_0000001E_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000023_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000023_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = '_WA_Sys_00000055_0C1F291F')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [_WA_Sys_00000055_0C1F291F] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000055_0C1F291F] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000055_0C1F291F] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = 'Local001#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [Local001#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[Local001#_#progress_recid] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Local001#_#progress_recid] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = 'Local001#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [Local001#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[Local001#_#progress_recid_ident] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Local001#_#progress_recid_ident] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.Local001') and name = 'PrimKey')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[Local001] [PrimKey] WITH FULLSCAN ;
		END
		PRINT '[PrimKey] on [epicor905].[dbo].[Local001] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PrimKey] on [epicor905].[dbo].[Local001] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000005_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000005_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000008_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000008_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000009_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000009_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000000A_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000000A_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000000B_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000000B_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000B_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000B_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000000D_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000000D_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000000E_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000000E_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000011_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000011_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000017_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000017_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000017_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000017_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000018_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000018_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000018_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000018_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000001B_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000001B_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000001D_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000001D_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001D_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001D_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000001E_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000001E_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001E_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001E_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000001F_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000001F_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001F_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001F_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000020_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000020_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000020_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000020_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000021_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000021_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000021_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000021_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000022_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000022_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000022_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000022_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000023_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000023_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000023_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000023_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000024_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000024_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000024_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000024_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000025_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000025_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000025_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000025_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000028_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000028_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000028_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000028_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000002A_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000002A_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000002A_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000002A_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000030_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000030_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000030_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000030_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000031_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000031_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000031_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000031_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000050_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000050_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000050_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000050_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000052_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000052_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000052_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000052_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000053_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000053_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000053_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000053_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000054_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000054_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000054_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000054_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000055_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000055_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000055_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000055_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000058_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000058_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000058_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000058_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000005E_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000005E_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005E_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005E_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000005F_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000005F_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005F_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005F_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000A2_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000A2_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000A2_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000A2_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000AE_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000AE_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000AE_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000AE_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000CC_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000CC_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000CC_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000CC_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000CE_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000CE_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000CE_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000CE_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000D7_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000D7_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000D7_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000D7_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000DA_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000DA_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000DA_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000DA_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_000000DF_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_000000DF_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000DF_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000DF_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000101_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000101_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000101_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000101_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000104_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000104_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000104_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000104_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000106_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000106_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000106_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000106_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000107_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000107_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000107_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000107_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_0000010C_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_0000010C_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000010C_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000010C_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'ARClearing')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [ARClearing] WITH FULLSCAN ;
		END
		PRINT '[ARClearing] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ARClearing] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'AssetLinedIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [AssetLinedIdx] WITH FULLSCAN ;
		END
		PRINT '[AssetLinedIdx] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[AssetLinedIdx] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'BTCustNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [BTCustNum] WITH FULLSCAN ;
		END
		PRINT '[BTCustNum] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[BTCustNum] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'CallNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [CallNum] WITH FULLSCAN ;
		END
		PRINT '[CallNum] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CallNum] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'ChangeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [ChangeIdx] WITH FULLSCAN ;
		END
		PRINT '[ChangeIdx] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ChangeIdx] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'ChargeDefRev')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [ChargeDefRev] WITH FULLSCAN ;
		END
		PRINT '[ChargeDefRev] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ChargeDefRev] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'Contractnum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [Contractnum] WITH FULLSCAN ;
		END
		PRINT '[Contractnum] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[Contractnum] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'CustNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [CustNum] WITH FULLSCAN ;
		END
		PRINT '[CustNum] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CustNum] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'DefRevStart')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [DefRevStart] WITH FULLSCAN ;
		END
		PRINT '[DefRevStart] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[DefRevStart] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'InvcDtl#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [InvcDtl#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[InvcDtl#_#progress_recid] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[InvcDtl#_#progress_recid] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'InvcDtl#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [InvcDtl#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[InvcDtl#_#progress_recid_ident] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[InvcDtl#_#progress_recid_ident] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'InvLine')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [InvLine] WITH FULLSCAN ;
		END
		PRINT '[InvLine] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[InvLine] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'IX_AIDBA_1_20221126')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [IX_AIDBA_1_20221126] WITH FULLSCAN ;
		END
		PRINT '[IX_AIDBA_1_20221126] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[IX_AIDBA_1_20221126] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'LineType')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [LineType] WITH FULLSCAN ;
		END
		PRINT '[LineType] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LineType] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'OrderIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [OrderIndex] WITH FULLSCAN ;
		END
		PRINT '[OrderIndex] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[OrderIndex] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'PartInvoice')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [PartInvoice] WITH FULLSCAN ;
		END
		PRINT '[PartInvoice] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartInvoice] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'ProjectInv')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [ProjectInv] WITH FULLSCAN ;
		END
		PRINT '[ProjectInv] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ProjectInv] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'PSIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [PSIndex] WITH FULLSCAN ;
		END
		PRINT '[PSIndex] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PSIndex] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'RACode')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [RACode] WITH FULLSCAN ;
		END
		PRINT '[RACode] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RACode] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'RADtlID')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [RADtlID] WITH FULLSCAN ;
		END
		PRINT '[RADtlID] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RADtlID] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'RAID')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [RAID] WITH FULLSCAN ;
		END
		PRINT '[RAID] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RAID] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'RenewalNbr')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [RenewalNbr] WITH FULLSCAN ;
		END
		PRINT '[RenewalNbr] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RenewalNbr] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'RMAline')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [RMAline] WITH FULLSCAN ;
		END
		PRINT '[RMAline] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RMAline] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'ShipToCustNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [ShipToCustNum] WITH FULLSCAN ;
		END
		PRINT '[ShipToCustNum] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ShipToCustNum] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'ShpConNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [ShpConNum] WITH FULLSCAN ;
		END
		PRINT '[ShpConNum] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ShpConNum] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = 'SysIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [SysIndex] WITH FULLSCAN ;
		END
		PRINT '[SysIndex] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysIndex] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000002_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000002_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000003_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000003_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcDtl') and name = '_WA_Sys_00000004_72DDAEB2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcDtl] [_WA_Sys_00000004_72DDAEB2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_72DDAEB2] on [epicor905].[dbo].[InvcDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_72DDAEB2] on [epicor905].[dbo].[InvcDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000002_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000002_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000003_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000003_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000004_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000004_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000007_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000007_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_0000000C_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_0000000C_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000030_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000030_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000030_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000030_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000031_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000031_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000031_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000031_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000032_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000032_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000032_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000032_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000042_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000042_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000042_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000042_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = '_WA_Sys_00000048_05DB748D')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [_WA_Sys_00000048_05DB748D] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000048_05DB748D] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000048_05DB748D] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = 'ChangeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [ChangeIdx] WITH FULLSCAN ;
		END
		PRINT '[ChangeIdx] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ChangeIdx] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = 'InvcTax#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [InvcTax#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[InvcTax#_#progress_recid] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[InvcTax#_#progress_recid] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = 'InvcTax#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [InvcTax#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[InvcTax#_#progress_recid_ident] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[InvcTax#_#progress_recid_ident] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.InvcTax') and name = 'TaxRateIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[InvcTax] [TaxRateIdx] WITH FULLSCAN ;
		END
		PRINT '[TaxRateIdx] on [epicor905].[dbo].[InvcTax] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[TaxRateIdx] on [epicor905].[dbo].[InvcTax] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000002_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000002_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000003_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000003_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000004_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000004_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000005_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000005_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000005_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000005_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000006_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000006_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000006_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000006_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000007_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000007_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000007_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000007_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000008_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000008_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000008_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000008_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000009_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000009_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000009_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000009_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000000A_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000000A_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000000C_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000000C_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000000D_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000000D_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000000E_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000000E_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000E_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000E_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000000F_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000000F_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000F_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000F_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000011_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000011_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000011_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000011_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000012_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000012_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000012_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000012_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000013_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000013_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000013_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000013_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000015_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000015_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000015_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000015_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000017_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000017_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000017_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000017_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000019_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000019_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000019_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000019_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000001B_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000001B_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000001B_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000001B_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000003A_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000003A_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003A_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003A_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000003E_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000003E_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003E_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003E_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000003F_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000003F_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000003F_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000003F_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000040_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000040_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000040_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000040_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000041_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000041_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000041_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000041_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000004B_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000004B_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004B_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004B_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000004E_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000004E_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000004E_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000004E_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000053_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000053_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000053_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000053_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000054_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000054_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000054_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000054_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_0000005A_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_0000005A_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000005A_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000005A_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000084_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000084_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000084_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000084_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000090_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000090_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000090_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000090_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000094_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000094_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000094_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000094_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_00000096_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_00000096_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000096_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000096_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_000000B0_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_000000B0_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000B0_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000B0_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_000000D0_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_000000D0_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000D0_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000D0_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = '_WA_Sys_000000D4_62645435')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [_WA_Sys_000000D4_62645435] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_000000D4_62645435] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_000000D4_62645435] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'ChangeIdx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [ChangeIdx] WITH FULLSCAN ;
		END
		PRINT '[ChangeIdx] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ChangeIdx] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'CustNumCustPart')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [CustNumCustPart] WITH FULLSCAN ;
		END
		PRINT '[CustNumCustPart] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CustNumCustPart] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'CustNumOurPart')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [CustNumOurPart] WITH FULLSCAN ;
		END
		PRINT '[CustNumOurPart] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[CustNumOurPart] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'idxFullText')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [idxFullText] WITH FULLSCAN ;
		END
		PRINT '[idxFullText] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[idxFullText] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'JobNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [JobNum] WITH FULLSCAN ;
		END
		PRINT '[JobNum] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[JobNum] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'LastExpiration')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [LastExpiration] WITH FULLSCAN ;
		END
		PRINT '[LastExpiration] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LastExpiration] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'LineType')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [LineType] WITH FULLSCAN ;
		END
		PRINT '[LineType] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[LineType] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'OrderLineRel')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [OrderLineRel] WITH FULLSCAN ;
		END
		PRINT '[OrderLineRel] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[OrderLineRel] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'PackNumLine')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [PackNumLine] WITH FULLSCAN ;
		END
		PRINT '[PackNumLine] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PackNumLine] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'PartNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [PartNum] WITH FULLSCAN ;
		END
		PRINT '[PartNum] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[PartNum] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'RenewalNbr')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [RenewalNbr] WITH FULLSCAN ;
		END
		PRINT '[RenewalNbr] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[RenewalNbr] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'SalesOrderIndx')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [SalesOrderIndx] WITH FULLSCAN ;
		END
		PRINT '[SalesOrderIndx] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SalesOrderIndx] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'ShipDtl#_#progress_recid')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [ShipDtl#_#progress_recid] WITH FULLSCAN ;
		END
		PRINT '[ShipDtl#_#progress_recid] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ShipDtl#_#progress_recid] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'ShipDtl#_#progress_recid_ident')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [ShipDtl#_#progress_recid_ident] WITH FULLSCAN ;
		END
		PRINT '[ShipDtl#_#progress_recid_ident] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ShipDtl#_#progress_recid_ident] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'ShpConNum')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [ShpConNum] WITH FULLSCAN ;
		END
		PRINT '[ShpConNum] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[ShpConNum] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'SysIndex')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [SysIndex] WITH FULLSCAN ;
		END
		PRINT '[SysIndex] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[SysIndex] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'UnShippped')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [UnShippped] WITH FULLSCAN ;
		END
		PRINT '[UnShippped] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[UnShippped] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'WarrEffDate')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [WarrEffDate] WITH FULLSCAN ;
		END
		PRINT '[WarrEffDate] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[WarrEffDate] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'WarrLabExp')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [WarrLabExp] WITH FULLSCAN ;
		END
		PRINT '[WarrLabExp] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[WarrLabExp] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'WarrMatExp')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [WarrMatExp] WITH FULLSCAN ;
		END
		PRINT '[WarrMatExp] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[WarrMatExp] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.ShipDtl') and name = 'WarrMiscExp')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[ShipDtl] [WarrMiscExp] WITH FULLSCAN ;
		END
		PRINT '[WarrMiscExp] on [epicor905].[dbo].[ShipDtl] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[WarrMiscExp] on [epicor905].[dbo].[ShipDtl] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxTran') and name = '_WA_Sys_00000002_7BA5CEA2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxTran] [_WA_Sys_00000002_7BA5CEA2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000002_7BA5CEA2] on [epicor905].[dbo].[TaxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000002_7BA5CEA2] on [epicor905].[dbo].[TaxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxTran') and name = '_WA_Sys_00000003_7BA5CEA2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxTran] [_WA_Sys_00000003_7BA5CEA2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000003_7BA5CEA2] on [epicor905].[dbo].[TaxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000003_7BA5CEA2] on [epicor905].[dbo].[TaxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxTran') and name = '_WA_Sys_00000004_7BA5CEA2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxTran] [_WA_Sys_00000004_7BA5CEA2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_00000004_7BA5CEA2] on [epicor905].[dbo].[TaxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_00000004_7BA5CEA2] on [epicor905].[dbo].[TaxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxTran') and name = '_WA_Sys_0000000A_7BA5CEA2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxTran] [_WA_Sys_0000000A_7BA5CEA2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000A_7BA5CEA2] on [epicor905].[dbo].[TaxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000A_7BA5CEA2] on [epicor905].[dbo].[TaxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxTran') and name = '_WA_Sys_0000000C_7BA5CEA2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxTran] [_WA_Sys_0000000C_7BA5CEA2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000C_7BA5CEA2] on [epicor905].[dbo].[TaxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000C_7BA5CEA2] on [epicor905].[dbo].[TaxTran] cannot be updated.';			
	END CATCH;
END
	
IF EXISTS
	(SELECT * FROM sys.databases WHERE state = 0 AND name = 'epicor905')
BEGIN
	BEGIN TRY
		IF EXISTS (SELECT 1 FROM sys.sysindexes WHERE STATS_DATE(id, indid)<=DATEADD(HOUR,-48,GETDATE())  AND id = object_id('epicor905.dbo.TaxTran') and name = '_WA_Sys_0000000D_7BA5CEA2')
		BEGIN
			UPDATE STATISTICS [epicor905].[dbo].[TaxTran] [_WA_Sys_0000000D_7BA5CEA2] WITH FULLSCAN ;
		END
		PRINT '[_WA_Sys_0000000D_7BA5CEA2] on [epicor905].[dbo].[TaxTran] is updated.';
	END TRY
	BEGIN CATCH
		PRINT '[_WA_Sys_0000000D_7BA5CEA2] on [epicor905].[dbo].[TaxTran] cannot be updated.';			
	END CATCH;
END
	