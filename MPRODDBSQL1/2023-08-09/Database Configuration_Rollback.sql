
BEGIN TRY
ALTER DATABASE [ReportServer$MSSQLSERVER1] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ReportServer$MSSQLSERVER1] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer$MSSQLSERVER1] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ReportServer$MSSQLSERVER1TempDB] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ReportServer$MSSQLSERVER1TempDB] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer$MSSQLSERVER1TempDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MFMB] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MFMB] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MFMB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MTECH_v7_HH_P] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MTECH_v7_HH_P] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH_v7_HH_P] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MTECH_V7_Intermediate_PROD] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MTECH_V7_Intermediate_PROD] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH_V7_Intermediate_PROD] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MTECH_v7_PRODUCTION] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[MTECH_v7_PRODUCTION] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [MTECH_v7_PRODUCTION] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[MTECH_v7_PRODUCTION] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [MTECH_v7_PRODUCTION] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MTECH_v7_PRODUCTION] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH_v7_PRODUCTION] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MFMB_SYSTEM] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[MFMB_SYSTEM] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [MFMB_SYSTEM] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[MFMB_SYSTEM] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [MFMB_SYSTEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[MFMB_SYSTEM] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [MFMB_SYSTEM] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MFMB_SYSTEM] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MFMB_SYSTEM] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;