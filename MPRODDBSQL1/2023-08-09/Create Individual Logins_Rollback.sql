
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS1')
					DROP LOGIN [MTS1];
		
				BEGIN TRY
					USE [MTECH_V7_Intermediate_PROD];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS1')
						DROP USER [MTS1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS1')
					DROP LOGIN [MTS1];
		
				BEGIN TRY
					USE [MTECH_v7_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS1')
						DROP USER [MTS1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS2')
					DROP LOGIN [MTS2];
		
				BEGIN TRY
					USE [MTECH_v7_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS2')
						DROP USER [MTS2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTS3')
					DROP LOGIN [MTS3];
		
				BEGIN TRY
					USE [MTECH_v7_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTS3')
						DROP USER [MTS3];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				