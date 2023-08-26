
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SPRITZERTAIPINGDB] MODIFY FILE ( NAME = N'SPRITZERTAIPINGDB', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'SPRITZERTAIPINGDB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SPRITZERTAIPINGDB] MODIFY FILE ( NAME = N'SPRITZERTAIPINGDB_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SPRITZERTAIPINGDWH] MODIFY FILE ( NAME = N'SPRITZERTAIPINGDWH', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'SPRITZERTAIPINGDWH')
BEGIN
	BEGIN TRY
		ALTER DATABASE [SPRITZERTAIPINGDWH] MODIFY FILE ( NAME = N'SPRITZERTAIPINGDWH_log', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
