
DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdb_2_20230506', EMPTYFILE);
ALTER DATABASE [tempdb]  REMOVE FILE [tempdb_2_20230506]
			
DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdb_3_20230506', EMPTYFILE);
ALTER DATABASE [tempdb]  REMOVE FILE [tempdb_3_20230506]
			
DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdb_4_20230506', EMPTYFILE);
ALTER DATABASE [tempdb]  REMOVE FILE [tempdb_4_20230506]
			