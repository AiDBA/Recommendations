
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md "C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA"';
EXEC xp_cmdshell 'md "C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA"';

CREATE TABLE #results (result nvarchar(max))


BEGIN TRY
	USE master
	IF EXISTS (SELECT * FROM sys.databases WHERE name = 'AdventureWorks' AND state = 0)
	BEGIN

		IF (SELECT physical_name FROM sys.master_files WHERE database_id = DB_ID(N'AdventureWorks') AND FILE_ID = 1) = 'D:\SQL2016\SSDE_DATA\AdventureWorks_Data.mdf'
		BEGIN

			ALTER DATABASE [AdventureWorks] SET OFFLINE WITH ROLLBACK IMMEDIATE;

			IF OBJECT_ID(N'tempdb..#results') IS NOT NULL
			BEGIN
				TRUNCATE TABLE #results
			END
			INSERT INTO #results
			EXEC master..xp_cmdshell 'copy "D:\SQL2016\SSDE_DATA\AdventureWorks_Data.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\AdventureWorks_Data.mdf" /Z /Y';
			IF EXISTS(SELECT * FROM #results WHERE result LIKE '%1 file(s) copied.%')
			BEGIN
				ALTER DATABASE [AdventureWorks] MODIFY FILE (NAME='AdventureWorks2016_Data' , FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\AdventureWorks_Data.mdf');
				ALTER DATABASE [AdventureWorks] SET ONLINE;
				EXEC master..xp_cmdshell 'del "D:\SQL2016\SSDE_DATA\AdventureWorks_Data.mdf" "C:\Program Files\Microsoft SQL Server\MSSQL13.SQL2016\MSSQL\DATA\AdventureWorks_Data.mdf"';
			END
			ELSE
			BEGIN
				ALTER DATABASE [AdventureWorks] SET ONLINE;
			END
			TRUNCATE TABLE #results
		END
	END
END TRY
BEGIN CATCH
	IF DB_ID(N'AdventureWorks') IS NOT NULL
	BEGIN
		ALTER DATABASE [AdventureWorks] SET ONLINE;
	END
END CATCH

EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;
