
USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_1_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_1_20230506 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT];
		PRINT N'INDEX IX_AIDBA_1_20230506 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230506 ON [OCS].[dbo].[c_a_LoadingAppointmentTimeTransaction_AGT] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_2_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_2_20230506 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage];
		PRINT N'INDEX IX_AIDBA_2_20230506 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_2_20230506 ON [OCS].[dbo].[aaza_LoadingAppointmentTime_Linkage] CANNOT BE DROPPED.';
END CATCH;

USE [Colos];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_3_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_3_20230506 ON [Colos].[dbo].[pPallet];
		PRINT N'INDEX IX_AIDBA_3_20230506 ON [Colos].[dbo].[pPallet] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_3_20230506 ON [Colos].[dbo].[pPallet] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_4_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_4_20230506 ON [VeeamOne].[reporting].[ObjectEntityRelations];
		PRINT N'INDEX IX_AIDBA_4_20230506 ON [VeeamOne].[reporting].[ObjectEntityRelations] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_4_20230506 ON [VeeamOne].[reporting].[ObjectEntityRelations] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_5_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_5_20230506 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction];
		PRINT N'INDEX IX_AIDBA_5_20230506 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_5_20230506 ON [OCS].[dbo].[a_a_LoadingAppointmentTimeTransaction] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_6_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_6_20230506 ON [VeeamOne].[monitor].[BpJobSession];
		PRINT N'INDEX IX_AIDBA_6_20230506 ON [VeeamOne].[monitor].[BpJobSession] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_6_20230506 ON [VeeamOne].[monitor].[BpJobSession] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_7_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_7_20230506 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction];
		PRINT N'INDEX IX_AIDBA_7_20230506 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_7_20230506 ON [OCS].[dbo].[a_10000_VisitorManagementTransaction] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_8_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_8_20230506 ON [VeeamOne].[monitor].[PerfSampleLow];
		PRINT N'INDEX IX_AIDBA_8_20230506 ON [VeeamOne].[monitor].[PerfSampleLow] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_8_20230506 ON [VeeamOne].[monitor].[PerfSampleLow] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_9_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_9_20230506 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT];
		PRINT N'INDEX IX_AIDBA_9_20230506 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_9_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230506 ON [OCS].[dbo].[c_10000_VisitorManagementTransaction_AGT] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_10_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_10_20230506 ON [OCS].[dbo].[a_WOLorryLoadingTransaction];
		PRINT N'INDEX IX_AIDBA_10_20230506 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_10_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230506 ON [OCS].[dbo].[a_WOLorryLoadingTransaction] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_11_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_11_20230506 ON [OCS].[dbo].[PDManArgDtl];
		PRINT N'INDEX IX_AIDBA_11_20230506 ON [OCS].[dbo].[PDManArgDtl] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_11_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230506 ON [OCS].[dbo].[PDManArgDtl] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_12_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_12_20230506 ON [VeeamOne].[monitor].[BpSessionTaskEvent];
		PRINT N'INDEX IX_AIDBA_12_20230506 ON [VeeamOne].[monitor].[BpSessionTaskEvent] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_12_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230506 ON [VeeamOne].[monitor].[BpSessionTaskEvent] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_13_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_13_20230506 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA];
		PRINT N'INDEX IX_AIDBA_13_20230506 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_13_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230506 ON [OCS].[dbo].[ab_10000_VisitorManagementTransaction_CSSA] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_14_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_14_20230506 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT];
		PRINT N'INDEX IX_AIDBA_14_20230506 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_14_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230506 ON [OCS].[dbo].[c_WOLorryLoadingTransaction_AGT] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_15_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_15_20230506 ON [VeeamOne].[reporter].[Object];
		PRINT N'INDEX IX_AIDBA_15_20230506 ON [VeeamOne].[reporter].[Object] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_15_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230506 ON [VeeamOne].[reporter].[Object] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_16_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_16_20230506 ON [VeeamOne].[monitor].[BpRestorePointRaw];
		PRINT N'INDEX IX_AIDBA_16_20230506 ON [VeeamOne].[monitor].[BpRestorePointRaw] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_16_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230506 ON [VeeamOne].[monitor].[BpRestorePointRaw] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_17_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_17_20230506 ON [OCS].[dbo].[a_10200_PODs];
		PRINT N'INDEX IX_AIDBA_17_20230506 ON [OCS].[dbo].[a_10200_PODs] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_17_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230506 ON [OCS].[dbo].[a_10200_PODs] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_18_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_18_20230506 ON [OCS].[dbo].[ab_10200_PODs_CSSA];
		PRINT N'INDEX IX_AIDBA_18_20230506 ON [OCS].[dbo].[ab_10200_PODs_CSSA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_18_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230506 ON [OCS].[dbo].[ab_10200_PODs_CSSA] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_19_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_19_20230506 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA];
		PRINT N'INDEX IX_AIDBA_19_20230506 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_19_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230506 ON [OCS].[dbo].[ab_a_LoadingAppointmentTimeTransaction_CSSA] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_20_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_20_20230506 ON [VeeamOne].[reporter].[ObjectProperty];
		PRINT N'INDEX IX_AIDBA_20_20230506 ON [VeeamOne].[reporter].[ObjectProperty] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_20_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230506 ON [VeeamOne].[reporter].[ObjectProperty] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_21_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_21_20230506 ON [VeeamOne].[reporter].[TaskSession];
		PRINT N'INDEX IX_AIDBA_21_20230506 ON [VeeamOne].[reporter].[TaskSession] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_21_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230506 ON [VeeamOne].[reporter].[TaskSession] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_22_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_22_20230506 ON [VeeamOne].[monitor].[BpSessionTask];
		PRINT N'INDEX IX_AIDBA_22_20230506 ON [VeeamOne].[monitor].[BpSessionTask] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_22_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230506 ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_23_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_23_20230506 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList];
		PRINT N'INDEX IX_AIDBA_23_20230506 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_23_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230506 ON [OCS].[dbo].[a_COMMON_WIUnloadingMaterialList] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_24_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_24_20230506 ON [VeeamOne].[monitor].[EventTag];
		PRINT N'INDEX IX_AIDBA_24_20230506 ON [VeeamOne].[monitor].[EventTag] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_24_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230506 ON [VeeamOne].[monitor].[EventTag] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_25_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_25_20230506 ON [VeeamOne].[businessview].[PolicyItemPartitionMember];
		PRINT N'INDEX IX_AIDBA_25_20230506 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_25_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230506 ON [VeeamOne].[businessview].[PolicyItemPartitionMember] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_26_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_26_20230506 ON [OCS].[dbo].[a_WILorryUnloadingTransaction];
		PRINT N'INDEX IX_AIDBA_26_20230506 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_26_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230506 ON [OCS].[dbo].[a_WILorryUnloadingTransaction] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_27_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_27_20230506 ON [VeeamOne].[monitor].[BpJobSessionEvent];
		PRINT N'INDEX IX_AIDBA_27_20230506 ON [VeeamOne].[monitor].[BpJobSessionEvent] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_27_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230506 ON [VeeamOne].[monitor].[BpJobSessionEvent] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_28_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_28_20230506 ON [VeeamOne].[reporting].[ObjectEntity];
		PRINT N'INDEX IX_AIDBA_28_20230506 ON [VeeamOne].[reporting].[ObjectEntity] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_28_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230506 ON [VeeamOne].[reporting].[ObjectEntity] CANNOT BE DROPPED.';
END CATCH;

USE [OCS];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_29_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_29_20230506 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA];
		PRINT N'INDEX IX_AIDBA_29_20230506 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_29_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230506 ON [OCS].[dbo].[ab_WOLorryLoadingTransaction_CSSA] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_30_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_30_20230506 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm];
		PRINT N'INDEX IX_AIDBA_30_20230506 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_30_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230506 ON [VeeamOne].[monitor].[HistoryAdvTriggAlarm] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_31_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_31_20230506 ON [VeeamOne].[businessview].[IncomingRequests];
		PRINT N'INDEX IX_AIDBA_31_20230506 ON [VeeamOne].[businessview].[IncomingRequests] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_31_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230506 ON [VeeamOne].[businessview].[IncomingRequests] CANNOT BE DROPPED.';
END CATCH;

USE [VeeamOne];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_32_20230506')
	BEGIN
		DROP INDEX IX_AIDBA_32_20230506 ON [VeeamOne].[monitor].[Event];
		PRINT N'INDEX IX_AIDBA_32_20230506 ON [VeeamOne].[monitor].[Event] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_32_20230506 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230506 ON [VeeamOne].[monitor].[Event] CANNOT BE DROPPED.';
END CATCH;