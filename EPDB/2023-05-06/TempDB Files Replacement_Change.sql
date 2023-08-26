
			/*** TEMPDB FILES MUST BE REPLACED IN OTHER VOLUME APART OF USER DATABASES FILES ***/
			/*** IT IS ALSO IDEAL TO REPLACE TEMPDB DATA FILES AND LOG FILE IN TWO SEPARATED VOLUMES ***/
			/*** TEMPDB FILES REPLACEMENT WILL BE APPLIED AFTER RESTARTING SQL SERVER INSTANCE ***/
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdev' , FILENAME='E:\Epicor\Epicor905\db\newdb\tempdb.mdf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdev2' , FILENAME='E:\Epicor\Epicor905\db\newdb\tempdev2.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdev3' , FILENAME='E:\Epicor\Epicor905\db\newdb\tempdev3.ndf')
			
			 ALTER DATABASE [tempdb] MODIFY FILE (NAME='tempdev4' , FILENAME='E:\Epicor\Epicor905\db\newdb\tempdev4.ndf')
			
			ALTER DATABASE [tempdb] MODIFY FILE (NAME='templog', FILENAME='F:\templog.ldf')
			