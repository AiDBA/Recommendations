
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'ReportServer$MSSQLSERVER1')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServer$MSSQLSERVER1] MODIFY FILE ( NAME = N'ReportServer$MSSQLSERVER1', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'ReportServer$MSSQLSERVER1')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServer$MSSQLSERVER1] MODIFY FILE ( NAME = N'ReportServer$MSSQLSERVER1_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ReportServer$MSSQLSERVER1TempDB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] MODIFY FILE ( NAME = N'ReportServer$MSSQLSERVER1TempDB', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ReportServer$MSSQLSERVER1TempDB')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] MODIFY FILE ( NAME = N'ReportServer$MSSQLSERVER1TempDB_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MFMB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MFMB] MODIFY FILE ( NAME = N'MFMB', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MFMB')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MFMB] MODIFY FILE ( NAME = N'MFMB_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH_v7_HH_P')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH_v7_HH_P] MODIFY FILE ( NAME = N'MTECH_V7_HH', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH_v7_HH_P')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH_v7_HH_P] MODIFY FILE ( NAME = N'MTECH_V7_HH_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH_V7_Intermediate_PROD')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH_V7_Intermediate_PROD] MODIFY FILE ( NAME = N'INTER_SAPPI', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH_V7_Intermediate_PROD')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH_V7_Intermediate_PROD] MODIFY FILE ( NAME = N'INTER_SAPPI_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH_v7_PRODUCTION')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH_v7_PRODUCTION] MODIFY FILE ( NAME = N'MTECH_v7_PRODUCTION', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MTECH_v7_PRODUCTION')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MTECH_v7_PRODUCTION] MODIFY FILE ( NAME = N'MTECH_v7_PRODUCTION_log', FILEGROWTH = 1024MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'MFMB_SYSTEM')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MFMB_SYSTEM] MODIFY FILE ( NAME = N'MFMB_SYSTEM', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'MFMB_SYSTEM')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [MFMB_SYSTEM] MODIFY FILE ( NAME = N'MFMB_SYSTEM_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
