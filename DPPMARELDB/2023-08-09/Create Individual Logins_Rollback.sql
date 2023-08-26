
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					DROP LOGIN [DPPMARELAPP];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						DROP USER [DPPMARELAPP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					DROP LOGIN [DPPMARELAPP];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						DROP USER [DPPMARELAPP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					DROP LOGIN [DPPMARELDB];
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						DROP USER [DPPMARELDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					DROP LOGIN [DPPMARELDB];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						DROP USER [DPPMARELDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					DROP LOGIN [DPPMARELDB];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						DROP USER [DPPMARELDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMPRODDB')
					DROP LOGIN [DPPMPRODDB];
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMPRODDB')
						DROP USER [DPPMPRODDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					DROP LOGIN [EST157];
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						DROP USER [EST157];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159192')
					DROP LOGIN [M6415-A159192];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159192')
						DROP USER [M6415-A159192];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159193')
					DROP LOGIN [M6415-A159193];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159193')
						DROP USER [M6415-A159193];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159194')
					DROP LOGIN [M6415-A159194];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159194')
						DROP USER [M6415-A159194];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159197')
					DROP LOGIN [M6415-A159197];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159197')
						DROP USER [M6415-A159197];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159198')
					DROP LOGIN [M6415-A159198];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159198')
						DROP USER [M6415-A159198];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159200')
					DROP LOGIN [M6415-A159200];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159200')
						DROP USER [M6415-A159200];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159202')
					DROP LOGIN [M6415-A159202];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159202')
						DROP USER [M6415-A159202];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159204')
					DROP LOGIN [M6415-A159204];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159204')
						DROP USER [M6415-A159204];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159205')
					DROP LOGIN [M6415-A159205];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159205')
						DROP USER [M6415-A159205];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159206')
					DROP LOGIN [M6415-A159206];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159206')
						DROP USER [M6415-A159206];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159207')
					DROP LOGIN [M6415-A159207];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159207')
						DROP USER [M6415-A159207];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159208')
					DROP LOGIN [M6415-A159208];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159208')
						DROP USER [M6415-A159208];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					DROP LOGIN [MSPPSR01];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						DROP USER [MSPPSR01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					DROP LOGIN [MSPPSR01];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						DROP USER [MSPPSR01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					DROP LOGIN [MSPPWS01];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						DROP USER [MSPPWS01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					DROP LOGIN [MSPPWS01];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						DROP USER [MSPPWS01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					DROP LOGIN [MSPPWS02];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						DROP USER [MSPPWS02];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					DROP LOGIN [MSPPWS02];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						DROP USER [MSPPWS02];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					DROP LOGIN [MSPPWS03];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						DROP USER [MSPPWS03];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					DROP LOGIN [MSPPWS03];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						DROP USER [MSPPWS03];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					DROP LOGIN [MSPPWS04];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						DROP USER [MSPPWS04];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					DROP LOGIN [MSPPWS04];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						DROP USER [MSPPWS04];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					DROP LOGIN [MSPPWSRC];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						DROP USER [MSPPWSRC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					DROP LOGIN [MSPPWSRC];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						DROP USER [MSPPWSRC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-HUOI')
					DROP LOGIN [SW-DELL-HUOI];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-HUOI')
						DROP USER [SW-DELL-HUOI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-IMAN')
					DROP LOGIN [SW-DELL-IMAN];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-IMAN')
						DROP USER [SW-DELL-IMAN];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-KESHUNA')
					DROP LOGIN [SW-DELL-KESHUNA];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-KESHUNA')
						DROP USER [SW-DELL-KESHUNA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-RANJANI')
					DROP LOGIN [SW-DELL-RANJANI];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-RANJANI')
						DROP USER [SW-DELL-RANJANI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZAKI')
					DROP LOGIN [SW-DELL-ZAKI];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZAKI')
						DROP USER [SW-DELL-ZAKI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-JAHANHP')
					DROP LOGIN [SW-DPP-JAHANHP];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-JAHANHP')
						DROP USER [SW-DPP-JAHANHP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-WACHTER')
					DROP LOGIN [SW-DPP-WACHTER];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-WACHTER')
						DROP USER [SW-DPP-WACHTER];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PLANING')
					DROP LOGIN [SW-HP-PLANING];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PLANING')
						DROP USER [SW-HP-PLANING];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SURFACE2')
					DROP LOGIN [SW-SURFACE2];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SURFACE2')
						DROP USER [SW-SURFACE2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					DROP LOGIN [DPPMARELAPP];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						DROP USER [DPPMARELAPP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELAPP')
					DROP LOGIN [DPPMARELAPP];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELAPP')
						DROP USER [DPPMARELAPP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					DROP LOGIN [DPPMARELDB];
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						DROP USER [DPPMARELDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					DROP LOGIN [DPPMARELDB];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						DROP USER [DPPMARELDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMARELDB')
					DROP LOGIN [DPPMARELDB];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMARELDB')
						DROP USER [DPPMARELDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMPRODDB')
					DROP LOGIN [DPPMPRODDB];
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMPRODDB')
						DROP USER [DPPMPRODDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'EST157')
					DROP LOGIN [EST157];
		
				BEGIN TRY
					USE [IDB_MTECH_MAREL_SL];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'EST157')
						DROP USER [EST157];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159192')
					DROP LOGIN [M6415-A159192];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159192')
						DROP USER [M6415-A159192];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159193')
					DROP LOGIN [M6415-A159193];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159193')
						DROP USER [M6415-A159193];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159194')
					DROP LOGIN [M6415-A159194];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159194')
						DROP USER [M6415-A159194];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159197')
					DROP LOGIN [M6415-A159197];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159197')
						DROP USER [M6415-A159197];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159198')
					DROP LOGIN [M6415-A159198];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159198')
						DROP USER [M6415-A159198];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159200')
					DROP LOGIN [M6415-A159200];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159200')
						DROP USER [M6415-A159200];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159202')
					DROP LOGIN [M6415-A159202];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159202')
						DROP USER [M6415-A159202];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159204')
					DROP LOGIN [M6415-A159204];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159204')
						DROP USER [M6415-A159204];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159205')
					DROP LOGIN [M6415-A159205];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159205')
						DROP USER [M6415-A159205];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159206')
					DROP LOGIN [M6415-A159206];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159206')
						DROP USER [M6415-A159206];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159207')
					DROP LOGIN [M6415-A159207];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159207')
						DROP USER [M6415-A159207];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'M6415-A159208')
					DROP LOGIN [M6415-A159208];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'M6415-A159208')
						DROP USER [M6415-A159208];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					DROP LOGIN [MSPPSR01];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						DROP USER [MSPPSR01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPSR01')
					DROP LOGIN [MSPPSR01];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPSR01')
						DROP USER [MSPPSR01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					DROP LOGIN [MSPPWS01];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						DROP USER [MSPPWS01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS01')
					DROP LOGIN [MSPPWS01];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS01')
						DROP USER [MSPPWS01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					DROP LOGIN [MSPPWS02];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						DROP USER [MSPPWS02];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS02')
					DROP LOGIN [MSPPWS02];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS02')
						DROP USER [MSPPWS02];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					DROP LOGIN [MSPPWS03];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						DROP USER [MSPPWS03];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS03')
					DROP LOGIN [MSPPWS03];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS03')
						DROP USER [MSPPWS03];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					DROP LOGIN [MSPPWS04];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						DROP USER [MSPPWS04];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWS04')
					DROP LOGIN [MSPPWS04];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWS04')
						DROP USER [MSPPWS04];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					DROP LOGIN [MSPPWSRC];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						DROP USER [MSPPWSRC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MSPPWSRC')
					DROP LOGIN [MSPPWSRC];
		
				BEGIN TRY
					USE [PDSNT];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MSPPWSRC')
						DROP USER [MSPPWSRC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-HUOI')
					DROP LOGIN [SW-DELL-HUOI];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-HUOI')
						DROP USER [SW-DELL-HUOI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-IMAN')
					DROP LOGIN [SW-DELL-IMAN];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-IMAN')
						DROP USER [SW-DELL-IMAN];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-KESHUNA')
					DROP LOGIN [SW-DELL-KESHUNA];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-KESHUNA')
						DROP USER [SW-DELL-KESHUNA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-RANJANI')
					DROP LOGIN [SW-DELL-RANJANI];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-RANJANI')
						DROP USER [SW-DELL-RANJANI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZAKI')
					DROP LOGIN [SW-DELL-ZAKI];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZAKI')
						DROP USER [SW-DELL-ZAKI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-JAHANHP')
					DROP LOGIN [SW-DPP-JAHANHP];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-JAHANHP')
						DROP USER [SW-DPP-JAHANHP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-WACHTER')
					DROP LOGIN [SW-DPP-WACHTER];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-WACHTER')
						DROP USER [SW-DPP-WACHTER];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PLANING')
					DROP LOGIN [SW-HP-PLANING];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PLANING')
						DROP USER [SW-HP-PLANING];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SURFACE2')
					DROP LOGIN [SW-SURFACE2];
		
				BEGIN TRY
					USE [innova];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SURFACE2')
						DROP USER [SW-SURFACE2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				