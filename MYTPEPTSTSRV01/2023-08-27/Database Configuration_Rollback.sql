
BEGIN TRY
ALTER DATABASE [TestCMS] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[TestCMS] PARAMETERIZATION is set 61.';
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
ALTER DATABASE [HandHeldPilotDB ] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[HandHeldPilotDB ] PARAMETERIZATION is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [HandHeldPilotDB ] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
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
ALTER DATABASE [E101Train] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[E101Train] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [E101Train] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[E101Train] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Train] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [E101TestRpt] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[E101TestRpt] PARAMETERIZATION is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101TestRpt] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
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
ALTER DATABASE [E101Test] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[E101Test] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [E101Test] SET TARGET_RECOVERY_TIME = 74 SECONDS;
PRINT '[E101Test] PARAMETERIZATION is set 74.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Test] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;