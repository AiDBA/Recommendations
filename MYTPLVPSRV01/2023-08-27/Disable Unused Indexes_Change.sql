
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_Users')
	BEGIN
	ALTER INDEX [PK_Users]
	ON [ReportServer].[dbo].[Users] DISABLE;
	PRINT 'INDEX [PK_Users] ON [ReportServer].[dbo].[Users] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_Users] ON [ReportServer].[dbo].[Users] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Loss_MachineLossSumEarnedUnallocated_Index')
	BEGIN
	ALTER INDEX [Loss_MachineLossSumEarnedUnallocated_Index]
	ON [LineView4Reports].[dbo].[MachineLoss] DISABLE;
	PRINT 'INDEX [Loss_MachineLossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[MachineLoss] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_MachineLossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[MachineLoss] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Loss_PDTMachineLossEarned_Index')
	BEGIN
	ALTER INDEX [Loss_PDTMachineLossEarned_Index]
	ON [LineView4Reports].[dbo].[MachineLoss] DISABLE;
	PRINT 'INDEX [Loss_PDTMachineLossEarned_Index] ON [LineView4Reports].[dbo].[MachineLoss] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_PDTMachineLossEarned_Index] ON [LineView4Reports].[dbo].[MachineLoss] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Loss_PDT_Stop_Index')
	BEGIN
	ALTER INDEX [Loss_PDT_Stop_Index]
	ON [LineView4Reports].[dbo].[Loss_PDT] DISABLE;
	PRINT 'INDEX [Loss_PDT_Stop_Index] ON [LineView4Reports].[dbo].[Loss_PDT] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_PDT_Stop_Index] ON [LineView4Reports].[dbo].[Loss_PDT] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_ModelItemPolicy')
	BEGIN
	ALTER INDEX [PK_ModelItemPolicy]
	ON [ReportServer].[dbo].[ModelItemPolicy] DISABLE;
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_ModelItemPolicy] ON [ReportServer].[dbo].[ModelItemPolicy] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_SecData')
	BEGIN
	ALTER INDEX [PK_SecData]
	ON [ReportServer].[dbo].[SecData] DISABLE;
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_SecData] ON [ReportServer].[dbo].[SecData] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Loss_LossSumEarnedUnallocated_Index')
	BEGIN
	ALTER INDEX [Loss_LossSumEarnedUnallocated_Index]
	ON [LineView4Reports].[dbo].[Loss] DISABLE;
	PRINT 'INDEX [Loss_LossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[Loss] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Loss_LossSumEarnedUnallocated_Index] ON [LineView4Reports].[dbo].[Loss] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_RunningJobsStatus')
	BEGIN
	ALTER INDEX [IX_RunningJobsStatus]
	ON [ReportServer].[dbo].[RunningJobs] DISABLE;
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_RunningJobsStatus] ON [ReportServer].[dbo].[RunningJobs] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_Batch_1')
	BEGIN
	ALTER INDEX [IX_Batch_1]
	ON [ReportServer].[dbo].[Batch] DISABLE;
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Batch_1] ON [ReportServer].[dbo].[Batch] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Index_Machines_Line_Code_Machine_Modified_DTStamp')
	BEGIN
	ALTER INDEX [Index_Machines_Line_Code_Machine_Modified_DTStamp]
	ON [LineView4Reports].[dbo].[Machine] DISABLE;
	PRINT 'INDEX [Index_Machines_Line_Code_Machine_Modified_DTStamp] ON [LineView4Reports].[dbo].[Machine] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Index_Machines_Line_Code_Machine_Modified_DTStamp] ON [LineView4Reports].[dbo].[Machine] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'PK_Comments')
	BEGIN
	ALTER INDEX [PK_Comments]
	ON [LineView4].[dbo].[Comments] DISABLE;
	PRINT 'INDEX [PK_Comments] ON [LineView4].[dbo].[Comments] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_Comments] ON [LineView4].[dbo].[Comments] CANNOT BE DISABLED.';
END CATCH;
