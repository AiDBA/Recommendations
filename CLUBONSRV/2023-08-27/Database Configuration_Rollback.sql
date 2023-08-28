
BEGIN TRY
ALTER DATABASE [CMSTest19] SET TARGET_RECOVERY_TIME = 67 SECONDS;
PRINT '[CMSTest19] PARAMETERIZATION is set 67.';
END TRY 
BEGIN CATCH
	PRINT 'Database [CMSTest19] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [FASTest19] SET TARGET_RECOVERY_TIME = 72 SECONDS;
PRINT '[FASTest19] PARAMETERIZATION is set 72.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FASTest19] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [SystemPatch] SET TARGET_RECOVERY_TIME = 75 SECONDS;
PRINT '[SystemPatch] PARAMETERIZATION is set 75.';
END TRY 
BEGIN CATCH
	PRINT 'Database [SystemPatch] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [FAS] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[FAS] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FAS] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;