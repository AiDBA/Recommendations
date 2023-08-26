
BEGIN TRY
ALTER DATABASE [IDB_MTECH_MAREL_SL] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[IDB_MTECH_MAREL_SL] PARAMETERIZATION is SIMPLE.';
ALTER DATABASE [IDB_MTECH_MAREL_SL] SET TARGET_RECOVERY_TIME = 0 SECONDS;
PRINT '[IDB_MTECH_MAREL_SL] PARAMETERIZATION is set 0.';
END TRY 
BEGIN CATCH
	PRINT 'Database [IDB_MTECH_MAREL_SL] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [PDSNT] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[PDSNT] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [PDSNT] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[PDSNT] PARAMETERIZATION is SIMPLE.';
END TRY 
BEGIN CATCH
	PRINT 'Database [PDSNT] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [innova] SET READ_COMMITTED_SNAPSHOT OFF WITH NO_WAIT;
PRINT '[innova] READ_COMMITTED_SNAPSHOT is OFF.';
ALTER DATABASE [innova] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[innova] PARAMETERIZATION is SIMPLE.';
USE [innova];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[innova] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [innova];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[innova] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [innova] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;
BEGIN TRY
ALTER DATABASE [innovaObsolete] SET PARAMETERIZATION SIMPLE WITH NO_WAIT;
PRINT '[innovaObsolete] PARAMETERIZATION is SIMPLE.';
USE [innovaObsolete];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_INTERLEAVED_EXECUTION_TVF  = ON;
PRINT '[innovaObsolete] DISABLE_INTERLEAVED_EXECUTION_TVF  is ON.';
USE [innovaObsolete];
ALTER DATABASE SCOPED CONFIGURATION SET DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
PRINT '[innovaObsolete] DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK is ON.';
END TRY 
BEGIN CATCH
	PRINT 'Database [innovaObsolete] is in use. During database configuration, the Database must be idle. Disconnect all users/applications/services and run this script during non-working-hour.'
END CATCH;