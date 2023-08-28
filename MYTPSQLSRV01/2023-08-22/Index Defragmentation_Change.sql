BEGIN TRY
				ALTER INDEX [IX_AIDBA_17_20220830] ON [VeeamOne].[monitor].[PerfSampleMed] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index IX_AIDBA_17_20220830 on VeeamOne.monitor.PerfSampleMed has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_17_20220830 does not exist on VeeamOne.monitor.PerfSampleMed, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IX_PerfSampleMed] ON [VeeamOne].[monitor].[PerfSampleMed] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 100);
				PRINT 'Index IX_PerfSampleMed on VeeamOne.monitor.PerfSampleMed has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_PerfSampleMed does not exist on VeeamOne.monitor.PerfSampleMed, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_LatestObjectProperty_ObjectPropertyValue] ON [VeeamOne].[reporter].[LatestObjectProperty] REORGANIZE;PRINT 'Index IDX_LatestObjectProperty_ObjectPropertyValue on VeeamOne.reporter.LatestObjectProperty has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_LatestObjectProperty_ObjectPropertyValue does not exist on VeeamOne.reporter.LatestObjectProperty, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_Deleted_Objects] ON [VeeamOne].[reporter].[Object] REORGANIZE;PRINT 'Index IDX_Deleted_Objects on VeeamOne.reporter.Object has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_Deleted_Objects does not exist on VeeamOne.reporter.Object, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_1_20220908] ON [VeeamOne].[reporter].[Object] REORGANIZE;PRINT 'Index IX_AIDBA_1_20220908 on VeeamOne.reporter.Object has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_1_20220908 does not exist on VeeamOne.reporter.Object, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_1_20220926] ON [VeeamOne].[reporter].[Object] REORGANIZE;PRINT 'Index IX_AIDBA_1_20220926 on VeeamOne.reporter.Object has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_1_20220926 does not exist on VeeamOne.reporter.Object, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_3_20220830] ON [VeeamOne].[reporter].[Object] REORGANIZE;PRINT 'Index IX_AIDBA_3_20220830 on VeeamOne.reporter.Object has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_3_20220830 does not exist on VeeamOne.reporter.Object, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IDX_ObjectProperty_Alive] ON [VeeamOne].[reporter].[ObjectProperty] REORGANIZE;PRINT 'Index IDX_ObjectProperty_Alive on VeeamOne.reporter.ObjectProperty has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_ObjectProperty_Alive does not exist on VeeamOne.reporter.ObjectProperty, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [IDX_ObjectProperty_Relations] ON [VeeamOne].[reporter].[ObjectProperty] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index IDX_ObjectProperty_Relations on VeeamOne.reporter.ObjectProperty has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index IDX_ObjectProperty_Relations does not exist on VeeamOne.reporter.ObjectProperty, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_12_20220830] ON [VeeamOne].[reporter].[ObjectProperty] REORGANIZE;PRINT 'Index IX_AIDBA_12_20220830 on VeeamOne.reporter.ObjectProperty has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_12_20220830 does not exist on VeeamOne.reporter.ObjectProperty, or operation encountered an error.'
				END CATCH;
				BEGIN TRY
				ALTER INDEX [PK_ObjectProperties] ON [VeeamOne].[reporter].[ObjectProperty] REBUILD WITH (SORT_IN_TEMPDB = ON, FILLFACTOR = 70 );
				PRINT 'Index PK_ObjectProperties on VeeamOne.reporter.ObjectProperty has been rebuilt.'
				END TRY
				BEGIN CATCH
				PRINT 'Index PK_ObjectProperties does not exist on VeeamOne.reporter.ObjectProperty, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_AIDBA_8_20220830] ON [VeeamOne].[reporting].[ObjectEntity] REORGANIZE;PRINT 'Index IX_AIDBA_8_20220830 on VeeamOne.reporting.ObjectEntity has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_AIDBA_8_20220830 does not exist on VeeamOne.reporting.ObjectEntity, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId] ON [VeeamOne].[reporting].[ObjectEntityPropertyValue] REORGANIZE;PRINT 'Index INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId on VeeamOne.reporting.ObjectEntityPropertyValue has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index INDX_ObjectEntityPropertyValue_EntityIdEntityPropertyTypeId does not exist on VeeamOne.reporting.ObjectEntityPropertyValue, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ObjectEntityPropertyValue_EntityId_IsDeleted] ON [VeeamOne].[reporting].[ObjectEntityPropertyValue] REORGANIZE;PRINT 'Index IX_ObjectEntityPropertyValue_EntityId_IsDeleted on VeeamOne.reporting.ObjectEntityPropertyValue has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ObjectEntityPropertyValue_EntityId_IsDeleted does not exist on VeeamOne.reporting.ObjectEntityPropertyValue, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_ObjectEntityPropertyValue_Value] ON [VeeamOne].[reporting].[ObjectEntityPropertyValue] REORGANIZE;PRINT 'Index IX_ObjectEntityPropertyValue_Value on VeeamOne.reporting.ObjectEntityPropertyValue has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_ObjectEntityPropertyValue_Value does not exist on VeeamOne.reporting.ObjectEntityPropertyValue, or operation encountered an error.'
				END CATCH;
				BEGIN TRY ALTER INDEX [IX_EntityId] ON [VeeamOne].[reporting].[ObjectEntityRelations] REORGANIZE;PRINT 'Index IX_EntityId on VeeamOne.reporting.ObjectEntityRelations has been reorganized'
				END TRY
				BEGIN CATCH
				PRINT 'Index IX_EntityId does not exist on VeeamOne.reporting.ObjectEntityRelations, or operation encountered an error.'
				END CATCH;
				