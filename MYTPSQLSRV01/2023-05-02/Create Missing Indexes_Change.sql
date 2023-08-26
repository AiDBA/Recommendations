
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] (
			[ActiveInd],[Booked_Date],[CreatedDate],[ERP_DPNo],[ERP_DPTimeStamp],[goWMSDock],[InDate],[OthersNoAppointment],[TotalPalletLoad],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[ERP_SONo],[LorryNo],[Transporter],[TruckPriorityInd],[TruckTrailerNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT]')
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
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] (
			[LAT_RowID],[T1_RowID],[T1_TableName]
			) INCLUDE (
			[T2_RowID],[T2_TableName]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage]')
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
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] WILL BE CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [Colos];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230502
			ON [Colos].[dbo].[pPallet] (
			[STATUS],[strPalletLineNumber]
			) INCLUDE (
			[strIconName]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230502' AND i.object_id = OBJECT_ID('[Colos].[dbo].[pPallet]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230502' AND i2.object_id = OBJECT_ID('[Colos].[dbo].[pPallet]')
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
			DROP INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [Colos].[dbo].[pPallet] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230502
			ON [VeeamOne].[reporting].[ObjectEntityRelations] (
			[EndDate],[EntityId],[EntityPropertyTypeId],[EntityTypeId],[IsDeleted]
			) INCLUDE (
			[CollectorId],[EntityKeyHash],[EntityParentId],[EntityParentKeyHash],[EntityParentTypeId],[StartDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntityRelations]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntityRelations]')
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
			DROP INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[reporting].[ObjectEntityRelations] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230502
			ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] (
			[ActiveInd],[Booked_Date],[CreatedDate],[ERP_DPNo],[ERP_DPTimeStamp],[ERP_SONo],[goWMSDock],[LorryNo],[OthersNoAppointment],[Transporter],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[CheckOutDriver],[CONT_BookingNo],[CONT_ClosingDate],[CONT_ClosingTime],[CONT_CSWHPlanning],[CONT_Destination],[CONT_Liner],[CONT_PortOfLoading],[CONT_PostponeBookedDate],[CONT_PostponeCounter],[CONT_SealNo],[CONT_TruckNo],[ContainerSealNoStatus],[CreatedBy],[DayLoadShip],[InBy],[InDate],[OutBy],[OutDate],[Remarks],[ReversalBy],[ReversalDate],[StatusCustomerComplaint],[StatusTruckFulfillment],[TotalPalletLoad],[TruckPriorityInd],[TruckTrailerNo],[UpdatedBy],[UpdatedDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction]')
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
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230502
			ON [VeeamOne].[monitor].[BpJobSession] (
			[agg_duration],[bp_server_id],[delete_time],[job_id],[job_type],[parent_job_session_uid],[result],[start_time],[state]
			) INCLUDE (
			[duration],[original_session_uid],[session_algorithm],[will_be_retried]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSession]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSession]')
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
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[BpJobSession] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230502
			ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_TransStatus],[GH_VehicleNo]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_ToSee],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_10000_VisitorManagementTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_10000_VisitorManagementTransaction]')
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
		COUNT(*) = 29
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230502
			ON [VeeamOne].[monitor].[PerfSampleLow] (
			[counter_id],[timestamp]
			) INCLUDE (
			[instance_id],[interval],[value]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[PerfSampleLow]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[PerfSampleLow]')
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
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[PerfSampleLow] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230502
			ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_ToSee],[GH_TransStatus]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_VehicleNo],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT]')
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
		COUNT(*) = 29
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230502
			ON [OCS].[dbo].[a_WOLorryLoadingTransaction] (
			[CreatedDate],[LorryNo],[LorryTransStatus],[UploadImageStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryTransDate],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RN_Priority],[RunningNo],[TimeIn],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[WILorryUnloading_RowID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_WOLorryLoadingTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_WOLorryLoadingTransaction]')
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
		COUNT(*) = 31
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[a_WOLorryLoadingTransaction] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230502
			ON [VeeamOne].[monitor].[BpSessionTaskEvent] (
			[bp_server_id],[event_type],[job_session_uid],[session_task_uid]
			) INCLUDE (
			[event_time],[param0],[param2]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTaskEvent]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTaskEvent]')
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
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[BpSessionTaskEvent] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230502
			ON [OCS].[dbo].[PDManArgDtl] (
			[ActiveInd],[EmployeeID],[LineHasProduction],[PDManArgHdRowID],[StationNoOperation],[StationOrderSeq]
			) INCLUDE (
			[Comment],[EmployeeName],[LineID],[LineName],[LineSeq],[ProductionShift],[StationName]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[PDManArgDtl]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[PDManArgDtl]')
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
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[PDManArgDtl] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230502
			ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_TransStatus],[GH_VehicleNo]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_ToSee],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA]')
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
		COUNT(*) = 29
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230502
			ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] (
			[CreatedDate],[LorryTransDate],[LorryTransStatus],[RN_Priority],[TimeIn],[UploadImageStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryNo],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RunningNo],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[WILorryUnloading_RowID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[c_WOLorryLoadingTransaction_AGT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[c_WOLorryLoadingTransaction_AGT]')
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
		COUNT(*) = 31
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230502
			ON [OCS].[dbo].[a_10200_PODs] (
			[ActiveInd],[CreatedBy],[CreatedDate],[CustomerName],[Destination],[DOGenerationDate],[DONo],[GRNVPONo],[RowID],[SoftCopyReturn],[Transporter],[TransporterDocReturnDate]
			) INCLUDE (
			[Charges],[ConsignmentNoteNo],[CustomerCode],[DispatchByTruck],[DocketNo],[DocReturnedFrom],[DocSentToDate],[DOGenerationDateInMonth],[InvoiceNo],[PenaltyOverDays],[PONo],[ReasonUnfulfilled],[Remark],[StatusOrderFulfillment],[TotalChargeDays],[TotalNoOfDays_ALL],[TotalNoOfDays_YLKL],[TrailerNo],[TruckNo],[UpdatedBy],[UpdatedDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_10200_PODs]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_10200_PODs]')
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
		COUNT(*) = 33
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[a_10200_PODs] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230502
			ON [VeeamOne].[monitor].[BpRestorePointRaw] (
			[backup_uid],[bp_server_id],[delete_time],[is_shadow],[repo_extent_id]
			) INCLUDE (
			[backup_size],[external_content_mode],[is_incremental]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpRestorePointRaw]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpRestorePointRaw]')
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
			DROP INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[BpRestorePointRaw] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230502
			ON [VeeamOne].[reporter].[Object] (
			[DeletionID],[TypeID]
			) INCLUDE (
			[CreationID],[ObjectKey]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporter].[Object]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporter].[Object]')
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
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[reporter].[Object] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230502
			ON [OCS].[dbo].[ab_10200_PODs_CSSA] (
			[ActiveInd],[CustomerName],[DOGenerationDate],[DONo],[RowID],[SoftCopyReturn],[Transporter],[TransporterDocReturnDate]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_10200_PODs_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_10200_PODs_CSSA]')
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
			DROP INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[ab_10200_PODs_CSSA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230502
			ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] (
			[ActiveInd],[Booked_Date],[ERP_DPNo],[ERP_DPTimeStamp],[goWMSDock],[InDate],[LorryNo],[OthersNoAppointment],[TotalPalletLoad],[Transporter],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[CheckOutDriver],[CONT_BookingNo],[CONT_ClosingDate],[CONT_ClosingTime],[CONT_CSWHPlanning],[CONT_Destination],[CONT_Liner],[CONT_PortOfLoading],[CONT_PostponeBookedDate],[CONT_PostponeCounter],[CONT_SealNo],[CONT_TruckNo],[ContainerSealNoStatus],[CreatedBy],[CreatedDate],[DayLoadShip],[ERP_SONo],[InBy],[OutBy],[OutDate],[Remarks],[ReversalBy],[ReversalDate],[StatusCustomerComplaint],[StatusTruckFulfillment],[TruckPriorityInd],[TruckTrailerNo],[UpdatedBy],[UpdatedDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA]')
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
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230502
			ON [VeeamOne].[reporter].[ObjectProperty] (
			[IsDeleted],[ModificationID],[ObjectTypeID],[ParentID],[ParentTypeID],[PropertyID]
			) INCLUDE (
			[ID],[ObjectID],[PropKey],[Value]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporter].[ObjectProperty]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporter].[ObjectProperty]')
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
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[reporter].[ObjectProperty] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230502
			ON [VeeamOne].[reporter].[TaskSession] (
			[EndDate],[IsCommited],[Manually],[StartDate],[StatusID],[TaskID],[Visible]
			) INCLUDE (
			[ParentSessionID],[Progress]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporter].[TaskSession]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporter].[TaskSession]')
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
			DROP INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[reporter].[TaskSession] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230502
			ON [VeeamOne].[monitor].[BpSessionTask] (
			[delete_time],[start_time],[status]
			) INCLUDE (
			[failure_message],[job_session_uid],[total_vm_size],[vm_uid]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTask]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTask]')
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
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[BpSessionTask] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_23_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230502
			ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] (
			[ActiveInd],[Company],[WIUnloading_RowID]
			) INCLUDE (
			[DONum],[MaterialPartClass],[MaterialPartDesc],[MaterialPartNum],[MaterialQty],[MaterialUOM],[PONum],[RMANum],[Supplier],[UnloadingType]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_23_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_COMMON_WIUnloadingMaterialList]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_23_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_COMMON_WIUnloadingMaterialList]')
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
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_23_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_24_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230502
			ON [VeeamOne].[monitor].[EventTag] (
			[tag_name]
			) INCLUDE (
			[event_id],[tag_value]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_24_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[EventTag]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_24_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[EventTag]')
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
			DROP INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[EventTag] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_24_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_25_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230502
			ON [VeeamOne].[businessview].[PolicyItemPartitionMember] (
			[Deleted],[PartitionMember],[PolicyItem]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_25_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[businessview].[PolicyItemPartitionMember]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_25_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[businessview].[PolicyItemPartitionMember]')
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
			DROP INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[businessview].[PolicyItemPartitionMember] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_25_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_26_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230502
			ON [OCS].[dbo].[a_WILorryUnloadingTransaction] (
			[DeleteInd],[LorryNo],[ModeOfTransport],[PackingQuantity],[Supplier],[TransDate],[TransStatus]
			) INCLUDE (
			[CourierRun_No],[Run_No]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_26_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_WILorryUnloadingTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_26_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_WILorryUnloadingTransaction]')
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
			DROP INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[a_WILorryUnloadingTransaction] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_26_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_27_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230502
			ON [VeeamOne].[monitor].[BpJobSessionEvent] (
			[job_session_uid]
			) INCLUDE (
			[param0]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_27_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSessionEvent]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_27_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSessionEvent]')
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
			DROP INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[BpJobSessionEvent] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_27_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_28_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230502
			ON [VeeamOne].[reporting].[ObjectEntity] (
			[EndDate],[EntityTypeId],[RootId]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_28_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntity]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_28_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntity]')
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
			DROP INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[reporting].[ObjectEntity] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_28_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_29_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230502
			ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] (
			[LorryTransStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[CreatedDate],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryNo],[LorryTransDate],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RN_Priority],[RunningNo],[TimeIn],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[UploadImageStatus],[WILorryUnloading_RowID]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_29_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_29_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA]')
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
		COUNT(*) = 31
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_29_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_30_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230502
			ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] (
			[status],[time]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_30_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[HistoryAdvTriggAlarm]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_30_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[HistoryAdvTriggAlarm]')
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
			DROP INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_30_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_31_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230502
			ON [VeeamOne].[businessview].[IncomingRequests] (
			[PolicyItemPartitionMember],[RequestStatus]
			) INCLUDE (
			[Object]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_31_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[businessview].[IncomingRequests]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_31_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[businessview].[IncomingRequests]')
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
			DROP INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[businessview].[IncomingRequests] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_31_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_32_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230502
			ON [VeeamOne].[monitor].[Event] (
			[entity_id],[initiator_id],[time],[type]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_32_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[Event]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_32_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[Event]')
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
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [VeeamOne].[monitor].[Event] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_32_20230502 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] (
			[ActiveInd],[Booked_Date],[CreatedDate],[ERP_DPNo],[ERP_DPTimeStamp],[goWMSDock],[InDate],[OthersNoAppointment],[TotalPalletLoad],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[ERP_SONo],[LorryNo],[Transporter],[TruckPriorityInd],[TruckTrailerNo]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT]')
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
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230502
			ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] (
			[ActiveInd],[Booked_Date],[CreatedDate],[ERP_DPNo],[ERP_DPTimeStamp],[goWMSDock],[InDate],[OthersNoAppointment],[TotalPalletLoad],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[ERP_SONo],[LorryNo],[Transporter],[TruckPriorityInd],[TruckTrailerNo]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] (
			[LAT_RowID],[T1_RowID],[T1_TableName]
			) INCLUDE (
			[T2_RowID],[T2_TableName]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage]')
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
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230502
			ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] (
			[LAT_RowID],[T1_RowID],[T1_TableName]
			) INCLUDE (
			[T2_RowID],[T2_TableName]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] IS CREATED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] CANNOT BE CREATED.';
