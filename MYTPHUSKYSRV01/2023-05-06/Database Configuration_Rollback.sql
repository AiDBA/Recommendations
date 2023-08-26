
BEGIN TRY
ALTER DATABASE [ReportServerTempDB] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[ReportServerTempDB] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [ReportServerTempDB] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ReportServerTempDB] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ReportServerTempDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ReportServerTempDB] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
USE [ReportServerTempDB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[ReportServerTempDB] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [ReportServerTempDB];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[ReportServerTempDB] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServerTempDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [FusionDW] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[FusionDW] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [FusionDW] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[FusionDW] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [FusionDW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[FusionDW] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [FusionDW] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[FusionDW] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FusionDW] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [FusionOperational] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[FusionOperational] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [FusionOperational] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[FusionOperational] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [FusionOperational] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[FusionOperational] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FusionOperational] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ReportServer] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[ReportServer] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [ReportServer] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ReportServer] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ReportServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ReportServer] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
USE [ReportServer];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[ReportServer] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [ReportServer];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[ReportServer] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ShotscopeNXSecurity] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[ShotscopeNXSecurity] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [ShotscopeNXSecurity] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ShotscopeNXSecurity] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ShotscopeNXSecurity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ShotscopeNXSecurity] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ShotscopeNXSecurity] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;