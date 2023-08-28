
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'epicor905')
BEGIN
	BEGIN TRY
		ALTER DATABASE [epicor905] MODIFY FILE ( NAME = N'epicor905', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'epicor905')
BEGIN
	BEGIN TRY
		ALTER DATABASE [epicor905] MODIFY FILE ( NAME = N'Epicor905_log', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'ReportServer')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServer] MODIFY FILE ( NAME = N'ReportServer', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'ReportServer')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServer] MODIFY FILE ( NAME = N'ReportServer_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ReportServerTempDB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServerTempDB] MODIFY FILE ( NAME = N'ReportServerTempDB', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ReportServerTempDB')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [ReportServerTempDB] MODIFY FILE ( NAME = N'ReportServerTempDB_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SearchIndex900] MODIFY FILE ( NAME = N'SearchIndex900', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'SearchIndex900')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [SearchIndex900] MODIFY FILE ( NAME = N'SearchIndex900_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
