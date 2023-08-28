
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'iGCRecord_SecuritySystemRole')
	BEGIN
	ALTER INDEX [iGCRecord_SecuritySystemRole]
	ON [CHUANSINCACTUS].[dbo].[SecuritySystemRole] DISABLE;
	PRINT 'INDEX [iGCRecord_SecuritySystemRole] ON [CHUANSINCACTUS].[dbo].[SecuritySystemRole] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [iGCRecord_SecuritySystemRole] ON [CHUANSINCACTUS].[dbo].[SecuritySystemRole] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'iGCRecord_SecuritySystemMemberPermissionsObject')
	BEGIN
	ALTER INDEX [iGCRecord_SecuritySystemMemberPermissionsObject]
	ON [CHUANSINCACTUS].[dbo].[SecuritySystemMemberPermissionsObject] DISABLE;
	PRINT 'INDEX [iGCRecord_SecuritySystemMemberPermissionsObject] ON [CHUANSINCACTUS].[dbo].[SecuritySystemMemberPermissionsObject] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [iGCRecord_SecuritySystemMemberPermissionsObject] ON [CHUANSINCACTUS].[dbo].[SecuritySystemMemberPermissionsObject] CANNOT BE DISABLED.';
END CATCH;
