
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DESKTOP-9KVHR4D')
					DROP LOGIN [DESKTOP-9KVHR4D];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DESKTOP-9KVHR4D')
						DROP USER [DESKTOP-9KVHR4D];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPP-KLANG-HP')
					DROP LOGIN [DPP-KLANG-HP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPP-KLANG-HP')
						DROP USER [DPP-KLANG-HP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPKLANGSVR')
					DROP LOGIN [DPPKLANGSVR];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPKLANGSVR')
						DROP USER [DPPKLANGSVR];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPKLANGSVR')
					DROP LOGIN [DPPKLANGSVR];
		
				BEGIN TRY
					USE [MIMS_TEST];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPKLANGSVR')
						DROP USER [DPPKLANGSVR];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPP-KLG13')
					DROP LOGIN [DPP-KLG13];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPP-KLG13')
						DROP USER [DPP-KLG13];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MALINDA-HP')
					DROP LOGIN [MALINDA-HP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MALINDA-HP')
						DROP USER [MALINDA-HP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				