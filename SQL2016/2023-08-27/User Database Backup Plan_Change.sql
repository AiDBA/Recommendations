
USE msdb
IF EXISTS (SELECT * FROM master.sys.certificates WHERE name = 'AIDBA_Encryption')
BEGIN
	UPDATE js SET js.command = REPLACE(js.command,'  COMPRESSION,','  COMPRESSION,  ENCRYPTION (ALGORITHM = AES_256, SERVER CERTIFICATE = AIDBA_Encryption),') FROM sysjobsteps js
	INNER JOIN sysjobs j ON js.job_id = j.job_id
	WHERE j.name LIKE 'AIDBA % Backup'
	AND js.step_name LIKE '%Integrity & Full Backup'
	AND command NOT LIKE '%AIDBA_Encryption%'
END
