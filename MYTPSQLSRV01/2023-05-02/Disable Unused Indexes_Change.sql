
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_HostId')
	BEGIN
	ALTER INDEX [IX_HostId]
	ON [VeeamOne].[monitor].[Event] DISABLE;
	PRINT 'INDEX [IX_HostId] ON [VeeamOne].[monitor].[Event] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_HostId] ON [VeeamOne].[monitor].[Event] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_BpSessionTask_target_proxy_uid')
	BEGIN
	ALTER INDEX [idx_BpSessionTask_target_proxy_uid]
	ON [VeeamOne].[monitor].[BpSessionTask] DISABLE;
	PRINT 'INDEX [idx_BpSessionTask_target_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_BpSessionTask_target_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_BpSessionTask_src_proxy_uid')
	BEGIN
	ALTER INDEX [idx_BpSessionTask_src_proxy_uid]
	ON [VeeamOne].[monitor].[BpSessionTask] DISABLE;
	PRINT 'INDEX [idx_BpSessionTask_src_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_BpSessionTask_src_proxy_uid] ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'idx_BpSessionTask_Session')
	BEGIN
	ALTER INDEX [idx_BpSessionTask_Session]
	ON [VeeamOne].[monitor].[BpSessionTask] DISABLE;
	PRINT 'INDEX [idx_BpSessionTask_Session] ON [VeeamOne].[monitor].[BpSessionTask] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [idx_BpSessionTask_Session] ON [VeeamOne].[monitor].[BpSessionTask] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession')
	BEGIN
	ALTER INDEX [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession]
	ON [VeeamOne].[monitor].[BpVmRestorePointTable] DISABLE;
	PRINT 'INDEX [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] ON [VeeamOne].[monitor].[BpVmRestorePointTable] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [INDX_BpVmRestorePoint_vmuidbpserverididtomatchjobsession] ON [VeeamOne].[monitor].[BpVmRestorePointTable] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid')
	BEGIN
	ALTER INDEX [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid]
	ON [VeeamOne].[monitor].[BpVmRestorePointTable] DISABLE;
	PRINT 'INDEX [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] ON [VeeamOne].[monitor].[BpVmRestorePointTable] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [INDX_BpVmRestorePoint_bpserveridoriginalvmrestorepointid] ON [VeeamOne].[monitor].[BpVmRestorePointTable] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_Collections_TaskId')
	BEGIN
	ALTER INDEX [IX_Collections_TaskId]
	ON [VeeamOne].[collector.exp].[Collections] DISABLE;
	PRINT 'INDEX [IX_Collections_TaskId] ON [VeeamOne].[collector.exp].[Collections] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Collections_TaskId] ON [VeeamOne].[collector.exp].[Collections] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_Collections_CollectionClass_TaskId')
	BEGIN
	ALTER INDEX [IX_Collections_CollectionClass_TaskId]
	ON [VeeamOne].[collector.exp].[Collections] DISABLE;
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId] ON [VeeamOne].[collector.exp].[Collections] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId] ON [VeeamOne].[collector.exp].[Collections] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_Collections_CollectionClass_TaskId_PartId')
	BEGIN
	ALTER INDEX [IX_Collections_CollectionClass_TaskId_PartId]
	ON [VeeamOne].[collector.exp].[Collections] DISABLE;
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId_PartId] ON [VeeamOne].[collector.exp].[Collections] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_Collections_CollectionClass_TaskId_PartId] ON [VeeamOne].[collector.exp].[Collections] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'INDX_ObjectEntity_CollectorIdEntityKeyHash')
	BEGIN
	ALTER INDEX [INDX_ObjectEntity_CollectorIdEntityKeyHash]
	ON [VeeamOne].[reporting].[ObjectEntity] DISABLE;
	PRINT 'INDEX [INDX_ObjectEntity_CollectorIdEntityKeyHash] ON [VeeamOne].[reporting].[ObjectEntity] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [INDX_ObjectEntity_CollectorIdEntityKeyHash] ON [VeeamOne].[reporting].[ObjectEntity] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'monitor_UK_OneAgent_AgentId')
	BEGIN
	ALTER INDEX [monitor_UK_OneAgent_AgentId]
	ON [VeeamOne].[monitor].[OneAgent] DISABLE;
	PRINT 'INDEX [monitor_UK_OneAgent_AgentId] ON [VeeamOne].[monitor].[OneAgent] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [monitor_UK_OneAgent_AgentId] ON [VeeamOne].[monitor].[OneAgent] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'UQ__BpAgent__3213E83EFB560134')
	BEGIN
	ALTER INDEX [UQ__BpAgent__3213E83EFB560134]
	ON [VeeamOne].[monitor].[BpAgent] DISABLE;
	PRINT 'INDEX [UQ__BpAgent__3213E83EFB560134] ON [VeeamOne].[monitor].[BpAgent] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ__BpAgent__3213E83EFB560134] ON [VeeamOne].[monitor].[BpAgent] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'UQ_BpExpFeature_id')
	BEGIN
	ALTER INDEX [UQ_BpExpFeature_id]
	ON [VeeamOne].[monitor].[BpExpFeature] DISABLE;
	PRINT 'INDEX [UQ_BpExpFeature_id] ON [VeeamOne].[monitor].[BpExpFeature] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ_BpExpFeature_id] ON [VeeamOne].[monitor].[BpExpFeature] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'UQ__BpCloudG__3213E83E268E79E9')
	BEGIN
	ALTER INDEX [UQ__BpCloudG__3213E83E268E79E9]
	ON [VeeamOne].[monitor].[BpCloudGatewayPool] DISABLE;
	PRINT 'INDEX [UQ__BpCloudG__3213E83E268E79E9] ON [VeeamOne].[monitor].[BpCloudGatewayPool] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ__BpCloudG__3213E83E268E79E9] ON [VeeamOne].[monitor].[BpCloudGatewayPool] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'UQ_BpExpEnumValue_id')
	BEGIN
	ALTER INDEX [UQ_BpExpEnumValue_id]
	ON [VeeamOne].[monitor].[BpExpEnumValue] DISABLE;
	PRINT 'INDEX [UQ_BpExpEnumValue_id] ON [VeeamOne].[monitor].[BpExpEnumValue] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ_BpExpEnumValue_id] ON [VeeamOne].[monitor].[BpExpEnumValue] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'UQ_BpExpViewObjectPath_id')
	BEGIN
	ALTER INDEX [UQ_BpExpViewObjectPath_id]
	ON [VeeamOne].[monitor].[BpExpViewObjectPath] DISABLE;
	PRINT 'INDEX [UQ_BpExpViewObjectPath_id] ON [VeeamOne].[monitor].[BpExpViewObjectPath] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [UQ_BpExpViewObjectPath_id] ON [VeeamOne].[monitor].[BpExpViewObjectPath] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_ITBHed_CompanyStatus')
	BEGIN
	ALTER INDEX [IX_ITBHed_CompanyStatus]
	ON [OCS].[dbo].[InternalTruckBooking_Header] DISABLE;
	PRINT 'INDEX [IX_ITBHed_CompanyStatus] ON [OCS].[dbo].[InternalTruckBooking_Header] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ITBHed_CompanyStatus] ON [OCS].[dbo].[InternalTruckBooking_Header] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_ChildType')
	BEGIN
	ALTER INDEX [IDX_ChildType]
	ON [VeeamOne].[reporter].[Chain] DISABLE;
	PRINT 'INDEX [IDX_ChildType] ON [VeeamOne].[reporter].[Chain] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_ChildType] ON [VeeamOne].[reporter].[Chain] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IDX_ParentType')
	BEGIN
	ALTER INDEX [IDX_ParentType]
	ON [VeeamOne].[reporter].[Chain] DISABLE;
	PRINT 'INDEX [IDX_ParentType] ON [VeeamOne].[reporter].[Chain] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IDX_ParentType] ON [VeeamOne].[reporter].[Chain] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'IX_member_id')
	BEGIN
	ALTER INDEX [IX_member_id]
	ON [VeeamOne].[backup.model].[historical] DISABLE;
	PRINT 'INDEX [IX_member_id] ON [VeeamOne].[backup.model].[historical] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_member_id] ON [VeeamOne].[backup.model].[historical] CANNOT BE DISABLED.';
END CATCH;
