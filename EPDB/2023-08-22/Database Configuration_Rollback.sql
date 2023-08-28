
BEGIN TRY
ALTER DATABASE [ReportServer] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ReportServer] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ReportServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ReportServer] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [ReportServer] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ReportServer] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;