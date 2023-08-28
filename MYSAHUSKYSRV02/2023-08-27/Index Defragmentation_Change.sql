BEGIN TRY
				ALTER INDEX [IX_AIDBA_4_20220820] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_AIDBA_4_20220820 on FusionOperational.dbo.Cycle has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_4_20220820 does not exist on FusionOperational.dbo.Cycle, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM on FusionOperational.dbo.Cycle has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM does not exist on FusionOperational.dbo.Cycle, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_Cycle_RunID_RunCNum] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_Cycle_RunID_RunCNum on FusionOperational.dbo.Cycle has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Cycle_RunID_RunCNum does not exist on FusionOperational.dbo.Cycle, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] REORGANIZE;PRINT 'Index IX_SQCValue_DataSetVariableCycleNumber on FusionOperational.dbo.SQCValue has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_SQCValue_DataSetVariableCycleNumber does not exist on FusionOperational.dbo.SQCValue, or operation encountered an error.'
				END CATCH;
				