
BEGIN TRY
--CURRENT VALUE: 61 SECONDS
ALTER DATABASE [ClubOn] SET TARGET_RECOVERY_TIME = 62 SECONDS;
PRINT '[ClubOn] TARGET_RECOVERY_TIME is set 62.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ClubOn] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 73 SECONDS
ALTER DATABASE [FASTest19] SET TARGET_RECOVERY_TIME = 72 SECONDS;
PRINT '[FASTest19] TARGET_RECOVERY_TIME is set 72.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FASTest19] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
--CURRENT VALUE: 62 SECONDS
ALTER DATABASE [CMS_Train] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[CMS_Train] TARGET_RECOVERY_TIME is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [CMS_Train] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;