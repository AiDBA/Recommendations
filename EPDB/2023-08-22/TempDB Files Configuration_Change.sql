
EXEC sp_configure 'show advanced options','1';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'xp_cmdshell','1';
RECONFIGURE WITH OVERRIDE;
EXEC xp_cmdshell 'md F:\tempdb_20230828';
EXEC sp_configure 'xp_cmdshell','0';
RECONFIGURE WITH OVERRIDE;
EXEC sp_configure 'show advanced options','0';
RECONFIGURE WITH OVERRIDE;

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev',SIZE=358400KB , FILEGROWTH=524288KB)

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev2',SIZE=358400KB , FILEGROWTH=524288KB)

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev3',SIZE=358400KB , FILEGROWTH=524288KB)

ALTER DATABASE [tempdb] MODIFY FILE (NAME=N'tempdev4',SIZE=358400KB , FILEGROWTH=524288KB)
