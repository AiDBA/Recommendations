
SET NOCOUNT ON;
BEGIN TRY
	DECLARE @policy_id int;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'Backup and Data File Location';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'Backup and Data File Location';
		PRINT 'policy "Backup and Data File Location" is dropped.';
	END;
	ELSE
		PRINT 'policy "Backup and Data File Location" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "Backup and Data File Location" cannot be dropped.';
END CATCH;

BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'Database Auto Close';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'Database Auto Close';
		PRINT 'policy "Database Auto Close" is dropped.';
	END;
	ELSE
		PRINT 'policy "Database Auto Close" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "Database Auto Close" cannot be dropped.';
END CATCH;

BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'Database Auto Shrink';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'Database Auto Shrink';
		PRINT 'policy "Database Auto Shrink" is dropped.';
	END;
	ELSE
		PRINT 'policy "Database Auto Shrink" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "Database Auto Shrink" cannot be dropped.';
END CATCH;

BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Lightweight Pooling';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'SQL Server Lightweight Pooling';
		PRINT 'policy "SQL Server Lightweight Pooling" is dropped.';
	END;
	ELSE
		PRINT 'policy "SQL Server Lightweight Pooling" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "SQL Server Lightweight Pooling" cannot be dropped.';
END CATCH;

BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Login Mode';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'SQL Server Login Mode';
		PRINT 'policy "SQL Server Login Mode" is dropped.';
	END;
	ELSE
		PRINT 'policy "SQL Server Login Mode" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "SQL Server Login Mode" cannot be dropped.';
END CATCH;

BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Password Expiration';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'SQL Server Password Expiration';
		PRINT 'policy "SQL Server Password Expiration" is dropped.';
	END;
	ELSE
		PRINT 'policy "SQL Server Password Expiration" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "SQL Server Password Expiration" cannot be dropped.';
END CATCH;

BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Password Policy';
	IF (@policy_id IS NOT NULL)
	BEGIN
		EXEC msdb.dbo.sp_syspolicy_delete_policy @name=N'SQL Server Password Policy';
		PRINT 'policy "SQL Server Password Policy" is dropped.';
	END;
	ELSE
		PRINT 'policy "SQL Server Password Policy" does not exists.';
END TRY
BEGIN CATCH
	PRINT N'policy "SQL Server Password Policy" cannot be dropped.';
END CATCH;
