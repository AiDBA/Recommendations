
BEGIN TRY
	ALTER INDEX [IX_PartTran_IdxWhseActTransUOM]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_IdxWhseActTransUOM] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_IdxWhseActTransUOM] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [PK_PartQtyDeferred]
	ON [E101Live].[Erp].[PartQtyDeferred] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [PK_PartQtyDeferred] ON [E101Live].[Erp].[PartQtyDeferred] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [PK_PartQtyDeferred] ON [E101Live].[Erp].[PartQtyDeferred] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartBin_CompanySysRevID]
	ON [E101Live].[Erp].[PartBin] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartBin_CompanySysRevID] ON [E101Live].[Erp].[PartBin] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartBin_CompanySysRevID] ON [E101Live].[Erp].[PartBin] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_idxRevert]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_idxRevert] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_idxRevert] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_CallNum]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_CallNum] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_CallNum] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_PlantTranIdx]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_PlantTranIdx] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_PlantTranIdx] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_DemandReconcileNum]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_DemandReconcileNum] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_DemandReconcileNum] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_idxABT]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_idxABT] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_idxABT] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_RefCodeIdx]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_RefCodeIdx] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_RefCodeIdx] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartTran_RefTypeIdx]
	ON [E101Live].[Erp].[PartTran] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartTran_RefTypeIdx] ON [E101Live].[Erp].[PartTran] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartTran_RefTypeIdx] ON [E101Live].[Erp].[PartTran] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Live].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Live].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Live].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_StartedOn]
	ON [E101Live].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Live].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Live].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_PartBin_PartWhsDimLotBin]
	ON [E101Live].[Erp].[PartBin] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_PartBin_PartWhsDimLotBin] ON [E101Live].[Erp].[PartBin] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_PartBin_PartWhsDimLotBin] ON [E101Live].[Erp].[PartBin] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ABTWork_SysIndex]
	ON [E101Live].[Erp].[ABTWork] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Live].[Erp].[ABTWork] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Live].[Erp].[ABTWork] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ShipDtl_ChangeIdx]
	ON [E101Live].[Erp].[ShipDtl] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ShipDtl_ChangeIdx] ON [E101Live].[Erp].[ShipDtl] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ShipDtl_ChangeIdx] ON [E101Live].[Erp].[ShipDtl] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_13938]
	ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_13938] ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_13938] ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_5313]
	ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_5313] ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_5313] ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_104007]
	ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_104007] ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_104007] ON [SwisslogLive].[dbo].[FSW_tblSwissRequest] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_903145]
	ON [SwisslogLive].[dbo].[FSW_tblEpicorRequest] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_903145] ON [SwisslogLive].[dbo].[FSW_tblEpicorRequest] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_903145] ON [SwisslogLive].[dbo].[FSW_tblEpicorRequest] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_903179]
	ON [SwisslogLive].[dbo].[FSW_tblEpicorRequest] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_903179] ON [SwisslogLive].[dbo].[FSW_tblEpicorRequest] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_903179] ON [SwisslogLive].[dbo].[FSW_tblEpicorRequest] CANNOT BE ENABLED.';
END CATCH;
