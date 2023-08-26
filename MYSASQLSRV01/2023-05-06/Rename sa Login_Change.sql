
				/*** Login "sa" has been changed to "System_Administrator_20230506", and new fake login "SA" has been created with password = "P@s$0.569534w0Rd". ***/

				USE [master];
				ALTER LOGIN [sa] WITH NAME = System_Administrator_20230506;
				CREATE LOGIN SA WITH PASSWORD=N'P@s$0.569534w0Rd', DEFAULT_DATABASE=[tempdb], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;

			