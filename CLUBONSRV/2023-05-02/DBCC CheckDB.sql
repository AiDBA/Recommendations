/*** This script should be run in CLUBONSRV SQL Server instance. ***/
					BEGIN TRY
					DBCC CHECKDB ([FAS_Train]) WITH NO_INFOMSGS;
					END TRY
					BEGIN CATCH
					PRINT ERROR_MESSAGE()
					END CATCH
					