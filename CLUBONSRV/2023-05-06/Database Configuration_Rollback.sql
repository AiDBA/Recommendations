
BEGIN TRY
ALTER DATABASE [ClubOn] SET TARGET_RECOVERY_TIME = 61 SECONDS;
PRINT '[ClubOn] PARAMETERIZATION is set 61.';
END TRY 
BEGIN CATCH
	PRINT 'Database [ClubOn] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [FASTest19] SET TARGET_RECOVERY_TIME = 73 SECONDS;
PRINT '[FASTest19] PARAMETERIZATION is set 73.';
END TRY 
BEGIN CATCH
	PRINT 'Database [FASTest19] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [CMS_Train] SET TARGET_RECOVERY_TIME = 62 SECONDS;
PRINT '[CMS_Train] PARAMETERIZATION is set 62.';
END TRY 
BEGIN CATCH
	PRINT 'Database [CMS_Train] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;