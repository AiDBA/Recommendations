BEGIN TRY
				ALTER INDEX [_dta_index_Faults_10_1234103437__K2_K9] ON [LineView4Reports].[dbo].[Faults] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index _dta_index_Faults_10_1234103437__K2_K9 on LineView4Reports.dbo.Faults has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index _dta_index_Faults_10_1234103437__K2_K9 does not exist on LineView4Reports.dbo.Faults, or operation encountered an error.'
				END CATCH;
				