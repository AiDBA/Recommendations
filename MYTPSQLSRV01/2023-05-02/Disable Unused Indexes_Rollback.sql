
BEGIN TRY
	ALTER INDEX [IX_HostId]
	ON [VeeamOne].[monitor].[Event] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_HostId] ON [VeeamOne].[monitor].[Event] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HostId] ON [VeeamOne].[monitor].[Event] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_BpSessionTask_target_proxy_uid]
	ON [VeeamOne].[monitor].[BpSessionTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_BpSessionTask_target_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_BpSessionTask_target_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_BpSessionTask_src_proxy_uid]
	ON [VeeamOne].[monitor].[BpSessionTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_BpSessionTask_src_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_BpSessionTask_src_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [idx_BpSessionTask_Session]
	ON [VeeamOne].[monitor].[BpSessionTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [idx_BpSessionTask_Session] ON [VeeamOne].[monitor].[BpSessionTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_BpSessionTask_Session] ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession]
	ON [VeeamOne].[monitor].[BpVmRestorePointTable] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] ON [VeeamOne].[monitor].[BpVmRestorePointTable] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] ON [VeeamOne].[monitor].[BpVmRestorePointTable] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid]
	ON [VeeamOne].[monitor].[BpVmRestorePointTable] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] ON [VeeamOne].[monitor].[BpVmRestorePointTable] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] ON [VeeamOne].[monitor].[BpVmRestorePointTable] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Collections_TaskId]
	ON [VeeamOne].[collector.exp].[Collections] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Collections_TaskId] ON [VeeamOne].[collector.exp].[Collections] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Collections_TaskId] ON [VeeamOne].[collector.exp].[Collections] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Collections_CollectionClass_TaskId]
	ON [VeeamOne].[collector.exp].[Collections] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId] ON [VeeamOne].[collector.exp].[Collections] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId] ON [VeeamOne].[collector.exp].[Collections] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_Collections_CollectionClass_TaskId_PartId]
	ON [VeeamOne].[collector.exp].[Collections] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId_PartId] ON [VeeamOne].[collector.exp].[Collections] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId_PartId] ON [VeeamOne].[collector.exp].[Collections] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [INDX_ObjectEntity_CollectorIdEntityKeyHash]
	ON [VeeamOne].[reporting].[ObjectEntity] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [INDX_ObjectEntity_CollectorIdEntityKeyHash] ON [VeeamOne].[reporting].[ObjectEntity] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [INDX_ObjectEntity_CollectorIdEntityKeyHash] ON [VeeamOne].[reporting].[ObjectEntity] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [monitor_UK_OneAgent_AgentId]
	ON [VeeamOne].[monitor].[OneAgent] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [monitor_UK_OneAgent_AgentId] ON [VeeamOne].[monitor].[OneAgent] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [monitor_UK_OneAgent_AgentId] ON [VeeamOne].[monitor].[OneAgent] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [UQ__BpAgent__3213E83EFB560134]
	ON [VeeamOne].[monitor].[BpAgent] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [UQ__BpAgent__3213E83EFB560134] ON [VeeamOne].[monitor].[BpAgent] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ__BpAgent__3213E83EFB560134] ON [VeeamOne].[monitor].[BpAgent] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [UQ_BpExpFeature_id]
	ON [VeeamOne].[monitor].[BpExpFeature] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [UQ_BpExpFeature_id] ON [VeeamOne].[monitor].[BpExpFeature] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ_BpExpFeature_id] ON [VeeamOne].[monitor].[BpExpFeature] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [UQ__BpCloudG__3213E83E268E79E9]
	ON [VeeamOne].[monitor].[BpCloudGatewayPool] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [UQ__BpCloudG__3213E83E268E79E9] ON [VeeamOne].[monitor].[BpCloudGatewayPool] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ__BpCloudG__3213E83E268E79E9] ON [VeeamOne].[monitor].[BpCloudGatewayPool] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [UQ_BpExpEnumValue_id]
	ON [VeeamOne].[monitor].[BpExpEnumValue] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [UQ_BpExpEnumValue_id] ON [VeeamOne].[monitor].[BpExpEnumValue] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ_BpExpEnumValue_id] ON [VeeamOne].[monitor].[BpExpEnumValue] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [UQ_BpExpViewObjectPath_id]
	ON [VeeamOne].[monitor].[BpExpViewObjectPath] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [UQ_BpExpViewObjectPath_id] ON [VeeamOne].[monitor].[BpExpViewObjectPath] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ_BpExpViewObjectPath_id] ON [VeeamOne].[monitor].[BpExpViewObjectPath] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ITBHed_CompanyStatus]
	ON [OCS].[dbo].[InternalTruckBooking_Header] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ITBHed_CompanyStatus] ON [OCS].[dbo].[InternalTruckBooking_Header] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ITBHed_CompanyStatus] ON [OCS].[dbo].[InternalTruckBooking_Header] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IDX_ChildType]
	ON [VeeamOne].[reporter].[Chain] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IDX_ChildType] ON [VeeamOne].[reporter].[Chain] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_ChildType] ON [VeeamOne].[reporter].[Chain] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IDX_ParentType]
	ON [VeeamOne].[reporter].[Chain] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IDX_ParentType] ON [VeeamOne].[reporter].[Chain] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_ParentType] ON [VeeamOne].[reporter].[Chain] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_member_id]
	ON [VeeamOne].[backup.model].[historical] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_member_id] ON [VeeamOne].[backup.model].[historical] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_member_id] ON [VeeamOne].[backup.model].[historical] CANNOT BE ENABLED.';
END CATCH;
