
			/*** TEMPDB FILES MUST BE REPLACED IN OTHER VOLUME APART OF USER DATABASES FILES ***/
			/*** IT IS ALSO IDEAL TO REPLACE TEMPDB DATA FILES AND LOG FILE IN TWO SEPARATED VOLUMES ***/
			/*** TEMPDB FILES REPLACEMENT WILL BE APPLIED AFTER RESTARTING SQL SERVER INSTANCE ***/
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdb_2_20220401' , FILENAME='F:\MTECH_NEW_MDF\tempdb_2_20220401.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdb_3_20220401' , FILENAME='F:\MTECH_NEW_MDF\tempdb_3_20220401.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdb_4_20220401' , FILENAME='F:\MTECH_NEW_MDF\tempdb_4_20220401.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdev' , FILENAME='F:\MTECH_NEW_MDF\tempdb.mdf')
			
			ALTER DATABASE [tempdb] MODIFY FILE (NAME='templog', FILENAME='G:\MTECH_NEW_LDF\templog.ldf')
			