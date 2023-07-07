
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [FusionOperational].[dbo].[Cycle] (
			[MachineID],[RunID],[TimeStamp]
			) INCLUDE (
			[CycleExtraHistoryID],[CycleNumber],[Exclude],[RunCycleNumber],[Status],[Value]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[Cycle]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[Cycle]')
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
			DROP INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionOperational].[dbo].[Cycle] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [FusionOperational].[dbo].[AutomaticPrintEvent] (
			[BoxStatus],[MachineID],[RunID]
			) INCLUDE (
			[BoxNumber],[BoxPosition],[PalletNumber],[ScrapID],[TimeStamp]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[AutomaticPrintEvent]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[AutomaticPrintEvent]')
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
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionOperational].[dbo].[AutomaticPrintEvent] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [FusionDW].[dbo].[FactDowntimeAssignedReason] (
			[DowntimeRecordKey]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntimeAssignedReason]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntimeAssignedReason]')
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
		COUNT(*) = 1
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionDW].[dbo].[FactDowntimeAssignedReason] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [FusionDW].[dbo].[FactProduction] (
			[ProductionSettingKey],[ShiftKey]
			) INCLUDE (
			[DateKey],[JobKey],[MachineKey],[PartKey],[ProductionQuantity],[TimeOfDayKey],[ToolKey]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[FactProduction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[FactProduction]')
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
			DROP INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionDW].[dbo].[FactProduction] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [FusionDW].[dbo].[ETLWatermark] (
			[DataDesc],[ProcessName],[ProcessResult]
			) INCLUDE (
			[ChangeRevision],[DataEndTime],[DataIdEnd],[DataStartTime],[Timestamp]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[ETLWatermark]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[ETLWatermark]')
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
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionDW].[dbo].[ETLWatermark] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230506
			ON [FusionDW].[dbo].[FactDowntime] (
			[ShiftKey]
			) INCLUDE (
			[DateKey],[DowntimeInstance],[Duration],[JobKey],[MachineKey],[MachineReasonKey],[TimeOfDayKey],[ToolKey]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntime]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntime]')
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
			DROP INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionDW].[dbo].[FactDowntime] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230506
			ON [FusionOperational].[dbo].[Downtime] (
			[MachineID],[StartTime]
			) INCLUDE (
			[MachineReason]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[Downtime]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[Downtime]')
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
			DROP INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionOperational].[dbo].[Downtime] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230506
			ON [FusionOperational].[dbo].[DowntimeAssignedReason] (
			[ReasonID]
			) INCLUDE (
			[DowntimeID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[DowntimeAssignedReason]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[DowntimeAssignedReason]')
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
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [FusionOperational].[dbo].[DowntimeAssignedReason] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230506 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [FusionOperational];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [FusionOperational].[dbo].[Cycle] (
			[MachineID],[RunID],[TimeStamp]
			) INCLUDE (
			[CycleExtraHistoryID],[CycleNumber],[Exclude],[RunCycleNumber],[Status],[Value]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[Cycle]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[Cycle]')
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
			DROP INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionOperational].[dbo].[Cycle] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230506
			ON [FusionOperational].[dbo].[Cycle] (
			[MachineID],[RunID],[TimeStamp]
			) INCLUDE (
			[CycleExtraHistoryID],[CycleNumber],[Exclude],[RunCycleNumber],[Status],[Value]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] CANNOT BE CREATED.';
END CATCH;


USE [FusionOperational];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [FusionOperational].[dbo].[AutomaticPrintEvent] (
			[BoxStatus],[MachineID],[RunID]
			) INCLUDE (
			[BoxNumber],[BoxPosition],[PalletNumber],[ScrapID],[TimeStamp]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[AutomaticPrintEvent]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[AutomaticPrintEvent]')
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
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionOperational].[dbo].[AutomaticPrintEvent] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionOperational].[dbo].[AutomaticPrintEvent] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230506
			ON [FusionOperational].[dbo].[AutomaticPrintEvent] (
			[BoxStatus],[MachineID],[RunID]
			) INCLUDE (
			[BoxNumber],[BoxPosition],[PalletNumber],[ScrapID],[TimeStamp]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] CANNOT BE CREATED.';
END CATCH;


USE [FusionDW];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [FusionDW].[dbo].[FactDowntimeAssignedReason] (
			[DowntimeRecordKey]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntimeAssignedReason]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntimeAssignedReason]')
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
		COUNT(*) = 1
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionDW].[dbo].[FactDowntimeAssignedReason] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionDW].[dbo].[FactDowntimeAssignedReason] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230506
			ON [FusionDW].[dbo].[FactDowntimeAssignedReason] (
			[DowntimeRecordKey]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] CANNOT BE CREATED.';
