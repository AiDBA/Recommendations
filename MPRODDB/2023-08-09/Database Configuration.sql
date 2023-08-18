
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [ReportServer] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[ReportServer] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [ReportServerTempDB] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[ReportServerTempDB] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServerTempDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [INTERM] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[INTERM] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [INTERM] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MIMS] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MIMS] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MIMS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [MTECH-EDATA] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[MTECH-EDATA] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH-EDATA] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: SIMPLE
ALTER DATABASE [INTERM_CONT] SET PARAMETERIZATION FORCED WITH NO_WAIT;
PRINT '[INTERM_CONT] PARAMETERIZATION is FORCED.';
END TRY 
BEGIN CATCH
	PRINT 'Database [INTERM_CONT] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;