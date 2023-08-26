
BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F41021_3')
	BEGIN
	ALTER INDEX [F41021_3]
	ON [JDE_PRODUCTION].[PRODDTA].[F41021] DISABLE;
	PRINT 'INDEX [F41021_3] ON [JDE_PRODUCTION].[PRODDTA].[F41021] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F41021_3] ON [JDE_PRODUCTION].[PRODDTA].[F41021] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Hitachi_343_342_F4201')
	BEGIN
	ALTER INDEX [Hitachi_343_342_F4201]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [Hitachi_343_342_F4201] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Hitachi_343_342_F4201] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Hitachi_341_340_F4201')
	BEGIN
	ALTER INDEX [Hitachi_341_340_F4201]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [Hitachi_341_340_F4201] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Hitachi_341_340_F4201] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F952435_2')
	BEGIN
	ALTER INDEX [F952435_2]
	ON [JDE_PD920].[PD920].[F952435] DISABLE;
	PRINT 'INDEX [F952435_2] ON [JDE_PD920].[PD920].[F952435] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F952435_2] ON [JDE_PD920].[PD920].[F952435] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F952435_3')
	BEGIN
	ALTER INDEX [F952435_3]
	ON [JDE_PD920].[PD920].[F952435] DISABLE;
	PRINT 'INDEX [F952435_3] ON [JDE_PD920].[PD920].[F952435] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F952435_3] ON [JDE_PD920].[PD920].[F952435] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F0911_24')
	BEGIN
	ALTER INDEX [F0911_24]
	ON [JDE_PRODUCTION].[PRODDTA].[F0911] DISABLE;
	PRINT 'INDEX [F0911_24] ON [JDE_PRODUCTION].[PRODDTA].[F0911] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F0911_24] ON [JDE_PRODUCTION].[PRODDTA].[F0911] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F42UI01_2')
	BEGIN
	ALTER INDEX [F42UI01_2]
	ON [JDE_PRODUCTION].[PRODDTA].[F42UI01] DISABLE;
	PRINT 'INDEX [F42UI01_2] ON [JDE_PRODUCTION].[PRODDTA].[F42UI01] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F42UI01_2] ON [JDE_PRODUCTION].[PRODDTA].[F42UI01] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F42UI11_3')
	BEGIN
	ALTER INDEX [F42UI11_3]
	ON [JDE_PRODUCTION].[PRODDTA].[F42UI11] DISABLE;
	PRINT 'INDEX [F42UI11_3] ON [JDE_PRODUCTION].[PRODDTA].[F42UI11] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F42UI11_3] ON [JDE_PRODUCTION].[PRODDTA].[F42UI11] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F55LSWPS_3')
	BEGIN
	ALTER INDEX [F55LSWPS_3]
	ON [JDE_PRODUCTION].[PRODDTA].[F55LSWPS] DISABLE;
	PRINT 'INDEX [F55LSWPS_3] ON [JDE_PRODUCTION].[PRODDTA].[F55LSWPS] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F55LSWPS_3] ON [JDE_PRODUCTION].[PRODDTA].[F55LSWPS] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4211_17')
	BEGIN
	ALTER INDEX [F4211_17]
	ON [JDE_PRODUCTION].[PRODDTA].[F4211] DISABLE;
	PRINT 'INDEX [F4211_17] ON [JDE_PRODUCTION].[PRODDTA].[F4211] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4211_17] ON [JDE_PRODUCTION].[PRODDTA].[F4211] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4211_13')
	BEGIN
	ALTER INDEX [F4211_13]
	ON [JDE_PRODUCTION].[PRODDTA].[F4211] DISABLE;
	PRINT 'INDEX [F4211_13] ON [JDE_PRODUCTION].[PRODDTA].[F4211] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4211_13] ON [JDE_PRODUCTION].[PRODDTA].[F4211] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Hitachi_60997_60996_F47122')
	BEGIN
	ALTER INDEX [Hitachi_60997_60996_F47122]
	ON [JDE_PRODUCTION].[PRODDTA].[F47122] DISABLE;
	PRINT 'INDEX [Hitachi_60997_60996_F47122] ON [JDE_PRODUCTION].[PRODDTA].[F47122] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Hitachi_60997_60996_F47122] ON [JDE_PRODUCTION].[PRODDTA].[F47122] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4201_4')
	BEGIN
	ALTER INDEX [F4201_4]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [F4201_4] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4201_4] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4201_7')
	BEGIN
	ALTER INDEX [F4201_7]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [F4201_7] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4201_7] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4201_6')
	BEGIN
	ALTER INDEX [F4201_6]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [F4201_6] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4201_6] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4201_3')
	BEGIN
	ALTER INDEX [F4201_3]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [F4201_3] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4201_3] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4201_5')
	BEGIN
	ALTER INDEX [F4201_5]
	ON [JDE_PRODUCTION].[PRODDTA].[F4201] DISABLE;
	PRINT 'INDEX [F4201_5] ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4201_5] ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'F4111_11')
	BEGIN
	ALTER INDEX [F4111_11]
	ON [JDE_PRODUCTION].[PRODDTA].[F4111] DISABLE;
	PRINT 'INDEX [F4111_11] ON [JDE_PRODUCTION].[PRODDTA].[F4111] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [F4111_11] ON [JDE_PRODUCTION].[PRODDTA].[F4111] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Hitachi_17696_17695_F03B11')
	BEGIN
	ALTER INDEX [Hitachi_17696_17695_F03B11]
	ON [JDE_PRODUCTION].[PRODDTA].[F03B11] DISABLE;
	PRINT 'INDEX [Hitachi_17696_17695_F03B11] ON [JDE_PRODUCTION].[PRODDTA].[F03B11] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Hitachi_17696_17695_F03B11] ON [JDE_PRODUCTION].[PRODDTA].[F03B11] CANNOT BE DISABLED.';
END CATCH;

BEGIN TRY
	IF EXISTS(  SELECT 1 FROM SYS.INDEXES I WHERE I.[IS_PRIMARY_KEY] = 1 AND I.[NAME] = 'Hitachi_720_719_F03B11')
	BEGIN
	ALTER INDEX [Hitachi_720_719_F03B11]
	ON [JDE_PRODUCTION].[PRODDTA].[F03B11] DISABLE;
	PRINT 'INDEX [Hitachi_720_719_F03B11] ON [JDE_PRODUCTION].[PRODDTA].[F03B11] IS DISABLED.';
	END
END TRY
BEGIN CATCH
	PRINT 'INDEX [Hitachi_720_719_F03B11] ON [JDE_PRODUCTION].[PRODDTA].[F03B11] CANNOT BE DISABLED.';
END CATCH;
