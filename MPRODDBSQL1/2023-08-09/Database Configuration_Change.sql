
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [ReportServer$MSSQLSERVER1] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[ReportServer$MSSQLSERVER1] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer$MSSQLSERVER1] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[ReportServer$MSSQLSERVER1TempDB] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer$MSSQLSERVER1TempDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MFMB] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MFMB] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MFMB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MTECH_v7_HH_P] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MTECH_v7_HH_P] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH_v7_HH_P] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MTECH_V7_Intermediate_PROD] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MTECH_V7_Intermediate_PROD] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH_V7_Intermediate_PROD] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [MTECH_v7_PRODUCTION] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[MTECH_v7_PRODUCTION] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [MTECH_v7_PRODUCTION] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[MTECH_v7_PRODUCTION] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MTECH_v7_PRODUCTION] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MTECH_v7_PRODUCTION] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH_v7_PRODUCTION] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [MFMB_SYSTEM] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[MFMB_SYSTEM] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [MFMB_SYSTEM] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[MFMB_SYSTEM] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [MFMB_SYSTEM] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[MFMB_SYSTEM] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MFMB_SYSTEM] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MFMB_SYSTEM] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MFMB_SYSTEM] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;