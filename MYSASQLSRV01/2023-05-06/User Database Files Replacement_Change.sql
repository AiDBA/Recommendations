
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "E:\MYSASQLSRV01\SSDE_DATA"';
EXEC xp_cmdshell 'md "C:\MYSASQLSRV01\SSDE_LOG"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ITEH' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ITEH') AND FILE_ID = 1) = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSCADA\MSSQL\DATA\ITEH.mdf'
		BEGIN

			ALTER DATABASE [ITEH] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSCADA\MSSQL\DATA\ITEH.mdf" "E:\MYSASQLSRV01\SSDE_DATA\ITEH.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ITEH] MODIFY FILE (NAME='ITEH' , FILENAME='E:\MYSASQLSRV01\SSDE_DATA\ITEH.mdf');
				ALTER DATABASE [ITEH] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSCADA\MSSQL\DATA\ITEH.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ITEH] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ITEH') IS NOT NULL
	BEGIN
		ALTER DATABASE [ITEH] SET ONLINE;
	END
END CATCH

BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ITEH' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'ITEH') AND FILE_ID = 3) = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSCADA\MSSQL\DATA\ITEH_AIDBA_NCIX.ndf'
		BEGIN

			ALTER DATABASE [ITEH] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSCADA\MSSQL\DATA\ITEH_AIDBA_NCIX.ndf" "E:\MYSASQLSRV01\SSDE_DATA\ITEH_AIDBA_NCIX.ndf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [ITEH] MODIFY FILE (NAME='ITEH_AIDBA_NCIX' , FILENAME='E:\MYSASQLSRV01\SSDE_DATA\ITEH_AIDBA_NCIX.ndf');
				ALTER DATABASE [ITEH] SET ONLINE;
				EXEC master..xp_cmdshell 'del "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSCADA\MSSQL\DATA\ITEH_AIDBA_NCIX.ndf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [ITEH] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'ITEH') IS NOT NULL
	BEGIN
		ALTER DATABASE [ITEH] SET ONLINE;
	END
END CATCH

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
