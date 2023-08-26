
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS1')
					CREATE LOGIN [MTS1] WITH PASSWORD = 'Pa$$P@s$0.916561w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MTECH_V7_Intermediate_PROD];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS1')
						CREATE USER [MTS1] FOR LOGIN [MTS1];
			
					EXEC sp_addrolemember 'db_datareader','MTS1';
					EXEC sp_addrolemember 'db_datawriter','MTS1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS1')
					CREATE LOGIN [MTS1] WITH PASSWORD = 'Pa$$P@s$0.929675w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MTECH_v7_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS1')
						CREATE USER [MTS1] FOR LOGIN [MTS1];
			
					EXEC sp_addrolemember 'db_datareader','MTS1';
					EXEC sp_addrolemember 'db_datawriter','MTS1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS2')
					CREATE LOGIN [MTS2] WITH PASSWORD = 'Pa$$P@s$0.967261w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MTECH_v7_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS2')
						CREATE USER [MTS2] FOR LOGIN [MTS2];
			
					EXEC sp_addrolemember 'db_datareader','MTS2';
					EXEC sp_addrolemember 'db_datawriter','MTS2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS3')
					CREATE LOGIN [MTS3] WITH PASSWORD = 'Pa$$P@s$0.106149w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MTECH_v7_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS3')
						CREATE USER [MTS3] FOR LOGIN [MTS3];
			
					EXEC sp_addrolemember 'db_datareader','MTS3';
					EXEC sp_addrolemember 'db_datawriter','MTS3';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				