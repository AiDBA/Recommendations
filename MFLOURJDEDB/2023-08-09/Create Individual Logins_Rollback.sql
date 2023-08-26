
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-APP')
					DROP LOGIN [MFLOUR-JDE-APP];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-APP')
						DROP USER [MFLOUR-JDE-APP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE_PD920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE_PD920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMB-JDE-PYWEB')
					DROP LOGIN [MFMB-JDE-PYWEB];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMB-JDE-PYWEB')
						DROP USER [MFMB-JDE-PYWEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMBJDEWEBDEV-N')
					DROP LOGIN [MFMBJDEWEBDEV-N];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMBJDEWEBDEV-N')
						DROP USER [MFMBJDEWEBDEV-N];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-APP')
					DROP LOGIN [MFLOUR-JDE-APP];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-APP')
						DROP USER [MFLOUR-JDE-APP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE_PD920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE_PD920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMB-JDE-PYWEB')
					DROP LOGIN [MFMB-JDE-PYWEB];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMB-JDE-PYWEB')
						DROP USER [MFMB-JDE-PYWEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMBJDEWEBDEV-N')
					DROP LOGIN [MFMBJDEWEBDEV-N];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMBJDEWEBDEV-N')
						DROP USER [MFMBJDEWEBDEV-N];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-APP')
					DROP LOGIN [MFLOUR-JDE-APP];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-APP')
						DROP USER [MFLOUR-JDE-APP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE_PD920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					DROP LOGIN [MFLOUR-JDE-WB2];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						DROP USER [MFLOUR-JDE-WB2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE_PD920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					DROP LOGIN [MFLOUR-JDE-WEB];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						DROP USER [MFLOUR-JDE-WEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMB-JDE-PYWEB')
					DROP LOGIN [MFMB-JDE-PYWEB];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMB-JDE-PYWEB')
						DROP USER [MFMB-JDE-PYWEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMBJDEWEBDEV-N')
					DROP LOGIN [MFMBJDEWEBDEV-N];
		
				BEGIN TRY
					USE [JDE920];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMBJDEWEBDEV-N')
						DROP USER [MFMBJDEWEBDEV-N];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				