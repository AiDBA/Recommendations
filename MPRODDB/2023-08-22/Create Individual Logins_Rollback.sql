
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMTS1')
					DROP LOGIN [DPPMTS1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMTS1')
						DROP USER [DPPMTS1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					DROP LOGIN [EST157];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						DROP USER [EST157];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				