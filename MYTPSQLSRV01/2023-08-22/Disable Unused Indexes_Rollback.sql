
BEGIN TRY
	ALTER INDEX [IX_ITBHed_CompanyStatus]
	ON [OCS].[dbo].[InternalTruckBooking_Header] REBUILD WITH (SORT_IN_TEMPDB = ON);
	PRINT 'INDEX [IX_ITBHed_CompanyStatus] ON [OCS].[dbo].[InternalTruckBooking_Header] IS ENABLED.';
END TRY
BEGIN CATCH
	PRINT 'INDEX [IX_ITBHed_CompanyStatus] ON [OCS].[dbo].[InternalTruckBooking_Header] CANNOT BE ENABLED.';
END CATCH;
