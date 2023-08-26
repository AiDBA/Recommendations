ALTER INDEX [IX_Cycle_RunID_RunCNum] ON [FusionOperational].[dbo].[Cycle] REBUILD WITH (DATA_COMPRESSION=NONE);
						ALTER INDEX [IX_AIDBA_8_20220820] ON [FusionOperational].[dbo].[EnergySensorData] REBUILD WITH (DATA_COMPRESSION=NONE);
						ALTER INDEX [IX_EnergySensorData_Timestamp_EnergySensorID] ON [FusionOperational].[dbo].[EnergySensorData] REBUILD WITH (DATA_COMPRESSION=NONE);
						