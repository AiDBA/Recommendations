
USE [LineView4Reports];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_1_20230502')
	BEGIN
		DROP INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss];
		PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_1_20230502 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [LineView4Reports].[dbo].[Loss] CANNOT BE DROPPED.';
END CATCH;

USE [LineView4Reports];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_2_20230502')
	BEGIN
		DROP INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss];
		PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] IS DROPPED.';
	END
	ELSE
	BEGIN
		PRINT N'There is no index named IX_AIDBA_2_20230502 in the database.';
	END

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230502 ON [LineView4Reports].[dbo].[CategorisedCausalLoss] CANNOT BE DROPPED.';
END CATCH;
