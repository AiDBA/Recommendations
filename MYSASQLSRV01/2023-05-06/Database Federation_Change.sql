
DECLARE @Stmt nvarchar(max);

SET @Stmt ='
USE [[?]];

IF (  NOT EXISTS (SELECT name FROM sys.filegroups WHERE name = ''AIDBA_NCIX'' ))
	BEGIN
		ALTER DATABASE [[?]] ADD FILEGROUP AIDBA_NCIX;
	END 
	ELSE
	BEGIN
		PRINT ''The filegroup AIDBA_NCIX is already existed in [[?]] database.''
	END

IF (  NOT EXISTS (SELECT name FROM sys.database_files WHERE name = ''[?]_AIDBA_NCIX'' ))
	BEGIN
		ALTER DATABASE [[?]] ADD FILE ( NAME = [[?]_AIDBA_NCIX], 
												FILENAME = ''[@][?]_AIDBA_NCIX.ndf'',  
												SIZE = 1024MB, FILEGROWTH = 1024MB ) TO FILEGROUP AIDBA_NCIX;
	END
	ELSE
	BEGIN
		PRINT ''The logical file name [?]_AIDBA_NCIX is already existed in [[?]] database.''
	END

DECLARE @Index_Key_Columns_[*] TABLE ([Index_Name] nvarchar(max), [Column_Name] nvarchar(max));
INSERT INTO @Index_Key_Columns_[*]([Index_Name],[Column_Name])
SELECT DISTINCT Main.Index_Name,
       LEFT(Main.Column_Name,Len(Main.Column_Name)-1) As [Column_Name]
