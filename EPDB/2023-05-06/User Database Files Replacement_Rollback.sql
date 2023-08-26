
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA"';
EXEC xp_cmdshell 'md "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'AFRCSTP' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'AFRCSTP') AND FILE_ID = 1) = 'F:\EPDB\SSDE_DATA\AFRCSTP.mdf'
		BEGIN

			ALTER DATABASE [AFRCSTP] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\EPDB\SSDE_DATA\AFRCSTP.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AFRCSTP.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [AFRCSTP] MODIFY FILE (NAME='AFRCSTP' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AFRCSTP.mdf');
				ALTER DATABASE [AFRCSTP] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\EPDB\SSDE_DATA\AFRCSTP.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AFRCSTP.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [AFRCSTP] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'AFRCSTP') IS NOT NULL
	BEGIN
		ALTER DATABASE [AFRCSTP] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'AFRCSTP' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'AFRCSTP') AND FILE_ID = 2) = 'D:\EPDB\SSDE_LOG\AFRCSTP_log.ldf'
		BEGIN

			ALTER DATABASE [AFRCSTP] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "D:\EPDB\SSDE_LOG\AFRCSTP_log.ldf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AFRCSTP_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [AFRCSTP] MODIFY FILE (NAME='AFRCSTP_log' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AFRCSTP_log.ldf');
				ALTER DATABASE [AFRCSTP] SET ONLINE;
				EXEC master..xp_cmdshell 'del "D:\EPDB\SSDE_LOG\AFRCSTP_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [AFRCSTP] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'AFRCSTP') IS NOT NULL
	BEGIN
		ALTER DATABASE [AFRCSTP] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'epicorpilot905' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'epicorpilot905') AND FILE_ID = 1) = 'F:\EPDB\SSDE_DATA\epicorpilot905.mdf'
		BEGIN

			ALTER DATABASE [epicorpilot905] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\EPDB\SSDE_DATA\epicorpilot905.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\epicorpilot905.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [epicorpilot905] MODIFY FILE (NAME='Epicor905' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\epicorpilot905.mdf');
				ALTER DATABASE [epicorpilot905] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\EPDB\SSDE_DATA\epicorpilot905.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\epicorpilot905.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [epicorpilot905] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'epicorpilot905') IS NOT NULL
	BEGIN
		ALTER DATABASE [epicorpilot905] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'epicorpilot905' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'epicorpilot905') AND FILE_ID = 2) = 'D:\EPDB\SSDE_LOG\epicorpilot905_log.ldf'
		BEGIN

			ALTER DATABASE [epicorpilot905] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "D:\EPDB\SSDE_LOG\epicorpilot905_log.ldf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\epicorpilot905_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [epicorpilot905] MODIFY FILE (NAME='Epicor905_log' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\epicorpilot905_log.ldf');
				ALTER DATABASE [epicorpilot905] SET ONLINE;
				EXEC master..xp_cmdshell 'del "D:\EPDB\SSDE_LOG\epicorpilot905_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [epicorpilot905] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'epicorpilot905') IS NOT NULL
	BEGIN
		ALTER DATABASE [epicorpilot905] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'epicortest905' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'epicortest905') AND FILE_ID = 1) = 'F:\EPDB\SSDE_DATA\epicortest905.mdf'
		BEGIN

			ALTER DATABASE [epicortest905] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\EPDB\SSDE_DATA\epicortest905.mdf" "Z:\New\epicortest905.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [epicortest905] MODIFY FILE (NAME='Epicor905' , FILENAME='Z:\New\epicortest905.mdf');
				ALTER DATABASE [epicortest905] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\EPDB\SSDE_DATA\epicortest905.mdf" "Z:\New\epicortest905.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [epicortest905] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'epicortest905') IS NOT NULL
	BEGIN
		ALTER DATABASE [epicortest905] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'epicortest905' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'epicortest905') AND FILE_ID = 2) = 'D:\EPDB\SSDE_LOG\epicortest905_log.ldf'
		BEGIN

			ALTER DATABASE [epicortest905] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "D:\EPDB\SSDE_LOG\epicortest905_log.ldf" "Z:\New\epicortest905_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [epicortest905] MODIFY FILE (NAME='Epicor905_log' , FILENAME='Z:\New\epicortest905_log.ldf');
				ALTER DATABASE [epicortest905] SET ONLINE;
				EXEC master..xp_cmdshell 'del "D:\EPDB\SSDE_LOG\epicortest905_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [epicortest905] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'epicortest905') IS NOT NULL
	BEGIN
		ALTER DATABASE [epicortest905] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 1) = 'F:\EPDB\SSDE_DATA\ReportServer.mdf'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "F:\EPDB\SSDE_DATA\ReportServer.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "F:\EPDB\SSDE_DATA\ReportServer.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 2) = 'D:\EPDB\SSDE_LOG\ReportServer_log.LDF'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "D:\EPDB\SSDE_LOG\ReportServer_log.LDF" "C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ReportServer_log.LDF" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer_log' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ReportServer_log.LDF');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "D:\EPDB\SSDE_LOG\ReportServer_log.LDF"';
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

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
