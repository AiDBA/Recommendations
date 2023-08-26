
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DESKTOP-9MN8Q1R')
					DROP LOGIN [DESKTOP-9MN8Q1R];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DESKTOP-9MN8Q1R')
						DROP USER [DESKTOP-9MN8Q1R];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPMPRODDB')
					DROP LOGIN [DPPMPRODDB];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPMPRODDB')
						DROP USER [DPPMPRODDB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
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
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPSLY-HP')
					DROP LOGIN [DPPSLY-HP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPSLY-HP')
						DROP USER [DPPSLY-HP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPP-TAIPING-HP')
					DROP LOGIN [DPP-TAIPING-HP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPP-TAIPING-HP')
						DROP USER [DPP-TAIPING-HP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'DPPTEST')
					DROP LOGIN [DPPTEST];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'DPPTEST')
						DROP USER [DPPTEST];
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
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'MTECHPC')
					DROP LOGIN [MTECHPC];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'MTECHPC')
						DROP USER [MTECHPC];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'PC23')
					DROP LOGIN [PC23];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'PC23')
						DROP USER [PC23];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'PLTKEDAI-HP')
					DROP LOGIN [PLTKEDAI-HP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'PLTKEDAI-HP')
						DROP USER [PLTKEDAI-HP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-AZA')
					DROP LOGIN [SW-DELL-AZA];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-AZA')
						DROP USER [SW-DELL-AZA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-CMD1')
					DROP LOGIN [SW-DELL-CMD1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-CMD1')
						DROP USER [SW-DELL-CMD1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-CMD2')
					DROP LOGIN [SW-DELL-CMD2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-CMD2')
						DROP USER [SW-DELL-CMD2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-DEB1')
					DROP LOGIN [SW-DELL-DEB1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-DEB1')
						DROP USER [SW-DELL-DEB1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-EVI1')
					DROP LOGIN [SW-DELL-EVI1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-EVI1')
						DROP USER [SW-DELL-EVI1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-FRM')
					DROP LOGIN [SW-DELL-FRM];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-FRM')
						DROP USER [SW-DELL-FRM];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-HANIS')
					DROP LOGIN [SW-DELL-HANIS];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-HANIS')
						DROP USER [SW-DELL-HANIS];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-LBR3')
					DROP LOGIN [SW-DELL-LBR3];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-LBR3')
						DROP USER [SW-DELL-LBR3];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-MAR2')
					DROP LOGIN [SW-DELL-MAR2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-MAR2')
						DROP USER [SW-DELL-MAR2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-PDDALL')
					DROP LOGIN [SW-DELL-PDDALL];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-PDDALL')
						DROP USER [SW-DELL-PDDALL];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-RMP')
					DROP LOGIN [SW-DELL-RMP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-RMP')
						DROP USER [SW-DELL-RMP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-SP2')
					DROP LOGIN [SW-DELL-SP2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-SP2')
						DROP USER [SW-DELL-SP2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-WBDSUP')
					DROP LOGIN [SW-DELL-WBDSUP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-WBDSUP')
						DROP USER [SW-DELL-WBDSUP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZAKI')
					DROP LOGIN [SW-DELL-ZAKI];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZAKI')
						DROP USER [SW-DELL-ZAKI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DELL-ZALEHA')
					DROP LOGIN [SW-DELL-ZALEHA];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DELL-ZALEHA')
						DROP USER [SW-DELL-ZALEHA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-173')
					DROP LOGIN [SWDPP-173];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-173')
						DROP USER [SWDPP-173];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-AISAH')
					DROP LOGIN [SW-DPP-AISAH];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-AISAH')
						DROP USER [SW-DPP-AISAH];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-CRM125')
					DROP LOGIN [SWDPP-CRM125];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-CRM125')
						DROP USER [SWDPP-CRM125];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-DARHONG')
					DROP LOGIN [SW-DPP-DARHONG];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-DARHONG')
						DROP USER [SW-DPP-DARHONG];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-KEDAI')
					DROP LOGIN [SW-DPP-KEDAI];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-KEDAI')
						DROP USER [SW-DPP-KEDAI];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-LDGSP2')
					DROP LOGIN [SWDPP-LDGSP2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-LDGSP2')
						DROP USER [SWDPP-LDGSP2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-MEGAHP')
					DROP LOGIN [SW-DPP-MEGAHP];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-MEGAHP')
						DROP USER [SW-DPP-MEGAHP];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-NORDIN')
					DROP LOGIN [SW-DPP-NORDIN];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-NORDIN')
						DROP USER [SW-DPP-NORDIN];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-NORHAIDA')
					DROP LOGIN [SW-DPP-NORHAIDA];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-NORHAIDA')
						DROP USER [SW-DPP-NORHAIDA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SWDPP-NORHAIDA')
					DROP LOGIN [SWDPP-NORHAIDA];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SWDPP-NORHAIDA')
						DROP USER [SWDPP-NORHAIDA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-PETER')
					DROP LOGIN [SW-DPP-PETER];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-PETER')
						DROP USER [SW-DPP-PETER];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-DPP-SHAFIQ')
					DROP LOGIN [SW-DPP-SHAFIQ];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-DPP-SHAFIQ')
						DROP USER [SW-DPP-SHAFIQ];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-173')
					DROP LOGIN [SW-HP-173];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-173')
						DROP USER [SW-HP-173];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-AISAH')
					DROP LOGIN [SW-HP-AISAH];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-AISAH')
						DROP USER [SW-HP-AISAH];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-CRM125')
					DROP LOGIN [SW-HP-CRM125];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-CRM125')
						DROP USER [SW-HP-CRM125];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-FRM')
					DROP LOGIN [SW-HP-FRM];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-FRM')
						DROP USER [SW-HP-FRM];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-LDGSP2')
					DROP LOGIN [SW-HP-LDGSP2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-LDGSP2')
						DROP USER [SW-HP-LDGSP2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-MAR2')
					DROP LOGIN [SW-HP-MAR2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-MAR2')
						DROP USER [SW-HP-MAR2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-NOORAZA')
					DROP LOGIN [SW-HP-NOORAZA];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-NOORAZA')
						DROP USER [SW-HP-NOORAZA];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PICK1')
					DROP LOGIN [SW-HP-PICK1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PICK1')
						DROP USER [SW-HP-PICK1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-HP-PICK4')
					DROP LOGIN [SW-HP-PICK4];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-HP-PICK4')
						DROP USER [SW-HP-PICK4];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-CMD1')
					DROP LOGIN [SW-MTECH-CMD1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-CMD1')
						DROP USER [SW-MTECH-CMD1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-CMD5')
					DROP LOGIN [SW-MTECH-CMD5];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-CMD5')
						DROP USER [SW-MTECH-CMD5];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-DEB')
					DROP LOGIN [SW-MTECH-DEB];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-DEB')
						DROP USER [SW-MTECH-DEB];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-FRM')
					DROP LOGIN [SW-MTECH-FRM];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-FRM')
						DROP USER [SW-MTECH-FRM];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LBRCLK')
					DROP LOGIN [SW-MTECH-LBRCLK];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LBRCLK')
						DROP USER [SW-MTECH-LBRCLK];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LDG1')
					DROP LOGIN [SW-MTECH-LDG1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LDG1')
						DROP USER [SW-MTECH-LDG1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LDG2')
					DROP LOGIN [SW-MTECH-LDG2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LDG2')
						DROP USER [SW-MTECH-LDG2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-LDG3')
					DROP LOGIN [SW-MTECH-LDG3];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-LDG3')
						DROP USER [SW-MTECH-LDG3];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS1')
					DROP LOGIN [SW-MTECH-RDS1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS1')
						DROP USER [SW-MTECH-RDS1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS2')
					DROP LOGIN [SW-MTECH-RDS2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS2')
						DROP USER [SW-MTECH-RDS2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS3')
					DROP LOGIN [SW-MTECH-RDS3];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS3')
						DROP USER [SW-MTECH-RDS3];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RDS7')
					DROP LOGIN [SW-MTECH-RDS7];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RDS7')
						DROP USER [SW-MTECH-RDS7];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RMP1')
					DROP LOGIN [SW-MTECH-RMP1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RMP1')
						DROP USER [SW-MTECH-RMP1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-RMP2')
					DROP LOGIN [SW-MTECH-RMP2];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-RMP2')
						DROP USER [SW-MTECH-RMP2];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-MTECH-TFR1')
					DROP LOGIN [SW-MTECH-TFR1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-MTECH-TFR1')
						DROP USER [SW-MTECH-TFR1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC01')
					DROP LOGIN [SW-SL-PC01];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC01')
						DROP USER [SW-SL-PC01];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC02')
					DROP LOGIN [SW-SL-PC02];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC02')
						DROP USER [SW-SL-PC02];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC03')
					DROP LOGIN [SW-SL-PC03];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC03')
						DROP USER [SW-SL-PC03];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC05')
					DROP LOGIN [SW-SL-PC05];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC05')
						DROP USER [SW-SL-PC05];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC07')
					DROP LOGIN [SW-SL-PC07];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC07')
						DROP USER [SW-SL-PC07];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC08')
					DROP LOGIN [SW-SL-PC08];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC08')
						DROP USER [SW-SL-PC08];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC09')
					DROP LOGIN [SW-SL-PC09];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC09')
						DROP USER [SW-SL-PC09];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC10')
					DROP LOGIN [SW-SL-PC10];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC10')
						DROP USER [SW-SL-PC10];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC13')
					DROP LOGIN [SW-SL-PC13];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC13')
						DROP USER [SW-SL-PC13];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC14')
					DROP LOGIN [SW-SL-PC14];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC14')
						DROP USER [SW-SL-PC14];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC17')
					DROP LOGIN [SW-SL-PC17];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC17')
						DROP USER [SW-SL-PC17];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC20')
					DROP LOGIN [SW-SL-PC20];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC20')
						DROP USER [SW-SL-PC20];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC21')
					DROP LOGIN [SW-SL-PC21];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC21')
						DROP USER [SW-SL-PC21];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC22')
					DROP LOGIN [SW-SL-PC22];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC22')
						DROP USER [SW-SL-PC22];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC24')
					DROP LOGIN [SW-SL-PC24];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC24')
						DROP USER [SW-SL-PC24];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC25')
					DROP LOGIN [SW-SL-PC25];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC25')
						DROP USER [SW-SL-PC25];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC26')
					DROP LOGIN [SW-SL-PC26];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC26')
						DROP USER [SW-SL-PC26];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC27')
					DROP LOGIN [SW-SL-PC27];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC27')
						DROP USER [SW-SL-PC27];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC28')
					DROP LOGIN [SW-SL-PC28];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC28')
						DROP USER [SW-SL-PC28];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC29')
					DROP LOGIN [SW-SL-PC29];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC29')
						DROP USER [SW-SL-PC29];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'SW-SL-PC30')
					DROP LOGIN [SW-SL-PC30];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'SW-SL-PC30')
						DROP USER [SW-SL-PC30];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				
				IF EXISTS (SELECT * FROM sys.sql_logins WHERE [name] = 'TASCOKLG1')
					DROP LOGIN [TASCOKLG1];
		
				BEGIN TRY
					USE [MIMS];
					IF EXISTS(SELECT * FROM sys.database_principals WHERE [name] = 'TASCOKLG1')
						DROP USER [TASCOKLG1];
				END TRY
				BEGIN CATCH
					PRINT ERROR_MESSAGE();
				END CATCH
				