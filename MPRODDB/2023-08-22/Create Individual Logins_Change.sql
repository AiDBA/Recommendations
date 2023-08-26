
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMTS1')
					CREATE LOGIN [DPPMTS1] WITH PASSWORD = 'Pa$$P@s$0.148679w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMTS1')
						CREATE USER [DPPMTS1] FOR LOGIN [DPPMTS1];
			
					EXEC sp_addrolemember 'db_datareader','DPPMTS1';
					EXEC sp_addrolemember 'db_datawriter','DPPMTS1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					CREATE LOGIN [EST157] WITH PASSWORD = 'Pa$$P@s$0.906507w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						CREATE USER [EST157] FOR LOGIN [EST157];
			
					EXEC sp_addrolemember 'db_datareader','EST157';
					EXEC sp_addrolemember 'db_datawriter','EST157';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				