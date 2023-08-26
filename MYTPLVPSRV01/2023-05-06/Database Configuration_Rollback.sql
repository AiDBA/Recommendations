
BEGIN TRY
ALTER DATABASE [LineView4] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[LineView4] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [LineView4] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[LineView4] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [LineView4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[LineView4] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [LineView4] SET PAGE_VERIFY NONE WITH NO_WAIT;
PRINT '[LineView4] Page Verification sets to NONE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [LineView4] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [LineView4Reports] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[LineView4Reports] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [LineView4Reports] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[LineView4Reports] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [LineView4Reports] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[LineView4Reports] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [LineView4Reports] SET PAGE_VERIFY NONE WITH NO_WAIT;
PRINT '[LineView4Reports] Page Verification sets to NONE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [LineView4Reports] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [LineViewXL] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[LineViewXL] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [LineViewXL] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[LineViewXL] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [LineViewXL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[LineViewXL] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [LineViewXL] SET PAGE_VERIFY NONE WITH NO_WAIT;
PRINT '[LineViewXL] Page Verification sets to NONE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [LineViewXL] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ReportServer] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[ReportServer] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [ReportServer] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ReportServer] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ReportServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ReportServer] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ReportServerTempDB] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[ReportServerTempDB] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [ReportServerTempDB] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[ReportServerTempDB] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [ReportServerTempDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[ReportServerTempDB] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServerTempDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [Runtime] SET ALLOW_SNAPSHOT_ISOLATION OFF;
PRINT '[Runtime] SNAPSHOT ISOLATION is OFF.';
ALTER DATABASE [Runtime] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[Runtime] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [Runtime] SET AUTO_UPDATE_STATISTICS_ASYNC OFF WITH NO_WAIT;
PRINT '[Runtime] AUTO_UPDATE_STATISTICS_ASYNC is OFF.';
ALTER DATABASE [Runtime] SET PAGE_VERIFY NONE WITH NO_WAIT;
PRINT '[Runtime] Page Verification sets to NONE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [Runtime] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;