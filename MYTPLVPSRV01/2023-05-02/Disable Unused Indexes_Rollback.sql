
BEGIN TRY
	ALTER INDEX [IX_reason_codes]
	ON [LineViewXL].[dbo].[reason_codes] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_reason_codes] ON [LineViewXL].[dbo].[reason_codes] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_reason_codes] ON [LineViewXL].[dbo].[reason_codes] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [_dta_index_Faults_10_1234103437__K2_K9]
	ON [LineView4Reports].[dbo].[Faults] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [_dta_index_Faults_10_1234103437__K2_K9] ON [LineView4Reports].[dbo].[Faults] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [_dta_index_Faults_10_1234103437__K2_K9] ON [LineView4Reports].[dbo].[Faults] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_Users]
	ON [ReportServer].[dbo].[Users] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_Users] ON [ReportServer].[dbo].[Users] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_Users] ON [ReportServer].[dbo].[Users] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [Loss_MachineLossSumEarnedUnallocated_Index]
	ON [LineView4Reports].[dbo].[MachineLoss] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [Loss_MachineLossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[MachineLoss] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_MachineLossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[MachineLoss] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [MachineLoss_PDTLoss_Index]
	ON [LineView4Reports].[dbo].[MachineLoss] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [MachineLoss_PDTLoss_Index] ON [LineView4Reports].[dbo].[MachineLoss] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [MachineLoss_PDTLoss_Index] ON [LineView4Reports].[dbo].[MachineLoss] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [Loss_PDTMachineLossEarned_Index]
	ON [LineView4Reports].[dbo].[MachineLoss] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [Loss_PDTMachineLossEarned_Index] ON [LineView4Reports].[dbo].[MachineLoss] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_PDTMachineLossEarned_Index] ON [LineView4Reports].[dbo].[MachineLoss] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [Loss_PDT_Stop_Index]
	ON [LineView4Reports].[dbo].[Loss_PDT] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [Loss_PDT_Stop_Index] ON [LineView4Reports].[dbo].[Loss_PDT] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_PDT_Stop_Index] ON [LineView4Reports].[dbo].[Loss_PDT] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [_dta_index_MachinePDT_10_1442104178__K3_K2_K4]
	ON [LineView4Reports].[dbo].[MachinePDT] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [_dta_index_MachinePDT_10_1442104178__K3_K2_K4] ON [LineView4Reports].[dbo].[MachinePDT] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [_dta_index_MachinePDT_10_1442104178__K3_K2_K4] ON [LineView4Reports].[dbo].[MachinePDT] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ChunkSegmentMapping_SegmentId]
	ON [ReportServerTempDB].[dbo].[ChunkSegmentMapping] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ChunkSegmentMapping_SegmentId] ON [ReportServerTempDB].[dbo].[ChunkSegmentMapping] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ChunkSegmentMapping_SegmentId] ON [ReportServerTempDB].[dbo].[ChunkSegmentMapping] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_SecData]
	ON [ReportServer].[dbo].[SecData] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_ModelItemPolicy]
	ON [ReportServer].[dbo].[ModelItemPolicy] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Batch_1]
	ON [ReportServer].[dbo].[Batch] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_RunningJobsStatus]
	ON [ReportServer].[dbo].[RunningJobs] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [Index_Machines_Line_Code_Machine_Modified_DTStamp]
	ON [LineView4Reports].[dbo].[Machine] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [Index_Machines_Line_Code_Machine_Modified_DTStamp] ON [LineView4Reports].[dbo].[Machine] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [Index_Machines_Line_Code_Machine_Modified_DTStamp] ON [LineView4Reports].[dbo].[Machine] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_Comments]
	ON [LineView4].[dbo].[Comments] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_Comments] ON [LineView4].[dbo].[Comments] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_Comments] ON [LineView4].[dbo].[Comments] CANNOT BE ENABLED.';
END CATCH;
