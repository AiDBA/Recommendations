
BEGIN TRY
	IF NOT EXISTS (SELECT * FROM sys.server_event_sessions WHERE NAME = 'TasksDelayedByTempDB')
	BEGIN
		CREATE EVENT SESSION TasksDelayedByTempDB
		ON SERVER
		  ADD EVENT sqlserver.latch_suspend_end
			(ACTION (sqlserver.session_id, sqlserver.sql_text)
			 WHERE (package0.greater_than_uint64(duration, (20)) AND database_id = (2))
			)
		  ADD TARGET package0.ring_buffer
		WITH
		  (
		  MAX_MEMORY = 4096KB, EVENT_RETENTION_MODE = ALLOW_SINGLE_EVENT_LOSS,
		  MAX_DISPATCH_LATENCY = 30 SECONDS, MAX_EVENT_SIZE = 0KB,
		  MEMORY_PARTITION_MODE = NONE, TRACK_CAUSALITY = OFF, STARTUP_STATE = ON
		  );

		ALTER EVENT SESSION TasksDelayedByTempDB ON SERVER STATE = START;
	END
	ELSE IF EXISTS (SELECT * FROM sys.dm_xe_sessions RS
		RIGHT JOIN sys.server_event_sessions ES ON RS.name = ES.name
		WHERE es.name = 'TasksDelayedByTempDB' AND RS.name IS NULL)
	BEGIN
		ALTER EVENT SESSION TasksDelayedByTempDB ON SERVER STATE = START;
	END;
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH;
