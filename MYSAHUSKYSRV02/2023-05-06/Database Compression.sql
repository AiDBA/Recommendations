ALTER INDEX [IX_AIDBA_4_20220820] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_AIDBA_IX_CYCLE_RUNID_RUNCNUM] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_Cycle_RunID_RunCNum] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_SQCValue_DataSetVariableCycleNumber] ON [FusionOperational].[dbo].[SQCValue] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_AIDBA_2_20220820] ON [FusionOperational].[dbo].[Downtime] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_Downtime_Mc_J_PS] ON [FusionOperational].[dbo].[Downtime] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_Downtime_Mc_J_PS_ST_ET] ON [FusionOperational].[dbo].[Downtime] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_AIDBA_8_20220820] ON [FusionOperational].[dbo].[DowntimeAssignedReason] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_AIDBA_PK_DOWNTIMEASSIGNEDREASON] ON [FusionOperational].[dbo].[DowntimeAssignedReason] REBUILD WITH (DATA_COMPRESSION=PAGE);
						ALTER INDEX [IX_DowntimeAssignedReason_DowntimID] ON [FusionOperational].[dbo].[DowntimeAssignedReason] REBUILD WITH (DATA_COMPRESSION=PAGE);
						