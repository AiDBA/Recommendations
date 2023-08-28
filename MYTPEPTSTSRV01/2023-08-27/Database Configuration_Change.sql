
BEGIN TRY
--CURRENT VALUE: 61 SECONDS
ALTER DATABASE [TestCMS] SET TARGET_RECOVERY_TIME = 62 SECONDS;
PRINT '[TestCMS] TARGET_RECOVERY_TIME is set 62.';
--CURRENT VALUE: ON
USE [TestCMS];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = OFF;
PRINT '[TestCMS] DISABLE_INTERLEAVED_EXECUTION_TVF  is OFF.';
--CURRENT VALUE: ON
USE [TestCMS];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = OFF;
PRINT '[TestCMS] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is OFF.';
END TRY 
BEGIN CATCH
	PRINT 'Database [TestCMS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: ON
USE [REPORT_DB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = OFF;
PRINT '[REPORT_DB] DISABLE_INTERLEAVED_EXECUTION_TVF  is OFF.';
--CURRENT VALUE: ON
USE [REPORT_DB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = OFF;
PRINT '[REPORT_DB] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is OFF.';
END TRY 
BEGIN CATCH
	PRINT 'Database [REPORT_DB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 61 SECONDS
ALTER DATABASE [HandHeldPilotDB ] SET TARGET_RECOVERY_TIME = 64 SECONDS;
PRINT '[HandHeldPilotDB ] TARGET_RECOVERY_TIME is set 64.';
END TRY 
BEGIN CATCH
	PRINT 'Database [HandHeldPilotDB ] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [SwissLog] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[SwissLog] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [SwissLog] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[SwissLog] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: SIMPLE
ALTER DATABASE [SwissLog] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[SwissLog] PARAMETERIZATION is FORCED.';
--CURRENT VALUE: 0 SECONDS
ALTER DATABASE [SwissLog] SET TARGET_RECOVERY_TIME = 70 SECONDS;
PRINT '[SwissLog] TARGET_RECOVERY_TIME is set 70.';
END TRY 
BEGIN CATCH
	PRINT 'Database [SwissLog] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [E101Train] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[E101Train] PARAMETERIZATION is FORCED.';
--CURRENT VALUE: 0 SECONDS
ALTER DATABASE [E101Train] SET TARGET_RECOVERY_TIME = 69 SECONDS;
PRINT '[E101Train] TARGET_RECOVERY_TIME is set 69.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Train] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 61 SECONDS
ALTER DATABASE [E101TestRpt] SET TARGET_RECOVERY_TIME = 62 SECONDS;
PRINT '[E101TestRpt] TARGET_RECOVERY_TIME is set 62.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101TestRpt] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [ExternalE101Test] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[ExternalE101Test] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [ExternalE101Test] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[ExternalE101Test] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: SIMPLE
ALTER DATABASE [ExternalE101Test] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[ExternalE101Test] PARAMETERIZATION is FORCED.';
--CURRENT VALUE: 60 SECONDS
ALTER DATABASE [ExternalE101Test] SET TARGET_RECOVERY_TIME = 63 SECONDS;
PRINT '[ExternalE101Test] TARGET_RECOVERY_TIME is set 63.';
--CURRENT VALUE: ON
USE [ExternalE101Test];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = OFF;
PRINT '[ExternalE101Test] DISABLE_INTERLEAVED_EXECUTION_TVF  is OFF.';
--CURRENT VALUE: ON
USE [ExternalE101Test];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = OFF;
PRINT '[ExternalE101Test] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is OFF.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ExternalE101Test] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [E101TrainRpt] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[E101TrainRpt] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [E101TrainRpt] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[E101TrainRpt] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: SIMPLE
ALTER DATABASE [E101TrainRpt] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[E101TrainRpt] PARAMETERIZATION is FORCED.';
--CURRENT VALUE: 0 SECONDS
ALTER DATABASE [E101TrainRpt] SET TARGET_RECOVERY_TIME = 62 SECONDS;
PRINT '[E101TrainRpt] TARGET_RECOVERY_TIME is set 62.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101TrainRpt] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [E101Test] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[E101Test] PARAMETERIZATION is FORCED.';
--CURRENT VALUE: 74 SECONDS
ALTER DATABASE [E101Test] SET TARGET_RECOVERY_TIME = 72 SECONDS;
PRINT '[E101Test] TARGET_RECOVERY_TIME is set 72.';
END TRY 
BEGIN CATCH
	PRINT 'Database [E101Test] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;