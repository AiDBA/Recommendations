
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "E:\AX"';
EXEC xp_cmdshell 'md "E:\AX\Logs"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'TSQL_AX' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'TSQL_AX') AND FILE_ID = 2) = 'D:\MYTPEPTSTSRV01\SSDE_LOG\TSQL_AX_log.ldf'
		BEGIN

			ALTER DATABASE [TSQL_AX] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "D:\MYTPEPTSTSRV01\SSDE_LOG\TSQL_AX_log.ldf" "E:\AX\Logs\TSQL_AX_log.ldf" /Z /Y ';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [TSQL_AX] MODIFY FILE (NAME='TSQL_log' , FILENAME='E:\AX\Logs\TSQL_AX_log.ldf');
				ALTER DATABASE [TSQL_AX] SET ONLINE;
				EXEC master..xp_cmdshell 'del "D:\MYTPEPTSTSRV01\SSDE_LOG\TSQL_AX_log.ldf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [TSQL_AX] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'TSQL_AX') IS NOT NULL
	BEGIN
		ALTER DATABASE [TSQL_AX] SET ONLINE;
	END
END CATCH

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
