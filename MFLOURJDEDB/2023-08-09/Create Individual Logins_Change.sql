
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-APP')
					CREATE LOGIN [MFLOUR-JDE-APP] WITH PASSWORD = 'Pa$$P@s$0.777246w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-APP')
						CREATE USER [MFLOUR-JDE-APP] FOR LOGIN [MFLOUR-JDE-APP];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-APP';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-APP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.396213w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PD920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.396213w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.895663w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.713659w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PD920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.623687w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.271917w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMB-JDE-PYWEB')
					CREATE LOGIN [MFMB-JDE-PYWEB] WITH PASSWORD = 'Pa$$P@s$0.234446w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMB-JDE-PYWEB')
						CREATE USER [MFMB-JDE-PYWEB] FOR LOGIN [MFMB-JDE-PYWEB];
			
					EXEC sp_addrolemember 'db_datareader','MFMB-JDE-PYWEB';
					EXEC sp_addrolemember 'db_datawriter','MFMB-JDE-PYWEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMBJDEWEBDEV-N')
					CREATE LOGIN [MFMBJDEWEBDEV-N] WITH PASSWORD = 'Pa$$P@s$0.744106w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMBJDEWEBDEV-N')
						CREATE USER [MFMBJDEWEBDEV-N] FOR LOGIN [MFMBJDEWEBDEV-N];
			
					EXEC sp_addrolemember 'db_datareader','MFMBJDEWEBDEV-N';
					EXEC sp_addrolemember 'db_datawriter','MFMBJDEWEBDEV-N';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-APP')
					CREATE LOGIN [MFLOUR-JDE-APP] WITH PASSWORD = 'Pa$$P@s$0.744106w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-APP')
						CREATE USER [MFLOUR-JDE-APP] FOR LOGIN [MFLOUR-JDE-APP];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-APP';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-APP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.272363w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PD920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.292936w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.670337w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.451739w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PD920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.168138w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.540543w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMB-JDE-PYWEB')
					CREATE LOGIN [MFMB-JDE-PYWEB] WITH PASSWORD = 'Pa$$P@s$0.313939w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMB-JDE-PYWEB')
						CREATE USER [MFMB-JDE-PYWEB] FOR LOGIN [MFMB-JDE-PYWEB];
			
					EXEC sp_addrolemember 'db_datareader','MFMB-JDE-PYWEB';
					EXEC sp_addrolemember 'db_datawriter','MFMB-JDE-PYWEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMBJDEWEBDEV-N')
					CREATE LOGIN [MFMBJDEWEBDEV-N] WITH PASSWORD = 'Pa$$P@s$0.899921w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMBJDEWEBDEV-N')
						CREATE USER [MFMBJDEWEBDEV-N] FOR LOGIN [MFMBJDEWEBDEV-N];
			
					EXEC sp_addrolemember 'db_datareader','MFMBJDEWEBDEV-N';
					EXEC sp_addrolemember 'db_datawriter','MFMBJDEWEBDEV-N';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-APP')
					CREATE LOGIN [MFLOUR-JDE-APP] WITH PASSWORD = 'Pa$$P@s$0.159518w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-APP')
						CREATE USER [MFLOUR-JDE-APP] FOR LOGIN [MFLOUR-JDE-APP];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-APP';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-APP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.745449w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PD920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.637154w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WB2')
					CREATE LOGIN [MFLOUR-JDE-WB2] WITH PASSWORD = 'Pa$$P@s$0.637154w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WB2')
						CREATE USER [MFLOUR-JDE-WB2] FOR LOGIN [MFLOUR-JDE-WB2];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WB2';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WB2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.555776w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PD920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.55916w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE_PRODUCTION];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFLOUR-JDE-WEB')
					CREATE LOGIN [MFLOUR-JDE-WEB] WITH PASSWORD = 'Pa$$P@s$0.615114w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFLOUR-JDE-WEB')
						CREATE USER [MFLOUR-JDE-WEB] FOR LOGIN [MFLOUR-JDE-WEB];
			
					EXEC sp_addrolemember 'db_datareader','MFLOUR-JDE-WEB';
					EXEC sp_addrolemember 'db_datawriter','MFLOUR-JDE-WEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMB-JDE-PYWEB')
					CREATE LOGIN [MFMB-JDE-PYWEB] WITH PASSWORD = 'Pa$$P@s$0.889621w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMB-JDE-PYWEB')
						CREATE USER [MFMB-JDE-PYWEB] FOR LOGIN [MFMB-JDE-PYWEB];
			
					EXEC sp_addrolemember 'db_datareader','MFMB-JDE-PYWEB';
					EXEC sp_addrolemember 'db_datawriter','MFMB-JDE-PYWEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MFMBJDEWEBDEV-N')
					CREATE LOGIN [MFMBJDEWEBDEV-N] WITH PASSWORD = 'Pa$$P@s$0.92349w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [JDE920];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MFMBJDEWEBDEV-N')
						CREATE USER [MFMBJDEWEBDEV-N] FOR LOGIN [MFMBJDEWEBDEV-N];
			
					EXEC sp_addrolemember 'db_datareader','MFMBJDEWEBDEV-N';
					EXEC sp_addrolemember 'db_datawriter','MFMBJDEWEBDEV-N';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				