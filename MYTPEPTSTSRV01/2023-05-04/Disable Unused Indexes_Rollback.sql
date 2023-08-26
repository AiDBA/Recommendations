
BEGIN TRY
	ALTER INDEX [IX_ABTWork_SysIndex]
	ON [E101Test].[Erp].[ABTWork] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Test].[Erp].[ABTWork] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Test].[Erp].[ABTWork] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ABTWork_SysIndex]
	ON [E101Pilot].[Erp].[ABTWork] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Pilot].[Erp].[ABTWork] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Pilot].[Erp].[ABTWork] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_ABTWork_SysIndex]
	ON [E101Train].[Erp].[ABTWork] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Train].[Erp].[ABTWork] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ABTWork_SysIndex] ON [E101Train].[Erp].[ABTWork] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Train].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Train].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Train].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_64087]
	ON [E101Train].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_64087] ON [E101Train].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_64087] ON [E101Train].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Pilot].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Pilot].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Pilot].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_64087]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_64087] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_64087] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_64087]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_64087] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_64087] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_64087]
	ON [E101Train].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_64087] ON [E101Train].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_64087] ON [E101Train].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Train].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Train].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Train].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_AgentTask]
	ON [E101Pilot].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Pilot].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_AgentTask] ON [E101Pilot].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_StartedOn]
	ON [E101Train].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Train].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Train].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_144]
	ON [E101Train].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_144] ON [E101Train].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_144] ON [E101Train].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_StartedOn]
	ON [E101Pilot].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Pilot].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Pilot].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_144]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_144] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_144] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_StartedOn]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [IX_SysTask_StartedOn]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_SysTask_StartedOn] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [FARD_IX_144]
	ON [E101Test].[Ice].[SysTask] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [FARD_IX_144] ON [E101Test].[Ice].[SysTask] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [FARD_IX_144] ON [E101Test].[Ice].[SysTask] CANNOT BE ENABLED.';
END CATCH;
