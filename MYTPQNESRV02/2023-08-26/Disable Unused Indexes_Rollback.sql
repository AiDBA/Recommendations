
BEGIN TRY
	ALTER INDEX [iGCRecord_SecuritySystemRole]
	ON [CHUANSINCACTUS].[dbo].[SecuritySystemRole] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [iGCRecord_SecuritySystemRole] ON [CHUANSINCACTUS].[dbo].[SecuritySystemRole] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [iGCRecord_SecuritySystemRole] ON [CHUANSINCACTUS].[dbo].[SecuritySystemRole] CANNOT BE ENABLED.';
END CATCH;

BEGIN TRY
	ALTER INDEX [iGCRecord_SecuritySystemMemberPermissionsObject]
	ON [CHUANSINCACTUS].[dbo].[SecuritySystemMemberPermissionsObject] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [iGCRecord_SecuritySystemMemberPermissionsObject] ON [CHUANSINCACTUS].[dbo].[SecuritySystemMemberPermissionsObject] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [iGCRecord_SecuritySystemMemberPermissionsObject] ON [CHUANSINCACTUS].[dbo].[SecuritySystemMemberPermissionsObject] CANNOT BE ENABLED.';
END CATCH;
