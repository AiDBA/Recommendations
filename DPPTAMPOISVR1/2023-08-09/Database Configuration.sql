
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[ReportServer] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[ReportServer] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 0 SECONDS
ALTER DATABASE [MIMS] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[MIMS] TARGET_RECOVERY_TIME is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MIMS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;