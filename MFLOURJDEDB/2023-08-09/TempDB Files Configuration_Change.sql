
ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev',SIZE=96747520KB , FILEGROWTH=1048576KB)

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev05',SIZE=96747520KB , FILEGROWTH=1048576KB)

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev06',SIZE=96747520KB , FILEGROWTH=1048576KB)

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev07',SIZE=96747520KB , FILEGROWTH=1048576KB)

DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdev02', EMPTYFILE);
ALTER DATABASE [tempdb] REMOVE FILE [tempdev02];

DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdev03', EMPTYFILE);
ALTER DATABASE [tempdb] REMOVE FILE [tempdev03];

DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdev04', EMPTYFILE);
ALTER DATABASE [tempdb] REMOVE FILE [tempdev04];

DBCC DROPCLEANBUFFERS;
DBCC FREEPROCCACHE;
DBCC FREESESSIONCACHE;
DBCC FREESYSTEMCACHE ( 'ALL');
USE [tempdb];
DBCC SHRINKFILE (N'tempdev08', EMPTYFILE);
ALTER DATABASE [tempdb] REMOVE FILE [tempdev08];
