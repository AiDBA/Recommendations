
BEGIN TRY
--CURRENT VALUE: OFF
ALTER DATABASE [AdventureWorks] SET ALLOW_SNAPSHOT_ISOLATION ON;
PRINT '[AdventureWorks] SNAPSHOT ISOLATION is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [AdventureWorks] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT;
PRINT '[AdventureWorks] READ_COMMITTED_SNAPSHOT is ON.';
--CURRENT VALUE: OFF
ALTER DATABASE [AdventureWorks] SET AUTO_UPDATE_STATISTICS_ASYNC ON WITH NO_WAIT;
PRINT '[AdventureWorks] AUTO_UPDATE_STATISTICS_ASYNC is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [AdventureWorks] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;