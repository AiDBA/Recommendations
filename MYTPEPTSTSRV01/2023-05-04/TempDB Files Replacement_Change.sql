
			/*** TEMPDB FILES MUST BE REPLACED IN OTHER VOLUME APART OF USER DATABASES FILES ***/
			/*** IT IS ALSO IDEAL TO REPLACE TEMPDB DATA FILES AND LOG FILE IN TWO SEPARATED VOLUMES ***/
			/*** TEMPDB FILES REPLACEMENT WILL BE APPLIED AFTER RESTARTING SQL SERVER INSTANCE ***/
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='temp2' , FILENAME='D:\E10Databases\tempdb_mssql_2.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='temp3' , FILENAME='D:\E10Databases\tempdb_mssql_3.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='temp4' , FILENAME='D:\E10Databases\tempdb_mssql_4.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdev' , FILENAME='D:\E10Databases\tempdb.mdf')
			
			ALTER DATABASE [tempdb] MODIFY FILE (NAME='templog', FILENAME='E:\E10Logs\templog.ldf')
			