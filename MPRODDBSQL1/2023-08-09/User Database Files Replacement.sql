
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "F:\MPRODDBSQL1\SSDE_DATA"';
EXEC xp_cmdshell 'md "G:\MPRODDBSQL1\SSDE_LOG"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'distribution' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'distribution') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\Data\distribution.MDF'
		BEGIN

			ALTER DATABASE [distribution] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\Data\distribution.MDF" "F:\MPRODDBSQL1\SSDE_DATA\distribution.MDF" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [distribution] MODIFY FILE (NAME='distribution' , FILENAME='F:\MPRODDBSQL1\SSDE_DATA\distribution.MDF');
				ALTER DATABASE [distribution] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\Data\distribution.MDF"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'distribution') AND FILE_ID = 2) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\Data\distribution.LDF'
		BEGIN

			ALTER DATABASE [distribution] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\Data\distribution.LDF" "G:\MPRODDBSQL1\SSDE_LOG\distribution.LDF" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [distribution] MODIFY FILE (NAME='distribution_log' , FILENAME='G:\MPRODDBSQL1\SSDE_LOG\distribution.LDF');
				ALTER DATABASE [distribution] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\Data\distribution.LDF"';
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
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer$MSSQLSERVER1' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer$MSSQLSERVER1') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1.mdf'
		BEGIN

			ALTER DATABASE [ReportServer$MSSQLSERVER1] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1.mdf" "F:\MPRODDBSQL1\SSDE_DATA\ReportServer$MSSQLSERVER1.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1] MODIFY FILE (NAME='ReportServer$MSSQLSERVER1' , FILENAME='F:\MPRODDBSQL1\SSDE_DATA\ReportServer$MSSQLSERVER1.mdf');
				ALTER DATABASE [ReportServer$MSSQLSERVER1] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServer$MSSQLSERVER1') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServer$MSSQLSERVER1] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer$MSSQLSERVER1' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer$MSSQLSERVER1') AND FILE_ID = 2) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1_log.ldf'
		BEGIN

			ALTER DATABASE [ReportServer$MSSQLSERVER1] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1_log.ldf" "G:\MPRODDBSQL1\SSDE_LOG\ReportServer$MSSQLSERVER1_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1] MODIFY FILE (NAME='ReportServer$MSSQLSERVER1_log' , FILENAME='G:\MPRODDBSQL1\SSDE_LOG\ReportServer$MSSQLSERVER1_log.ldf');
				ALTER DATABASE [ReportServer$MSSQLSERVER1] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServer$MSSQLSERVER1') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServer$MSSQLSERVER1] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer$MSSQLSERVER1TempDB' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer$MSSQLSERVER1TempDB') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1TempDB.mdf'
		BEGIN

			ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1TempDB.mdf" "F:\MPRODDBSQL1\SSDE_DATA\ReportServer$MSSQLSERVER1TempDB.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] MODIFY FILE (NAME='ReportServer$MSSQLSERVER1TempDB' , FILENAME='F:\MPRODDBSQL1\SSDE_DATA\ReportServer$MSSQLSERVER1TempDB.mdf');
				ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1TempDB.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServer$MSSQLSERVER1TempDB') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer$MSSQLSERVER1TempDB' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer$MSSQLSERVER1TempDB') AND FILE_ID = 2) = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1TempDB_log.ldf'
		BEGIN

			ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1TempDB_log.ldf" "G:\MPRODDBSQL1\SSDE_LOG\ReportServer$MSSQLSERVER1TempDB_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] MODIFY FILE (NAME='ReportServer$MSSQLSERVER1TempDB_log' , FILENAME='G:\MPRODDBSQL1\SSDE_LOG\ReportServer$MSSQLSERVER1TempDB_log.ldf');
				ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER1\MSSQL\DATA\ReportServer$MSSQLSERVER1TempDB_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ReportServer$MSSQLSERVER1TempDB') IS NOT NULL
	BEGIN
		ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET ONLINE;
	END
END CATCH

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
