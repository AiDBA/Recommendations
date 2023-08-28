SET NOCOUNT ON;
BEGIN TRY
	DECLARE @policy_id int;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'Backup and Data File Location';
	IF (@policy_id IS NULL)
	BEGIN

		DECLARE @condition_id int;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Data and Backup on Separate Drive';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Data and Backup on Separate Drive', @description=N'Confirms that the database and the database backups are on separate drives.', @facet=N'IDatabaseMaintenanceFacet', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>EQ</OpType>
  <Count>2</Count>
  <Attribute>
    <TypeClass>Bool</TypeClass>
    <Name>DataAndBackupOnSeparateLogicalVolumes</Name>
  </Attribute>
  <Function>
    <TypeClass>Bool</TypeClass>
    <FunctionType>True</FunctionType>
    <ReturnType>Bool</ReturnType>
    <Count>0</Count>
  </Function>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Data and Backup on Separate Drive('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Data and Backup on Separate Drive" EXISTS.';


		DECLARE @policy_category_id int;  
		SELECT @policy_category_id = policy_category_id FROM msdb.dbo.syspolicy_policy_categories WHERE name = N'Microsoft Best Practices: Maintenance';
		IF (@policy_category_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_policy_category  
			  @name = N'Microsoft Best Practices: Maintenance'  
			, @mandate_database_subscriptions = 0  
			, @policy_category_id = @policy_category_id OUTPUT;  
			PRINT 'category "Microsoft Best Practices: Maintenance('+CAST(@policy_category_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CATEGORY "Microsoft Best Practices: Maintenance" EXISTS.';
 

		DECLARE @object_set_id int;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'Backup and Data File Location_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'Backup and Data File Location_ObjectSet', @facet=N'IDatabaseMaintenanceFacet', @object_set_id=@object_set_id OUTPUT;

			DECLARE @target_set_id int;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'Backup and Data File Location_ObjectSet', @type_skeleton=N'Server/Database', @type=N'DATABASE', @enabled=True, @target_set_id=@target_set_id OUTPUT;

			EXEC msdb.dbo.sp_syspolicy_add_target_set_level @target_set_id=@target_set_id, @type_skeleton=N'Server/Database', @level_name=N'Database', @condition_name=N'', @target_set_level_id=0;
			PRINT 'object set "Backup and Data File Location_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'OBJECT SET "Backup and Data File Location_ObjectSet" EXISTS.';


		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'Backup and Data File Location', @condition_name=N'Data and Backup on Separate Drive', @policy_category=N'Microsoft Best Practices: Maintenance', @description=N'Checks if database and the backups are on separate backup devices. If they are on the same backup device, and the device that contains the database fails, your backups will be unavailable. Also, putting the data and backups on separate devices optimizes the I/O performance for both the production use of the database and writing the backups.

Note:  This policy cannot detect separate physical devices through mount points.', @help_text=N'', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'', @object_set=N'Backup and Data File Location_ObjectSet';


		PRINT 'policy "Backup and Data File Location('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "Backup and Data File Location" EXISTS.';
END TRY
BEGIN CATCH
	PRINT N'POLICY "Backup and Data File Location" CANNOT BE CREATED.';
END CATCH;
BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'Database Auto Close';
	IF (@policy_id IS NULL)
	BEGIN

		SET @condition_id = NULL;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Auto Close Disabled';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Auto Close Disabled', @description=N'Confirms that the AUTO_CLOSE database option is set to off.', @facet=N'IDatabasePerformanceFacet', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>EQ</OpType>
  <Count>2</Count>
  <Attribute>
    <TypeClass>Bool</TypeClass>
    <Name>AutoClose</Name>
  </Attribute>
  <Function>
    <TypeClass>Bool</TypeClass>
    <FunctionType>False</FunctionType>
    <ReturnType>Bool</ReturnType>
    <Count>0</Count>
  </Function>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Auto Close Disabled('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Auto Close Disabled" EXISTS.';
		
		DECLARE @condition_id_2 int;
		SELECT @condition_id_2 = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Enterprise or Standard Edition';
		IF (@condition_id_2 IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Enterprise or Standard Edition', @description=N'Confirms that the instance of SQL Server is either Enterprise or Standard Edition.', @facet=N'Server', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>OR</OpType>
  <Count>2</Count>
  <Operator>
    <TypeClass>Bool</TypeClass>
    <OpType>EQ</OpType>
    <Count>2</Count>
    <Attribute>
      <TypeClass>Numeric</TypeClass>
      <Name>EngineEdition</Name>
    </Attribute>
    <Function>
      <TypeClass>Numeric</TypeClass>
      <FunctionType>Enum</FunctionType>
      <ReturnType>Numeric</ReturnType>
      <Count>2</Count>
      <Constant>
        <TypeClass>String</TypeClass>
        <ObjType>System.String</ObjType>
        <Value>Microsoft.SqlServer.Management.Smo.Edition</Value>
      </Constant>
      <Constant>
        <TypeClass>String</TypeClass>
        <ObjType>System.String</ObjType>
        <Value>Standard</Value>
      </Constant>
    </Function>
  </Operator>
  <Operator>
    <TypeClass>Bool</TypeClass>
    <OpType>EQ</OpType>
    <Count>2</Count>
    <Attribute>
      <TypeClass>Numeric</TypeClass>
      <Name>EngineEdition</Name>
    </Attribute>
    <Function>
      <TypeClass>Numeric</TypeClass>
      <FunctionType>Enum</FunctionType>
      <ReturnType>Numeric</ReturnType>
      <Count>2</Count>
      <Constant>
        <TypeClass>String</TypeClass>
        <ObjType>System.String</ObjType>
        <Value>Microsoft.SqlServer.Management.Smo.Edition</Value>
      </Constant>
      <Constant>
        <TypeClass>String</TypeClass>
        <ObjType>System.String</ObjType>
        <Value>EnterpriseOrDeveloper</Value>
      </Constant>
    </Function>
  </Operator>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT
			PRINT 'condition "Enterprise or Standard Edition('+CAST(@condition_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'CONDITION "Enterprise or Standard Edition" EXISTS.';


		SET @policy_category_id = NULL;  
		SELECT @policy_category_id = policy_category_id FROM msdb.dbo.syspolicy_policy_categories WHERE name = N'Microsoft Best Practices: Performance';
		IF (@policy_category_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_policy_category  
			  @name = N'Microsoft Best Practices: Performance'  
			, @mandate_database_subscriptions = 0  
			, @policy_category_id = @policy_category_id OUTPUT;  
			PRINT 'category "Microsoft Best Practices: Performance('+CAST(@policy_category_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CATEGORY "Microsoft Best Practices: Performance" EXISTS.';
 

		SET @object_set_id= NULL;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'Database Auto Close_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'Database Auto Close_ObjectSet', @facet=N'IDatabasePerformanceFacet', @object_set_id=@object_set_id OUTPUT;

			SET @target_set_id = NULL;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'Database Auto Close_ObjectSet', @type_skeleton=N'Server/Database', @type=N'DATABASE', @enabled=True, @target_set_id=@target_set_id OUTPUT;
			PRINT 'object set "Database Auto Close_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

			EXEC msdb.dbo.sp_syspolicy_add_target_set_level @target_set_id=@target_set_id, @type_skeleton=N'Server/Database', @level_name=N'Database', @condition_name=N'', @target_set_level_id=0;

		END;
		ELSE
			PRINT 'OBJECT SET "Database Auto Close_ObjectSet" EXISTS.';


		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'Database Auto Close', @condition_name=N'Auto Close Disabled', @policy_category=N'Microsoft Best Practices: Performance', @description=N'Checks that the AUTO_ CLOSE option is off for SQL Server Standard and Enterprise Editions. When set to on, this option can cause performance degradation on frequently accessed databases because of the increased overhead of opening and closing the database after each connection. AUTO_CLOSE also flushes the procedure cache after each connection.', @help_text=N'', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'Enterprise or Standard Edition', @object_set=N'Database Auto Close_ObjectSet'

		PRINT 'policy "Database Auto Close('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "Database Auto Close" EXISTS.';
END TRY
BEGIN CATCH
	PRINT N'POLICY "Database Auto Close" CANNOT BE CREATED.';
END CATCH;
BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'Database Auto Shrink';

	IF (@policy_id IS NULL)
	BEGIN

		SET @condition_id = NULL;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Auto Shrink Disabled';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Auto Shrink Disabled', @description=N'Confirms that the AUTO_SHRINK database option is set to off.', @facet=N'IDatabasePerformanceFacet', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>EQ</OpType>
  <Count>2</Count>
  <Attribute>
    <TypeClass>Bool</TypeClass>
    <Name>AutoShrink</Name>
  </Attribute>
  <Function>
    <TypeClass>Bool</TypeClass>
    <FunctionType>False</FunctionType>
    <ReturnType>Bool</ReturnType>
    <Count>0</Count>
  </Function>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Auto Shrink Disabled('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Auto Shrink Disabled" EXISTS.';
		
		DECLARE @condition_id_3 int;
		SELECT @condition_id_3 = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Online User Database';
		IF (@condition_id_3 IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Online User Database', @description=N'Confirms that the database is not a system database and that it is online.', @facet=N'Database', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>AND</OpType>
  <Count>2</Count>
  <Operator>
    <TypeClass>Bool</TypeClass>
    <OpType>EQ</OpType>
    <Count>2</Count>
    <Attribute>
      <TypeClass>Unsupported</TypeClass>
      <Name>IsSystemObject</Name>
    </Attribute>
    <Function>
      <TypeClass>Bool</TypeClass>
      <FunctionType>False</FunctionType>
      <ReturnType>Bool</ReturnType>
      <Count>0</Count>
    </Function>
  </Operator>
  <Operator>
    <TypeClass>Bool</TypeClass>
    <OpType>EQ</OpType>
    <Count>2</Count>
    <Attribute>
      <TypeClass>Unsupported</TypeClass>
      <Name>Status</Name>
    </Attribute>
    <Function>
      <TypeClass>Numeric</TypeClass>
      <FunctionType>Enum</FunctionType>
      <ReturnType>Numeric</ReturnType>
      <Count>2</Count>
      <Constant>
        <TypeClass>String</TypeClass>
        <ObjType>System.String</ObjType>
        <Value>Microsoft.SqlServer.Management.Smo.DatabaseStatus</Value>
      </Constant>
      <Constant>
        <TypeClass>String</TypeClass>
        <ObjType>System.String</ObjType>
        <Value>Normal</Value>
      </Constant>
    </Function>
  </Operator>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Online User Database('+CAST(@condition_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'CONDITION "Online User Database" EXISTS.';


		SET @object_set_id = NULL;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'Database Auto Shrink_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'Database Auto Shrink_ObjectSet', @facet=N'IDatabasePerformanceFacet', @object_set_id=@object_set_id OUTPUT;

			SET @target_set_id = NULL;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'Database Auto Shrink_ObjectSet', @type_skeleton=N'Server/Database', @type=N'DATABASE', @enabled=True, @target_set_id=@target_set_id OUTPUT;
			PRINT 'object set "Database Auto Shrink_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

			EXEC msdb.dbo.sp_syspolicy_add_target_set_level @target_set_id=@target_set_id, @type_skeleton=N'Server/Database', @level_name=N'Database', @condition_name=N'Online User Database', @target_set_level_id=0;

		END;
		ELSE
			PRINT 'OBJECT SET "Database Auto Shrink_ObjectSet" EXISTS.';

		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'Database Auto Shrink', @condition_name=N'Auto Shrink Disabled', @policy_category=N'Microsoft Best Practices: Performance', @description=N'Checks that the AUTO_SHRINK option is off for user databases on SQL Server Standard and Enterprise Editions. Frequently shrinking and expanding a database can lead to poor performance because of physical fragmentation. Set the AUTO_SHRINK database option to OFF. If you know that the space that you are reclaiming will not be needed in the future, you can manually shrink the database.', @help_text=N'', @help_link=N'http://go.microsoft.com/fwlink/?LinkId=116337', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'Enterprise or Standard Edition', @object_set=N'Database Auto Shrink_ObjectSet';

		PRINT 'policy "Database Auto Shrink('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "Database Auto Shrink" EXISTS.';

END TRY
BEGIN CATCH
	PRINT N'POLICY "Database Auto Shrink" CANNOT BE CREATED.';
END CATCH;
BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Lightweight Pooling';

	IF (@policy_id IS NULL)
	BEGIN

		SET @condition_id = NULL;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Lightweight Pooling Disabled';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Lightweight Pooling Disabled', @description=N'Confirms that lightweight pooling is disabled on the server.', @facet=N'IServerPerformanceFacet', @expression=N'
<Operator>
	<TypeClass>Bool</TypeClass>
	<OpType>EQ</OpType>
	<Count>2</Count>
	<Attribute>
		<TypeClass>Bool</TypeClass>
		<Name>LightweightPoolingEnabled</Name>
	</Attribute>
	<Function>
		<TypeClass>Bool</TypeClass>
		<FunctionType>False</FunctionType>
		<ReturnType>Bool</ReturnType>
		<Count>0</Count>
	</Function>
</Operator>
                      ', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Lightweight Pooling Disabled('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Lightweight Pooling Disabled" EXISTS.';


		SET @object_set_id = NULL;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'SQL Server Lightweight Pooling_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'SQL Server Lightweight Pooling_ObjectSet', @facet=N'IServerPerformanceFacet', @object_set_id=@object_set_id OUTPUT;

			SET @target_set_id = NULL;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'SQL Server Lightweight Pooling_ObjectSet', @type_skeleton=N'Server', @type=N'SERVER', @enabled=True, @target_set_id=@target_set_id OUTPUT;

			PRINT 'object set "SQL Server Lightweight Pooling_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'OBJECT SET "SQL Server Lightweight Pooling_ObjectSet" EXISTS.';

		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'SQL Server Lightweight Pooling', @condition_name=N'Lightweight Pooling Disabled', @policy_category=N'Microsoft Best Practices: Performance', @description=N'Checks whether lightweight pooling is disabled on the server. Setting lightweightpooling to 1 causes SQL Server to switch to fiber mode scheduling. Fiber mode is intended for certain situations when the context switching of the UMS workers are the critical bottleneck in performance. Because this situation is unusual, fiber mode rarely enhances performance or scalability on the typical system.', @help_text=N'', @help_link=N'http://go.microsoft.com/fwlink/?LinkId=116350', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'', @object_set=N'SQL Server Lightweight Pooling_ObjectSet';

		PRINT 'policy "SQL Server Lightweight Pooling('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "SQL Server Lightweight Pooling" EXISTS.';

END TRY
BEGIN CATCH
	PRINT N'POLICY "SQL Server Lightweight Pooling" CANNOT BE CREATED.';
END CATCH;
BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Login Mode';

	IF (@policy_id IS NULL)
	BEGIN

		SET @condition_id = NULL;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Windows Authentication Mode';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Windows Authentication Mode', @description=N'Confirms that the server LoginMode is Windows integrated authentication.', @facet=N'IServerSecurityFacet', @expression=N'
<Operator>
    <TypeClass>Bool</TypeClass>
    <OpType>EQ</OpType>
    <Count>2</Count>
    <Attribute>
		<TypeClass>Numeric</TypeClass>
		<Name>LoginMode</Name>
    </Attribute>
    <Constant>
		<TypeClass>Numeric</TypeClass>
		<ObjType>Microsoft.SqlServer.Management.Smo.ServerLoginMode</ObjType>
		<Value>Integrated</Value>
    </Constant>
</Operator>
			', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Windows Authentication Mode('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Windows Authentication Mode" EXISTS.';
		
		SET @policy_category_id = NULL;  
		SELECT @policy_category_id = policy_category_id FROM msdb.dbo.syspolicy_policy_categories WHERE name = N'Microsoft Best Practices: Security';
		IF (@policy_category_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_policy_category  
			  @name = N'Microsoft Best Practices: Security'  
			, @mandate_database_subscriptions = 0  
			, @policy_category_id = @policy_category_id OUTPUT;  
			PRINT 'category "Microsoft Best Practices: Security('+CAST(@policy_category_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CATEGORY "Microsoft Best Practices: Security" EXISTS.';
 

		SET @object_set_id = NULL;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'SQL Server Login Mode_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'SQL Server Login Mode_ObjectSet', @facet=N'IServerSecurityFacet', @object_set_id=@object_set_id OUTPUT;

			SET @target_set_id = NULL;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'SQL Server Login Mode_ObjectSet', @type_skeleton=N'Server', @type=N'SERVER', @enabled=True, @target_set_id=@target_set_id OUTPUT;

			PRINT 'object set "SQL Server Login Mode_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'OBJECT SET "SQL Server Login Mode_ObjectSet" EXISTS.';

		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'SQL Server Login Mode', @condition_name=N'Windows Authentication Mode', @policy_category=N'Microsoft Best Practices: Security', @description=N'Checks for Windows Authentication. When possible, Microsoft recommends using Windows Authentication. Windows Authentication uses Kerberos security protocol, provides password policy enforcement in terms of complexity validation for strong passwords (applies only to Windows Server 2003 and later), provides support for account lockout, and supports password expiration.', @help_text=N'', @help_link=N'http://go.microsoft.com/fwlink/?LinkId=116369', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'', @object_set=N'SQL Server Login Mode_ObjectSet';

		PRINT 'policy "SQL Server Login Mode('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "SQL Server Login Mode" EXISTS.';

END TRY
BEGIN CATCH
	PRINT N'POLICY "SQL Server Login Mode" CANNOT BE CREATED.';
END CATCH;
BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Password Expiration';

	IF (@policy_id IS NULL)
	BEGIN

		SET @condition_id = NULL;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Password Expiration Enabled';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Password Expiration Enabled', @description=N'Confirms that password expiration is enforced for all SQL Server logins.', @facet=N'ILoginOptions', @expression=N'
<Operator>
	<TypeClass>Bool</TypeClass>
	<OpType>EQ</OpType>
	<Count>2</Count>
	<Attribute>
		<TypeClass>Bool</TypeClass>
		<Name>PasswordExpirationEnabled</Name>
	</Attribute>
	<Function>
		<TypeClass>Bool</TypeClass>
		<FunctionType>True</FunctionType>
		<ReturnType>Bool</ReturnType>
		<Count>0</Count>
	</Function>
</Operator>
', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Password Expiration Enabled('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Password Expiration Enabled" EXISTS.';
		
		SET @condition_id_2 = NULL;
		SELECT @condition_id_2 = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'SQL Server Authenticated Logins';
		IF (@condition_id_2 IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'SQL Server Authenticated Logins', @description=N'', @facet=N'Login', @expression=N'
<Operator>
	<TypeClass>Bool</TypeClass>
	<OpType>EQ</OpType>
	<Count>2</Count>
	<Attribute>
		<TypeClass>Numeric</TypeClass>
		<Name>LoginType</Name>
	</Attribute>
	<Function>
		<TypeClass>Numeric</TypeClass>
		<FunctionType>Enum</FunctionType>
		<ReturnType>Numeric</ReturnType>
		<Count>2</Count>
		<Constant>
			<TypeClass>String</TypeClass>
			<ObjType>System.String</ObjType>
			<Value>Microsoft.SqlServer.Management.Smo.LoginType</Value>
		</Constant>
			<Constant>
			<TypeClass>String</TypeClass>
			<ObjType>System.String</ObjType>
			<Value>SqlLogin</Value>
			</Constant>
	</Function>
</Operator>
			', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;

			PRINT 'condition "SQL Server Authenticated Logins('+CAST(@condition_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'CONDITION "SQL Server Authenticated Logins" EXISTS.';

		SET @condition_id_3 = NULL;
		SELECT @condition_id_3 = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'SQL Server 2005 or a Later Version';
		IF (@condition_id_3 IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'SQL Server 2005 or a Later Version', @description=N'Confirms that the version of SQL Server is 2005 or a later version.', @facet=N'Server', @expression=N'<Operator>
  <TypeClass>Bool</TypeClass>
  <OpType>GE</OpType>
  <Count>2</Count>
  <Attribute>
    <TypeClass>Numeric</TypeClass>
    <Name>VersionMajor</Name>
  </Attribute>
  <Constant>
    <TypeClass>Numeric</TypeClass>
    <ObjType>System.Int32</ObjType>
    <Value>9</Value>
  </Constant>
</Operator>', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "SQL Server 2005 or a Later Version('+CAST(@condition_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'CONDITION "SQL Server 2005 or a Later Version" EXISTS.';

		SET @object_set_id = NULL;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'SQL Server Password Expiration_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'SQL Server Password Expiration_ObjectSet', @facet=N'ILoginOptions', @object_set_id=@object_set_id OUTPUT;

			SET @target_set_id = NULL;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'SQL Server Password Expiration_ObjectSet', @type_skeleton=N'Server/Login', @type=N'LOGIN', @enabled=True, @target_set_id=@target_set_id OUTPUT;
			PRINT 'object set "SQL Server Password Expiration_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

			EXEC msdb.dbo.sp_syspolicy_add_target_set_level @target_set_id=@target_set_id, @type_skeleton=N'Server/Login', @level_name=N'Login', @condition_name=N'SQL Server Authenticated Logins', @target_set_level_id=0;

		END;
		ELSE
			PRINT 'OBJECT SET "SQL Server Password Expiration_ObjectSet" EXISTS.';

		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'SQL Server Password Expiration', @condition_name=N'Password Expiration Enabled', @policy_category=N'Microsoft Best Practices: Security', @description=N'Checks whether enforce password expiration on SQL Server logins is enabled. Enforce password expiration should be enabled for all SQL Server logins.', @help_text=N'', @help_link=N'http://go.microsoft.com/fwlink/?LinkId=116332', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'SQL Server 2005 or a Later Version', @object_set=N'SQL Server Password Expiration_ObjectSet';

		PRINT 'policy "SQL Server Password Expiration('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "SQL Server Password Expiration" EXISTS.';

END TRY
BEGIN CATCH
	PRINT N'POLICY "SQL Server Password Expiration" CANNOT BE CREATED.';
END CATCH;
BEGIN TRY
	SET @policy_id = NULL;
	SELECT @policy_id = policy_id FROM msdb.dbo.syspolicy_policies WHERE name = N'SQL Server Password Policy';

	IF (@policy_id IS NULL)
	BEGIN

		SET @condition_id = NULL;
		SELECT @condition_id = condition_id FROM msdb.dbo.syspolicy_conditions WHERE name = N'Password Policy Enforced';
		IF (@condition_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_condition @name=N'Password Policy Enforced', @description=N'Confirms that the enforce password option on SQL Server logins is enabled.', @facet=N'ILoginOptions', @expression=N'
<Operator>
	<TypeClass>Bool</TypeClass>
	<OpType>EQ</OpType>
	<Count>2</Count>
	<Attribute>
		<TypeClass>Bool</TypeClass>
		<Name>PasswordPolicyEnforced</Name>
	</Attribute>
	<Function>
		<TypeClass>Bool</TypeClass>
		<FunctionType>True</FunctionType>
		<ReturnType>Bool</ReturnType>
		<Count>0</Count>
	</Function>
</Operator>
', @is_name_condition=0, @obj_name=N'', @condition_id=@condition_id OUTPUT;
			PRINT 'condition "Password Policy Enforced('+CAST(@condition_id AS VARCHAR(10))+')" is created.';
		END;
		ELSE
			PRINT 'CONDITION "Password Policy Enforced" EXISTS.'; 

		SET @object_set_id = NULL;
		SELECT @object_set_id = object_set_id FROM msdb.dbo.syspolicy_object_sets WHERE object_set_name = N'SQL Server Password Policy_ObjectSet';
		IF (@object_set_id IS NULL)
		BEGIN
			EXEC msdb.dbo.sp_syspolicy_add_object_set @object_set_name=N'SQL Server Password Policy_ObjectSet', @facet=N'ILoginOptions', @object_set_id=@object_set_id OUTPUT;

			SET @target_set_id = NULL;
			EXEC msdb.dbo.sp_syspolicy_add_target_set @object_set_name=N'SQL Server Password Policy_ObjectSet', @type_skeleton=N'Server/Login', @type=N'LOGIN', @enabled=True, @target_set_id=@target_set_id OUTPUT;

			EXEC msdb.dbo.sp_syspolicy_add_target_set_level @target_set_id=@target_set_id, @type_skeleton=N'Server/Login', @level_name=N'Login', @condition_name=N'SQL Server Authenticated Logins', @target_set_level_id=0;
			PRINT 'object set "SQL Server Password Policy_ObjectSet('+CAST(@object_set_id AS VARCHAR(10))+')" is created.';

		END;
		ELSE
			PRINT 'OBJECT SET "SQL Server Password Policy_ObjectSet" EXISTS.';

		EXEC msdb.dbo.sp_syspolicy_add_policy @name=N'SQL Server Password Policy', @condition_name=N'Password Policy Enforced', @policy_category=N'Microsoft Best Practices: Security', @description=N'Checks whether password policy enforcement on SQL Server logins is enabled. Password policy should be enforced for all SQL Server logins.', @help_text=N'', @help_link=N'http://go.microsoft.com/fwlink/?LinkId=116331', @schedule_uid=N'00000000-0000-0000-0000-000000000000', @execution_mode=0, @is_enabled=False, @policy_id=@policy_id OUTPUT, @root_condition_name=N'SQL Server 2005 or a Later Version', @object_set=N'SQL Server Password Policy_ObjectSet';

		PRINT 'policy "SQL Server Password Policy('+CAST(@policy_id AS VARCHAR(10))+')" is created.';
	END;
	ELSE
		PRINT 'POLICY "SQL Server Password Policy" EXISTS.';

END TRY
BEGIN CATCH
	PRINT N'POLICY "SQL Server Password Policy" CANNOT BE CREATED.';
END CATCH;
