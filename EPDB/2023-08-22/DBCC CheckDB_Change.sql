/*** This script should be run in EPDB SQL Server instance. ***/
					BEGIN TRY
					DBCC CHECKDB ([epicor905]) WITH NO_INFOMSGS;
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
					DBCC CHECKDB ([ReportServer]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([ReportServerTempDB]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([SearchIndex900]) WITH NO_INFOMSGS;
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
					