END CATCH;


USE [Colos];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230502
			ON [Colos].[dbo].[pPallet] (
			[STATUS],[strPalletLineNumber]
			) INCLUDE (
			[strIconName]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230502' AND i.object_id = OBJECT_ID('[Colos].[dbo].[pPallet]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230502' AND i2.object_id = OBJECT_ID('[Colos].[dbo].[pPallet]')
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
			DROP INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [Colos].[dbo].[pPallet] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [Colos].[dbo].[pPallet] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230502
			ON [Colos].[dbo].[pPallet] (
			[STATUS],[strPalletLineNumber]
			) INCLUDE (
			[strIconName]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230502 ON [Colos].[dbo].[pPallet] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230502
			ON [VeeamOne].[reporting].[ObjectEntityRelations] (
			[EndDate],[EntityId],[EntityPropertyTypeId],[EntityTypeId],[IsDeleted]
			) INCLUDE (
			[CollectorId],[EntityKeyHash],[EntityParentId],[EntityParentKeyHash],[EntityParentTypeId],[StartDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntityRelations]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntityRelations]')
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
			DROP INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[reporting].[ObjectEntityRelations] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[reporting].[ObjectEntityRelations] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230502
			ON [VeeamOne].[reporting].[ObjectEntityRelations] (
			[EndDate],[EntityId],[EntityPropertyTypeId],[EntityTypeId],[IsDeleted]
			) INCLUDE (
			[CollectorId],[EntityKeyHash],[EntityParentId],[EntityParentKeyHash],[EntityParentTypeId],[StartDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230502 ON [VeeamOne].[reporting].[ObjectEntityRelations] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230502
			ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] (
			[ActiveInd],[Booked_Date],[CreatedDate],[ERP_DPNo],[ERP_DPTimeStamp],[ERP_SONo],[goWMSDock],[LorryNo],[OthersNoAppointment],[Transporter],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[CheckOutDriver],[CONT_BookingNo],[CONT_ClosingDate],[CONT_ClosingTime],[CONT_CSWHPlanning],[CONT_Destination],[CONT_Liner],[CONT_PortOfLoading],[CONT_PostponeBookedDate],[CONT_PostponeCounter],[CONT_SealNo],[CONT_TruckNo],[ContainerSealNoStatus],[CreatedBy],[DayLoadShip],[InBy],[InDate],[OutBy],[OutDate],[Remarks],[ReversalBy],[ReversalDate],[StatusCustomerComplaint],[StatusTruckFulfillment],[TotalPalletLoad],[TruckPriorityInd],[TruckTrailerNo],[UpdatedBy],[UpdatedDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction]')
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
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230502
			ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] (
			[ActiveInd],[Booked_Date],[CreatedDate],[ERP_DPNo],[ERP_DPTimeStamp],[ERP_SONo],[goWMSDock],[LorryNo],[OthersNoAppointment],[Transporter],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[CheckOutDriver],[CONT_BookingNo],[CONT_ClosingDate],[CONT_ClosingTime],[CONT_CSWHPlanning],[CONT_Destination],[CONT_Liner],[CONT_PortOfLoading],[CONT_PostponeBookedDate],[CONT_PostponeCounter],[CONT_SealNo],[CONT_TruckNo],[ContainerSealNoStatus],[CreatedBy],[DayLoadShip],[InBy],[InDate],[OutBy],[OutDate],[Remarks],[ReversalBy],[ReversalDate],[StatusCustomerComplaint],[StatusTruckFulfillment],[TotalPalletLoad],[TruckPriorityInd],[TruckTrailerNo],[UpdatedBy],[UpdatedDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230502 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230502
			ON [VeeamOne].[monitor].[BpJobSession] (
			[agg_duration],[bp_server_id],[delete_time],[job_id],[job_type],[parent_job_session_uid],[result],[start_time],[state]
			) INCLUDE (
			[duration],[original_session_uid],[session_algorithm],[will_be_retried]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSession]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSession]')
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
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[BpJobSession] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[BpJobSession] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230502
			ON [VeeamOne].[monitor].[BpJobSession] (
			[agg_duration],[bp_server_id],[delete_time],[job_id],[job_type],[parent_job_session_uid],[result],[start_time],[state]
			) INCLUDE (
			[duration],[original_session_uid],[session_algorithm],[will_be_retried]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230502 ON [VeeamOne].[monitor].[BpJobSession] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230502
			ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_TransStatus],[GH_VehicleNo]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_ToSee],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_10000_VisitorManagementTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_10000_VisitorManagementTransaction]')
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
		COUNT(*) = 29
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230502
			ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_TransStatus],[GH_VehicleNo]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_ToSee],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230502 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230502
			ON [VeeamOne].[monitor].[PerfSampleLow] (
			[counter_id],[timestamp]
			) INCLUDE (
			[instance_id],[interval],[value]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[PerfSampleLow]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[PerfSampleLow]')
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
		COUNT(*) = 5
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[PerfSampleLow] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[PerfSampleLow] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230502
			ON [VeeamOne].[monitor].[PerfSampleLow] (
			[counter_id],[timestamp]
			) INCLUDE (
			[instance_id],[interval],[value]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230502 ON [VeeamOne].[monitor].[PerfSampleLow] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230502
			ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_ToSee],[GH_TransStatus]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_VehicleNo],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT]')
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
		COUNT(*) = 29
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230502
			ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_ToSee],[GH_TransStatus]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_VehicleNo],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230502 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230502
			ON [OCS].[dbo].[a_WOLorryLoadingTransaction] (
			[CreatedDate],[LorryNo],[LorryTransStatus],[UploadImageStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryTransDate],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RN_Priority],[RunningNo],[TimeIn],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[WILorryUnloading_RowID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_WOLorryLoadingTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_WOLorryLoadingTransaction]')
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
		COUNT(*) = 31
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[a_WOLorryLoadingTransaction] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[a_WOLorryLoadingTransaction] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230502
			ON [OCS].[dbo].[a_WOLorryLoadingTransaction] (
			[CreatedDate],[LorryNo],[LorryTransStatus],[UploadImageStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryTransDate],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RN_Priority],[RunningNo],[TimeIn],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[WILorryUnloading_RowID]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230502 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230502
			ON [VeeamOne].[monitor].[BpSessionTaskEvent] (
			[bp_server_id],[event_type],[job_session_uid],[session_task_uid]
			) INCLUDE (
			[event_time],[param0],[param2]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTaskEvent]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTaskEvent]')
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
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[BpSessionTaskEvent] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[BpSessionTaskEvent] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230502
			ON [VeeamOne].[monitor].[BpSessionTaskEvent] (
			[bp_server_id],[event_type],[job_session_uid],[session_task_uid]
			) INCLUDE (
			[event_time],[param0],[param2]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230502 ON [VeeamOne].[monitor].[BpSessionTaskEvent] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230502
			ON [OCS].[dbo].[PDManArgDtl] (
			[ActiveInd],[EmployeeID],[LineHasProduction],[PDManArgHdRowID],[StationNoOperation],[StationOrderSeq]
			) INCLUDE (
			[Comment],[EmployeeName],[LineID],[LineName],[LineSeq],[ProductionShift],[StationName]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[PDManArgDtl]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[PDManArgDtl]')
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
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[PDManArgDtl] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[PDManArgDtl] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230502
			ON [OCS].[dbo].[PDManArgDtl] (
			[ActiveInd],[EmployeeID],[LineHasProduction],[PDManArgHdRowID],[StationNoOperation],[StationOrderSeq]
			) INCLUDE (
			[Comment],[EmployeeName],[LineID],[LineName],[LineSeq],[ProductionShift],[StationName]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230502 ON [OCS].[dbo].[PDManArgDtl] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230502
			ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_TransStatus],[GH_VehicleNo]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_ToSee],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA]')
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
		COUNT(*) = 29
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230502
			ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] (
			[ActiveInd],[ERP_TruckUnloadKey1],[GH_CardTag],[GH_GateInDate],[GH_IC],[GH_Name],[GH_Purpose],[GH_TransStatus],[GH_VehicleNo]
			) INCLUDE (
			[BodyTemperatureInC],[CreatedBy],[CreatedDate],[GH_ContactNo],[GH_ContactNo2],[GH_GateInBy],[GH_GateOutBy],[GH_GateOutDate],[GH_IC2],[GH_Name2],[GH_Remarks],[GH_ToSee],[GH_VisitorPassIssued],[OthersNoAppointment],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[VisitorBookDate_From],[VisitorBookDate_To],[VisitorEmail]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230502 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230502
			ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] (
			[CreatedDate],[LorryTransDate],[LorryTransStatus],[RN_Priority],[TimeIn],[UploadImageStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryNo],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RunningNo],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[WILorryUnloading_RowID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[c_WOLorryLoadingTransaction_AGT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[c_WOLorryLoadingTransaction_AGT]')
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
		COUNT(*) = 31
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230502
			ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] (
			[CreatedDate],[LorryTransDate],[LorryTransStatus],[RN_Priority],[TimeIn],[UploadImageStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryNo],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RunningNo],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[WILorryUnloading_RowID]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230502 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230502
			ON [OCS].[dbo].[a_10200_PODs] (
			[ActiveInd],[CreatedBy],[CreatedDate],[CustomerName],[Destination],[DOGenerationDate],[DONo],[GRNVPONo],[RowID],[SoftCopyReturn],[Transporter],[TransporterDocReturnDate]
			) INCLUDE (
			[Charges],[ConsignmentNoteNo],[CustomerCode],[DispatchByTruck],[DocketNo],[DocReturnedFrom],[DocSentToDate],[DOGenerationDateInMonth],[InvoiceNo],[PenaltyOverDays],[PONo],[ReasonUnfulfilled],[Remark],[StatusOrderFulfillment],[TotalChargeDays],[TotalNoOfDays_ALL],[TotalNoOfDays_YLKL],[TrailerNo],[TruckNo],[UpdatedBy],[UpdatedDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_10200_PODs]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_10200_PODs]')
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
		COUNT(*) = 33
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[a_10200_PODs] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[a_10200_PODs] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs];
			CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230502
			ON [OCS].[dbo].[a_10200_PODs] (
			[ActiveInd],[CreatedBy],[CreatedDate],[CustomerName],[Destination],[DOGenerationDate],[DONo],[GRNVPONo],[RowID],[SoftCopyReturn],[Transporter],[TransporterDocReturnDate]
			) INCLUDE (
			[Charges],[ConsignmentNoteNo],[CustomerCode],[DispatchByTruck],[DocketNo],[DocReturnedFrom],[DocSentToDate],[DOGenerationDateInMonth],[InvoiceNo],[PenaltyOverDays],[PONo],[ReasonUnfulfilled],[Remark],[StatusOrderFulfillment],[TotalChargeDays],[TotalNoOfDays_ALL],[TotalNoOfDays_YLKL],[TrailerNo],[TruckNo],[UpdatedBy],[UpdatedDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230502 ON [OCS].[dbo].[a_10200_PODs] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230502
			ON [VeeamOne].[monitor].[BpRestorePointRaw] (
			[backup_uid],[bp_server_id],[delete_time],[is_shadow],[repo_extent_id]
			) INCLUDE (
			[backup_size],[external_content_mode],[is_incremental]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpRestorePointRaw]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpRestorePointRaw]')
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
			DROP INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[BpRestorePointRaw] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[BpRestorePointRaw] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw];
			CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230502
			ON [VeeamOne].[monitor].[BpRestorePointRaw] (
			[backup_uid],[bp_server_id],[delete_time],[is_shadow],[repo_extent_id]
			) INCLUDE (
			[backup_size],[external_content_mode],[is_incremental]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230502 ON [VeeamOne].[monitor].[BpRestorePointRaw] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230502
			ON [VeeamOne].[reporter].[Object] (
			[DeletionID],[TypeID]
			) INCLUDE (
			[CreationID],[ObjectKey]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporter].[Object]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporter].[Object]')
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
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[reporter].[Object] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[reporter].[Object] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object];
			CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230502
			ON [VeeamOne].[reporter].[Object] (
			[DeletionID],[TypeID]
			) INCLUDE (
			[CreationID],[ObjectKey]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230502 ON [VeeamOne].[reporter].[Object] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230502
			ON [OCS].[dbo].[ab_10200_PODs_CSSA] (
			[ActiveInd],[CustomerName],[DOGenerationDate],[DONo],[RowID],[SoftCopyReturn],[Transporter],[TransporterDocReturnDate]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_10200_PODs_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_10200_PODs_CSSA]')
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
			DROP INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[ab_10200_PODs_CSSA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[ab_10200_PODs_CSSA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230502
			ON [OCS].[dbo].[ab_10200_PODs_CSSA] (
			[ActiveInd],[CustomerName],[DOGenerationDate],[DONo],[RowID],[SoftCopyReturn],[Transporter],[TransporterDocReturnDate]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230502 ON [OCS].[dbo].[ab_10200_PODs_CSSA] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230502
			ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] (
			[ActiveInd],[Booked_Date],[ERP_DPNo],[ERP_DPTimeStamp],[goWMSDock],[InDate],[LorryNo],[OthersNoAppointment],[TotalPalletLoad],[Transporter],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[CheckOutDriver],[CONT_BookingNo],[CONT_ClosingDate],[CONT_ClosingTime],[CONT_CSWHPlanning],[CONT_Destination],[CONT_Liner],[CONT_PortOfLoading],[CONT_PostponeBookedDate],[CONT_PostponeCounter],[CONT_SealNo],[CONT_TruckNo],[ContainerSealNoStatus],[CreatedBy],[CreatedDate],[DayLoadShip],[ERP_SONo],[InBy],[OutBy],[OutDate],[Remarks],[ReversalBy],[ReversalDate],[StatusCustomerComplaint],[StatusTruckFulfillment],[TruckPriorityInd],[TruckTrailerNo],[UpdatedBy],[UpdatedDate]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA]')
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
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230502
			ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] (
			[ActiveInd],[Booked_Date],[ERP_DPNo],[ERP_DPTimeStamp],[goWMSDock],[InDate],[LorryNo],[OthersNoAppointment],[TotalPalletLoad],[Transporter],[TransStatus],[VehicleType]
			) INCLUDE (
			[Booked_Time_From],[Booked_Time_To],[CheckOutDriver],[CONT_BookingNo],[CONT_ClosingDate],[CONT_ClosingTime],[CONT_CSWHPlanning],[CONT_Destination],[CONT_Liner],[CONT_PortOfLoading],[CONT_PostponeBookedDate],[CONT_PostponeCounter],[CONT_SealNo],[CONT_TruckNo],[ContainerSealNoStatus],[CreatedBy],[CreatedDate],[DayLoadShip],[ERP_SONo],[InBy],[OutBy],[OutDate],[Remarks],[ReversalBy],[ReversalDate],[StatusCustomerComplaint],[StatusTruckFulfillment],[TruckPriorityInd],[TruckTrailerNo],[UpdatedBy],[UpdatedDate]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230502 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230502
			ON [VeeamOne].[reporter].[ObjectProperty] (
			[IsDeleted],[ModificationID],[ObjectTypeID],[ParentID],[ParentTypeID],[PropertyID]
			) INCLUDE (
			[ID],[ObjectID],[PropKey],[Value]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporter].[ObjectProperty]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporter].[ObjectProperty]')
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
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[reporter].[ObjectProperty] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[reporter].[ObjectProperty] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty];
			CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230502
			ON [VeeamOne].[reporter].[ObjectProperty] (
			[IsDeleted],[ModificationID],[ObjectTypeID],[ParentID],[ParentTypeID],[PropertyID]
			) INCLUDE (
			[ID],[ObjectID],[PropKey],[Value]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230502 ON [VeeamOne].[reporter].[ObjectProperty] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230502
			ON [VeeamOne].[reporter].[TaskSession] (
			[EndDate],[IsCommited],[Manually],[StartDate],[StatusID],[TaskID],[Visible]
			) INCLUDE (
			[ParentSessionID],[Progress]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporter].[TaskSession]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporter].[TaskSession]')
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
			DROP INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[reporter].[TaskSession] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[reporter].[TaskSession] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession];
			CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230502
			ON [VeeamOne].[reporter].[TaskSession] (
			[EndDate],[IsCommited],[Manually],[StartDate],[StatusID],[TaskID],[Visible]
			) INCLUDE (
			[ParentSessionID],[Progress]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230502 ON [VeeamOne].[reporter].[TaskSession] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230502
			ON [VeeamOne].[monitor].[BpSessionTask] (
			[delete_time],[start_time],[status]
			) INCLUDE (
			[failure_message],[job_session_uid],[total_vm_size],[vm_uid]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTask]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpSessionTask]')
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
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[BpSessionTask] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[BpSessionTask] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask];
			CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230502
			ON [VeeamOne].[monitor].[BpSessionTask] (
			[delete_time],[start_time],[status]
			) INCLUDE (
			[failure_message],[job_session_uid],[total_vm_size],[vm_uid]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230502 ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_23_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230502
			ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] (
			[ActiveInd],[Company],[WIUnloading_RowID]
			) INCLUDE (
			[DONum],[MaterialPartClass],[MaterialPartDesc],[MaterialPartNum],[MaterialQty],[MaterialUOM],[PONum],[RMANum],[Supplier],[UnloadingType]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_23_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_COMMON_WIUnloadingMaterialList]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_23_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_COMMON_WIUnloadingMaterialList]')
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
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList];
			CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230502
			ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] (
			[ActiveInd],[Company],[WIUnloading_RowID]
			) INCLUDE (
			[DONum],[MaterialPartClass],[MaterialPartDesc],[MaterialPartNum],[MaterialQty],[MaterialUOM],[PONum],[RMANum],[Supplier],[UnloadingType]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_23_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230502 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_24_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230502
			ON [VeeamOne].[monitor].[EventTag] (
			[tag_name]
			) INCLUDE (
			[event_id],[tag_value]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_24_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[EventTag]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_24_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[EventTag]')
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
			DROP INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[EventTag] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[EventTag] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag];
			CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230502
			ON [VeeamOne].[monitor].[EventTag] (
			[tag_name]
			) INCLUDE (
			[event_id],[tag_value]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_24_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230502 ON [VeeamOne].[monitor].[EventTag] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_25_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230502
			ON [VeeamOne].[businessview].[PolicyItemPartitionMember] (
			[Deleted],[PartitionMember],[PolicyItem]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_25_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[businessview].[PolicyItemPartitionMember]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_25_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[businessview].[PolicyItemPartitionMember]')
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
			DROP INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[businessview].[PolicyItemPartitionMember] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[businessview].[PolicyItemPartitionMember] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember];
			CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230502
			ON [VeeamOne].[businessview].[PolicyItemPartitionMember] (
			[Deleted],[PartitionMember],[PolicyItem]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_25_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230502 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_26_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230502
			ON [OCS].[dbo].[a_WILorryUnloadingTransaction] (
			[DeleteInd],[LorryNo],[ModeOfTransport],[PackingQuantity],[Supplier],[TransDate],[TransStatus]
			) INCLUDE (
			[CourierRun_No],[Run_No]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_26_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[a_WILorryUnloadingTransaction]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_26_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[a_WILorryUnloadingTransaction]')
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
			DROP INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[a_WILorryUnloadingTransaction] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[a_WILorryUnloadingTransaction] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction];
			CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230502
			ON [OCS].[dbo].[a_WILorryUnloadingTransaction] (
			[DeleteInd],[LorryNo],[ModeOfTransport],[PackingQuantity],[Supplier],[TransDate],[TransStatus]
			) INCLUDE (
			[CourierRun_No],[Run_No]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_26_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230502 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_27_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230502
			ON [VeeamOne].[monitor].[BpJobSessionEvent] (
			[job_session_uid]
			) INCLUDE (
			[param0]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_27_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSessionEvent]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_27_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[BpJobSessionEvent]')
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
			DROP INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[BpJobSessionEvent] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[BpJobSessionEvent] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent];
			CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230502
			ON [VeeamOne].[monitor].[BpJobSessionEvent] (
			[job_session_uid]
			) INCLUDE (
			[param0]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_27_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230502 ON [VeeamOne].[monitor].[BpJobSessionEvent] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_28_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230502
			ON [VeeamOne].[reporting].[ObjectEntity] (
			[EndDate],[EntityTypeId],[RootId]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_28_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntity]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_28_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[reporting].[ObjectEntity]')
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
			DROP INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[reporting].[ObjectEntity] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[reporting].[ObjectEntity] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity];
			CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230502
			ON [VeeamOne].[reporting].[ObjectEntity] (
			[EndDate],[EntityTypeId],[RootId]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_28_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230502 ON [VeeamOne].[reporting].[ObjectEntity] CANNOT BE CREATED.';
END CATCH;


USE [OCS];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_29_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230502
			ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] (
			[LorryTransStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[CreatedDate],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryNo],[LorryTransDate],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RN_Priority],[RunningNo],[TimeIn],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[UploadImageStatus],[WILorryUnloading_RowID]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_29_20230502' AND i.object_id = OBJECT_ID('[OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_29_20230502' AND i2.object_id = OBJECT_ID('[OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA]')
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
		COUNT(*) = 31
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA];
			CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230502
			ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] (
			[LorryTransStatus],[VehicleType]
			) INCLUDE (
			[Checker],[CreatedBy],[CreatedDate],[DOFinish],[EnteredLB],[ForkliftDriver],[GotReceiving],[ICNo],[LoadingFinish],[LoadingInProgress],[LorryNo],[LorryTransDate],[NotTransporterWarning],[PriorityInd],[ReceiveCompletedTime],[Remarks],[ReversalBy],[ReversalDate],[ReversalRevision],[RN_No],[RN_Priority],[RunningNo],[TimeIn],[Transporter],[TruckTrailerNo],[UpdatedBy],[UpdatedDate],[UploadImageStatus],[WILorryUnloading_RowID]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_29_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230502 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_30_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230502
			ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] (
			[status],[time]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_30_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[HistoryAdvTriggAlarm]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_30_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[HistoryAdvTriggAlarm]')
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
			DROP INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm];
			CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230502
			ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] (
			[status],[time]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_30_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230502 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_31_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230502
			ON [VeeamOne].[businessview].[IncomingRequests] (
			[PolicyItemPartitionMember],[RequestStatus]
			) INCLUDE (
			[Object]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_31_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[businessview].[IncomingRequests]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_31_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[businessview].[IncomingRequests]')
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
			DROP INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[businessview].[IncomingRequests] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[businessview].[IncomingRequests] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests];
			CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230502
			ON [VeeamOne].[businessview].[IncomingRequests] (
			[PolicyItemPartitionMember],[RequestStatus]
			) INCLUDE (
			[Object]) WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_31_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230502 ON [VeeamOne].[businessview].[IncomingRequests] CANNOT BE CREATED.';
END CATCH;


USE [VeeamOne];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_32_20230502')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230502
			ON [VeeamOne].[monitor].[Event] (
			[entity_id],[initiator_id],[time],[type]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_32_20230502' AND i.object_id = OBJECT_ID('[VeeamOne].[monitor].[Event]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_32_20230502' AND i2.object_id = OBJECT_ID('[VeeamOne].[monitor].[Event]')
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
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [VeeamOne].[monitor].[Event] REBUILD WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [VeeamOne].[monitor].[Event] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event];
			CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230502
			ON [VeeamOne].[monitor].[Event] (
			[entity_id],[initiator_id],[time],[type]
			)WITH (DATA_COMPRESSION = PAGE, SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_32_20230502 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230502 ON [VeeamOne].[monitor].[Event] CANNOT BE CREATED.';
END CATCH;

