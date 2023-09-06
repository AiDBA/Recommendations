
DECLARE @text nvarchar(max);
BEGIN TRY
	EXEC sp_configure'show advanced options', 1;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;
BEGIN TRY
	EXEC sp_configure'backup compression default', 0;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;
BEGIN TRY
	EXEC sp_configure'fill factor (%)', 0;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;

BEGIN TRY
	EXEC sp_configure'optimize for ad hoc workloads', 0;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;
BEGIN TRY
	EXEC sp_configure'max server memory (MB)', 2147483647;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;

BEGIN TRY
	EXEC sp_configure'min server memory (MB)', 0;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;
				
BEGIN TRY
	EXEC sp_configure'max degree of parallelism', 0;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;
				
BEGIN TRY
	EXEC sp_configure'show advanced options', 0;
	RECONFIGURE WITH OVERRIDE;
END TRY
BEGIN CATCH
	SELECT @text = ERROR_MESSAGE();
	PRINT @text;
END CATCH;
		