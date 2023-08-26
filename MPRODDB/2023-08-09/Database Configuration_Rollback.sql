
BEGIN TRY
ALTER DATABASE [ReportServer] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ReportServer] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServer] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [ReportServerTempDB] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[ReportServerTempDB] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ReportServerTempDB] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [INTERM] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[INTERM] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [INTERM] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MIMS] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MIMS] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MIMS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [MTECH-EDATA] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[MTECH-EDATA] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MTECH-EDATA] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [INTERM_CONT] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[INTERM_CONT] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [INTERM_CONT] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;