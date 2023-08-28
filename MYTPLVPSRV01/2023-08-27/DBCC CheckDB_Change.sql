/*** This script should be run in MYTPLVPSRV01 SQL Server instance. ***/
					BEGIN TRY
					DBCC CHECKDB ([LineView4]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([LineView4Reports]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					
					BEGIN TRY
					DBCC CHECKDB ([LineViewXL]) WITH NO_INFOMSGS;
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
					DBCC CHECKDB ([Runtime]) WITH NO_INFOMSGS;
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
					