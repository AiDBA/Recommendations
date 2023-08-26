
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOI1PC')
					DROP LOGIN [DPPTAMPOI1PC];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOI1PC')
						DROP USER [DPPTAMPOI1PC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOI2')
					DROP LOGIN [DPPTAMPOI2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOI2')
						DROP USER [DPPTAMPOI2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOI2PC')
					DROP LOGIN [DPPTAMPOI2PC];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOI2PC')
						DROP USER [DPPTAMPOI2PC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOISVR1')
					DROP LOGIN [DPPTAMPOISVR1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOISVR1')
						DROP USER [DPPTAMPOISVR1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOISVR1')
					DROP LOGIN [DPPTAMPOISVR1];
		
				BEGIN TRY
					USE [MIMS_TEST];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOISVR1')
						DROP USER [DPPTAMPOISVR1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOIZAIDI')
					DROP LOGIN [DPPTAMPOIZAIDI];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOIZAIDI')
						DROP USER [DPPTAMPOIZAIDI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				