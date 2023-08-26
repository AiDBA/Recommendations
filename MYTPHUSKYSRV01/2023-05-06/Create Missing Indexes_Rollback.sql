
USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_1_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle];
		PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_1_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [FusionOperational].[dbo].[Cycle] CANNOT BE DROPPED.';
END CATCH;

USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_2_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent];
		PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_2_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [FusionOperational].[dbo].[AutomaticPrintEvent] CANNOT BE DROPPED.';
END CATCH;

USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_3_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason];
		PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_3_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [FusionDW].[dbo].[FactDowntimeAssignedReason] CANNOT BE DROPPED.';
END CATCH;

USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_4_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction];
		PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_4_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [FusionDW].[dbo].[FactProduction] CANNOT BE DROPPED.';
END CATCH;

USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_5_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark];
		PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_5_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [FusionDW].[dbo].[ETLWatermark] CANNOT BE DROPPED.';
END CATCH;

USE [FusionDW];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_6_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime];
		PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_6_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230506 ON [FusionDW].[dbo].[FactDowntime] CANNOT BE DROPPED.';
END CATCH;

USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_7_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime];
		PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_7_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230506 ON [FusionOperational].[dbo].[Downtime] CANNOT BE DROPPED.';
END CATCH;

USE [FusionOperational];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_8_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason];
		PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_8_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230506 ON [FusionOperational].[dbo].[DowntimeAssignedReason] CANNOT BE DROPPED.';
END CATCH;
