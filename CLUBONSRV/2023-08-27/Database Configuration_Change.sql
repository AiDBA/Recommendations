
BEGIN TRY
--CURRENT VALUE: 67 SECONDS
ALTER DATABASE [CMSTest19] SET TARGET_RECOVERY_TIME = 69 SECONDS;
PRINT '[CMSTest19] TARGET_RECOVERY_TIME is set 69.';
END TRY 
BEGIN CATCH
	PRINT 'Database [CMSTest19] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 72 SECONDS
ALTER DATABASE [FASTest19] SET TARGET_RECOVERY_TIME = 77 SECONDS;
PRINT '[FASTest19] TARGET_RECOVERY_TIME is set 77.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FASTest19] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 75 SECONDS
ALTER DATABASE [SystemPatch] SET TARGET_RECOVERY_TIME = 79 SECONDS;
PRINT '[SystemPatch] TARGET_RECOVERY_TIME is set 79.';
END TRY 
BEGIN CATCH
	PRINT 'Database [SystemPatch] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 0 SECONDS
ALTER DATABASE [FAS] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[FAS] TARGET_RECOVERY_TIME is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FAS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;