
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "F:\MPRODDB\SSDE_DATA"';
EXEC xp_cmdshell 'md "E:\MPRODDB\SSDE_LOG"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'distribution' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'distribution') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.MDF'
		BEGIN

			ALTER DATABASE [distribution] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.MDF" "F:\MPRODDB\SSDE_DATA\distribution.MDF" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [distribution] MODIFY FILE (NAME='distribution' , FILENAME='F:\MPRODDB\SSDE_DATA\distribution.MDF');
				ALTER DATABASE [distribution] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.MDF"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'distribution') AND FILE_ID = 2) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.LDF'
		BEGIN

			ALTER DATABASE [distribution] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.LDF" "E:\MPRODDB\SSDE_LOG\distribution.LDF" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [distribution] MODIFY FILE (NAME='distribution_log' , FILENAME='E:\MPRODDB\SSDE_LOG\distribution.LDF');
				ALTER DATABASE [distribution] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Data\distribution.LDF"';
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
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'INTERM_CONT' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'INTERM_CONT') AND FILE_ID = 1) = 'G:\MSSQLData\INTERM_CONT.mdf'
		BEGIN

			ALTER DATABASE [INTERM_CONT] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "G:\MSSQLData\INTERM_CONT.mdf" "F:\MPRODDB\SSDE_DATA\INTERM_CONT.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [INTERM_CONT] MODIFY FILE (NAME='INTERM_CONT' , FILENAME='F:\MPRODDB\SSDE_DATA\INTERM_CONT.mdf');
				ALTER DATABASE [INTERM_CONT] SET ONLINE;
				EXEC master..xp_cmdshell 'del "G:\MSSQLData\INTERM_CONT.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [INTERM_CONT] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'INTERM_CONT') IS NOT NULL
	BEGIN
		ALTER DATABASE [INTERM_CONT] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'INTERM_CONT' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'INTERM_CONT') AND FILE_ID = 2) = 'G:\MSSQLData\INTERM_CONT.ldf'
		BEGIN

			ALTER DATABASE [INTERM_CONT] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "G:\MSSQLData\INTERM_CONT.ldf" "E:\MPRODDB\SSDE_LOG\INTERM_CONT.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [INTERM_CONT] MODIFY FILE (NAME='INTERM_CONT_log' , FILENAME='E:\MPRODDB\SSDE_LOG\INTERM_CONT.ldf');
				ALTER DATABASE [INTERM_CONT] SET ONLINE;
				EXEC master..xp_cmdshell 'del "G:\MSSQLData\INTERM_CONT.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [INTERM_CONT] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'INTERM_CONT') IS NOT NULL
	BEGIN
		ALTER DATABASE [INTERM_CONT] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf" "F:\MPRODDB\SSDE_DATA\ReportServer.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer' , FILENAME='F:\MPRODDB\SSDE_DATA\ReportServer.mdf');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 2) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer_log.ldf'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer_log.ldf" "E:\MPRODDB\SSDE_LOG\ReportServer_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer_log' , FILENAME='E:\MPRODDB\SSDE_LOG\ReportServer_log.ldf');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServer_log.ldf"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServerTempDB') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf'
		BEGIN

			ALTER DATABASE [ReportServerTempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf" "F:\MPRODDB\SSDE_DATA\ReportServerTempDB.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServerTempDB] MODIFY FILE (NAME='ReportServerTempDB' , FILENAME='F:\MPRODDB\SSDE_DATA\ReportServerTempDB.mdf');
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServerTempDB') AND FILE_ID = 2) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB_log.ldf'
		BEGIN

			ALTER DATABASE [ReportServerTempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB_log.ldf" "E:\MPRODDB\SSDE_LOG\ReportServerTempDB_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServerTempDB] MODIFY FILE (NAME='ReportServerTempDB_log' , FILENAME='E:\MPRODDB\SSDE_LOG\ReportServerTempDB_log.ldf');
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB_log.ldf"';
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

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
