
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'IDB_MTECH_MAREL_SL')
BEGIN
	BEGIN TRY
		ALTER DATABASE [IDB_MTECH_MAREL_SL] MODIFY FILE ( NAME = N'IDB_MTECH_MAREL_SL', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'IDB_MTECH_MAREL_SL')
BEGIN
	BEGIN TRY
		ALTER DATABASE [IDB_MTECH_MAREL_SL] MODIFY FILE ( NAME = N'IDB_MTECH_MAREL_SL_log', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'PDSNT')
BEGIN
	BEGIN TRY
		ALTER DATABASE [PDSNT] MODIFY FILE ( NAME = N'PDSNT', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'PDSNT')
BEGIN
	BEGIN TRY
		ALTER DATABASE [PDSNT] MODIFY FILE ( NAME = N'PDSNT_log', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'innova')
BEGIN
	BEGIN TRY
		ALTER DATABASE [innova] MODIFY FILE ( NAME = N'innova', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'innova')
BEGIN
	BEGIN TRY
		ALTER DATABASE [innova] MODIFY FILE ( NAME = N'innova_log', FILEGROWTH = 1024MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'innovaObsolete')
BEGIN
	BEGIN TRY
		ALTER DATABASE [innovaObsolete] MODIFY FILE ( NAME = N'innovaObsolete', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'innovaObsolete')
BEGIN
	BEGIN TRY
		ALTER DATABASE [innovaObsolete] MODIFY FILE ( NAME = N'innovaObsolete_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
