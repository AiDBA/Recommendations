
USE [ClubOn];
BEGIN TRY
BEGIN TRAN
	IF EXISTS ( SELECT * FROM sys.indexes WHERE name = N'IX_AIDBA_1_20230502')
	BEGIN
		DROP INDEX IX_AIDBA_1_20230502 ON [ClubOn].[dbo].[RetTransactionMaster];
		PRINT N'INDEX IX_AIDBA_1_20230502 ON [ClubOn].[dbo].[RetTransactionMaster] IS DROPPED.';
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
	PRINT N'INDEX IX_AIDBA_1_20230502 ON [ClubOn].[dbo].[RetTransactionMaster] CANNOT BE DROPPED.';
END CATCH;
