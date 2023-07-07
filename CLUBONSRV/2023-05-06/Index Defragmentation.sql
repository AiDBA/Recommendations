BEGIN TRY ALTER INDEX [IX_AIDBA_1_20220912] ON [FAS].[dbo].[GlTransaction] REORGANIZE;PRINT 'Index IX_AIDBA_1_20220912 on FAS.dbo.GlTransaction has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_1_20220912 does not exist on FAS.dbo.GlTransaction, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_2_20220926] ON [FAS].[dbo].[GlTransaction] REORGANIZE;PRINT 'Index IX_AIDBA_2_20220926 on FAS.dbo.GlTransaction has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_2_20220926 does not exist on FAS.dbo.GlTransaction, or operation encountered an error.'
				END CATCH;
				