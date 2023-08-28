
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
	ALTER INDEX [PK_ModelItemPolicy]
	ON [ReportServer].[dbo].[ModelItemPolicy] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] CANNOT BE ENABLED.';
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
	ALTER INDEX [Loss_LossSumEarnedUnallocated_Index]
	ON [LineView4Reports].[dbo].[Loss] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [Loss_LossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[Loss] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_LossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[Loss] CANNOT BE ENABLED.';
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
	ALTER INDEX [IX_Batch_1]
	ON [ReportServer].[dbo].[Batch] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] CANNOT BE ENABLED.';
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
