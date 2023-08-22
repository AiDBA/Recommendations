
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOI1PC')
					CREATE LOGIN [DPPTAMPOI1PC] WITH PASSWORD = 'Pa$$P@s$0.68696w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOI1PC')
						CREATE USER [DPPTAMPOI1PC] FOR LOGIN [DPPTAMPOI1PC];
			
					EXEC sp_addrolemember 'db_datareader','DPPTAMPOI1PC';
					EXEC sp_addrolemember 'db_datawriter','DPPTAMPOI1PC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOI2')
					CREATE LOGIN [DPPTAMPOI2] WITH PASSWORD = 'Pa$$P@s$0.691743w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOI2')
						CREATE USER [DPPTAMPOI2] FOR LOGIN [DPPTAMPOI2];
			
					EXEC sp_addrolemember 'db_datareader','DPPTAMPOI2';
					EXEC sp_addrolemember 'db_datawriter','DPPTAMPOI2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOI2PC')
					CREATE LOGIN [DPPTAMPOI2PC] WITH PASSWORD = 'Pa$$P@s$0.346787w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOI2PC')
						CREATE USER [DPPTAMPOI2PC] FOR LOGIN [DPPTAMPOI2PC];
			
					EXEC sp_addrolemember 'db_datareader','DPPTAMPOI2PC';
					EXEC sp_addrolemember 'db_datawriter','DPPTAMPOI2PC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOISVR1')
					CREATE LOGIN [DPPTAMPOISVR1] WITH PASSWORD = 'Pa$$P@s$0.451431w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOISVR1')
						CREATE USER [DPPTAMPOISVR1] FOR LOGIN [DPPTAMPOISVR1];
			
					EXEC sp_addrolemember 'db_datareader','DPPTAMPOISVR1';
					EXEC sp_addrolemember 'db_datawriter','DPPTAMPOISVR1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOISVR1')
					CREATE LOGIN [DPPTAMPOISVR1] WITH PASSWORD = 'Pa$$P@s$0.229898w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS_TEST];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOISVR1')
						CREATE USER [DPPTAMPOISVR1] FOR LOGIN [DPPTAMPOISVR1];
			
					EXEC sp_addrolemember 'db_datareader','DPPTAMPOISVR1';
					EXEC sp_addrolemember 'db_datawriter','DPPTAMPOISVR1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTAMPOIZAIDI')
					CREATE LOGIN [DPPTAMPOIZAIDI] WITH PASSWORD = 'Pa$$P@s$0.409225w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTAMPOIZAIDI')
						CREATE USER [DPPTAMPOIZAIDI] FOR LOGIN [DPPTAMPOIZAIDI];
			
					EXEC sp_addrolemember 'db_datareader','DPPTAMPOIZAIDI';
					EXEC sp_addrolemember 'db_datawriter','DPPTAMPOIZAIDI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				