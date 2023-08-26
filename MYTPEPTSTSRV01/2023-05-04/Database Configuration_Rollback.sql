
BEGIN TRY
ALTER DATABASE [E101PilotRpt] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[E101PilotRpt] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101PilotRpt] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
USE [EpicorDataDiscovery];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[EpicorDataDiscovery] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [EpicorDataDiscovery];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[EpicorDataDiscovery] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [EpicorDataDiscovery] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [E101Pilot] SET TARGET_RECOVERY_TIME = 80 SECONDS;
PRINT '[E101Pilot] PARAMETERIZATION is set 80.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Pilot] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [TSQL_AX] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[TSQL_AX] PARAMETERIZATION is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [TSQL_AX] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ExternalE101Test] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ExternalE101Test] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ExternalE101Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ExternalE101Test] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [ExternalE101Test] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ExternalE101Test] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [ExternalE101Test] SET TARGET_RECOVERY_TIME = 60 SECONDS;
PRINT '[ExternalE101Test] PARAMETERIZATION is set 60.';
USE [ExternalE101Test];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[ExternalE101Test] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [ExternalE101Test];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[ExternalE101Test] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ExternalE101Test] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
USE [TestCMS];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[TestCMS] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [TestCMS];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[TestCMS] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [TestCMS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ESCDB] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ESCDB] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ESCDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ESCDB] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [ESCDB] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ESCDB] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [ESCDB] SET TARGET_RECOVERY_TIME = 60 SECONDS;
PRINT '[ESCDB] PARAMETERIZATION is set 60.';
USE [ESCDB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[ESCDB] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [ESCDB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[ESCDB] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ESCDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [SwissLog] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[SwissLog] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [SwissLog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[SwissLog] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [SwissLog] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[SwissLog] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [SwissLog] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[SwissLog] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [SwissLog] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [SwissTest] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[SwissTest] PARAMETERIZATION is set 61.';
USE [SwissTest];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[SwissTest] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [SwissTest];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[SwissTest] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [SwissTest] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [E101TrainRpt] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[E101TrainRpt] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [E101TrainRpt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[E101TrainRpt] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [E101TrainRpt] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[E101TrainRpt] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [E101TrainRpt] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[E101TrainRpt] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101TrainRpt] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
USE [E101Stating_Fard];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[E101Stating_Fard] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [E101Stating_Fard];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[E101Stating_Fard] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Stating_Fard] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [E101TestRpt] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[E101TestRpt] PARAMETERIZATION is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101TestRpt] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [REPORT_DB] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[REPORT_DB] PARAMETERIZATION is set 61.';
USE [REPORT_DB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[REPORT_DB] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [REPORT_DB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[REPORT_DB] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [REPORT_DB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [E101Train] SET TARGET_RECOVERY_TIME = 69 SECONDS;
PRINT '[E101Train] PARAMETERIZATION is set 69.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Train] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [E101Test] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[E101Test] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [E101Test] SET TARGET_RECOVERY_TIME = 74 SECONDS;
PRINT '[E101Test] PARAMETERIZATION is set 74.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Test] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;