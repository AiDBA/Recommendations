/*** This script should be run in MYTPQNESRV02 SQL Server instance. ***/
					BEGIN TRY
					DBCC CHECKDB ([CHUANSINCACTUS]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([master]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([model]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([msdb]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([tempdb]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					