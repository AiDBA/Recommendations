
BEGIN TRY
	ALTER EVENT SESSION TasksDelayedByTempDB ON SERVER STATE = STOP;
	DROP EVENT SESSION TasksDelayedByTempDB ON SERVER;
END TRY
BEGIN CATCH
		PRINT ERROR_MESSAGE();
END CATCH
