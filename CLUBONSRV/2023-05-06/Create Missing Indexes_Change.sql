
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [ClubOn];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [ClubOn].[dbo].[RetTransactionMaster] (
			[TransactionClass]
			) INCLUDE (
			[ChitID],[TransactionDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230506' AND i.object_id = OBJECT_ID('[ClubOn].[dbo].[RetTransactionMaster]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230506' AND i2.object_id = OBJECT_ID('[ClubOn].[dbo].[RetTransactionMaster]')
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
			DROP INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [ClubOn].[dbo].[RetTransactionMaster] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [CMS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [CMS].[dbo].[invDepartmentItemMovement] (
			[ItemID],[PropertyID],[TxnDate]
			) INCLUDE (
			[CreateDate],[DepartmentID],[DocumentID],[TxnType],[UnitPrice],[UnitQty]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230506' AND i.object_id = OBJECT_ID('[CMS].[dbo].[invDepartmentItemMovement]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230506' AND i2.object_id = OBJECT_ID('[CMS].[dbo].[invDepartmentItemMovement]')
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
		COUNT(*) = 9
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [CMS].[dbo].[invDepartmentItemMovement] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FAS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [FAS].[dbo].[GlJournalHeader] (
			[BranchCode],[CompanyCode],[DocumentType],[IsCancel],[ModuleType],[RefNo],[Remark],[TxnDate]
			) INCLUDE (
			[CurrencyCode],[DocumentNo],[ExRate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230506' AND i.object_id = OBJECT_ID('[FAS].[dbo].[GlJournalHeader]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230506' AND i2.object_id = OBJECT_ID('[FAS].[dbo].[GlJournalHeader]')
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
		COUNT(*) = 11
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FAS].[dbo].[GlJournalHeader] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [ClubOn];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [ClubOn].[dbo].[mrmPaymentMaster] (
			[PaymentCode],[TransactionClass],[TransactionDate]
			) INCLUDE (
			[AccountID],[Amount],[ChequeNumber],[CreditCardNumber],[CreditCardType],[FasTransfer],[ID],[OthersType],[SalesID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230506' AND i.object_id = OBJECT_ID('[ClubOn].[dbo].[mrmPaymentMaster]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230506' AND i2.object_id = OBJECT_ID('[ClubOn].[dbo].[mrmPaymentMaster]')
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
		COUNT(*) = 12
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [ClubOn].[dbo].[mrmPaymentMaster] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FAS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [FAS].[dbo].[GlTransaction] (
			[BranchCode],[CompanyCode],[DebtorCode],[TxnDate]
			) INCLUDE (
			[Credit],[CurrencyCode],[Debit],[DocumentNo],[DocumentType],[GLCode],[ModuleType]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230506' AND i.object_id = OBJECT_ID('[FAS].[dbo].[GlTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230506' AND i2.object_id = OBJECT_ID('[FAS].[dbo].[GlTransaction]')
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
		COUNT(*) = 11
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FAS].[dbo].[GlTransaction] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [ClubOn];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [ClubOn].[dbo].[RetTransactionMaster] (
			[TransactionClass]
			) INCLUDE (
			[ChitID],[TransactionDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230506' AND i.object_id = OBJECT_ID('[ClubOn].[dbo].[RetTransactionMaster]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230506' AND i2.object_id = OBJECT_ID('[ClubOn].[dbo].[RetTransactionMaster]')
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
			DROP INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [ClubOn].[dbo].[RetTransactionMaster] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [ClubOn].[dbo].[RetTransactionMaster] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [ClubOn].[dbo].[RetTransactionMaster] (
			[TransactionClass]
			) INCLUDE (
			[ChitID],[TransactionDate]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [ClubOn].[dbo].[RetTransactionMaster] CANNOT BE CREATED.';
END CATCH;


USE [CMS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [CMS].[dbo].[invDepartmentItemMovement] (
			[ItemID],[PropertyID],[TxnDate]
			) INCLUDE (
			[CreateDate],[DepartmentID],[DocumentID],[TxnType],[UnitPrice],[UnitQty]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230506' AND i.object_id = OBJECT_ID('[CMS].[dbo].[invDepartmentItemMovement]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230506' AND i2.object_id = OBJECT_ID('[CMS].[dbo].[invDepartmentItemMovement]')
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
		COUNT(*) = 9
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [CMS].[dbo].[invDepartmentItemMovement] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [CMS].[dbo].[invDepartmentItemMovement] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [CMS].[dbo].[invDepartmentItemMovement] (
			[ItemID],[PropertyID],[TxnDate]
			) INCLUDE (
			[CreateDate],[DepartmentID],[DocumentID],[TxnType],[UnitPrice],[UnitQty]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [CMS].[dbo].[invDepartmentItemMovement] CANNOT BE CREATED.';
END CATCH;


USE [FAS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [FAS].[dbo].[GlJournalHeader] (
			[BranchCode],[CompanyCode],[DocumentType],[IsCancel],[ModuleType],[RefNo],[Remark],[TxnDate]
			) INCLUDE (
			[CurrencyCode],[DocumentNo],[ExRate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230506' AND i.object_id = OBJECT_ID('[FAS].[dbo].[GlJournalHeader]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230506' AND i2.object_id = OBJECT_ID('[FAS].[dbo].[GlJournalHeader]')
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
		COUNT(*) = 11
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FAS].[dbo].[GlJournalHeader] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FAS].[dbo].[GlJournalHeader] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [FAS].[dbo].[GlJournalHeader] (
			[BranchCode],[CompanyCode],[DocumentType],[IsCancel],[ModuleType],[RefNo],[Remark],[TxnDate]
			) INCLUDE (
			[CurrencyCode],[DocumentNo],[ExRate]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [FAS].[dbo].[GlJournalHeader] CANNOT BE CREATED.';
END CATCH;


USE [ClubOn];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [ClubOn].[dbo].[mrmPaymentMaster] (
			[PaymentCode],[TransactionClass],[TransactionDate]
			) INCLUDE (
			[AccountID],[Amount],[ChequeNumber],[CreditCardNumber],[CreditCardType],[FasTransfer],[ID],[OthersType],[SalesID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230506' AND i.object_id = OBJECT_ID('[ClubOn].[dbo].[mrmPaymentMaster]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230506' AND i2.object_id = OBJECT_ID('[ClubOn].[dbo].[mrmPaymentMaster]')
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
		COUNT(*) = 12
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [ClubOn].[dbo].[mrmPaymentMaster] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [ClubOn].[dbo].[mrmPaymentMaster] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [ClubOn].[dbo].[mrmPaymentMaster] (
			[PaymentCode],[TransactionClass],[TransactionDate]
			) INCLUDE (
			[AccountID],[Amount],[ChequeNumber],[CreditCardNumber],[CreditCardType],[FasTransfer],[ID],[OthersType],[SalesID]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [ClubOn].[dbo].[mrmPaymentMaster] CANNOT BE CREATED.';
END CATCH;


USE [FAS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [FAS].[dbo].[GlTransaction] (
			[BranchCode],[CompanyCode],[DebtorCode],[TxnDate]
			) INCLUDE (
			[Credit],[CurrencyCode],[Debit],[DocumentNo],[DocumentType],[GLCode],[ModuleType]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230506' AND i.object_id = OBJECT_ID('[FAS].[dbo].[GlTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230506' AND i2.object_id = OBJECT_ID('[FAS].[dbo].[GlTransaction]')
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
		COUNT(*) = 11
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FAS].[dbo].[GlTransaction] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FAS].[dbo].[GlTransaction] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [FAS].[dbo].[GlTransaction] (
			[BranchCode],[CompanyCode],[DebtorCode],[TxnDate]
			) INCLUDE (
			[Credit],[CurrencyCode],[Debit],[DocumentNo],[DocumentType],[GLCode],[ModuleType]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [FAS].[dbo].[GlTransaction] CANNOT BE CREATED.';
END CATCH;

