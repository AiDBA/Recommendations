/*** This script should be run in MPRODDBSQL1 SQL Server instance. ***/
					BEGIN TRY
					DBCC CHECKDB ([tempdb]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					