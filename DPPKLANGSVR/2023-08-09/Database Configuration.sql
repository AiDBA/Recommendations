
BEGIN TRY
--CURRENT VALUE: 0 SECONDS
ALTER DATABASE [MIMS_TEST] SET TARGET_RECOVERY_TIME = 102 SECONDS;
PRINT '[MIMS_TEST] TARGET_RECOVERY_TIME is set 102.';
END TRY 
BEGIN CATCH
	PRINT 'Database [MIMS_TEST] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;