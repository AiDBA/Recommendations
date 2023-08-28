BEGIN TRY
				ALTER INDEX [IX_Cycle_RunID_RunCNum] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IX_Cycle_RunID_RunCNum on FusionOperational.dbo.Cycle has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_Cycle_RunID_RunCNum does not exist on FusionOperational.dbo.Cycle, or operation encountered an error.'
				END CATCH;
				