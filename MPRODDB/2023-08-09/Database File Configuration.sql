
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
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'INTERM')
BEGIN
	BEGIN TRY
		ALTER DATABASE [INTERM] MODIFY FILE ( NAME = N'INTERM', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'INTERM')
BEGIN
	BEGIN TRY
		ALTER DATABASE [INTERM] MODIFY FILE ( NAME = N'INTERM_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MIMS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MIMS] MODIFY FILE ( NAME = N'SMART_DINDINGS', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MIMS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MIMS] MODIFY FILE ( NAME = N'SMART_DINDINGS_LOG', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH-EDATA')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH-EDATA] MODIFY FILE ( NAME = N'Mtech-Edata_test', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH-EDATA')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH-EDATA] MODIFY FILE ( NAME = N'Mtech-Edata_test_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'INTERM_CONT')
BEGIN
	BEGIN TRY
		ALTER DATABASE [INTERM_CONT] MODIFY FILE ( NAME = N'INTERM_CONT', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'INTERM_CONT')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [INTERM_CONT] MODIFY FILE ( NAME = N'INTERM_CONT_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
