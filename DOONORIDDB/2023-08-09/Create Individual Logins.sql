
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DESKTOP-9MN8Q1R')
					CREATE LOGIN [DESKTOP-9MN8Q1R] WITH PASSWORD = 'Pa$$P@s$0.932727w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DESKTOP-9MN8Q1R')
						CREATE USER [DESKTOP-9MN8Q1R] FOR LOGIN [DESKTOP-9MN8Q1R];
			
					EXEC sp_addrolemember 'db_datareader','DESKTOP-9MN8Q1R';
					EXEC sp_addrolemember 'db_datawriter','DESKTOP-9MN8Q1R';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMPRODDB')
					CREATE LOGIN [DPPMPRODDB] WITH PASSWORD = 'Pa$$P@s$0.804509w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMPRODDB')
						CREATE USER [DPPMPRODDB] FOR LOGIN [DPPMPRODDB];
			
					EXEC sp_addrolemember 'db_datareader','DPPMPRODDB';
					EXEC sp_addrolemember 'db_datawriter','DPPMPRODDB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMTS1')
					CREATE LOGIN [DPPMTS1] WITH PASSWORD = 'Pa$$P@s$0.577371w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMTS1')
						CREATE USER [DPPMTS1] FOR LOGIN [DPPMTS1];
			
					EXEC sp_addrolemember 'db_datareader','DPPMTS1';
					EXEC sp_addrolemember 'db_datawriter','DPPMTS1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPSLY-HP')
					CREATE LOGIN [DPPSLY-HP] WITH PASSWORD = 'Pa$$P@s$0.577371w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPSLY-HP')
						CREATE USER [DPPSLY-HP] FOR LOGIN [DPPSLY-HP];
			
					EXEC sp_addrolemember 'db_datareader','DPPSLY-HP';
					EXEC sp_addrolemember 'db_datawriter','DPPSLY-HP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPP-TAIPING-HP')
					CREATE LOGIN [DPP-TAIPING-HP] WITH PASSWORD = 'Pa$$P@s$0.577371w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPP-TAIPING-HP')
						CREATE USER [DPP-TAIPING-HP] FOR LOGIN [DPP-TAIPING-HP];
			
					EXEC sp_addrolemember 'db_datareader','DPP-TAIPING-HP';
					EXEC sp_addrolemember 'db_datawriter','DPP-TAIPING-HP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTEST')
					CREATE LOGIN [DPPTEST] WITH PASSWORD = 'Pa$$P@s$0.379398w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTEST')
						CREATE USER [DPPTEST] FOR LOGIN [DPPTEST];
			
					EXEC sp_addrolemember 'db_datareader','DPPTEST';
					EXEC sp_addrolemember 'db_datawriter','DPPTEST';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					CREATE LOGIN [EST157] WITH PASSWORD = 'Pa$$P@s$0.287327w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						CREATE USER [EST157] FOR LOGIN [EST157];
			
					EXEC sp_addrolemember 'db_datareader','EST157';
					EXEC sp_addrolemember 'db_datawriter','EST157';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTECHPC')
					CREATE LOGIN [MTECHPC] WITH PASSWORD = 'Pa$$P@s$0.843093w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTECHPC')
						CREATE USER [MTECHPC] FOR LOGIN [MTECHPC];
			
					EXEC sp_addrolemember 'db_datareader','MTECHPC';
					EXEC sp_addrolemember 'db_datawriter','MTECHPC';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'PC23')
					CREATE LOGIN [PC23] WITH PASSWORD = 'Pa$$P@s$0.117919w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'PC23')
						CREATE USER [PC23] FOR LOGIN [PC23];
			
					EXEC sp_addrolemember 'db_datareader','PC23';
					EXEC sp_addrolemember 'db_datawriter','PC23';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'PLTKEDAI-HP')
					CREATE LOGIN [PLTKEDAI-HP] WITH PASSWORD = 'Pa$$P@s$0.808531w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'PLTKEDAI-HP')
						CREATE USER [PLTKEDAI-HP] FOR LOGIN [PLTKEDAI-HP];
			
					EXEC sp_addrolemember 'db_datareader','PLTKEDAI-HP';
					EXEC sp_addrolemember 'db_datawriter','PLTKEDAI-HP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-AZA')
					CREATE LOGIN [SW-DELL-AZA] WITH PASSWORD = 'Pa$$P@s$0.553677w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-AZA')
						CREATE USER [SW-DELL-AZA] FOR LOGIN [SW-DELL-AZA];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-AZA';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-AZA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-CMD1')
					CREATE LOGIN [SW-DELL-CMD1] WITH PASSWORD = 'Pa$$P@s$0.79148w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-CMD1')
						CREATE USER [SW-DELL-CMD1] FOR LOGIN [SW-DELL-CMD1];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-CMD1';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-CMD1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-CMD2')
					CREATE LOGIN [SW-DELL-CMD2] WITH PASSWORD = 'Pa$$P@s$0.421367w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-CMD2')
						CREATE USER [SW-DELL-CMD2] FOR LOGIN [SW-DELL-CMD2];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-CMD2';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-CMD2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-DEB1')
					CREATE LOGIN [SW-DELL-DEB1] WITH PASSWORD = 'Pa$$P@s$0.164439w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-DEB1')
						CREATE USER [SW-DELL-DEB1] FOR LOGIN [SW-DELL-DEB1];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-DEB1';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-DEB1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-EVI1')
					CREATE LOGIN [SW-DELL-EVI1] WITH PASSWORD = 'Pa$$P@s$0.13818w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-EVI1')
						CREATE USER [SW-DELL-EVI1] FOR LOGIN [SW-DELL-EVI1];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-EVI1';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-EVI1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-FRM')
					CREATE LOGIN [SW-DELL-FRM] WITH PASSWORD = 'Pa$$P@s$0.807551w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-FRM')
						CREATE USER [SW-DELL-FRM] FOR LOGIN [SW-DELL-FRM];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-FRM';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-FRM';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-HANIS')
					CREATE LOGIN [SW-DELL-HANIS] WITH PASSWORD = 'Pa$$P@s$0.394296w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-HANIS')
						CREATE USER [SW-DELL-HANIS] FOR LOGIN [SW-DELL-HANIS];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-HANIS';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-HANIS';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-LBR3')
					CREATE LOGIN [SW-DELL-LBR3] WITH PASSWORD = 'Pa$$P@s$0.274386w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-LBR3')
						CREATE USER [SW-DELL-LBR3] FOR LOGIN [SW-DELL-LBR3];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-LBR3';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-LBR3';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-MAR2')
					CREATE LOGIN [SW-DELL-MAR2] WITH PASSWORD = 'Pa$$P@s$0.988884w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-MAR2')
						CREATE USER [SW-DELL-MAR2] FOR LOGIN [SW-DELL-MAR2];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-MAR2';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-MAR2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-PDDALL')
					CREATE LOGIN [SW-DELL-PDDALL] WITH PASSWORD = 'Pa$$P@s$0.994641w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-PDDALL')
						CREATE USER [SW-DELL-PDDALL] FOR LOGIN [SW-DELL-PDDALL];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-PDDALL';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-PDDALL';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-RMP')
					CREATE LOGIN [SW-DELL-RMP] WITH PASSWORD = 'Pa$$P@s$0.788028w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-RMP')
						CREATE USER [SW-DELL-RMP] FOR LOGIN [SW-DELL-RMP];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-RMP';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-RMP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-SP2')
					CREATE LOGIN [SW-DELL-SP2] WITH PASSWORD = 'Pa$$P@s$0.184021w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-SP2')
						CREATE USER [SW-DELL-SP2] FOR LOGIN [SW-DELL-SP2];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-SP2';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-SP2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-WBDSUP')
					CREATE LOGIN [SW-DELL-WBDSUP] WITH PASSWORD = 'Pa$$P@s$0.184021w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-WBDSUP')
						CREATE USER [SW-DELL-WBDSUP] FOR LOGIN [SW-DELL-WBDSUP];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-WBDSUP';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-WBDSUP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZAKI')
					CREATE LOGIN [SW-DELL-ZAKI] WITH PASSWORD = 'Pa$$P@s$0.925747w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZAKI')
						CREATE USER [SW-DELL-ZAKI] FOR LOGIN [SW-DELL-ZAKI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-ZAKI';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-ZAKI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZALEHA')
					CREATE LOGIN [SW-DELL-ZALEHA] WITH PASSWORD = 'Pa$$P@s$0.24196w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZALEHA')
						CREATE USER [SW-DELL-ZALEHA] FOR LOGIN [SW-DELL-ZALEHA];
			
					EXEC sp_addrolemember 'db_datareader','SW-DELL-ZALEHA';
					EXEC sp_addrolemember 'db_datawriter','SW-DELL-ZALEHA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-173')
					CREATE LOGIN [SWDPP-173] WITH PASSWORD = 'Pa$$P@s$0.528243w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-173')
						CREATE USER [SWDPP-173] FOR LOGIN [SWDPP-173];
			
					EXEC sp_addrolemember 'db_datareader','SWDPP-173';
					EXEC sp_addrolemember 'db_datawriter','SWDPP-173';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-AISAH')
					CREATE LOGIN [SW-DPP-AISAH] WITH PASSWORD = 'Pa$$P@s$0.752434w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-AISAH')
						CREATE USER [SW-DPP-AISAH] FOR LOGIN [SW-DPP-AISAH];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-AISAH';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-AISAH';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-CRM125')
					CREATE LOGIN [SWDPP-CRM125] WITH PASSWORD = 'Pa$$P@s$0.579609w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-CRM125')
						CREATE USER [SWDPP-CRM125] FOR LOGIN [SWDPP-CRM125];
			
					EXEC sp_addrolemember 'db_datareader','SWDPP-CRM125';
					EXEC sp_addrolemember 'db_datawriter','SWDPP-CRM125';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-DARHONG')
					CREATE LOGIN [SW-DPP-DARHONG] WITH PASSWORD = 'Pa$$P@s$0.741082w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-DARHONG')
						CREATE USER [SW-DPP-DARHONG] FOR LOGIN [SW-DPP-DARHONG];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-DARHONG';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-DARHONG';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-KEDAI')
					CREATE LOGIN [SW-DPP-KEDAI] WITH PASSWORD = 'Pa$$P@s$0.749531w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-KEDAI')
						CREATE USER [SW-DPP-KEDAI] FOR LOGIN [SW-DPP-KEDAI];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-KEDAI';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-KEDAI';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-LDGSP2')
					CREATE LOGIN [SWDPP-LDGSP2] WITH PASSWORD = 'Pa$$P@s$0.489082w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-LDGSP2')
						CREATE USER [SWDPP-LDGSP2] FOR LOGIN [SWDPP-LDGSP2];
			
					EXEC sp_addrolemember 'db_datareader','SWDPP-LDGSP2';
					EXEC sp_addrolemember 'db_datawriter','SWDPP-LDGSP2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-MEGAHP')
					CREATE LOGIN [SW-DPP-MEGAHP] WITH PASSWORD = 'Pa$$P@s$0.53784w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-MEGAHP')
						CREATE USER [SW-DPP-MEGAHP] FOR LOGIN [SW-DPP-MEGAHP];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-MEGAHP';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-MEGAHP';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-NORDIN')
					CREATE LOGIN [SW-DPP-NORDIN] WITH PASSWORD = 'Pa$$P@s$0.738366w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-NORDIN')
						CREATE USER [SW-DPP-NORDIN] FOR LOGIN [SW-DPP-NORDIN];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-NORDIN';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-NORDIN';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-NORHAIDA')
					CREATE LOGIN [SW-DPP-NORHAIDA] WITH PASSWORD = 'Pa$$P@s$0.853096w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-NORHAIDA')
						CREATE USER [SW-DPP-NORHAIDA] FOR LOGIN [SW-DPP-NORHAIDA];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-NORHAIDA';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-NORHAIDA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-NORHAIDA')
					CREATE LOGIN [SWDPP-NORHAIDA] WITH PASSWORD = 'Pa$$P@s$0.198028w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-NORHAIDA')
						CREATE USER [SWDPP-NORHAIDA] FOR LOGIN [SWDPP-NORHAIDA];
			
					EXEC sp_addrolemember 'db_datareader','SWDPP-NORHAIDA';
					EXEC sp_addrolemember 'db_datawriter','SWDPP-NORHAIDA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-PETER')
					CREATE LOGIN [SW-DPP-PETER] WITH PASSWORD = 'Pa$$P@s$0.757792w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-PETER')
						CREATE USER [SW-DPP-PETER] FOR LOGIN [SW-DPP-PETER];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-PETER';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-PETER';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-SHAFIQ')
					CREATE LOGIN [SW-DPP-SHAFIQ] WITH PASSWORD = 'Pa$$P@s$0.524286w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-SHAFIQ')
						CREATE USER [SW-DPP-SHAFIQ] FOR LOGIN [SW-DPP-SHAFIQ];
			
					EXEC sp_addrolemember 'db_datareader','SW-DPP-SHAFIQ';
					EXEC sp_addrolemember 'db_datawriter','SW-DPP-SHAFIQ';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-173')
					CREATE LOGIN [SW-HP-173] WITH PASSWORD = 'Pa$$P@s$0.174138w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-173')
						CREATE USER [SW-HP-173] FOR LOGIN [SW-HP-173];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-173';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-173';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-AISAH')
					CREATE LOGIN [SW-HP-AISAH] WITH PASSWORD = 'Pa$$P@s$0.294759w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-AISAH')
						CREATE USER [SW-HP-AISAH] FOR LOGIN [SW-HP-AISAH];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-AISAH';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-AISAH';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-CRM125')
					CREATE LOGIN [SW-HP-CRM125] WITH PASSWORD = 'Pa$$P@s$0.798037w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-CRM125')
						CREATE USER [SW-HP-CRM125] FOR LOGIN [SW-HP-CRM125];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-CRM125';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-CRM125';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-FRM')
					CREATE LOGIN [SW-HP-FRM] WITH PASSWORD = 'Pa$$P@s$0.53499w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-FRM')
						CREATE USER [SW-HP-FRM] FOR LOGIN [SW-HP-FRM];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-FRM';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-FRM';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-LDGSP2')
					CREATE LOGIN [SW-HP-LDGSP2] WITH PASSWORD = 'Pa$$P@s$0.153156w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-LDGSP2')
						CREATE USER [SW-HP-LDGSP2] FOR LOGIN [SW-HP-LDGSP2];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-LDGSP2';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-LDGSP2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-MAR2')
					CREATE LOGIN [SW-HP-MAR2] WITH PASSWORD = 'Pa$$P@s$0.871883w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-MAR2')
						CREATE USER [SW-HP-MAR2] FOR LOGIN [SW-HP-MAR2];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-MAR2';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-MAR2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-NOORAZA')
					CREATE LOGIN [SW-HP-NOORAZA] WITH PASSWORD = 'Pa$$P@s$0.871883w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-NOORAZA')
						CREATE USER [SW-HP-NOORAZA] FOR LOGIN [SW-HP-NOORAZA];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-NOORAZA';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-NOORAZA';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PICK1')
					CREATE LOGIN [SW-HP-PICK1] WITH PASSWORD = 'Pa$$P@s$0.384982w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PICK1')
						CREATE USER [SW-HP-PICK1] FOR LOGIN [SW-HP-PICK1];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-PICK1';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-PICK1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PICK4')
					CREATE LOGIN [SW-HP-PICK4] WITH PASSWORD = 'Pa$$P@s$0.228053w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PICK4')
						CREATE USER [SW-HP-PICK4] FOR LOGIN [SW-HP-PICK4];
			
					EXEC sp_addrolemember 'db_datareader','SW-HP-PICK4';
					EXEC sp_addrolemember 'db_datawriter','SW-HP-PICK4';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-CMD1')
					CREATE LOGIN [SW-MTECH-CMD1] WITH PASSWORD = 'Pa$$P@s$0.642687w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-CMD1')
						CREATE USER [SW-MTECH-CMD1] FOR LOGIN [SW-MTECH-CMD1];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-CMD1';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-CMD1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-CMD5')
					CREATE LOGIN [SW-MTECH-CMD5] WITH PASSWORD = 'Pa$$P@s$0.593965w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-CMD5')
						CREATE USER [SW-MTECH-CMD5] FOR LOGIN [SW-MTECH-CMD5];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-CMD5';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-CMD5';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-DEB')
					CREATE LOGIN [SW-MTECH-DEB] WITH PASSWORD = 'Pa$$P@s$0.844048w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-DEB')
						CREATE USER [SW-MTECH-DEB] FOR LOGIN [SW-MTECH-DEB];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-DEB';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-DEB';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-FRM')
					CREATE LOGIN [SW-MTECH-FRM] WITH PASSWORD = 'Pa$$P@s$0.73967w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-FRM')
						CREATE USER [SW-MTECH-FRM] FOR LOGIN [SW-MTECH-FRM];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-FRM';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-FRM';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LBRCLK')
					CREATE LOGIN [SW-MTECH-LBRCLK] WITH PASSWORD = 'Pa$$P@s$0.484374w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LBRCLK')
						CREATE USER [SW-MTECH-LBRCLK] FOR LOGIN [SW-MTECH-LBRCLK];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-LBRCLK';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-LBRCLK';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LDG1')
					CREATE LOGIN [SW-MTECH-LDG1] WITH PASSWORD = 'Pa$$P@s$0.503552w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LDG1')
						CREATE USER [SW-MTECH-LDG1] FOR LOGIN [SW-MTECH-LDG1];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-LDG1';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-LDG1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LDG2')
					CREATE LOGIN [SW-MTECH-LDG2] WITH PASSWORD = 'Pa$$P@s$0.777417w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LDG2')
						CREATE USER [SW-MTECH-LDG2] FOR LOGIN [SW-MTECH-LDG2];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-LDG2';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-LDG2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LDG3')
					CREATE LOGIN [SW-MTECH-LDG3] WITH PASSWORD = 'Pa$$P@s$0.344327w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LDG3')
						CREATE USER [SW-MTECH-LDG3] FOR LOGIN [SW-MTECH-LDG3];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-LDG3';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-LDG3';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS1')
					CREATE LOGIN [SW-MTECH-RDS1] WITH PASSWORD = 'Pa$$P@s$0.684909w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS1')
						CREATE USER [SW-MTECH-RDS1] FOR LOGIN [SW-MTECH-RDS1];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-RDS1';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-RDS1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS2')
					CREATE LOGIN [SW-MTECH-RDS2] WITH PASSWORD = 'Pa$$P@s$0.121575w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS2')
						CREATE USER [SW-MTECH-RDS2] FOR LOGIN [SW-MTECH-RDS2];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-RDS2';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-RDS2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS3')
					CREATE LOGIN [SW-MTECH-RDS3] WITH PASSWORD = 'Pa$$P@s$0.398838w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS3')
						CREATE USER [SW-MTECH-RDS3] FOR LOGIN [SW-MTECH-RDS3];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-RDS3';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-RDS3';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS7')
					CREATE LOGIN [SW-MTECH-RDS7] WITH PASSWORD = 'Pa$$P@s$0.939117w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS7')
						CREATE USER [SW-MTECH-RDS7] FOR LOGIN [SW-MTECH-RDS7];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-RDS7';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-RDS7';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RMP1')
					CREATE LOGIN [SW-MTECH-RMP1] WITH PASSWORD = 'Pa$$P@s$0.862186w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RMP1')
						CREATE USER [SW-MTECH-RMP1] FOR LOGIN [SW-MTECH-RMP1];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-RMP1';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-RMP1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RMP2')
					CREATE LOGIN [SW-MTECH-RMP2] WITH PASSWORD = 'Pa$$P@s$0.797619w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RMP2')
						CREATE USER [SW-MTECH-RMP2] FOR LOGIN [SW-MTECH-RMP2];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-RMP2';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-RMP2';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-TFR1')
					CREATE LOGIN [SW-MTECH-TFR1] WITH PASSWORD = 'Pa$$P@s$0.456035w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-TFR1')
						CREATE USER [SW-MTECH-TFR1] FOR LOGIN [SW-MTECH-TFR1];
			
					EXEC sp_addrolemember 'db_datareader','SW-MTECH-TFR1';
					EXEC sp_addrolemember 'db_datawriter','SW-MTECH-TFR1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC01')
					CREATE LOGIN [SW-SL-PC01] WITH PASSWORD = 'Pa$$P@s$0.826812w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC01')
						CREATE USER [SW-SL-PC01] FOR LOGIN [SW-SL-PC01];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC01';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC01';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC02')
					CREATE LOGIN [SW-SL-PC02] WITH PASSWORD = 'Pa$$P@s$0.468866w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC02')
						CREATE USER [SW-SL-PC02] FOR LOGIN [SW-SL-PC02];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC02';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC02';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC03')
					CREATE LOGIN [SW-SL-PC03] WITH PASSWORD = 'Pa$$P@s$0.95593w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC03')
						CREATE USER [SW-SL-PC03] FOR LOGIN [SW-SL-PC03];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC03';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC03';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC05')
					CREATE LOGIN [SW-SL-PC05] WITH PASSWORD = 'Pa$$P@s$0.525564w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC05')
						CREATE USER [SW-SL-PC05] FOR LOGIN [SW-SL-PC05];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC05';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC05';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC07')
					CREATE LOGIN [SW-SL-PC07] WITH PASSWORD = 'Pa$$P@s$0.546829w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC07')
						CREATE USER [SW-SL-PC07] FOR LOGIN [SW-SL-PC07];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC07';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC07';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC08')
					CREATE LOGIN [SW-SL-PC08] WITH PASSWORD = 'Pa$$P@s$0.832411w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC08')
						CREATE USER [SW-SL-PC08] FOR LOGIN [SW-SL-PC08];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC08';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC08';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC09')
					CREATE LOGIN [SW-SL-PC09] WITH PASSWORD = 'Pa$$P@s$0.417439w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC09')
						CREATE USER [SW-SL-PC09] FOR LOGIN [SW-SL-PC09];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC09';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC09';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC10')
					CREATE LOGIN [SW-SL-PC10] WITH PASSWORD = 'Pa$$P@s$0.189763w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC10')
						CREATE USER [SW-SL-PC10] FOR LOGIN [SW-SL-PC10];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC10';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC10';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC13')
					CREATE LOGIN [SW-SL-PC13] WITH PASSWORD = 'Pa$$P@s$0.393681w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC13')
						CREATE USER [SW-SL-PC13] FOR LOGIN [SW-SL-PC13];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC13';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC13';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC14')
					CREATE LOGIN [SW-SL-PC14] WITH PASSWORD = 'Pa$$P@s$0.588099w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC14')
						CREATE USER [SW-SL-PC14] FOR LOGIN [SW-SL-PC14];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC14';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC14';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC17')
					CREATE LOGIN [SW-SL-PC17] WITH PASSWORD = 'Pa$$P@s$0.71546w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC17')
						CREATE USER [SW-SL-PC17] FOR LOGIN [SW-SL-PC17];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC17';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC17';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC20')
					CREATE LOGIN [SW-SL-PC20] WITH PASSWORD = 'Pa$$P@s$0.669412w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC20')
						CREATE USER [SW-SL-PC20] FOR LOGIN [SW-SL-PC20];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC20';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC20';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC21')
					CREATE LOGIN [SW-SL-PC21] WITH PASSWORD = 'Pa$$P@s$0.507129w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC21')
						CREATE USER [SW-SL-PC21] FOR LOGIN [SW-SL-PC21];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC21';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC21';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC22')
					CREATE LOGIN [SW-SL-PC22] WITH PASSWORD = 'Pa$$P@s$0.333811w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC22')
						CREATE USER [SW-SL-PC22] FOR LOGIN [SW-SL-PC22];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC22';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC22';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC24')
					CREATE LOGIN [SW-SL-PC24] WITH PASSWORD = 'Pa$$P@s$0.705394w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC24')
						CREATE USER [SW-SL-PC24] FOR LOGIN [SW-SL-PC24];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC24';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC24';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC25')
					CREATE LOGIN [SW-SL-PC25] WITH PASSWORD = 'Pa$$P@s$0.190276w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC25')
						CREATE USER [SW-SL-PC25] FOR LOGIN [SW-SL-PC25];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC25';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC25';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC26')
					CREATE LOGIN [SW-SL-PC26] WITH PASSWORD = 'Pa$$P@s$0.277589w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC26')
						CREATE USER [SW-SL-PC26] FOR LOGIN [SW-SL-PC26];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC26';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC26';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC27')
					CREATE LOGIN [SW-SL-PC27] WITH PASSWORD = 'Pa$$P@s$0.391669w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC27')
						CREATE USER [SW-SL-PC27] FOR LOGIN [SW-SL-PC27];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC27';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC27';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC28')
					CREATE LOGIN [SW-SL-PC28] WITH PASSWORD = 'Pa$$P@s$0.802443w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC28')
						CREATE USER [SW-SL-PC28] FOR LOGIN [SW-SL-PC28];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC28';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC28';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC29')
					CREATE LOGIN [SW-SL-PC29] WITH PASSWORD = 'Pa$$P@s$0.480001w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC29')
						CREATE USER [SW-SL-PC29] FOR LOGIN [SW-SL-PC29];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC29';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC29';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC30')
					CREATE LOGIN [SW-SL-PC30] WITH PASSWORD = 'Pa$$P@s$0.903678w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC30')
						CREATE USER [SW-SL-PC30] FOR LOGIN [SW-SL-PC30];
			
					EXEC sp_addrolemember 'db_datareader','SW-SL-PC30';
					EXEC sp_addrolemember 'db_datawriter','SW-SL-PC30';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF NOT EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'TASCOKLG1')
					CREATE LOGIN [TASCOKLG1] WITH PASSWORD = 'Pa$$P@s$0.247142w0Rd' , DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		
				BEGIN TRY
					USE [MIMS];
					IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'TASCOKLG1')
						CREATE USER [TASCOKLG1] FOR LOGIN [TASCOKLG1];
			
					EXEC sp_addrolemember 'db_datareader','TASCOKLG1';
					EXEC sp_addrolemember 'db_datawriter','TASCOKLG1';
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				