END CATCH;


USE [FusionDW];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [FusionDW].[dbo].[FactProduction] (
			[ProductionSettingKey],[ShiftKey]
			) INCLUDE (
			[DateKey],[JobKey],[MachineKey],[PartKey],[ProductionQuantity],[TimeOfDayKey],[ToolKey]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[FactProduction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[FactProduction]')
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
			DROP INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionDW].[dbo].[FactProduction] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionDW].[dbo].[FactProduction] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230506
			ON [FusionDW].[dbo].[FactProduction] (
			[ProductionSettingKey],[ShiftKey]
			) INCLUDE (
			[DateKey],[JobKey],[MachineKey],[PartKey],[ProductionQuantity],[TimeOfDayKey],[ToolKey]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] CANNOT BE CREATED.';
END CATCH;


USE [FusionDW];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [FusionDW].[dbo].[ETLWatermark] (
			[DataDesc],[ProcessName],[ProcessResult]
			) INCLUDE (
			[ChangeRevision],[DataEndTime],[DataIdEnd],[DataStartTime],[Timestamp]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[ETLWatermark]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[ETLWatermark]')
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
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionDW].[dbo].[ETLWatermark] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionDW].[dbo].[ETLWatermark] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230506
			ON [FusionDW].[dbo].[ETLWatermark] (
			[DataDesc],[ProcessName],[ProcessResult]
			) INCLUDE (
			[ChangeRevision],[DataEndTime],[DataIdEnd],[DataStartTime],[Timestamp]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] CANNOT BE CREATED.';
END CATCH;


USE [FusionDW];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230506
			ON [FusionDW].[dbo].[FactDowntime] (
			[ShiftKey]
			) INCLUDE (
			[DateKey],[DowntimeInstance],[Duration],[JobKey],[MachineKey],[MachineReasonKey],[TimeOfDayKey],[ToolKey]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230506' AND i.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntime]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230506' AND i2.object_id = OBJECT_ID('[FusionDW].[dbo].[FactDowntime]')
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
			DROP INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionDW].[dbo].[FactDowntime] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionDW].[dbo].[FactDowntime] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230506
			ON [FusionDW].[dbo].[FactDowntime] (
			[ShiftKey]
			) INCLUDE (
			[DateKey],[DowntimeInstance],[Duration],[JobKey],[MachineKey],[MachineReasonKey],[TimeOfDayKey],[ToolKey]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] CANNOT BE CREATED.';
END CATCH;


USE [FusionOperational];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230506
			ON [FusionOperational].[dbo].[Downtime] (
			[MachineID],[StartTime]
			) INCLUDE (
			[MachineReason]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[Downtime]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[Downtime]')
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
			DROP INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionOperational].[dbo].[Downtime] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionOperational].[dbo].[Downtime] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230506
			ON [FusionOperational].[dbo].[Downtime] (
			[MachineID],[StartTime]
			) INCLUDE (
			[MachineReason]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] CANNOT BE CREATED.';
END CATCH;


USE [FusionOperational];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230506')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230506
			ON [FusionOperational].[dbo].[DowntimeAssignedReason] (
			[ReasonID]
			) INCLUDE (
			[DowntimeID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230506' AND i.object_id = OBJECT_ID('[FusionOperational].[dbo].[DowntimeAssignedReason]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230506' AND i2.object_id = OBJECT_ID('[FusionOperational].[dbo].[DowntimeAssignedReason]')
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
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [FusionOperational].[dbo].[DowntimeAssignedReason] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [FusionOperational].[dbo].[DowntimeAssignedReason] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230506
			ON [FusionOperational].[dbo].[DowntimeAssignedReason] (
			[ReasonID]
			) INCLUDE (
			[DowntimeID]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230506 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] CANNOT BE CREATED.';
END CATCH;

