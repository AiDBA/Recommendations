
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [LineView4Reports];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [LineView4Reports].[dbo].[Loss] (
			[Line_Code],[Modified]
			) INCLUDE (
			[DTStamp]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230502' AND i.object_id = OBJECT_ID('[LineView4Reports].[dbo].[Loss]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230502' AND i2.object_id = OBJECT_ID('[LineView4Reports].[dbo].[Loss]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [LineView4Reports].[dbo].[Loss] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [LineView4Reports];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [LineView4Reports].[dbo].[CategorisedCausalLoss] (
			[LineId],[LossConditionId],[On]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230502' AND i.object_id = OBJECT_ID('[LineView4Reports].[dbo].[CategorisedCausalLoss]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230502' AND i2.object_id = OBJECT_ID('[LineView4Reports].[dbo].[CategorisedCausalLoss]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [LineView4Reports].[dbo].[CategorisedCausalLoss] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [LineView4Reports];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [LineView4Reports].[dbo].[Loss] (
			[Line_Code],[Modified]
			) INCLUDE (
			[DTStamp]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230502' AND i.object_id = OBJECT_ID('[LineView4Reports].[dbo].[Loss]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230502' AND i2.object_id = OBJECT_ID('[LineView4Reports].[dbo].[Loss]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [LineView4Reports].[dbo].[Loss] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [LineView4Reports].[dbo].[Loss] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [LineView4Reports].[dbo].[Loss] (
			[Line_Code],[Modified]
			) INCLUDE (
			[DTStamp]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] CANNOT BE CREATED.';
END CATCH;


USE [LineView4Reports];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [LineView4Reports].[dbo].[CategorisedCausalLoss] (
			[LineId],[LossConditionId],[On]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230502' AND i.object_id = OBJECT_ID('[LineView4Reports].[dbo].[CategorisedCausalLoss]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230502' AND i2.object_id = OBJECT_ID('[LineView4Reports].[dbo].[CategorisedCausalLoss]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 3
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [LineView4Reports].[dbo].[CategorisedCausalLoss] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [LineView4Reports].[dbo].[CategorisedCausalLoss] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [LineView4Reports].[dbo].[CategorisedCausalLoss] (
			[LineId],[LossConditionId],[On]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] CANNOT BE CREATED.';
END CATCH;

