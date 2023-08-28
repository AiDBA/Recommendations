
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [LineView4] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[LineView4] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [LineView4] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[LineView4] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [LineView4] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[LineView4] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: NONE
ALTER DATABASE [LineView4] SET PAGE_VERIFY CHECKSUM WITH NO_WAIT;
PRINT '[LineView4] Page Verification sets to CHECKSUM.';
END TRY 
BEGIN CATCH
	PRINT 'Database [LineView4] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [LineView4Reports] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[LineView4Reports] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [LineView4Reports] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[LineView4Reports] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [LineView4Reports] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[LineView4Reports] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: NONE
ALTER DATABASE [LineView4Reports] SET PAGE_VERIFY CHECKSUM WITH NO_WAIT;
PRINT '[LineView4Reports] Page Verification sets to CHECKSUM.';
END TRY 
BEGIN CATCH
	PRINT 'Database [LineView4Reports] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [LineViewXL] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[LineViewXL] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [LineViewXL] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[LineViewXL] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [LineViewXL] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[LineViewXL] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: NONE
ALTER DATABASE [LineViewXL] SET PAGE_VERIFY CHECKSUM WITH NO_WAIT;
PRINT '[LineViewXL] Page Verification sets to CHECKSUM.';
END TRY 
BEGIN CATCH
	PRINT 'Database [LineViewXL] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[ReportServer] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[ReportServer] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [ReportServer] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[ReportServer] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: 60 SECONDS
ALTER DATABASE [ReportServer] SET TARGET_RECOVERY_TIME = 75 SECONDS;
PRINT '[ReportServer] TARGET_RECOVERY_TIME is set 75.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [Runtime] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[Runtime] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [Runtime] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[Runtime] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [Runtime] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[Runtime] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
--CURRENT VALUE: NONE
ALTER DATABASE [Runtime] SET PAGE_VERIFY CHECKSUM WITH NO_WAIT;
PRINT '[Runtime] Page Verification sets to CHECKSUM.';
END TRY 
BEGIN CATCH
	PRINT 'Database [Runtime] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;