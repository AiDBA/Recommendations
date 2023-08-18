
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DESKTOP-9KVHR4D')
					CREATE LOGIN [DESKTOP-9KVHR4D] WITH PASSWORD = 'Pa$$P@s$0.948733w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DESKTOP-9KVHR4D')
						CREATE USER [DESKTOP-9KVHR4D] FOR LOGIN [DESKTOP-9KVHR4D];
			
					EXEC sp_addrolemember 'db_datareader','DESKTOP-9KVHR4D';
					EXEC sp_addrolemember 'db_datawriter','DESKTOP-9KVHR4D';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPP-KLANG-HP')
					CREATE LOGIN [DPP-KLANG-HP] WITH PASSWORD = 'Pa$$P@s$0.294718w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPP-KLANG-HP')
						CREATE USER [DPP-KLANG-HP] FOR LOGIN [DPP-KLANG-HP];
			
					EXEC sp_addrolemember 'db_datareader','DPP-KLANG-HP';
					EXEC sp_addrolemember 'db_datawriter','DPP-KLANG-HP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPKLANGSVR')
					CREATE LOGIN [DPPKLANGSVR] WITH PASSWORD = 'Pa$$P@s$0.804882w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPKLANGSVR')
						CREATE USER [DPPKLANGSVR] FOR LOGIN [DPPKLANGSVR];
			
					EXEC sp_addrolemember 'db_datareader','DPPKLANGSVR';
					EXEC sp_addrolemember 'db_datawriter','DPPKLANGSVR';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPKLANGSVR')
					CREATE LOGIN [DPPKLANGSVR] WITH PASSWORD = 'Pa$$P@s$0.683249w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS_TEST];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPKLANGSVR')
						CREATE USER [DPPKLANGSVR] FOR LOGIN [DPPKLANGSVR];
			
					EXEC sp_addrolemember 'db_datareader','DPPKLANGSVR';
					EXEC sp_addrolemember 'db_datawriter','DPPKLANGSVR';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPP-KLG13')
					CREATE LOGIN [DPP-KLG13] WITH PASSWORD = 'Pa$$P@s$0.18632w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPP-KLG13')
						CREATE USER [DPP-KLG13] FOR LOGIN [DPP-KLG13];
			
					EXEC sp_addrolemember 'db_datareader','DPP-KLG13';
					EXEC sp_addrolemember 'db_datawriter','DPP-KLG13';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MALINDA-HP')
					CREATE LOGIN [MALINDA-HP] WITH PASSWORD = 'Pa$$P@s$0.692002w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MALINDA-HP')
						CREATE USER [MALINDA-HP] FOR LOGIN [MALINDA-HP];
			
					EXEC sp_addrolemember 'db_datareader','MALINDA-HP';
					EXEC sp_addrolemember 'db_datawriter','MALINDA-HP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				