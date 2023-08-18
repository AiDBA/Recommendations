
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					CREATE LOGIN [DPPMARELAPP] WITH PASSWORD = 'Pa$$P@s$0.907066w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						CREATE USER [DPPMARELAPP] FOR LOGIN [DPPMARELAPP];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELAPP';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELAPP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					CREATE LOGIN [DPPMARELAPP] WITH PASSWORD = 'Pa$$P@s$0.013411w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						CREATE USER [DPPMARELAPP] FOR LOGIN [DPPMARELAPP];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELAPP';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELAPP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					CREATE LOGIN [DPPMARELDB] WITH PASSWORD = 'Pa$$P@s$0.575622w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						CREATE USER [DPPMARELDB] FOR LOGIN [DPPMARELDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					CREATE LOGIN [DPPMARELDB] WITH PASSWORD = 'Pa$$P@s$0.575622w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						CREATE USER [DPPMARELDB] FOR LOGIN [DPPMARELDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					CREATE LOGIN [DPPMARELDB] WITH PASSWORD = 'Pa$$P@s$0.309435w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						CREATE USER [DPPMARELDB] FOR LOGIN [DPPMARELDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMPRODDB')
					CREATE LOGIN [DPPMPRODDB] WITH PASSWORD = 'Pa$$P@s$0.309435w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMPRODDB')
						CREATE USER [DPPMPRODDB] FOR LOGIN [DPPMPRODDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMPRODDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMPRODDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					CREATE LOGIN [EST157] WITH PASSWORD = 'Pa$$P@s$0.413204w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						CREATE USER [EST157] FOR LOGIN [EST157];
			
					EXEC sp_addrolemember 'db_datareader','EST157';
					EXEC sp_addrolemember 'db_datawriter','EST157';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159192')
					CREATE LOGIN [M6415-A159192] WITH PASSWORD = 'Pa$$P@s$0.702225w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159192')
						CREATE USER [M6415-A159192] FOR LOGIN [M6415-A159192];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159192';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159192';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159193')
					CREATE LOGIN [M6415-A159193] WITH PASSWORD = 'Pa$$P@s$0.436678w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159193')
						CREATE USER [M6415-A159193] FOR LOGIN [M6415-A159193];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159193';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159193';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159194')
					CREATE LOGIN [M6415-A159194] WITH PASSWORD = 'Pa$$P@s$0.61461w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159194')
						CREATE USER [M6415-A159194] FOR LOGIN [M6415-A159194];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159194';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159194';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159197')
					CREATE LOGIN [M6415-A159197] WITH PASSWORD = 'Pa$$P@s$0.992169w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159197')
						CREATE USER [M6415-A159197] FOR LOGIN [M6415-A159197];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159197';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159197';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159198')
					CREATE LOGIN [M6415-A159198] WITH PASSWORD = 'Pa$$P@s$0.597465w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159198')
						CREATE USER [M6415-A159198] FOR LOGIN [M6415-A159198];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159198';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159198';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159200')
					CREATE LOGIN [M6415-A159200] WITH PASSWORD = 'Pa$$P@s$0.597465w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159200')
						CREATE USER [M6415-A159200] FOR LOGIN [M6415-A159200];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159200';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159200';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159202')
					CREATE LOGIN [M6415-A159202] WITH PASSWORD = 'Pa$$P@s$0.840159w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159202')
						CREATE USER [M6415-A159202] FOR LOGIN [M6415-A159202];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159202';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159202';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159204')
					CREATE LOGIN [M6415-A159204] WITH PASSWORD = 'Pa$$P@s$0.383909w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159204')
						CREATE USER [M6415-A159204] FOR LOGIN [M6415-A159204];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159204';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159204';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159205')
					CREATE LOGIN [M6415-A159205] WITH PASSWORD = 'Pa$$P@s$0.410358w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159205')
						CREATE USER [M6415-A159205] FOR LOGIN [M6415-A159205];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159205';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159205';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159206')
					CREATE LOGIN [M6415-A159206] WITH PASSWORD = 'Pa$$P@s$0.410358w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159206')
						CREATE USER [M6415-A159206] FOR LOGIN [M6415-A159206];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159206';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159206';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159207')
					CREATE LOGIN [M6415-A159207] WITH PASSWORD = 'Pa$$P@s$0.870913w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159207')
						CREATE USER [M6415-A159207] FOR LOGIN [M6415-A159207];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159207';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159207';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159208')
					CREATE LOGIN [M6415-A159208] WITH PASSWORD = 'Pa$$P@s$0.416808w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159208')
						CREATE USER [M6415-A159208] FOR LOGIN [M6415-A159208];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159208';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159208';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					CREATE LOGIN [MSPPSR01] WITH PASSWORD = 'Pa$$P@s$0.934114w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						CREATE USER [MSPPSR01] FOR LOGIN [MSPPSR01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPSR01';
					EXEC sp_addrolemember 'db_datawriter','MSPPSR01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					CREATE LOGIN [MSPPSR01] WITH PASSWORD = 'Pa$$P@s$0.850637w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						CREATE USER [MSPPSR01] FOR LOGIN [MSPPSR01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPSR01';
					EXEC sp_addrolemember 'db_datawriter','MSPPSR01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					CREATE LOGIN [MSPPWS01] WITH PASSWORD = 'Pa$$P@s$0.419384w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						CREATE USER [MSPPWS01] FOR LOGIN [MSPPWS01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS01';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					CREATE LOGIN [MSPPWS01] WITH PASSWORD = 'Pa$$P@s$0.928016w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						CREATE USER [MSPPWS01] FOR LOGIN [MSPPWS01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS01';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					CREATE LOGIN [MSPPWS02] WITH PASSWORD = 'Pa$$P@s$0.384877w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						CREATE USER [MSPPWS02] FOR LOGIN [MSPPWS02];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS02';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS02';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					CREATE LOGIN [MSPPWS02] WITH PASSWORD = 'Pa$$P@s$0.84995w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						CREATE USER [MSPPWS02] FOR LOGIN [MSPPWS02];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS02';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS02';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					CREATE LOGIN [MSPPWS03] WITH PASSWORD = 'Pa$$P@s$0.611996w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						CREATE USER [MSPPWS03] FOR LOGIN [MSPPWS03];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS03';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS03';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					CREATE LOGIN [MSPPWS03] WITH PASSWORD = 'Pa$$P@s$0.611996w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						CREATE USER [MSPPWS03] FOR LOGIN [MSPPWS03];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS03';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS03';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					CREATE LOGIN [MSPPWS04] WITH PASSWORD = 'Pa$$P@s$0.611996w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						CREATE USER [MSPPWS04] FOR LOGIN [MSPPWS04];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS04';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS04';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					CREATE LOGIN [MSPPWS04] WITH PASSWORD = 'Pa$$P@s$0.14591w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						CREATE USER [MSPPWS04] FOR LOGIN [MSPPWS04];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS04';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS04';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					CREATE LOGIN [MSPPWSRC] WITH PASSWORD = 'Pa$$P@s$0.556765w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						CREATE USER [MSPPWSRC] FOR LOGIN [MSPPWSRC];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWSRC';
					EXEC sp_addrolemember 'db_datawriter','MSPPWSRC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					CREATE LOGIN [MSPPWSRC] WITH PASSWORD = 'Pa$$P@s$0.154075w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						CREATE USER [MSPPWSRC] FOR LOGIN [MSPPWSRC];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWSRC';
					EXEC sp_addrolemember 'db_datawriter','MSPPWSRC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-HUOI')
					CREATE LOGIN [SW-DELL-HUOI] WITH PASSWORD = 'Pa$$P@s$0.582778w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-HUOI')
						CREATE USER [SW-DELL-HUOI] FOR LOGIN [SW-DELL-HUOI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-HUOI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-HUOI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-IMAN')
					CREATE LOGIN [SW-DELL-IMAN] WITH PASSWORD = 'Pa$$P@s$0.912329w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-IMAN')
						CREATE USER [SW-DELL-IMAN] FOR LOGIN [SW-DELL-IMAN];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-IMAN';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-IMAN';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-KESHUNA')
					CREATE LOGIN [SW-DELL-KESHUNA] WITH PASSWORD = 'Pa$$P@s$0.814707w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-KESHUNA')
						CREATE USER [SW-DELL-KESHUNA] FOR LOGIN [SW-DELL-KESHUNA];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-KESHUNA';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-KESHUNA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-RANJANI')
					CREATE LOGIN [SW-DELL-RANJANI] WITH PASSWORD = 'Pa$$P@s$0.814707w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-RANJANI')
						CREATE USER [SW-DELL-RANJANI] FOR LOGIN [SW-DELL-RANJANI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-RANJANI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-RANJANI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZAKI')
					CREATE LOGIN [SW-DELL-ZAKI] WITH PASSWORD = 'Pa$$P@s$0.746559w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZAKI')
						CREATE USER [SW-DELL-ZAKI] FOR LOGIN [SW-DELL-ZAKI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-ZAKI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-ZAKI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-JAHANHP')
					CREATE LOGIN [SW-DPP-JAHANHP] WITH PASSWORD = 'Pa$$P@s$0.746559w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-JAHANHP')
						CREATE USER [SW-DPP-JAHANHP] FOR LOGIN [SW-DPP-JAHANHP];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-JAHANHP';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-JAHANHP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-WACHTER')
					CREATE LOGIN [SW-DPP-WACHTER] WITH PASSWORD = 'Pa$$P@s$0.380026w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-WACHTER')
						CREATE USER [SW-DPP-WACHTER] FOR LOGIN [SW-DPP-WACHTER];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-WACHTER';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-WACHTER';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PLANING')
					CREATE LOGIN [SW-HP-PLANING] WITH PASSWORD = 'Pa$$P@s$0.680015w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PLANING')
						CREATE USER [SW-HP-PLANING] FOR LOGIN [SW-HP-PLANING];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-PLANING';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-PLANING';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SURFACE2')
					CREATE LOGIN [SW-SURFACE2] WITH PASSWORD = 'Pa$$P@s$0.422574w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SURFACE2')
						CREATE USER [SW-SURFACE2] FOR LOGIN [SW-SURFACE2];
			
					EXEC sp_addrolemember 'db_datareader','SW-SURFACE2';
					EXEC sp_addrolemember 'db_datawriter','SW-SURFACE2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					CREATE LOGIN [DPPMARELAPP] WITH PASSWORD = 'Pa$$P@s$0.751073w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						CREATE USER [DPPMARELAPP] FOR LOGIN [DPPMARELAPP];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELAPP';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELAPP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					CREATE LOGIN [DPPMARELAPP] WITH PASSWORD = 'Pa$$P@s$0.527036w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						CREATE USER [DPPMARELAPP] FOR LOGIN [DPPMARELAPP];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELAPP';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELAPP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					CREATE LOGIN [DPPMARELDB] WITH PASSWORD = 'Pa$$P@s$0.313572w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						CREATE USER [DPPMARELDB] FOR LOGIN [DPPMARELDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					CREATE LOGIN [DPPMARELDB] WITH PASSWORD = 'Pa$$P@s$0.749752w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						CREATE USER [DPPMARELDB] FOR LOGIN [DPPMARELDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					CREATE LOGIN [DPPMARELDB] WITH PASSWORD = 'Pa$$P@s$0.90454w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						CREATE USER [DPPMARELDB] FOR LOGIN [DPPMARELDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMARELDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMARELDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMPRODDB')
					CREATE LOGIN [DPPMPRODDB] WITH PASSWORD = 'Pa$$P@s$0.832486w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMPRODDB')
						CREATE USER [DPPMPRODDB] FOR LOGIN [DPPMPRODDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMPRODDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMPRODDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					CREATE LOGIN [EST157] WITH PASSWORD = 'Pa$$P@s$0.397741w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						CREATE USER [EST157] FOR LOGIN [EST157];
			
					EXEC sp_addrolemember 'db_datareader','EST157';
					EXEC sp_addrolemember 'db_datawriter','EST157';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159192')
					CREATE LOGIN [M6415-A159192] WITH PASSWORD = 'Pa$$P@s$0.353654w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159192')
						CREATE USER [M6415-A159192] FOR LOGIN [M6415-A159192];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159192';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159192';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159193')
					CREATE LOGIN [M6415-A159193] WITH PASSWORD = 'Pa$$P@s$0.067672w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159193')
						CREATE USER [M6415-A159193] FOR LOGIN [M6415-A159193];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159193';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159193';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159194')
					CREATE LOGIN [M6415-A159194] WITH PASSWORD = 'Pa$$P@s$0.8127w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159194')
						CREATE USER [M6415-A159194] FOR LOGIN [M6415-A159194];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159194';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159194';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159197')
					CREATE LOGIN [M6415-A159197] WITH PASSWORD = 'Pa$$P@s$0.676001w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159197')
						CREATE USER [M6415-A159197] FOR LOGIN [M6415-A159197];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159197';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159197';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159198')
					CREATE LOGIN [M6415-A159198] WITH PASSWORD = 'Pa$$P@s$0.267994w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159198')
						CREATE USER [M6415-A159198] FOR LOGIN [M6415-A159198];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159198';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159198';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159200')
					CREATE LOGIN [M6415-A159200] WITH PASSWORD = 'Pa$$P@s$0.136446w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159200')
						CREATE USER [M6415-A159200] FOR LOGIN [M6415-A159200];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159200';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159200';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159202')
					CREATE LOGIN [M6415-A159202] WITH PASSWORD = 'Pa$$P@s$0.558643w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159202')
						CREATE USER [M6415-A159202] FOR LOGIN [M6415-A159202];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159202';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159202';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159204')
					CREATE LOGIN [M6415-A159204] WITH PASSWORD = 'Pa$$P@s$0.30839w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159204')
						CREATE USER [M6415-A159204] FOR LOGIN [M6415-A159204];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159204';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159204';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159205')
					CREATE LOGIN [M6415-A159205] WITH PASSWORD = 'Pa$$P@s$0.100886w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159205')
						CREATE USER [M6415-A159205] FOR LOGIN [M6415-A159205];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159205';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159205';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159206')
					CREATE LOGIN [M6415-A159206] WITH PASSWORD = 'Pa$$P@s$0.554809w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159206')
						CREATE USER [M6415-A159206] FOR LOGIN [M6415-A159206];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159206';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159206';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159207')
					CREATE LOGIN [M6415-A159207] WITH PASSWORD = 'Pa$$P@s$0.947827w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159207')
						CREATE USER [M6415-A159207] FOR LOGIN [M6415-A159207];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159207';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159207';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159208')
					CREATE LOGIN [M6415-A159208] WITH PASSWORD = 'Pa$$P@s$0.379936w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159208')
						CREATE USER [M6415-A159208] FOR LOGIN [M6415-A159208];
			
					EXEC sp_addrolemember 'db_datareader','M6415-A159208';
					EXEC sp_addrolemember 'db_datawriter','M6415-A159208';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					CREATE LOGIN [MSPPSR01] WITH PASSWORD = 'Pa$$P@s$0.379936w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						CREATE USER [MSPPSR01] FOR LOGIN [MSPPSR01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPSR01';
					EXEC sp_addrolemember 'db_datawriter','MSPPSR01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					CREATE LOGIN [MSPPSR01] WITH PASSWORD = 'Pa$$P@s$0.927276w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						CREATE USER [MSPPSR01] FOR LOGIN [MSPPSR01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPSR01';
					EXEC sp_addrolemember 'db_datawriter','MSPPSR01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					CREATE LOGIN [MSPPWS01] WITH PASSWORD = 'Pa$$P@s$0.927276w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						CREATE USER [MSPPWS01] FOR LOGIN [MSPPWS01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS01';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					CREATE LOGIN [MSPPWS01] WITH PASSWORD = 'Pa$$P@s$0.927276w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						CREATE USER [MSPPWS01] FOR LOGIN [MSPPWS01];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS01';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					CREATE LOGIN [MSPPWS02] WITH PASSWORD = 'Pa$$P@s$0.513417w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						CREATE USER [MSPPWS02] FOR LOGIN [MSPPWS02];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS02';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS02';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					CREATE LOGIN [MSPPWS02] WITH PASSWORD = 'Pa$$P@s$0.802555w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						CREATE USER [MSPPWS02] FOR LOGIN [MSPPWS02];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS02';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS02';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					CREATE LOGIN [MSPPWS03] WITH PASSWORD = 'Pa$$P@s$0.802555w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						CREATE USER [MSPPWS03] FOR LOGIN [MSPPWS03];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS03';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS03';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					CREATE LOGIN [MSPPWS03] WITH PASSWORD = 'Pa$$P@s$0.401446w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						CREATE USER [MSPPWS03] FOR LOGIN [MSPPWS03];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS03';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS03';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					CREATE LOGIN [MSPPWS04] WITH PASSWORD = 'Pa$$P@s$0.797339w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						CREATE USER [MSPPWS04] FOR LOGIN [MSPPWS04];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS04';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS04';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					CREATE LOGIN [MSPPWS04] WITH PASSWORD = 'Pa$$P@s$0.535444w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						CREATE USER [MSPPWS04] FOR LOGIN [MSPPWS04];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWS04';
					EXEC sp_addrolemember 'db_datawriter','MSPPWS04';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					CREATE LOGIN [MSPPWSRC] WITH PASSWORD = 'Pa$$P@s$0.4918w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						CREATE USER [MSPPWSRC] FOR LOGIN [MSPPWSRC];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWSRC';
					EXEC sp_addrolemember 'db_datawriter','MSPPWSRC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					CREATE LOGIN [MSPPWSRC] WITH PASSWORD = 'Pa$$P@s$0.746478w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [PDSNT];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						CREATE USER [MSPPWSRC] FOR LOGIN [MSPPWSRC];
			
					EXEC sp_addrolemember 'db_datareader','MSPPWSRC';
					EXEC sp_addrolemember 'db_datawriter','MSPPWSRC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-HUOI')
					CREATE LOGIN [SW-DELL-HUOI] WITH PASSWORD = 'Pa$$P@s$0.746478w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-HUOI')
						CREATE USER [SW-DELL-HUOI] FOR LOGIN [SW-DELL-HUOI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-HUOI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-HUOI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-IMAN')
					CREATE LOGIN [SW-DELL-IMAN] WITH PASSWORD = 'Pa$$P@s$0.31012w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-IMAN')
						CREATE USER [SW-DELL-IMAN] FOR LOGIN [SW-DELL-IMAN];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-IMAN';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-IMAN';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-KESHUNA')
					CREATE LOGIN [SW-DELL-KESHUNA] WITH PASSWORD = 'Pa$$P@s$0.784284w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-KESHUNA')
						CREATE USER [SW-DELL-KESHUNA] FOR LOGIN [SW-DELL-KESHUNA];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-KESHUNA';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-KESHUNA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-RANJANI')
					CREATE LOGIN [SW-DELL-RANJANI] WITH PASSWORD = 'Pa$$P@s$0.387114w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-RANJANI')
						CREATE USER [SW-DELL-RANJANI] FOR LOGIN [SW-DELL-RANJANI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-RANJANI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-RANJANI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZAKI')
					CREATE LOGIN [SW-DELL-ZAKI] WITH PASSWORD = 'Pa$$P@s$0.57394w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZAKI')
						CREATE USER [SW-DELL-ZAKI] FOR LOGIN [SW-DELL-ZAKI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-ZAKI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-ZAKI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-JAHANHP')
					CREATE LOGIN [SW-DPP-JAHANHP] WITH PASSWORD = 'Pa$$P@s$0.182192w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-JAHANHP')
						CREATE USER [SW-DPP-JAHANHP] FOR LOGIN [SW-DPP-JAHANHP];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-JAHANHP';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-JAHANHP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-WACHTER')
					CREATE LOGIN [SW-DPP-WACHTER] WITH PASSWORD = 'Pa$$P@s$0.833688w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-WACHTER')
						CREATE USER [SW-DPP-WACHTER] FOR LOGIN [SW-DPP-WACHTER];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-WACHTER';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-WACHTER';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PLANING')
					CREATE LOGIN [SW-HP-PLANING] WITH PASSWORD = 'Pa$$P@s$0.124871w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PLANING')
						CREATE USER [SW-HP-PLANING] FOR LOGIN [SW-HP-PLANING];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-PLANING';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-PLANING';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SURFACE2')
					CREATE LOGIN [SW-SURFACE2] WITH PASSWORD = 'Pa$$P@s$0.142718w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [innova];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SURFACE2')
						CREATE USER [SW-SURFACE2] FOR LOGIN [SW-SURFACE2];
			
					EXEC sp_addrolemember 'db_datareader','SW-SURFACE2';
					EXEC sp_addrolemember 'db_datawriter','SW-SURFACE2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				