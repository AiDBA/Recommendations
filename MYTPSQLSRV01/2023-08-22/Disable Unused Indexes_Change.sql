
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
