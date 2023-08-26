
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA"';
EXEC xp_cmdshell 'md "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'distribution' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'distribution') AND FILE_ID = 1) = 'E:\MFLOURJDEDB\SSDE_DATA\distribution.MDF'
		BEGIN

			ALTER DATABASE [distribution] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MFLOURJDEDB\SSDE_DATA\distribution.MDF" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.MDF" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [distribution] MODIFY FILE (NAME='distribution' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.MDF');
				ALTER DATABASE [distribution] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MFLOURJDEDB\SSDE_DATA\distribution.MDF" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.MDF"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [distribution] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'distribution') IS NOT NULL
	BEGIN
		ALTER DATABASE [distribution] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'distribution' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'distribution') AND FILE_ID = 2) = 'F:\MFLOURJDEDB\SSDE_LOG\distribution.LDF'
		BEGIN

			ALTER DATABASE [distribution] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\MFLOURJDEDB\SSDE_LOG\distribution.LDF" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.LDF" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [distribution] MODIFY FILE (NAME='distribution_log' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.LDF');
				ALTER DATABASE [distribution] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\MFLOURJDEDB\SSDE_LOG\distribution.LDF"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [distribution] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'distribution') IS NOT NULL
	BEGIN
		ALTER DATABASE [distribution] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'JDE_ARCHIVE' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'JDE_ARCHIVE') AND FILE_ID = 1) = 'E:\MFLOURJDEDB\SSDE_DATA\JDE_CRPdata.MDF'
		BEGIN

			ALTER DATABASE [JDE_ARCHIVE] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MFLOURJDEDB\SSDE_DATA\JDE_CRPdata.MDF" "D:\JDEdwards\MSSQL\Data\JDE_CRPdata.MDF" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [JDE_ARCHIVE] MODIFY FILE (NAME='JDE_PROD_Data' , FILENAME='D:\JDEdwards\MSSQL\Data\JDE_CRPdata.MDF');
				ALTER DATABASE [JDE_ARCHIVE] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MFLOURJDEDB\SSDE_DATA\JDE_CRPdata.MDF" "D:\JDEdwards\MSSQL\Data\JDE_CRPdata.MDF"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [JDE_ARCHIVE] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'JDE_ARCHIVE') IS NOT NULL
	BEGIN
		ALTER DATABASE [JDE_ARCHIVE] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'JDE_ARCHIVE' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'JDE_ARCHIVE') AND FILE_ID = 2) = 'F:\MFLOURJDEDB\SSDE_LOG\JDE_CRPLOG.LDF'
		BEGIN

			ALTER DATABASE [JDE_ARCHIVE] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\MFLOURJDEDB\SSDE_LOG\JDE_CRPLOG.LDF" "D:\JDEdwards\MSSQL\Data\JDE_CRPLOG.LDF" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [JDE_ARCHIVE] MODIFY FILE (NAME='JDE_PROD_Log' , FILENAME='D:\JDEdwards\MSSQL\Data\JDE_CRPLOG.LDF');
				ALTER DATABASE [JDE_ARCHIVE] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\MFLOURJDEDB\SSDE_LOG\JDE_CRPLOG.LDF"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [JDE_ARCHIVE] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'JDE_ARCHIVE') IS NOT NULL
	BEGIN
		ALTER DATABASE [JDE_ARCHIVE] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 1) = 'E:\MFLOURJDEDB\SSDE_DATA\ReportServer.mdf'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MFLOURJDEDB\SSDE_DATA\ReportServer.mdf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MFLOURJDEDB\SSDE_DATA\ReportServer.mdf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServer] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServer') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServer] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 2) = 'F:\MFLOURJDEDB\SSDE_LOG\ReportServer_log.ldf'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\MFLOURJDEDB\SSDE_LOG\ReportServer_log.ldf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer_log' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer_log.ldf');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\MFLOURJDEDB\SSDE_LOG\ReportServer_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServer] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServer') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServer] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServerTempDB' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServerTempDB') AND FILE_ID = 1) = 'E:\MFLOURJDEDB\SSDE_DATA\ReportServerTempDB.mdf'
		BEGIN

			ALTER DATABASE [ReportServerTempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MFLOURJDEDB\SSDE_DATA\ReportServerTempDB.mdf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServerTempDB] MODIFY FILE (NAME='ReportServerTempDB' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf');
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MFLOURJDEDB\SSDE_DATA\ReportServerTempDB.mdf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServerTempDB') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServerTempDB] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServerTempDB' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServerTempDB') AND FILE_ID = 2) = 'F:\MFLOURJDEDB\SSDE_LOG\ReportServerTempDB_log.ldf'
		BEGIN

			ALTER DATABASE [ReportServerTempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\MFLOURJDEDB\SSDE_LOG\ReportServerTempDB_log.ldf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServerTempDB] MODIFY FILE (NAME='ReportServerTempDB_log' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB_log.ldf');
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\MFLOURJDEDB\SSDE_LOG\ReportServerTempDB_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServerTempDB') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServerTempDB] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'SCHEDULER' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'SCHEDULER') AND FILE_ID = 1) = 'E:\MFLOURJDEDB\SSDE_DATA\SCHEDULER.mdf'
		BEGIN

			ALTER DATABASE [SCHEDULER] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MFLOURJDEDB\SSDE_DATA\SCHEDULER.mdf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SCHEDULER.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [SCHEDULER] MODIFY FILE (NAME='SCHEDULER' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SCHEDULER.mdf');
				ALTER DATABASE [SCHEDULER] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MFLOURJDEDB\SSDE_DATA\SCHEDULER.mdf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SCHEDULER.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [SCHEDULER] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'SCHEDULER') IS NOT NULL
	BEGIN
		ALTER DATABASE [SCHEDULER] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'SCHEDULER' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'SCHEDULER') AND FILE_ID = 2) = 'F:\MFLOURJDEDB\SSDE_LOG\SCHEDULER_log.ldf'
		BEGIN

			ALTER DATABASE [SCHEDULER] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\MFLOURJDEDB\SSDE_LOG\SCHEDULER_log.ldf" "D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SCHEDULER_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [SCHEDULER] MODIFY FILE (NAME='SCHEDULER_log' , FILENAME='D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SCHEDULER_log.ldf');
				ALTER DATABASE [SCHEDULER] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\MFLOURJDEDB\SSDE_LOG\SCHEDULER_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [SCHEDULER] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'SCHEDULER') IS NOT NULL
	BEGIN
		ALTER DATABASE [SCHEDULER] SET ONLINE;
	END
END CATCH

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
