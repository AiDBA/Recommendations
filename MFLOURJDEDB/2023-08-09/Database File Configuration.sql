
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
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PRODUCTION')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PRODUCTION] MODIFY FILE ( NAME = N'JDE_PROD_Data', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PRODUCTION')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PRODUCTION] MODIFY FILE ( NAME = N'JDE_PROD_Log', FILEGROWTH = 1024MB );
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
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'SCHEDULER')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SCHEDULER] MODIFY FILE ( NAME = N'SCHEDULER', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'SCHEDULER')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SCHEDULER] MODIFY FILE ( NAME = N'SCHEDULER_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'JDE_ARCHIVE')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_ARCHIVE] MODIFY FILE ( NAME = N'JDE_PROD_Data', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'JDE_ARCHIVE')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [JDE_ARCHIVE] MODIFY FILE ( NAME = N'JDE_PROD_Log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE920] MODIFY FILE ( NAME = N'JDE920_Data', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE920] MODIFY FILE ( NAME = N'JDE920_Log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PD920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PD920] MODIFY FILE ( NAME = N'JDE_PY920_Data1', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PD920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PD920] MODIFY FILE ( NAME = N'JDE_PD920_Log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PD920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PD920] MODIFY FILE ( NAME = N'JDE_PY920_Data2', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PD920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PD920] MODIFY FILE ( NAME = N'JDE_PY920_Data3', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PD920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PD920] MODIFY FILE ( NAME = N'JDE_PY920_Data4', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'JDE_PD920')
BEGIN
	BEGIN TRY
		ALTER DATABASE [JDE_PD920] MODIFY FILE ( NAME = N'JDE_PY920_Data5', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
