
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'ShotscopeNXSecurity')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ShotscopeNXSecurity] MODIFY FILE ( NAME = N'ShotscopeNXSecurity', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'ShotscopeNXSecurity')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ShotscopeNXSecurity] MODIFY FILE ( NAME = N'ShotscopeNXSecurity_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'FusionDW')
BEGIN
	BEGIN TRY
		ALTER DATABASE [FusionDW] MODIFY FILE ( NAME = N'FusionDW', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'FusionDW')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [FusionDW] MODIFY FILE ( NAME = N'FusionDW_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'FusionOperational')
BEGIN
	BEGIN TRY
		ALTER DATABASE [FusionOperational] MODIFY FILE ( NAME = N'FusionOperational', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'FusionOperational')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [FusionOperational] MODIFY FILE ( NAME = N'FusionOperational_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ReportServer')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServer] MODIFY FILE ( NAME = N'ReportServer', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ReportServer')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [ReportServer] MODIFY FILE ( NAME = N'ReportServer_log', SIZE = 256MB , FILEGROWTH = 256MB )
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
