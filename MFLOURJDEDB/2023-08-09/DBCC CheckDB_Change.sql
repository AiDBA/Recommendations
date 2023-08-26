/*** This script should be run in MFLOURJDEDB SQL Server instance. ***/
					BEGIN TRY
					DBCC CHECKDB ([tempdb]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					