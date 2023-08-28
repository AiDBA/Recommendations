
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA"';
EXEC xp_cmdshell 'md "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'FusionDW' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'FusionDW') AND FILE_ID = 2) = 'C:\MYSAHUSKYSRV02\SSDE_LOG\DatabaseFusionDW_log.ldf'
		BEGIN

			ALTER DATABASE [FusionDW] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\MYSAHUSKYSRV02\SSDE_LOG\DatabaseFusionDW_log.ldf" "E:\Husky\ShotscopeNX\DatabaseFusionDW_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [FusionDW] MODIFY FILE (NAME='FusionDW_log' , FILENAME='E:\Husky\ShotscopeNX\DatabaseFusionDW_log.ldf');
				ALTER DATABASE [FusionDW] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\MYSAHUSKYSRV02\SSDE_LOG\DatabaseFusionDW_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [FusionDW] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'FusionDW') IS NOT NULL
	BEGIN
		ALTER DATABASE [FusionDW] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'FusionOperational' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'FusionOperational') AND FILE_ID = 2) = 'C:\MYSAHUSKYSRV02\SSDE_LOG\DatabaseFusionOperational_log.ldf'
		BEGIN

			ALTER DATABASE [FusionOperational] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\MYSAHUSKYSRV02\SSDE_LOG\DatabaseFusionOperational_log.ldf" "E:\Husky\ShotscopeNX\DatabaseFusionOperational_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [FusionOperational] MODIFY FILE (NAME='FusionOperational_log' , FILENAME='E:\Husky\ShotscopeNX\DatabaseFusionOperational_log.ldf');
				ALTER DATABASE [FusionOperational] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\MYSAHUSKYSRV02\SSDE_LOG\DatabaseFusionOperational_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [FusionOperational] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'FusionOperational') IS NOT NULL
	BEGIN
		ALTER DATABASE [FusionOperational] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ReportServer' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServer') AND FILE_ID = 1) = 'E:\MYSAHUSKYSRV02\SSDE_DATA\ReportServer.mdf'
		BEGIN

			ALTER DATABASE [ReportServer] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MYSAHUSKYSRV02\SSDE_DATA\ReportServer.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServer] MODIFY FILE (NAME='ReportServer' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf');
				ALTER DATABASE [ReportServer] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MYSAHUSKYSRV02\SSDE_DATA\ReportServer.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReportServer.mdf"';
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

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ReportServerTempDB') AND FILE_ID = 1) = 'E:\MYSAHUSKYSRV02\SSDE_DATA\ReportServerTempDB.mdf'
		BEGIN

			ALTER DATABASE [ReportServerTempDB] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MYSAHUSKYSRV02\SSDE_DATA\ReportServerTempDB.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ReportServerTempDB] MODIFY FILE (NAME='ReportServerTempDB' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf');
				ALTER DATABASE [ReportServerTempDB] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MYSAHUSKYSRV02\SSDE_DATA\ReportServerTempDB.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ReportServerTempDB.mdf"';
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
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ShotscopeNXSecurity' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ShotscopeNXSecurity') AND FILE_ID = 1) = 'E:\MYSAHUSKYSRV02\SSDE_DATA\ShotscopeNXSecurity.mdf'
		BEGIN

			ALTER DATABASE [ShotscopeNXSecurity] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "E:\MYSAHUSKYSRV02\SSDE_DATA\ShotscopeNXSecurity.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShotscopeNXSecurity.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ShotscopeNXSecurity] MODIFY FILE (NAME='ShotscopeNXSecurity' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShotscopeNXSecurity.mdf');
				ALTER DATABASE [ShotscopeNXSecurity] SET ONLINE;
				EXEC master..xp_cmdshell 'del "E:\MYSAHUSKYSRV02\SSDE_DATA\ShotscopeNXSecurity.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShotscopeNXSecurity.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ShotscopeNXSecurity] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ShotscopeNXSecurity') IS NOT NULL
	BEGIN
		ALTER DATABASE [ShotscopeNXSecurity] SET ONLINE;
	END
END CATCH

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
