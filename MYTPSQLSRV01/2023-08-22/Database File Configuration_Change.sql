
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'LineView4')
BEGIN
	BEGIN TRY
		ALTER DATABASE [LineView4] MODIFY FILE ( NAME = N'LineView4', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'LineView4')
BEGIN
	BEGIN TRY
		ALTER DATABASE [LineView4] MODIFY FILE ( NAME = N'LineView4_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'OCS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [OCS] MODIFY FILE ( NAME = N'OCS', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'OCS')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [OCS] MODIFY FILE ( NAME = N'OCS_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'CommonDB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [CommonDB] MODIFY FILE ( NAME = N'CommonDB', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'CommonDB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [CommonDB] MODIFY FILE ( NAME = N'CommonDB_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'VeeamOne')
BEGIN
	BEGIN TRY
		ALTER DATABASE [VeeamOne] MODIFY FILE ( NAME = N'VeeamOne', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'VeeamOne')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [VeeamOne] MODIFY FILE ( NAME = N'VeeamOne_log', SIZE = 6144MB , FILEGROWTH = 1024MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'VeeamOne')
BEGIN
	BEGIN TRY
		ALTER DATABASE [VeeamOne] MODIFY FILE ( NAME = N'VeeamOne_AIDBA_NCIX', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'LineViewXL')
BEGIN
	BEGIN TRY
		ALTER DATABASE [LineViewXL] MODIFY FILE ( NAME = N'LineViewXL', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'LineViewXL')
BEGIN
	BEGIN TRY
		ALTER DATABASE [LineViewXL] MODIFY FILE ( NAME = N'LineViewXL_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Runtime')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Runtime] MODIFY FILE ( NAME = N'Runtime', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Runtime')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Runtime] MODIFY FILE ( NAME = N'Runtime_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Colos')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Colos] MODIFY FILE ( NAME = N'Colos', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Colos')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Colos] MODIFY FILE ( NAME = N'Colos_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Colos')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Colos] MODIFY FILE ( NAME = N'Colos_AIDBA_NCIX', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		ALTER DATABASE [LineView4Reports] MODIFY FILE ( NAME = N'LineView4Reports', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'LineView4Reports')
BEGIN
	BEGIN TRY
		ALTER DATABASE [LineView4Reports] MODIFY FILE ( NAME = N'LineView4Reports_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Lineview')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Lineview] MODIFY FILE ( NAME = N'Lineview', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Lineview')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Lineview] MODIFY FILE ( NAME = N'Lineview_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'Lineview')
BEGIN
	BEGIN TRY
		ALTER DATABASE [Lineview] MODIFY FILE ( NAME = N'Lineview_AIDBA_NCIX', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
