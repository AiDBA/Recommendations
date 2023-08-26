
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[ReportServer] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[ReportServer] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: SIMPLE
ALTER DATABASE [ReportServer] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[ReportServer] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;