FROM
    (
        SELECT DISTINCT ST2.Index_Name, 
            (
                SELECT ''[''+ST1.Column_Name + ''],'' AS [text()]
                FROM (SELECT DISTINCT I.name AS Index_Name , C.name AS Column_Name FROM sys.indexes AS I
				INNER JOIN sys.index_columns AS IC ON I.object_id=IC.object_id AND I.index_id=IC.index_id
				INNER JOIN sys.columns AS C ON IC.column_id=C.column_id AND C.object_id=I.object_id
				WHERE I.type_desc = ''NONCLUSTERED'' AND I.data_space_id=1 AND IC.is_included_column = 0
				AND I.is_primary_key = 0 AND I.is_unique_constraint = 0 AND I.is_unique = 0) ST1
                WHERE ST1.Index_Name = ST2.Index_Name
                ORDER BY ST1.Index_Name
                FOR XML PATH ('''')
            ) [Column_Name]
        FROM (SELECT DISTINCT I.name AS Index_Name , C.name AS Column_Name FROM sys.indexes AS I
			  INNER JOIN sys.index_columns AS IC ON I.object_id=IC.object_id AND I.index_id=IC.index_id
			  INNER JOIN sys.columns AS C ON IC.column_id=C.column_id AND C.object_id=I.object_id
			  WHERE I.type_desc = ''NONCLUSTERED'' AND I.data_space_id=1 AND IC.is_included_column = 0
			  AND I.is_primary_key = 0 AND I.is_unique_constraint = 0 AND I.is_unique = 0) ST2
    ) [Main]




DECLARE @Index_Included_Columns_[*] TABLE ([Index_Name] nvarchar(max), [Column_Name] nvarchar(max));
INSERT INTO @Index_Included_Columns_[*] ([Index_Name],[Column_Name]) 
SELECT DISTINCT Main.Index_Name,
       LEFT(Main.Column_Name,Len(Main.Column_Name)-1) As [Column_Name]
FROM
    (
        SELECT DISTINCT ST2.Index_Name, 
            (
                SELECT ''[''+ST1.Column_Name + ''],'' AS [text()]
                FROM (SELECT DISTINCT I.name AS Index_Name , C.name AS Column_Name FROM sys.indexes AS I
				INNER JOIN sys.index_columns AS IC ON I.object_id=IC.object_id AND I.index_id=IC.index_id
				INNER JOIN sys.columns AS C ON IC.column_id=C.column_id AND C.object_id=I.object_id
				WHERE I.type_desc = ''NONCLUSTERED'' AND I.data_space_id=1 AND IC.is_included_column = 1
				AND I.is_primary_key = 0 AND I.is_unique_constraint = 0 AND I.is_unique = 0) ST1
                WHERE ST1.Index_Name = ST2.Index_Name
                ORDER BY ST1.Index_Name
                FOR XML PATH ('''')
            ) [Column_Name]
        FROM (SELECT DISTINCT I.name AS Index_Name , C.name AS Column_Name FROM sys.indexes AS I
			  INNER JOIN sys.index_columns AS IC ON I.object_id=IC.object_id AND I.index_id=IC.index_id
			  INNER JOIN sys.columns AS C ON IC.column_id=C.column_id AND C.object_id=I.object_id
			  WHERE I.type_desc = ''NONCLUSTERED'' AND I.data_space_id=1 AND IC.is_included_column = 1
			  AND I.is_primary_key = 0 AND I.is_unique_constraint = 0 AND I.is_unique = 0) ST2
    ) [Main]

DECLARE CUR1_[*] CURSOR FOR	
		SELECT DISTINCT S.name AS [Schema_Name], T.name AS Table_Name, I.name AS Index_Name
		FROM sys.indexes AS I
		INNER JOIN sys.tables AS T ON T.object_id=I.object_id
		INNER JOIN sys.filegroups AS F ON F.data_space_id=I.data_space_id
		INNER JOIN sys.database_files AS D ON D.data_space_id=I.data_space_id
		INNER JOIN sys.schemas AS S ON T.schema_id=S.schema_id
		WHERE I.type_desc = ''NONCLUSTERED'' AND I.data_space_id=1 AND I.is_primary_key = 0 
		AND I.is_unique_constraint = 0 AND I.is_unique = 0
		AND T.object_id NOT IN (Select C.object_id from sys.all_columns C WITH (NOLOCK) WHERE C.is_sparse = 1 OR C.is_column_set = 1) 
    	AND I.is_disabled = 0;

		DECLARE @Schema_Name_[*] nvarchar(128);
		DECLARE @Table_Name_[*] nvarchar(128);
		DECLARE @Index_Name_[*] nvarchar(128);
		DECLARE @Script nvarchar(max);	

		OPEN CUR1_[*]
		FETCH NEXT FROM CUR1_[*] INTO @Schema_Name_[*], @Table_Name_[*], @Index_Name_[*]
		WHILE (@@FETCH_STATUS = 0)
			BEGIN
			DECLARE @Key_Columns_[*] nvarchar(max);
			SELECT @Key_Columns_[*] = Column_Name FROM @Index_Key_Columns_[*]
								 WHERE Index_Name=@Index_Name_[*]

			DECLARE @Included_Columns_[*] nvarchar(max);
			SELECT @Included_Columns_[*] = Column_Name FROM @Index_Included_Columns_[*]
								 WHERE Index_Name=@Index_Name_[*]

			DECLARE  @Index_With_Include_Column_[*] TABLE (Index_Name nvarchar(max));
			INSERT INTO @Index_With_Include_Column_[*] (Index_Name) SELECT Index_Name FROM @Index_Included_Columns_[*];

			
			IF (  NOT EXISTS (SELECT * FROM @Index_With_Include_Column_[*] WHERE Index_Name = @Index_Name_[*] ))
			BEGIN

			SET @Script=ISNULL(''
					CREATE NONCLUSTERED INDEX [''+@Index_Name_[*]+''] ON [''+@Schema_Name_[*]+''].[''+@Table_Name_[*]+''] (''+@Key_Columns_[*]+'') WITH (DROP_EXISTING = ON, DATA_COMPRESSION = PAGE) ON AIDBA_NCIX;
			'','''')
			END
			ELSE
			BEGIN
			SET @Script=ISNULL(''
					CREATE NONCLUSTERED INDEX [''+@Index_Name_[*]+''] ON [''+@Schema_Name_[*]+''].[''+@Table_Name_[*]+''] (''+@Key_Columns_[*]+'') INCLUDE (''+@Included_Columns_[*]+'') WITH (DROP_EXISTING = ON, DATA_COMPRESSION = PAGE) ON AIDBA_NCIX;
			'','''')
			END

EXEC (@Script);

		FETCH NEXT FROM CUR1_[*] INTO @Schema_Name_[*], @Table_Name_[*], @Index_Name_[*]
		END
		CLOSE CUR1_[*];
		DEALLOCATE CUR1_[*];

	'


  DECLARE DBCUR CURSOR FAST_FORWARD FOR 
  SELECT D.[name] ,LEFT(M.physical_name,LEN(M.physical_name)-LEN(RIGHT(M.physical_name, CHARINDEX('\',REVERSE(M.physical_name))-1)))  
  FROM sys.databases AS D
  INNER JOIN sys.master_files AS M ON D.database_id=M.database_id
  WHERE D.state_desc = 'ONLINE' AND D.[name] NOT IN('master','tempdb','model','msdb','distribution')
  AND M.data_space_id = 1 AND D.is_read_only = 0
  DECLARE @dbname sysname;
  DECLARE @File_Path nvarchar(max);

  OPEN DBCUR;
  FETCH NEXT FROM DBCUR INTO @dbname,@File_Path;
  WHILE(@@FETCH_STATUS <> -1)
	BEGIN
	DECLARE @script nvarchar(max);
		SET @script = REPLACE(@Stmt,'[?]',@dbname);
		SET @script = REPLACE(@script,'[*]',REPLACE(@dbname,'-','_'));
		SET @script = REPLACE(@script,'[@]',@File_Path);
		EXEC (@script);

  FETCH NEXT FROM DBCUR INTO @dbname,@File_Path;
  END
  CLOSE DBCUR;
  DEALLOCATE DBCUR;