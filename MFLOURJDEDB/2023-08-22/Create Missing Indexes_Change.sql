
/**************** CHECK *********************/
DECLARE @pre_iid int, @pre_oid int, @pre_is_disable bit, @pre_iname nvarchar(128);
DECLARE @pre_Smt nvarchar(max);

USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47132] (
			[SZDCTO],[SZDOCO],[SZEDCT],[SZEDSP],[SZEKCO],[SZKCOO],[SZNXTR],[SZSONE],[SZSWMS]
			) INCLUDE (
			[SZACOM],[SZADDJ],[SZADTM],[SZAEXP],[SZAFT],[SZAID],[SZAITM],[SZAN8],[SZANBY],[SZANI],[SZAOPN],[SZAPTS],[SZAPUM],[SZASN],[SZATXT],[SZBACK],[SZBSC],[SZCADC],[SZCARS],[SZCBSC],[SZCHGC],[SZCITM],[SZCLVL],[SZCMCG],[SZCMGL],[SZCMGP],[SZCNDJ],[SZCNID],[SZCO],[SZCOMM],[SZCOT],[SZCPNT],[SZCRCD],[SZCRMD],[SZCRR],[SZCSTO],[SZCTRY],[SZDCT],[SZDEID],[SZDELN],[SZDGL],[SZDMCS],[SZDMCT],[SZDOC],[SZDRQJ],[SZDRQT],[SZDSC1],[SZDSC2],[SZDSFT],[SZDSPR],[SZDTBS],[SZDTYS],[SZDUAL],[SZDVAN],[SZECST],[SZEDBT],[SZEDDL],[SZEDDT],[SZEDER],[SZEDFT],[SZEDLN],[SZEDOC],[SZEDSQ],[SZEDST],[SZEDTY],[SZEMCU],[SZEUSE],[SZEXDP],[SZEXR1],[SZFAPP],[SZFEA],[SZFEC],[SZFPRC],[SZFRAT],[SZFRGD],[SZFRMP],[SZFRTC],[SZFRTH],[SZFUC],[SZFUF1],[SZFUN2],[SZFUP],[SZFY],[SZGAN8],[SZGCARS],[SZGLC],[SZGPA8],[SZGRWT],[SZGSHAN],[SZGWUM],[SZHOLD],[SZINMG],[SZIR01],[SZIR02],[SZIR03],[SZIR04],[SZIR05],[SZITM],[SZITVL],[SZITWT],[SZIVD],[SZJOBN],[SZKCO],[SZKTLN],[SZKTP],[SZLCOD],[SZLITM],[SZLNID],[SZLNTY],[SZLOB],[SZLOCN],[SZLOTN],[SZLPRC],[SZLT],[SZLTTR],[SZMCU],[SZMOT],[SZNTR],[SZOBJ],[SZOCTO],[SZODCT],[SZODOC],[SZOGNO],[SZOKC],[SZOKCO],[SZOMCU],[SZOORN],[SZOPDJ],[SZOPTT],[SZORP],[SZORPR],[SZOTQY],[SZPA8],[SZPDDJ],[SZPDTT],[SZPEFJ],[SZPID],[SZPMDT],[SZPMPN],[SZPMTN],[SZPMTO],[SZPNID],[SZPNS],[SZPPDJ],[SZPQOR],[SZPRGR],[SZPRIO],[SZPRJM],[SZPROV],[SZPRP1],[SZPRP2],[SZPRP3],[SZPRP4],[SZPRP5],[SZPSDJ],[SZPSIG],[SZPSN],[SZPSTM],[SZPTC],[SZQRLV],[SZQTYT],[SZRATT],[SZRCD],[SZRCTO],[SZRESL],[SZRFRV],[SZRKCO],[SZRKIT],[SZRLDJ],[SZRLIT],[SZRLLN],[SZRLNU],[SZRLTM],[SZRORN],[SZROUT],[SZRPRC],[SZRSDJ],[SZRYIN],[SZSBAL],[SZSBL],[SZSBLT],[SZSERN],[SZSFXO],[SZSHAN],[SZSHCM],[SZSHCN],[SZSHPN],[SZSO01],[SZSO02],[SZSO03],[SZSO04],[SZSO05],[SZSO06],[SZSO07],[SZSO08],[SZSO09],[SZSO10],[SZSO11],[SZSO12],[SZSO13],[SZSO14],[SZSO15],[SZSOBK],[SZSOCN],[SZSOOR],[SZSOQS],[SZSQOR],[SZSRP1],[SZSRP2],[SZSRP3],[SZSRP4],[SZSRP5],[SZSTOP],[SZSTTS],[SZSUB],[SZTAX1],[SZTCST],[SZTDAY],[SZTHGD],[SZTHRP],[SZTORG],[SZTPC],[SZTRDC],[SZTRDJ],[SZTXA1],[SZUNCD],[SZUNCS],[SZUOM],[SZUOM1],[SZUOM2],[SZUOM4],[SZUOPN],[SZUORG],[SZUPC1],[SZUPC2],[SZUPC3],[SZUPMJ],[SZUPRC],[SZURAB],[SZURAT],[SZURCD],[SZURDT],[SZURRF],[SZUSER],[SZVEND],[SZVLUM],[SZVR01],[SZVR02],[SZWTUM],[SZZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47132]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47132]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 259
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47132] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47011] (
			[SYDRQJ],[SYEDCT],[SYEDDT],[SYSHAN],[SYVR01]
			) INCLUDE (
			[SYADDJ],[SYADLJ],[SYADTM],[SYAFT],[SYAN8],[SYANBY],[SYASN],[SYATXT],[SYAUFI],[SYAUFT],[SYAUTN],[SYBACK],[SYBCRC],[SYBSC],[SYCACT],[SYCARS],[SYCCIDLN],[SYCEXP],[SYCLASS01],[SYCLASS02],[SYCLASS03],[SYCLASS04],[SYCLASS05],[SYCNDJ],[SYCNID],[SYCO],[SYCORD],[SYCOT],[SYCRCD],[SYCRMD],[SYCRR],[SYCRRM],[SYDCT4],[SYDCTO],[SYDEL1],[SYDEL2],[SYDOC1],[SYDOCO],[SYDRQT],[SYDVAN],[SYEDBT],[SYEDDL],[SYEDER],[SYEDFT],[SYEDLN],[SYEDOC],[SYEDSP],[SYEDSQ],[SYEDST],[SYEDTY],[SYEKCO],[SYEXDT0],[SYEXDT1],[SYEXDT2],[SYEXNM0],[SYEXNM1],[SYEXNM2],[SYEXNMP0],[SYEXNMP1],[SYEXNMP2],[SYEXR1],[SYEXVAR0],[SYEXVAR1],[SYEXVAR12],[SYEXVAR13],[SYEXVAR4],[SYEXVAR5],[SYEXVAR6],[SYEXVAR7],[SYFAP],[SYFCST],[SYFRTH],[SYFTAN],[SYFUF1],[SYGAN8],[SYGCARS],[SYGDVAN],[SYGFTAN],[SYGITAN],[SYGPA8],[SYGPBAN],[SYGPRAN8],[SYGSHAN],[SYHOLD],[SYINMG],[SYIR01],[SYIR02],[SYIR03],[SYIR04],[SYIR05],[SYITAN],[SYJOBN],[SYKCOO],[SYLNGP],[SYMCU],[SYMOT],[SYNTR],[SYNXDJ],[SYOCTO],[SYOFRQ],[SYOKCO],[SYOORN],[SYOPBA],[SYOPBK],[SYOPBO],[SYOPDJ],[SYOPLD],[SYOPLL],[SYOPMS],[SYOPPID],[SYOPPL],[SYOPPS],[SYOPSB],[SYOPSS],[SYOPTC],[SYOPTT],[SYORBY],[SYOTIND],[SYOTOT],[SYPA8],[SYPBAN],[SYPCRT],[SYPDDJ],[SYPDTT],[SYPEFJ],[SYPID],[SYPMDT],[SYPNID],[SYPOHAB01],[SYPOHAB02],[SYPOHC01],[SYPOHC02],[SYPOHC03],[SYPOHC04],[SYPOHC05],[SYPOHC06],[SYPOHC07],[SYPOHC08],[SYPOHC09],[SYPOHC10],[SYPOHC11],[SYPOHC12],[SYPOHD01],[SYPOHD02],[SYPOHP01],[SYPOHP02],[SYPOHP03],[SYPOHP04],[SYPOHP05],[SYPOHP06],[SYPOHP07],[SYPOHP08],[SYPOHP09],[SYPOHP10],[SYPOHP11],[SYPOHP12],[SYPOHP13],[SYPOHU01],[SYPOHU02],[SYPPDJ],[SYPRAN8],[SYPRCIDLN],[SYPRGP],[SYPRIO],[SYPSDJ],[SYPSTM],[SYPTC],[SYRCD],[SYRCTO],[SYRETI],[SYRKCO],[SYRORN],[SYROUT],[SYRQSJ],[SYRSDT],[SYRSHT],[SYRYIN],[SYSBAL],[SYSDATTN],[SYSFXO],[SYSHCCIDLN],[SYSOOR],[SYSPATTN],[SYSSDJ],[SYSTOP],[SYTDAY],[SYTKBY],[SYTORG],[SYTOTC],[SYTPUR],[SYTRDC],[SYTRDJ],[SYTXA1],[SYTXCT],[SYUPMJ],[SYURAB],[SYURAT],[SYURCD],[SYURDT],[SYURRF],[SYUSER],[SYVR02],[SYVR03],[SYVUMD],[SYWUMD],[SYZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47011]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47011]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 211
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47011] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47042] (
			[SZAN8],[SZVINV]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47042]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47042]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47042] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4290] (
			[SEDCTO],[SEDOCO],[SEKCOO]
			) INCLUDE (
			[SECARS],[SEDDEL],[SEDELN],[SEFRTH],[SEITM],[SEITVL],[SEITWT],[SELNID],[SEMCU],[SESFXO],[SESHAN],[SESHCM],[SESHCN],[SESOQS],[SETRRS],[SEUOM]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4290]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4290]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 19
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4290] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47131] (
			[SYCO],[SYDCTO],[SYDOCO],[SYEDCT],[SYEDDT],[SYEDFT],[SYEDSP],[SYEKCO],[SYKCOO]
			) INCLUDE (
			[SYADDJ],[SYADLJ],[SYADTM],[SYAFT],[SYAN8],[SYANBY],[SYASN],[SYATXT],[SYAUFI],[SYAUFT],[SYAUTN],[SYBACK],[SYBCRC],[SYBSC],[SYCACT],[SYCARS],[SYCCIDLN],[SYCEXP],[SYCNDJ],[SYCNID],[SYCORD],[SYCOT],[SYCRCD],[SYCRMD],[SYCRR],[SYCRRM],[SYDCT4],[SYDEL1],[SYDEL2],[SYDOC1],[SYDRQJ],[SYDRQT],[SYDVAN],[SYEDBT],[SYEDDL],[SYEDER],[SYEDLN],[SYEDOC],[SYEDSQ],[SYEDST],[SYEDTY],[SYEXR1],[SYFAP],[SYFCST],[SYFRTH],[SYFTAN],[SYFUF1],[SYGAN8],[SYGANS8],[SYGAUFI],[SYGAUFT],[SYGCARS],[SYGDVAN],[SYGFTAN],[SYGITAN],[SYGPA8],[SYGPBAN],[SYGSHAN],[SYHOLD],[SYINMG],[SYIR01],[SYIR02],[SYIR03],[SYIR04],[SYIR05],[SYITAN],[SYJOBN],[SYLNGP],[SYMCU],[SYMOT],[SYNTR],[SYOCTO],[SYOKCO],[SYOORN],[SYOPBA],[SYOPBK],[SYOPBO],[SYOPDJ],[SYOPLD],[SYOPLL],[SYOPMS],[SYOPPID],[SYOPPL],[SYOPPS],[SYOPSB],[SYOPSS],[SYOPTC],[SYOPTT],[SYORBY],[SYOTIND],[SYOTOT],[SYPA8],[SYPBAN],[SYPCRT],[SYPDDJ],[SYPDTT],[SYPEFJ],[SYPID],[SYPMDT],[SYPNID],[SYPPDJ],[SYPRAN8],[SYPRCIDLN],[SYPRGP],[SYPRIO],[SYPSDJ],[SYPSTM],[SYPTC],[SYRCD],[SYRCTO],[SYRKCO],[SYRORN],[SYROUT],[SYRQSJ],[SYRSDT],[SYRSHT],[SYRYIN],[SYSBAL],[SYSDATTN],[SYSFXO],[SYSHAN],[SYSHCCIDLN],[SYSOOR],[SYSPATTN],[SYSTOP],[SYTDAY],[SYTKBY],[SYTORG],[SYTOTC],[SYTPUR],[SYTRDC],[SYTRDJ],[SYTXA1],[SYTXCT],[SYUPMJ],[SYURAB],[SYURAT],[SYURCD],[SYURDT],[SYURRF],[SYUSER],[SYVR01],[SYVR02],[SYVR03],[SYVUMD],[SYWUMD],[SYZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47131]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47131]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 156
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47131] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F1201] (
			[FAACL1],[FACO],[FADSP],[FAEQST],[FALOC],[FAMCU]
			) INCLUDE (
			[FAAAID],[FAACL0],[FAACL2],[FAACL3],[FAACL4],[FAACL5],[FAACL6],[FAACL7],[FAACL8],[FAACL9],[FAADDS],[FAAESV],[FAAFE],[FAAITP],[FAAITY],[FAAIV],[FAALRC],[FAAMCU],[FAAMF],[FAAN8],[FAAOBJ],[FAAPID],[FAAPOM],[FAAPUR],[FAARCQ],[FAAROQ],[FAARPC],[FAASID],[FAASUB],[FACRTL],[FADADC],[FADADO],[FADADS],[FADAJ],[FADER],[FADEXJ],[FADL01],[FADL02],[FADL03],[FADMCU],[FADOBJ],[FADSCC],[FADSUB],[FAEFTB],[FAEX],[FAEXR],[FAFA0],[FAFA1],[FAFA2],[FAFA21],[FAFA22],[FAFA23],[FAFA3],[FAFA4],[FAFA5],[FAFA6],[FAFA7],[FAFA8],[FAFA9],[FAFINC],[FAINSA],[FAINSC],[FAINSI],[FAINSM],[FAINSP],[FAITCO],[FAJBCD],[FAJBST],[FAJCD],[FAJOBN],[FAKIT],[FAKITL],[FALANO],[FALCT],[FAMSGA],[FANORU],[FANUMB],[FAPID],[FAPURO],[FAPURP],[FARMCU],[FARMK],[FARMK2],[FAROBJ],[FARSUB],[FASBLI],[FASEQ],[FASFC],[FATXJS],[FAUN],[FAUNIT],[FAUPMJ],[FAUPMT],[FAUSER],[FAWARJ],[FAWOYN],[FAWRFL],[FAXMCU],[FAXOBJ],[FAXSUB]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F1201]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F1201]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 106
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F1201] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] (
			[DHADDJ],[DHBRIDV],[DHD48Y],[DHKY]
			) INCLUDE (
			[DH$AU2],[DH$AUD],[DH74UFY],[DH75TMPP],[DHAN8],[DHASJ],[DHAWBNO],[DHCBDT],[DHCFD],[DHDCTO],[DHDELN],[DHDL01],[DHDOCO],[DHDOCO1],[DHDRQJ],[DHEMCU],[DHEV01],[DHEV02],[DHEV03],[DHEV04],[DHEV05],[DHKCOO],[DHLTTR],[DHMCU],[DHMOT],[DHMTRC],[DHMTRO],[DHNXTR],[DHSMS3],[DHTRDJ]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSDO1]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSDO1]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 34
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4101] (
			[IMSRP6],[IMTMPL],[IMUOM1]
			) INCLUDE (
			[IMABCI],[IMABCM],[IMABCS],[IMACQ],[IMAING],[IMAITM],[IMALN],[IMANPL],[IMAPSC],[IMASHL],[IMATPAC],[IMATPCA],[IMATPRN],[IMAUOM],[IMAVRT],[IMBACK],[IMBBDD],[IMBPFG],[IMBUYR],[IMCARP],[IMCARS],[IMCDCD],[IMCKAV],[IMCLEV],[IMCMCG],[IMCMDM],[IMCMETH],[IMCMGL],[IMCOBY],[IMCOMH],[IMCONB],[IMCONT],[IMCOORE],[IMCOTY],[IMCUMTH],[IMCUTH],[IMCYCL],[IMDEFD],[IMDFENDITM],[IMDFTPCT],[IMDLTL],[IMDPPO],[IMDRAW],[IMDSC1],[IMDSC2],[IMDSGP],[IMDSZE],[IMDUAL],[IMEQTY],[IMEXPD],[IMEXPI],[IMFIFO],[IMFRGD],[IMFRMP],[IMGCMP],[IMGLPT],[IMIFLA],[IMINMG],[IMITC],[IMITM],[IMJOBN],[IMKANEXLL],[IMKBIT],[IMLAF],[IMLECM],[IMLEDD],[IMLINE],[IMLITM],[IMLLX],[IMLMFG],[IMLNPA],[IMLNTY],[IMLOTC],[IMLOTS],[IMLTCM],[IMLTFM],[IMLTLV],[IMLTMF],[IMLTPU],[IMMAKE],[IMMCUTH],[IMMIC],[IMMLQ],[IMMMPC],[IMMOPTH],[IMMPSP],[IMMPST],[IMMRPP],[IMMTF1],[IMMTF2],[IMMTF3],[IMMTF4],[IMMTF5],[IMOPC],[IMOPTH],[IMOPV],[IMORDW],[IMORPR],[IMOT1Y],[IMOT2Y],[IMOVR],[IMPCTM],[IMPDGR],[IMPEFD],[IMPID],[IMPLEV],[IMPMTH],[IMPNYN],[IMPOC],[IMPPLV],[IMPRGR],[IMPRI1],[IMPRI2],[IMPRP0],[IMPRP1],[IMPRP2],[IMPRP3],[IMPRP4],[IMPRP5],[IMPRP6],[IMPRP7],[IMPRP8],[IMPRP9],[IMPRPO],[IMPTSC],[IMRPRC],[IMRVNO],[IMRWLA],[IMSBDD],[IMSCC0],[IMSCPSELL],[IMSEG0],[IMSEG1],[IMSEG2],[IMSEG3],[IMSEG4],[IMSEG5],[IMSEG6],[IMSEG7],[IMSEG8],[IMSEG9],[IMSFLT],[IMSHCM],[IMSHCN],[IMSLD],[IMSNS],[IMSRCE],[IMSRNR],[IMSRP0],[IMSRP1],[IMSRP2],[IMSRP3],[IMSRP4],[IMSRP5],[IMSRP7],[IMSRP8],[IMSRP9],[IMSRTX],[IMSTDG],[IMSTDP],[IMSTKT],[IMSUTM],[IMTDAY],[IMTFLA],[IMTHGD],[IMTHRP],[IMU1DD],[IMU2DD],[IMU3DD],[IMU4DD],[IMU5DD],[IMUMDF],[IMUMS0],[IMUMS1],[IMUMS2],[IMUMS3],[IMUMS4],[IMUMS5],[IMUMS6],[IMUMS7],[IMUMS8],[IMUMTH],[IMUMUP],[IMUMVW],[IMUOM2],[IMUOM3],[IMUOM4],[IMUOM6],[IMUOM8],[IMUOM9],[IMUPCN],[IMUPMJ],[IMURAB],[IMURAT],[IMURCD],[IMURDT],[IMURRF],[IMUSER],[IMUVM1],[IMUWUM],[IMVCPFC],[IMVCUD],[IMVMINV],[IMWARR],[IMWTRQ],[IMXDCK]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4101]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4101]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 209
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4101] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] (
			[ITITM],[ITLOCN],[ITLOTN],[ITMCU]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55INVCL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55INVCL]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] (
			[SAADDJ],[SAASP2],[SADL01],[SADL010],[SADL03],[SAIVD],[SAMC01],[SAUNCS],[SAUPMJ],[SAUPMT],[SAUSER]
			) INCLUDE (
			[SAA801],[SAAN01],[SAAN02],[SAAN03],[SAAN04],[SAAN05],[SAASP1],[SAASP3],[SACRCD],[SACRDJ],[SACRTT],[SADL011],[SADL02],[SADL04],[SALITM],[SALNID],[SAMC02],[SAMC03],[SAMC04],[SANQ01],[SANQ04],[SATORG],[SAUOM],[SAUPRC]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMSAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMSAL]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 35
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0902] (
			[GBAID],[GBCO],[GBCTRY],[GBFQ],[GBFY],[GBLT]
			) INCLUDE (
			[GBAN01],[GBAN02],[GBAN03],[GBAN04],[GBAN05],[GBAN06],[GBAN07],[GBAN08],[GBAN09],[GBAN10],[GBAN11],[GBAN12],[GBAN13],[GBAN14],[GBAPYC],[GBAPYN],[GBBAPR],[GBBORG],[GBBREQ],[GBCRCD],[GBCRCX],[GBMCU],[GBSBL],[GBSBLT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0902]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0902]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0902] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F554079A] (
			[RRDCT]
			) INCLUDE (
			[RRAN8],[RRAST],[RRCGID],[RRCRCD],[RRCUMAMT],[RRCUMQTY],[RRCUMWGT],[RRDCTO],[RRDOC],[RRDOCO],[RREFTJ],[RREXDJ],[RREXR1],[RRIGID],[RRITM],[RRJOBN],[RRKCO],[RRKCOO],[RRLITM],[RRLNID],[RRLNIDDW],[RROGID],[RRORDSEQ],[RRPID],[RRRBAM],[RRRCTO],[RRREBL],[RRRKCO],[RRRLLN],[RRRORN],[RRSFXO],[RRTAX1],[RRTDAY],[RRTOQN],[RRTOSA],[RRTOWT],[RRTXA1],[RRUOM],[RRUPMJ],[RRURAT],[RRURC1],[RRURDT],[RRUSER],[RRVIDCHG],[RRWTUM]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554079A]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554079A]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 46
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F554079A] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F41021] (
			[LIITM],[LIMCU],[LIPBIN],[LIPQOH]
			) INCLUDE (
			[LICFGSID],[LICHDF],[LIFCOM],[LIFUN1],[LIGLPT],[LIHCMS],[LIHCOM],[LIJOBN],[LILOCN],[LILOTN],[LILOTS],[LILRCJ],[LINCDJ],[LIOT1A],[LIOT1P],[LIOT2P],[LIPBCK],[LIPCOM],[LIPID],[LIPJCM],[LIPJDM],[LIPREQ],[LIQONL],[LIQOWO],[LIQTIN],[LIQTO1],[LIQTO2],[LIQTRI],[LIQTRO],[LIQTTR],[LIQTY1],[LIQTY2],[LIQWBO],[LISCMS],[LISIBW],[LISOBW],[LISQOH],[LISQWO],[LISREQ],[LISWHC],[LISWSC],[LITDAY],[LIUPMJ],[LIURAB],[LIURAT],[LIURCD],[LIURDT],[LIURRF],[LIUSER],[LIWPDF]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41021]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41021]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 54
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F41021] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4311] (
			[PDAN8],[PDCO],[PDDCTO],[PDDSC1],[PDITM],[PDKCOO],[PDLITM],[PDMCU],[PDNXTR],[PDTORG]
			) INCLUDE (
			[PDACHG],[PDADDJ],[PDAEXP],[PDAID],[PDAITM],[PDAMC3],[PDANBY],[PDANCR],[PDANI],[PDAOPN],[PDAREC],[PDARLV],[PDARTG],[PDASID],[PDASN],[PDATXT],[PDAVCH],[PDBALU],[PDBCRC],[PDCATN],[PDCCMP],[PDCDCD],[PDCFGFL],[PDCHDT],[PDCHLN],[PDCHMJ],[PDCHRS],[PDCHRT],[PDCHT],[PDCLVL],[PDCMDCDE],[PDCNDJ],[PDCNID],[PDCNTRTDID],[PDCNTRTID],[PDCORD],[PDCOT],[PDCPNT],[PDCRCD],[PDCREC],[PDCRMD],[PDCRR],[PDCSMP],[PDCSTO],[PDCTAM],[PDCTRY],[PDDGL],[PDDLEJ],[PDDMCS],[PDDMCT],[PDDOCC],[PDDOCO],[PDDRQJ],[PDDRQT],[PDDSC2],[PDDSPR],[PDDSVJ],[PDDUAL],[PDECST],[PDELEV],[PDEXR1],[PDFAP],[PDFCHG],[PDFEA],[PDFEC],[PDFNLP],[PDFRAT],[PDFREC],[PDFRGD],[PDFRMP],[PDFRRC],[PDFRTC],[PDFRTH],[PDFTN1],[PDFTRL],[PDFUC],[PDFUF1],[PDFUF2],[PDFY],[PDGLC],[PDGRWT],[PDGWUM],[PDINMG],[PDITVL],[PDITWT],[PDJBCD],[PDJOBN],[PDKTLN],[PDLCOD],[PDLDNM],[PDLNID],[PDLNTY],[PDLOCN],[PDLOTN],[PDLT],[PDLTTR],[PDMACT],[PDMATY],[PDMCLN],[PDMERL],[PDMKFR],[PDMOADJ],[PDMOT],[PDNTR],[PDOBJ],[PDOCTO],[PDOGNO],[PDOKCO],[PDOMCU],[PDOORN],[PDOPDJ],[PDOSFX],[PDOTQY],[PDPDDJ],[PDPDP1],[PDPDP2],[PDPDP3],[PDPDP4],[PDPDP5],[PDPDS1],[PDPDS2],[PDPDS3],[PDPDS4],[PDPDS5],[PDPEFJ],[PDPID],[PDPL],[PDPMPN],[PDPMTN],[PDPN],[PDPNS],[PDPODC01],[PDPODC02],[PDPODC03],[PDPODC04],[PDPPDJ],[PDPQOR],[PDPRGR],[PDPRJM],[PDPROM],[PDPROV],[PDPRPY],[PDPRRC],[PDPS01],[PDPS02],[PDPS03],[PDPS04],[PDPS05],[PDPS06],[PDPS07],[PDPS08],[PDPS09],[PDPS10],[PDPSDJ],[PDPTC],[PDPURG],[PDR001],[PDRATT],[PDRCD],[PDRCPF],[PDRCTO],[PDRKCO],[PDRLIT],[PDRLLN],[PDRORN],[PDRSFX],[PDRSHT],[PDRTGC],[PDRTNR],[PDSBL],[PDSBLT],[PDSFXO],[PDSHAN],[PDSHCM],[PDSHCN],[PDSHPN],[PDSQOR],[PDSRQTY],[PDSRUOM],[PDSTTS],[PDSUB],[PDTAG],[PDTDAY],[PDTHGD],[PDTHRP],[PDTRDJ],[PDTRLV],[PDTX],[PDTXA1],[PDUCHG],[PDUKID],[PDUNCD],[PDUNSPSC],[PDUOM],[PDUOM1],[PDUOM2],[PDUOM3],[PDUOPN],[PDUORG],[PDUPMJ],[PDURAB],[PDURAT],[PDURCD],[PDURDT],[PDUREC],[PDURLV],[PDURRF],[PDUSER],[PDVLUM],[PDVR01],[PDVR02],[PDVR03],[PDVR04],[PDVR05],[PDWR01],[PDWTUM],[PDWVID],[PDZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4311]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4311]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 228
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4311] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B14] (
			[RZALT6],[RZAN8],[RZCO],[RZDGJ],[RZDMTJ],[RZICUT],[RZISTC],[RZKCO],[RZPA8],[RZPOST],[RZTYIN],[RZUSER]
			) INCLUDE (
			[RZAAAJ],[RZACR1],[RZACR2],[RZACRM],[RZACRR],[RZADGJ],[RZADSA],[RZADSC],[RZAGL],[RZAGLA],[RZAID],[RZAID2],[RZAIDC],[RZAM2],[RZBCRC],[RZCDS],[RZCDSA],[RZCKNU],[RZCRCD],[RZCRR],[RZCRRM],[RZCTL],[RZCTRY],[RZDCT],[RZDCTG],[RZDCTM],[RZDCTO],[RZDDA],[RZDDEX],[RZDDJ],[RZDDNJ],[RZDDST],[RZDICJ],[RZDOC],[RZDOCG],[RZDOCO],[RZDRCO],[RZECBA],[RZECBF],[RZECBR],[RZFCHG],[RZFDA],[RZFNLP],[RZFY],[RZGDCT],[RZGDOC],[RZGFL1],[RZGFL2],[RZGKCO],[RZGLC],[RZGLCC],[RZGSFX],[RZHCRR],[RZICU],[RZIDGJ],[RZJOBN],[RZKCOG],[RZKCOO],[RZLFCJ],[RZLRFL],[RZMCU],[RZMCU2],[RZNETDOC],[RZNETRC5],[RZNETTCID],[RZNFVD],[RZNUMB],[RZODCT],[RZODOC],[RZOKCO],[RZOMOD],[RZOSFX],[RZPAAP],[RZPDCT],[RZPDLT],[RZPFAP],[RZPID],[RZPKCO],[RZPN],[RZPO],[RZPYID],[RZRAMT],[RZRC5],[RZRFID],[RZRIDC],[RZRLIN],[RZRMK],[RZRNID],[RZRPID],[RZRSCO],[RZSBL],[RZSBLT],[RZSFX],[RZSFXO],[RZSHPN],[RZSMTJ],[RZTAAJ],[RZTAAP],[RZTADA],[RZTCBA],[RZTCRC],[RZTDA],[RZTORG],[RZUCTF],[RZUNIT],[RZUPMJ],[RZUPMT],[RZURAB],[RZURAT],[RZURC1],[RZURDT],[RZURRF],[RZUTIC],[RZVDGJ],[RZVR01],[RZVRE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B14]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B14]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 128
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B14] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] (
			[CNAN8],[CNDCTO],[CNDOCO],[CNKCOO],[CNOCTO],[CNOKCO],[CNOORN],[CNTYOF],[CNUKID]
			) INCLUDE (
			[CNAAP],[CNAG],[CNAMTU],[CNANOG],[CNAOPN],[CNCKAM],[CNCKNU],[CNCRCD],[CNDCT],[CNDGJ],[CNDOC],[CNEDBT],[CNEDLN],[CNEDTN],[CNEDUS],[CNFLG],[CNGLBA],[CNJOBN],[CNKCO],[CNPID],[CNRMK2],[CNSEQ],[CNUPMJ],[CNUPMT],[CNURAB],[CNURAT],[CNURC1],[CNURDT],[CNURRF],[CNUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5603B13]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5603B13]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 39
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4070] (
			[SNANPS]
			) INCLUDE (
			[SNASN],[SNAST],[SNEFTJ],[SNEXDJ],[SNINHT],[SNJOBN],[SNOSEQ],[SNPID],[SNSCTYPE],[SNSKIPEND],[SNSKIPTO],[SNSTPRCF],[SNTDAY],[SNTIER],[SNUPMJ],[SNURAB],[SNURAT],[SNURCD],[SNURDT],[SNURRF],[SNUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4070]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4070]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 22
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4070] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_ARCHIVE];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230822
			ON [JDE_ARCHIVE].[ARCDTA].[F0911] (
			[GLDGJ],[GLDOC],[GLEXTL],[GLLT],[GLMCU],[GLOBJ],[GLPOST]
			) INCLUDE (
			[GLAA],[GLAID],[GLALT1],[GLALT5],[GLALT9],[GLAN8],[GLANI],[GLASID],[GLBCRC],[GLCO],[GLCRCD],[GLCRR],[GLCRRM],[GLDCT],[GLDICJ],[GLDKC],[GLDSVJ],[GLEXA],[GLEXR],[GLHCRR],[GLHDGJ],[GLHMCU],[GLICU],[GLICUT],[GLJELN],[GLKCO],[GLPO],[GLPYID],[GLR1],[GLR2],[GLR3],[GLRCND],[GLSBL],[GLSBLT],[GLSUB],[GLTORG],[GLU],[GLUM],[GLUSER],[GLVINV],[GLWR01]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230822' AND i.object_id = OBJECT_ID('[JDE_ARCHIVE].[ARCDTA].[F0911]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230822' AND i2.object_id = OBJECT_ID('[JDE_ARCHIVE].[ARCDTA].[F0911]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 48
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_ARCHIVE].[ARCDTA].[F0911] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] (
			[RUCO],[RUEDBT],[RUEUPS],[RUICU],[RUICUT]
			) INCLUDE (
			[RUAG],[RUAM],[RUAN8],[RUCBNK],[RUCKAM],[RUCKNU],[RUCRCD],[RUCRR],[RUCRRM],[RUCTL],[RUDCT],[RUDG#],[RUDGJ],[RUDIC#],[RUDICJ],[RUDMT#],[RUDMTD],[RUDMTJ],[RUDMTM],[RUDMTY],[RUDOC],[RUEDLN],[RUEDTN],[RUEDUS],[RUEHBK],[RUEHTN],[RUFAP],[RUGLBA],[RUGMFD],[RUKCO],[RUPYID],[RUPYIN],[RURMK],[RUSFX],[RUTNST],[RUTYIN],[RUUSER],[RUVR01]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13Z1]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13Z1]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F43199] (
			[OLADDJ],[OLAN8],[OLCO],[OLDCTO],[OLDSC1],[OLKCOO],[OLLTTR],[OLMCU],[OLNXTR],[OLUPMJ]
			) INCLUDE (
			[OLACHG],[OLAEXP],[OLAID],[OLAITM],[OLAMC3],[OLANBY],[OLANCR],[OLANI],[OLAOPN],[OLAREC],[OLARLV],[OLARTG],[OLASID],[OLASN],[OLATXT],[OLAVCH],[OLBALU],[OLBCRC],[OLCATN],[OLCCMP],[OLCDCD],[OLCHDT],[OLCHLN],[OLCHMJ],[OLCHRS],[OLCHRT],[OLCHT],[OLCLVL],[OLCMDCDE],[OLCNDJ],[OLCNID],[OLCORD],[OLCOT],[OLCPNT],[OLCRCD],[OLCREC],[OLCRMD],[OLCRR],[OLCSMP],[OLCSTO],[OLCTAM],[OLCTRY],[OLDGL],[OLDLEJ],[OLDLNID],[OLDMCS],[OLDMCT],[OLDOCC],[OLDOCO],[OLDRQJ],[OLDRQT],[OLDSC2],[OLDSPR],[OLDSVJ],[OLDUAL],[OLECST],[OLELEV],[OLEXR1],[OLFAP],[OLFCHG],[OLFEA],[OLFEC],[OLFNLP],[OLFRAT],[OLFREC],[OLFRGD],[OLFRMP],[OLFRRC],[OLFRTC],[OLFRTH],[OLFTN1],[OLFTRL],[OLFUC],[OLFUF1],[OLFUF2],[OLFY],[OLGLC],[OLGRWT],[OLGWUM],[OLINMG],[OLITM],[OLITVL],[OLITWT],[OLJOBN],[OLKTLN],[OLLCOD],[OLLDNM],[OLLITM],[OLLNID],[OLLNTY],[OLLOCN],[OLLOTN],[OLLT],[OLMACT],[OLMATY],[OLMCLN],[OLMERL],[OLMFLG],[OLMKFR],[OLMOT],[OLNTR],[OLOBJ],[OLOCTO],[OLOGNO],[OLOKCO],[OLOMCU],[OLOORN],[OLOPDJ],[OLOSFX],[OLOTQY],[OLPDDJ],[OLPDP1],[OLPDP2],[OLPDP3],[OLPDP4],[OLPDP5],[OLPDS1],[OLPDS2],[OLPDS3],[OLPDS4],[OLPDS5],[OLPEFJ],[OLPID],[OLPL],[OLPMTN],[OLPN],[OLPPDJ],[OLPQOR],[OLPRGR],[OLPRJM],[OLPROM],[OLPROV],[OLPRPY],[OLPRRC],[OLPS01],[OLPS02],[OLPS03],[OLPS04],[OLPS05],[OLPS06],[OLPS07],[OLPS08],[OLPS09],[OLPS10],[OLPSDJ],[OLPTC],[OLPURG],[OLR001],[OLRATT],[OLRCD],[OLRCPF],[OLRCTO],[OLRKCO],[OLRLIT],[OLRLLN],[OLRORN],[OLRSFX],[OLRSHT],[OLRTGC],[OLRTNR],[OLSBL],[OLSBLT],[OLSFXO],[OLSHAN],[OLSHCM],[OLSHCN],[OLSHMT],[OLSHPN],[OLSQOR],[OLSTTS],[OLSUB],[OLTAG],[OLTDAY],[OLTHGD],[OLTHRP],[OLTORG],[OLTRDJ],[OLTRLV],[OLTX],[OLTXA1],[OLUCHG],[OLUKID],[OLUNCD],[OLUNSPSC],[OLUOM],[OLUOM1],[OLUOM2],[OLUOM3],[OLUOPN],[OLUORG],[OLURAB],[OLURAT],[OLURCD],[OLURDT],[OLUREC],[OLURLV],[OLURRF],[OLUSER],[OLVLUM],[OLVR01],[OLVR02],[OLVR04],[OLVR05],[OLWR01],[OLWTUM],[OLZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43199]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43199]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 216
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F43199] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F43121] (
			[PRCO],[PRDCT],[PRDCTO],[PRKCOO],[PRLAND],[PRMATC],[PRMCU],[PRRCDJ],[PRRTBY]
			) INCLUDE (
			[PRACLO],[PRAID],[PRAITM],[PRALIN],[PRAN8],[PRANI],[PRAOPN],[PRAPTD],[PRAREC],[PRASID],[PRAVCH],[PRAVCO],[PRBALU],[PRBCRC],[PRCNID],[PRCPNT],[PRCRCD],[PRCRR],[PRCTAM],[PRDGL],[PRDLOG],[PRDMCS],[PRDMCT],[PRDOC],[PRDOCO],[PRDRQJ],[PRDUAL],[PRECST],[PREXR1],[PRFAP],[PRFAPT],[PRFCLO],[PRFEC],[PRFREC],[PRFRRC],[PRFSRRC],[PRFUF3],[PRFUF4],[PRFUF5],[PRFUF6],[PRGLC],[PRILOG],[PRIMCU],[PRITM],[PRJELN],[PRJOBN],[PRKCO],[PRKTLN],[PRLDNM],[PRLITM],[PRLNID],[PRLNTY],[PRLOCN],[PRLOTG],[PRLOTN],[PRLOTP],[PRLTTR],[PRLVLA],[PRMACT],[PRMERL],[PRNLIN],[PRNXTR],[PROBJ],[PROMCU],[PROPDJ],[PRPAK],[PRPDDJ],[PRPID],[PRPLT],[PRPMPN],[PRPNS],[PRPOE],[PRPRP5],[PRPRRC],[PRPST],[PRPTC],[PRQTYA],[PRQTYC],[PRQTYJ],[PRQTYR],[PRQTYS],[PRQTYW],[PRRCD],[PRRCPF],[PRRTGC],[PRSBL],[PRSBLT],[PRSCCN],[PRSCCQ],[PRSCUM],[PRSFX],[PRSFXO],[PRSHPN],[PRSQOR],[PRSRQTY],[PRSRRC],[PRSRUOM],[PRSTAM],[PRSUB],[PRTDAY],[PRTERM],[PRTORG],[PRTRDJ],[PRTX],[PRTXA1],[PRUCLO],[PRUKID],[PRUOM],[PRUOM2],[PRUOM3],[PRUOPN],[PRUORG],[PRUPCN],[PRUPMJ],[PRUPQT],[PRUPTD],[PRUPUM],[PRURAB],[PRURAT],[PRURCD],[PRURDT],[PRUREC],[PRURRF],[PRUSER],[PRVANI],[PRVARC],[PRVINV],[PRVR01],[PRVR02],[PRVR03],[PRVR04],[PRVR05],[PRVRMK],[PRWOPID],[PRXDCK]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43121]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43121]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 144
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F43121] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] (
			[IVUPMJ],[IVUPMT],[IVUSER]
			) INCLUDE (
			[IVA801],[IVASP1],[IVASP2],[IVCRDJ],[IVCRTT],[IVDL010],[IVDL02],[IVLITM],[IVMC01],[IVNQ01],[IVTORG],[IVTRDJ],[IVUOM]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMINV]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMINV]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 16
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_23_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F42420] (
			[ALCORD],[ALDCTO],[ALMCU],[ALRFRV],[ALUPMJ]
			) INCLUDE (
			[ALCNDJ],[ALDOCO],[ALDRQJ],[ALDSC1],[ALDSC2],[ALKCOO],[ALLITM],[ALLNID],[ALLTTR],[ALNXTR],[ALUOM],[ALUORG],[ALUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_23_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F42420]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_23_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F42420]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F42420] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_23_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_24_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4209] (
			[HOAN8],[HOASTS],[HODCTO],[HOHCOD],[HOMCU],[HORPER],[HOTRDJ]
			) INCLUDE (
			[HODOCO],[HOKCOO],[HOLNID],[HORDJ],[HORDT],[HOSFXO]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_24_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4209]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_24_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4209]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4209] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_24_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_25_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4106] (
			[BPAN8],[BPBSCD],[BPCGID],[BPCRCD],[BPEFTJ],[BPEXDJ],[BPIGID],[BPITM],[BPLOCN],[BPLOTN],[BPMCU],[BPUOM]
			) INCLUDE (
			[BPACRD],[BPFRMN],[BPFRMP],[BPLOTG],[BPTDAY],[BPUPMJ],[BPUPRC]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_25_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4106]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_25_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4106]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 19
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4106] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_25_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_26_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] (
			[ELYFLR]
			) INCLUDE (
			[ELCO],[ELDCTO],[ELDOCO],[ELTORG],[ELUPMJ],[ELUPMT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_26_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55JDEMT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_26_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55JDEMT]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_26_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_27_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B11] (
			[RPAAP],[RPAN8],[RPAR01],[RPBCRC],[RPCO],[RPCRCD],[RPDCT],[RPDDEX],[RPDDJ],[RPDGJ],[RPKCO],[RPPST],[RPPYR],[RPRMK],[RPSDOC]
			) INCLUDE (
			[RPACR],[RPADSA],[RPADSC],[RPAFC],[RPAG],[RPAID],[RPAID2],[RPAJCL],[RPALPH],[RPALT6],[RPAM],[RPAM2],[RPAN8J],[RPAR02],[RPAR03],[RPAR04],[RPAR05],[RPAR06],[RPAR07],[RPAR08],[RPAR09],[RPAR10],[RPATAD],[RPATXA],[RPATXN],[RPBALJ],[RPCDS],[RPCDSA],[RPCLMG],[RPCMC1],[RPCMGR],[RPCOLL],[RPCORC],[RPCRR],[RPCRRM],[RPCTAD],[RPCTAM],[RPCTL],[RPCTRY],[RPCTXA],[RPCTXN],[RPDCTO],[RPDDNJ],[RPDICJ],[RPDIVJ],[RPDMCD],[RPDNLT],[RPDOC],[RPDOCO],[RPDRF],[RPDSVJ],[RPDTPB],[RPDTXS],[RPERDJ],[RPEXR1],[RPFAP],[RPFNLP],[RPFNRT],[RPFY],[RPGFL1],[RPGFL2],[RPGLBA],[RPGLC],[RPHCRR],[RPHDGJ],[RPICU],[RPICUT],[RPISTC],[RPISTR],[RPITM],[RPJCL],[RPJOBN],[RPKCOO],[RPLFCJ],[RPLNID],[RPMCU],[RPMCU2],[RPNBRR],[RPNETDOC],[RPNETRC5],[RPNETST],[RPNETTCID],[RPNRTA],[RPOBJ],[RPODCT],[RPODOC],[RPOKCO],[RPOMOD],[RPOSFX],[RPPA8],[RPPDCT],[RPPID],[RPPKCO],[RPPN],[RPPO],[RPPOST],[RPPPDI],[RPPRGF],[RPPTC],[RPPWPG],[RPPYID],[RPRDDJ],[RPRDRL],[RPRDSJ],[RPRF],[RPRMDS],[RPRMR1],[RPRNID],[RPRP1],[RPRP2],[RPRP3],[RPRSCO],[RPRYIN],[RPSBL],[RPSBLT],[RPSDCT],[RPSFX],[RPSFXO],[RPSHPN],[RPSKCO],[RPSMTJ],[RPSOTF],[RPSTAM],[RPSUB],[RPTORG],[RPTXA1],[RPU],[RPUM],[RPUNIT],[RPUPMJ],[RPUPMT],[RPURAB],[RPURAT],[RPURC1],[RPURDT],[RPURRF],[RPUSER],[RPVDGJ],[RPVINV],[RPVLDT],[RPVOD],[RPVR01]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_27_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B11]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_27_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B11]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 157
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B11] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_27_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_28_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0414] (
			[RNCO],[RNPOST]
			) INCLUDE (
			[RNADSA],[RNADSC],[RNAN8],[RNBCRC],[RNCDS],[RNCDSA],[RNCRCD],[RNCRR],[RNCRRM],[RNDCT],[RNDCTM],[RNDOC],[RNFNLP],[RNGLC],[RNHCRR],[RNKCO],[RNMCU],[RNPAAP],[RNPFAP],[RNPO],[RNPYID],[RNRC5],[RNRMK],[RNSFX],[RNSFXE],[RNUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_28_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0414]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_28_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0414]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 28
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0414] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_28_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE920];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_29_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230822
			ON [JDE920].[SVM920].[F986110] (
			[JCENHV],[JCFNDFUF2],[JCUSER]
			) INCLUDE (
			[JCACTDATE],[JCACTTIME],[JCEXEHOST],[JCFUNO],[JCJOBNBR],[JCJOBPTY],[JCJOBQUE],[JCJOBSTS],[JCJOBTYPE],[JCORGHOST],[JCPROCESSID],[JCPRTQ],[JCSBMDATE],[JCSBMTIME]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_29_20230822' AND i.object_id = OBJECT_ID('[JDE920].[SVM920].[F986110]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_29_20230822' AND i2.object_id = OBJECT_ID('[JDE920].[SVM920].[F986110]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 17
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE920].[SVM920].[F986110] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_29_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_30_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4941] (
			[RSLDNM]
			) INCLUDE (
			[RSCARS],[RSCRCD],[RSCRDC],[RSRSSN],[RSSHPN]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_30_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4941]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_30_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4941]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4941] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_30_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE920];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_31_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230822
			ON [JDE920].[OL920].[F9860W] (
			[WOFMNM],[WOOBNM],[WOWOCAT]
			) INCLUDE (
			[WOSY],[WOSYR],[WOVER],[WOWOBNM],[WOWOOBNML],[WOWOOBNMS],[WOWOTHRD]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_31_20230822' AND i.object_id = OBJECT_ID('[JDE920].[OL920].[F9860W]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_31_20230822' AND i2.object_id = OBJECT_ID('[JDE920].[OL920].[F9860W]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE920].[OL920].[F9860W] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_31_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_32_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4801T] (
			[WAPRODM]
			) INCLUDE (
			[WAAID],[WACRCD],[WACRDC],[WACRRM],[WADOCO],[WAFAILCD],[WAREPDT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_32_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801T]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_32_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801T]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4801T] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_32_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_33_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_33_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03012] (
			[AICO]
			) INCLUDE (
			[AIAB2],[AIABA1],[AIABAM],[AIABC1],[AIABC2],[AIABC3],[AIAC01],[AIAC02],[AIAC03],[AIAC04],[AIAC05],[AIAC06],[AIAC07],[AIAC08],[AIAC09],[AIAC10],[AIAC11],[AIAC12],[AIAC13],[AIAC14],[AIAC15],[AIAC16],[AIAC17],[AIAC18],[AIAC19],[AIAC20],[AIAC21],[AIAC22],[AIAC23],[AIAC24],[AIAC25],[AIAC26],[AIAC27],[AIAC28],[AIAC29],[AIAC30],[AIACL],[AIAD],[AIAFC],[AIAFCP],[AIAFCY],[AIAFT],[AIAHB],[AIAIDR],[AIALGM],[AIALP],[AIAMCR],[AIAN8],[AIAN8R],[AIAPRC],[AIAPSB],[AIAPTS],[AIARC],[AIARL],[AIARPY],[AIARTO],[AIASHL],[AIASN],[AIASTY],[AIATCS],[AIAVD],[AIBACK],[AIBADT],[AIBLFR],[AIBO],[AIBSC],[AIBYAL],[AICAAD],[AICARS],[AICFCE],[AICFDF],[AICFPP],[AICFSP],[AICIG],[AICKHC],[AICLMG],[AICMC1],[AICMC2],[AICMGR],[AICMR1],[AICMR2],[AICOLL],[AICP01],[AICPGP],[AICRCA],[AICRCD],[AICRMD],[AICUSTS],[AICYCN],[AIDAOJ],[AIDB],[AIDCAR],[AIDEL1],[AIDEL2],[AIDFIJ],[AIDLC],[AIDLIJ],[AIDLP],[AIDLQJ],[AIDLQT],[AIDNBJ],[AIDNLT],[AIDR03],[AIDR04],[AIDR08],[AIDR09],[AIDSO],[AIDSPA],[AIDT1J],[AIDTAR],[AIDTEE],[AIEDAD],[AIEDCI],[AIEDF1],[AIEDF2],[AIEDII],[AIEDPM],[AIEDQD],[AIEXHD],[AIEXR1],[AIFD],[AIFNDJ],[AIFP],[AIFRTH],[AIGOPASF],[AIHDAR],[AIHOLD],[AIICON],[AIINMG],[AIINVC],[AIJOBN],[AIKCOR],[AILEDJ],[AILTDT],[AIMAN8],[AIMAXO],[AIMCUR],[AIMINO],[AIMORD],[AINBCL],[AINBR1],[AINBR2],[AINBR3],[AINBRR],[AINIVD],[AIOBAR],[AIOPBO],[AIOPY],[AIORTP],[AIOYTD],[AIPALC],[AIPID],[AIPLCR],[AIPLST],[AIPLY],[AIPOPN],[AIPORQ],[AIPRGF],[AIPRIO],[AIPRSN],[AIPWPCP],[AIROUT],[AIRQ01],[AIRQ02],[AIRQ03],[AIRQ04],[AIRQ05],[AIRQ06],[AIRQ07],[AIRQ08],[AIRQ09],[AIRVDJ],[AIRYIN],[AISBAL],[AISI01],[AISI02],[AISI03],[AISI04],[AISI05],[AISITO],[AISLDW],[AISLPG],[AISPYE],[AISQNL],[AISTMT],[AISTOF],[AISTOP],[AISTTO],[AISYNCS],[AITERRID],[AITIER1],[AITORG],[AITRAR],[AITRDC],[AITRW],[AITSTA],[AITWDJ],[AITXA1],[AIUPMJ],[AIUPMT],[AIURAB],[AIURAT],[AIURCD],[AIURDT],[AIURRF],[AIUSER],[AIVUMD],[AIWUMD],[AIZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_33_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03012]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_33_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03012]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 210
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03012] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_33_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_34_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_34_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F41112] (
			[INCTRY],[INFY],[INITM],[INLITM],[INMCU]
			) INCLUDE (
			[INAISL],[INAITM],[INAN01],[INAN02],[INAN03],[INAN04],[INAN05],[INAN06],[INAN07],[INAN08],[INAN09],[INAN10],[INAN11],[INAN12],[INAN13],[INAN14],[INAN8],[INBIN],[INCMQT],[INCUMA],[INDCT],[INGLPT],[INJOBN],[INLOCN],[INLOTN],[INNQ01],[INNQ02],[INNQ03],[INNQ04],[INNQ05],[INNQ06],[INNQ07],[INNQ08],[INNQ09],[INNQ10],[INNQ11],[INNQ12],[INNQ13],[INNQ14],[INPID],[INSHAN],[INTDAY],[INUPMJ],[INUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_34_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41112]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_34_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41112]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 49
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F41112] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_34_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_35_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_35_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0411] (
			[RPAN8],[RPCO],[RPDCTA],[RPDGJ],[RPDIVJ],[RPGLBA],[RPGLC],[RPKCO],[RPMCU],[RPPDCT],[RPPO],[RPPOST],[RPPST],[RPPYE]
			) INCLUDE (
			[RPAAP],[RPAC07],[RPACR],[RPADSA],[RPADSC],[RPAG],[RPAID2],[RPAM],[RPATAD],[RPATXA],[RPATXN],[RPBAID],[RPBALJ],[RPBCRC],[RPBLSCD2],[RPCDS],[RPCDSA],[RPCNTRTCD],[RPCNTRTID],[RPCRC],[RPCRCD],[RPCRR],[RPCRRM],[RPCTAD],[RPCTAM],[RPCTL],[RPCTRY],[RPCTXA],[RPCTXN],[RPDCT],[RPDDJ],[RPDDNJ],[RPDDRL],[RPDICJ],[RPDMCD],[RPDOC],[RPDRF],[RPDSVJ],[RPDTXS],[RPEXR1],[RPEXR3],[RPFAP],[RPFNLP],[RPFNRT],[RPFY],[RPGAM1],[RPGAM2],[RPGEN4],[RPGEN5],[RPGFL5],[RPGFL6],[RPHARPER],[RPHARSFX],[RPHCRR],[RPHDGJ],[RPICU],[RPICUT],[RPITM],[RPJOBN],[RPLNID],[RPMCU2],[RPNETDOC],[RPNETRC5],[RPNETST],[RPNETTCID],[RPNRTA],[RPOBJ],[RPODCT],[RPODOC],[RPOKCO],[RPOPSQ],[RPOSFX],[RPPID],[RPPKCO],[RPPN],[RPPRGF],[RPPTC],[RPPWPG],[RPPYIN],[RPPYWP],[RPRF],[RPRMK],[RPRP1],[RPRP2],[RPRP3],[RPSBL],[RPSBLT],[RPSEQN],[RPSFX],[RPSFXE],[RPSFXO],[RPSMMF],[RPSNTO],[RPSTAM],[RPSUB],[RPTAXP],[RPTNN],[RPTNST],[RPTORG],[RPTXA1],[RPTXA3],[RPU],[RPUM],[RPUNIT],[RPUPMJ],[RPUPMT],[RPURAB],[RPURAT],[RPURC1],[RPURDT],[RPURRF],[RPUSER],[RPVINV],[RPVOD],[RPVR01],[RPWTAD],[RPWTAF],[RPWVID],[RPYC01],[RPYC02],[RPYC03],[RPYC04],[RPYC05],[RPYC06],[RPYC07],[RPYC08],[RPYC09],[RPYC10]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_35_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0411]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_35_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0411]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 142
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0411] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_35_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_36_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_36_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4960] (
			[TMLDLS]
			) INCLUDE (
			[TMADDS],[TMADDZ],[TMANCC],[TMANID],[TMCARS],[TMCTR],[TMCTY1],[TMCVUM],[TMDSGP],[TMLDNM],[TMLDTY],[TMLOAD],[TMMCUX],[TMMOT],[TMNMCU],[TMPMDT],[TMPPDJ],[TMPVEH],[TMRLNO],[TMROUT],[TMSEQ],[TMSHFT],[TMTMLS],[TMVLUM],[TMVMCU],[TMVR01],[TMVTYP],[TMWTUM],[TMZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_36_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4960]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_36_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4960]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4960] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_36_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_37_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_37_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4108] (
			[IODLEJ],[IOITM],[IOMCU],[IOMMEJ]
			) INCLUDE (
			[IOAITM],[IOBBDJ],[IOBODJ],[IOCHDF],[IODCTO],[IODOC1],[IODOCO],[IOJOBN],[IOKCOO],[IOLDSC],[IOLITM],[IOLOT1],[IOLOT2],[IOLOT3],[IOLOTC],[IOLOTG],[IOLOTN],[IOLOTP],[IOLOTR],[IOLOTS],[IOLRP0],[IOLRP1],[IOLRP2],[IOLRP3],[IOLRP4],[IOLRP5],[IOLRP6],[IOLRP7],[IOLRP8],[IOLRP9],[IOOHDJ],[IOORIG],[IOPID],[IORLOT],[IOSBDJ],[IOSERN],[IOTDAY],[IOU1DJ],[IOU2DJ],[IOU3DJ],[IOU4DJ],[IOU5DJ],[IOUA01],[IOUA02],[IOUA03],[IOUA04],[IOUA05],[IOUA06],[IOUB01],[IOUB02],[IOUB03],[IOUB04],[IOUB05],[IOUB06],[IOUPMJ],[IOUSER],[IOVEND],[IOWPDF]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_37_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4108]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_37_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4108]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 62
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4108] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_37_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_38_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_38_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47012] (
			[SZAEXP],[SZDRQJ]
			) INCLUDE (
			[SZACOM],[SZADDJ],[SZADTM],[SZAFT],[SZAID],[SZAITM],[SZAN8],[SZANBY],[SZANI],[SZAOPN],[SZAPTS],[SZAPUM],[SZASN],[SZATXT],[SZBACK],[SZBSC],[SZCADC],[SZCARS],[SZCBSC],[SZCFGFL],[SZCITM],[SZCLVL],[SZCMCG],[SZCMGL],[SZCMGP],[SZCNDJ],[SZCNID],[SZCO],[SZCOMM],[SZCOT],[SZCPNT],[SZCRCD],[SZCRMD],[SZCRR],[SZCSTO],[SZCTRY],[SZDCT],[SZDCTO],[SZDEID],[SZDELN],[SZDGL],[SZDMCS],[SZDMCT],[SZDOC],[SZDOCO],[SZDRQT],[SZDSC1],[SZDSC2],[SZDSFT],[SZDSPR],[SZDTBS],[SZDTYS],[SZDUAL],[SZDVAN],[SZECST],[SZEDBT],[SZEDCT],[SZEDDL],[SZEDDT],[SZEDER],[SZEDFT],[SZEDLN],[SZEDOC],[SZEDSP],[SZEDSQ],[SZEDST],[SZEDTY],[SZEKCO],[SZEMCU],[SZEUSE],[SZEXDP],[SZEXR1],[SZFAPP],[SZFEA],[SZFEC],[SZFPRC],[SZFRAT],[SZFRGD],[SZFRMP],[SZFRTC],[SZFRTH],[SZFUC],[SZFUF1],[SZFUN2],[SZFUP],[SZFY],[SZGAN8],[SZGCARS],[SZGDVAN],[SZGLC],[SZGPA8],[SZGRWT],[SZGSHAN],[SZGVEND],[SZGWUM],[SZHOLD],[SZINMG],[SZIR01],[SZIR02],[SZIR03],[SZIR04],[SZIR05],[SZITM],[SZITVL],[SZITWT],[SZIVD],[SZJBCD],[SZJOBN],[SZKCO],[SZKCOO],[SZKTLN],[SZKTP],[SZLCOD],[SZLITM],[SZLNID],[SZLNTY],[SZLOB],[SZLOCN],[SZLOTN],[SZLPRC],[SZLT],[SZLTTR],[SZMCU],[SZMOT],[SZNTR],[SZNXTR],[SZOBJ],[SZOCTO],[SZODCT],[SZODOC],[SZOGNO],[SZOKC],[SZOKCO],[SZOMCU],[SZOORN],[SZOPDJ],[SZOPTT],[SZORP],[SZORPR],[SZOTQY],[SZPA8],[SZPDDJ],[SZPDTT],[SZPEFJ],[SZPID],[SZPMDT],[SZPMPN],[SZPMTN],[SZPMTO],[SZPNID],[SZPODC01],[SZPODC02],[SZPODC03],[SZPODC04],[SZPPDJ],[SZPQOR],[SZPRGR],[SZPRIO],[SZPRJM],[SZPROV],[SZPRP1],[SZPRP2],[SZPRP3],[SZPRP4],[SZPRP5],[SZPSDJ],[SZPSIG],[SZPSN],[SZPSTM],[SZPTC],[SZQRLV],[SZQTYT],[SZRATT],[SZRCD],[SZRCTO],[SZRESL],[SZRFRV],[SZRKCO],[SZRKIT],[SZRLDJ],[SZRLIT],[SZRLLN],[SZRLNU],[SZRLTM],[SZRORN],[SZROUT],[SZRPRC],[SZRSDJ],[SZRYIN],[SZSBAL],[SZSBL],[SZSBLT],[SZSERN],[SZSFXO],[SZSHAN],[SZSHCM],[SZSHCN],[SZSHPN],[SZSO01],[SZSO02],[SZSO03],[SZSO04],[SZSO05],[SZSO06],[SZSO07],[SZSO08],[SZSO09],[SZSO10],[SZSO11],[SZSO12],[SZSO13],[SZSO14],[SZSO15],[SZSOBK],[SZSOCN],[SZSONE],[SZSOOR],[SZSOQS],[SZSQOR],[SZSRP1],[SZSRP2],[SZSRP3],[SZSRP4],[SZSRP5],[SZSRQTY],[SZSRUOM],[SZSTOP],[SZSTTS],[SZSUB],[SZSWMS],[SZTAX1],[SZTCST],[SZTDAY],[SZTHGD],[SZTHRP],[SZTORG],[SZTPC],[SZTRDC],[SZTRDJ],[SZTXA1],[SZUNCD],[SZUNCS],[SZUOM],[SZUOM1],[SZUOM2],[SZUOM4],[SZUOPN],[SZUORG],[SZUPC1],[SZUPC2],[SZUPC3],[SZUPMJ],[SZUPRC],[SZURAB],[SZURAT],[SZURCD],[SZURDT],[SZURRF],[SZUSER],[SZVEND],[SZVLUM],[SZVR01],[SZVR02],[SZWTUM],[SZZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_38_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47012]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_38_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47012]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 267
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47012] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_38_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_39_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_39_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4201] (
			[SHCO],[SHDRQJ]
			) INCLUDE (
			[SHBCRC],[SHCRCD],[SHCRRM],[SHDCTO],[SHDOCO],[SHKCOO],[SHMCU],[SHTRDJ]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_39_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4201]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_39_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4201]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4201] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_39_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_40_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_40_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47122] (
			[MJLOTN]
			) INCLUDE (
			[MJAITM],[MJAN8],[MJANI],[MJASII],[MJBALU],[MJCDEC],[MJCITM],[MJCRCD],[MJCRR],[MJDCT],[MJDCTO],[MJDGL],[MJDMCS],[MJDMCT],[MJDOC],[MJDOCO],[MJDSC1],[MJDSC2],[MJEDBT],[MJEDCT],[MJEDDL],[MJEDDT],[MJEDER],[MJEDFT],[MJEDLN],[MJEDOC],[MJEDSP],[MJEDSQ],[MJEDST],[MJEDTY],[MJEKCO],[MJFRTO],[MJGAN8],[MJGLPT],[MJICU],[MJITM],[MJJELN],[MJJOBN],[MJKCO],[MJKCOO],[MJKSEQ],[MJLDSC],[MJLDSQ],[MJLITM],[MJLMCX],[MJLNID],[MJLOCN],[MJLOTC],[MJLOTG],[MJLOTP],[MJLOTS],[MJMCU],[MJMMCU],[MJMMEJ],[MJNLIN],[MJORIG],[MJPACD],[MJPAID],[MJPID],[MJPLOT],[MJPMPN],[MJPNID],[MJPNS],[MJRCD],[MJSBL],[MJSBLT],[MJSFX],[MJSQOR],[MJSTUN],[MJTDAY],[MJTORG],[MJTRDJ],[MJTREF],[MJTREX],[MJTRNO],[MJTRQT],[MJTRUM],[MJUNCS],[MJUOM2],[MJUPMJ],[MJURAB],[MJURAT],[MJURCD],[MJURDT],[MJURRF],[MJUSER],[MJVR01],[MJWR01],[MJXRT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_40_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47122]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_40_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47122]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 90
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47122] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_40_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_41_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_41_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0101] (
			[ABAC26],[ABAT1]
			) INCLUDE (
			[ABAC01],[ABAC02],[ABAC03],[ABAC04],[ABAC05],[ABAC06],[ABAC07],[ABAC08],[ABAC09],[ABAC10],[ABAC11],[ABAC12],[ABAC13],[ABAC14],[ABAC15],[ABAC16],[ABAC17],[ABAC18],[ABAC19],[ABAC20],[ABAC21],[ABAC22],[ABAC23],[ABAC24],[ABAC25],[ABAC27],[ABAC28],[ABAC29],[ABAC30],[ABALKY],[ABALPH],[ABAN8],[ABCM],[ABDC],[ABMCU],[ABSIC],[ABSYNCS],[ABTAX]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_41_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0101]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_41_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0101]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 40
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0101] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_41_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_42_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_42_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] (
			[HRCRTSOCL],[HRDTE],[HRKY],[HRTPE],[HRUPFG]
			) INCLUDE (
			[HR74UBTE],[HR74UETE],[HR74UTE],[HRAA],[HRADDJ],[HRAG],[HRAMND],[HRAN8],[HRAWBNO],[HRBRIDV],[HRBRNW],[HRCCCT],[HRCNID],[HRDIFPERC],[HRDL011],[HRDTITL],[HREV01],[HRGLOC],[HRTDAY],[HRUPMJ],[HRUSER],[HRVARAMT]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_42_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSWB1]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_42_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSWB1]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 27
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_42_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_43_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_43_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B13] (
			[RYAAP],[RYALGO],[RYASTA],[RYATCS],[RYCKAM],[RYCO],[RYDMTJ],[RYEXR],[RYPA8],[RYPYR],[RYTYIN],[RYVERS]
			) INCLUDE (
			[RYAID],[RYALPH],[RYALT6],[RYAM],[RYAN8],[RYARL],[RYARS],[RYBCRC],[RYBKTR],[RYCBNK],[RYCKNU],[RYCRCD],[RYCRR],[RYCRRM],[RYCTRY],[RYDCTG],[RYDCTQ],[RYDGJ],[RYDICJ],[RYDKC],[RYDOCG],[RYDOCQ],[RYEAAC],[RYECLK],[RYEUFB],[RYFAP],[RYFCAM],[RYFY],[RYGLBA],[RYGLC],[RYICU],[RYICUT],[RYISTR],[RYJOBN],[RYNETDOC],[RYNETTCID],[RYNFVD],[RYPID],[RYPN],[RYPOST],[RYPYID],[RYRREF],[RYRYIN],[RYTNST],[RYTORG],[RYUPMJ],[RYUPMT],[RYURAB],[RYURAT],[RYURC1],[RYURDT],[RYURRF],[RYUSER],[RYVDGJ],[RYVLDT],[RYVRE]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_43_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_43_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 68
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B13] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_43_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_44_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_44_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F554153E] (
			[SBKCO]
			) INCLUDE (
			[SBAN01],[SBAN02],[SBAN03],[SBAN04],[SBAN05],[SBAN06],[SBAN07],[SBAN08],[SBAN09],[SBAN10],[SBAN11],[SBAN12],[SBMCU],[SBNQ01],[SBNQ02],[SBNQ03],[SBNQ04],[SBNQ05],[SBNQ06],[SBNQ07],[SBNQ08],[SBNQ09],[SBNQ10],[SBNQ11],[SBNQ12],[SBTRDJ],[SBUITM],[SBUNCS],[SBUOM1]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_44_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554153E]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_44_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554153E]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F554153E] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_44_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_45_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_45_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] (
			[MPCFY]
			) INCLUDE (
			[MPAN8],[MPCO],[MPDSE],[MPLITM],[MPMCU]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_45_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55POTMH]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_45_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55POTMH]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_45_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_46_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_46_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0413] (
			[RMDICJ]
			) INCLUDE (
			[RMCRCD],[RMCRRM],[RMDCTM],[RMDMTJ],[RMDOCM],[RMICU],[RMICUT],[RMISTP],[RMPAAP],[RMPYE],[RMPYID],[RMUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_46_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0413]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_46_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0413]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0413] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_46_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_47_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_47_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4801] (
			[WAAPID],[WADCTO],[WADL01],[WAMCU],[WASRST],[WATRDJ],[WATYPS],[WAUPMJ]
			) INCLUDE (
			[WAAAID],[WAACDN],[WAAISL],[WAAITM],[WAAMLC],[WAAMMC],[WAAMOT],[WAAMTA],[WAAMTC],[WAAMTO],[WAAN8],[WAANO],[WAANP],[WAANPA],[WAANSA],[WAANT],[WAAPRT],[WABIN],[WABM],[WABOMC],[WABREV],[WABRT],[WACO],[WACTS1],[WADAP],[WADAT],[WADCG],[WADCT],[WADOCO],[WADPL],[WADRQJ],[WADRWC],[WAESDN],[WAHRSA],[WAHRSC],[WAHRSO],[WAINDC],[WAITM],[WAJOBN],[WALBAM],[WALITM],[WALNID],[WALOCN],[WALOTG],[WALOTN],[WALOTP],[WALTCM],[WALTLV],[WAMMCU],[WAMOH],[WAMPOS],[WAMTAM],[WANAN8],[WANTST],[WANUMB],[WAPARS],[WAPAYT],[WAPBTM],[WAPC],[WAPEC],[WAPHSE],[WAPID],[WAPNRQ],[WAPOU],[WAPPDT],[WAPPFG],[WAPRTS],[WAPTWO],[WAQTYT],[WARAT1],[WARAT2],[WARCTO],[WAREAS],[WARESC],[WARKCO],[WARORN],[WARREV],[WARTCH],[WARTG],[WASAID],[WASBLI],[WASETC],[WASFXO],[WASHNO],[WASHTY],[WASOBK],[WASOCN],[WASOQS],[WASPRT],[WASTCM],[WASTRT],[WASTRX],[WASUB],[WATBM],[WATDAY],[WATDT],[WATRT],[WAUNCD],[WAUOM],[WAUORG],[WAURAB],[WAURAT],[WAURCD],[WAURDT],[WAURRF],[WAUSER],[WAVR01],[WAVR02],[WAWR01],[WAWR02],[WAWR03],[WAWR04],[WAWR05],[WAWR06],[WAWR07],[WAWR08],[WAWR09],[WAWR10],[WAXDSP],[WAXRTO]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_47_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_47_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 128
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4801] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_47_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_48_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_48_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4072] (
			[ADAN8],[ADBKTPID],[ADEXDJ],[ADIGID]
			) INCLUDE (
			[ADAITM],[ADAPRS],[ADAST],[ADATID],[ADBSCD],[ADCGID],[ADCRCD],[ADCRCDVID],[ADEFTJ],[ADFGY],[ADFRMN],[ADFVTR],[ADFVUM],[ADITM],[ADJOBN],[ADLEDG],[ADLITM],[ADMNQ],[ADNBRORD],[ADOGID],[ADPARTFG],[ADPID],[ADRULENAME],[ADTDAY],[ADUOM],[ADUOMVID],[ADUPMJ],[ADURAB],[ADURAT],[ADURCD],[ADURDT],[ADURRF],[ADUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_48_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4072]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_48_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4072]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 37
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4072] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_48_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_49_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_49_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0912] (
			[RJCO],[RJDOC]
			) INCLUDE (
			[RJAID],[RJDCT],[RJDGJ],[RJDIST],[RJEXA],[RJFFY],[RJFLT],[RJFPN],[RJFROM],[RJFSBL],[RJFSUB],[RJHST],[RJJELN],[RJLT],[RJMCU],[RJMORY],[RJOBJF],[RJOBJT],[RJRE],[RJRF],[RJRFAC],[RJSDTE],[RJSLK],[RJSUBT],[RJTHRU],[RJUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_49_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0912]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_49_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0912]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 28
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0912] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_49_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_50_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_50_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] (
			[TTCO],[TTUKID]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_50_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5503B5A]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_50_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5503B5A]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_50_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_51_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_51_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0401] (
			[A6SCK]
			) INCLUDE (
			[A6AB1],[A6AN8],[A6CRCA]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_51_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0401]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_51_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0401]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0401] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_51_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_52_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_52_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4141] (
			[PJCCCD],[PJCYNO]
			) INCLUDE (
			[PJAISL],[PJAITM],[PJBIN],[PJCNTB],[PJCNTJ],[PJGLPT],[PJITM],[PJJOBN],[PJLITM],[PJLOCN],[PJLOT1],[PJLOT2],[PJLOT3],[PJLOTN],[PJMCU],[PJPID],[PJSQOH],[PJSQOR],[PJSRP1],[PJSRP2],[PJSRP3],[PJSRP4],[PJSRP5],[PJSTUN],[PJTACT],[PJTAOH],[PJTDAY],[PJTQCT],[PJTQOH],[PJUNCS],[PJUPMJ],[PJUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_52_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4141]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_52_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4141]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 34
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4141] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_52_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_53_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_53_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4140] (
			[PICSDJ]
			) INCLUDE (
			[PICYCS],[PICYIT],[PICYLO],[PICYNO],[PIDSC1]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_53_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4140]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_53_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4140]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4140] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_53_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE_PRODUCTION];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_54_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_54_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] (
			[RCAPVNAME]
			) INCLUDE (
			[RCAAD1],[RCBFSD],[RCCALNM]) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_54_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55SD005]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_54_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55SD005]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_54_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


USE [JDE920];
BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_55_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_55_20230822
			ON [JDE920].[SY920].[F9563110] (
			[RJJOBNBR],[RJRPDEXHST]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@pre_iid = ic.object_id , @pre_oid = ic.index_id , @pre_is_disable = i.is_disabled, @pre_iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_55_20230822' AND i.object_id = OBJECT_ID('[JDE920].[SY920].[F9563110]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_55_20230822' AND i2.object_id = OBJECT_ID('[JDE920].[SY920].[F9563110]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @pre_iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110];
			IF @pre_is_disable = 1
			BEGIN
				PRINT N'INDEX '+@pre_iname+' ON [JDE920].[SY920].[F9563110] WILL BE ENABLED.';
			END
			ELSE
			BEGIN
				PRINT N'INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110] WILL NOT BE CREATED.';
			END
		END
		ELSE
		BEGIN
			PRINT N'INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110] WILL BE CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_55_20230822 in the database.';
	END
ROLLBACK TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110] CANNOT BE CREATED DUE TO RUNTIME ERROR.';
END CATCH;


/**************** EXECUTE *********************/
DECLARE @iid int, @oid int, @is_disable bit, @iname nvarchar(128);
DECLARE @Smt nvarchar(max);

USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_1_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47132] (
			[SZDCTO],[SZDOCO],[SZEDCT],[SZEDSP],[SZEKCO],[SZKCOO],[SZNXTR],[SZSONE],[SZSWMS]
			) INCLUDE (
			[SZACOM],[SZADDJ],[SZADTM],[SZAEXP],[SZAFT],[SZAID],[SZAITM],[SZAN8],[SZANBY],[SZANI],[SZAOPN],[SZAPTS],[SZAPUM],[SZASN],[SZATXT],[SZBACK],[SZBSC],[SZCADC],[SZCARS],[SZCBSC],[SZCHGC],[SZCITM],[SZCLVL],[SZCMCG],[SZCMGL],[SZCMGP],[SZCNDJ],[SZCNID],[SZCO],[SZCOMM],[SZCOT],[SZCPNT],[SZCRCD],[SZCRMD],[SZCRR],[SZCSTO],[SZCTRY],[SZDCT],[SZDEID],[SZDELN],[SZDGL],[SZDMCS],[SZDMCT],[SZDOC],[SZDRQJ],[SZDRQT],[SZDSC1],[SZDSC2],[SZDSFT],[SZDSPR],[SZDTBS],[SZDTYS],[SZDUAL],[SZDVAN],[SZECST],[SZEDBT],[SZEDDL],[SZEDDT],[SZEDER],[SZEDFT],[SZEDLN],[SZEDOC],[SZEDSQ],[SZEDST],[SZEDTY],[SZEMCU],[SZEUSE],[SZEXDP],[SZEXR1],[SZFAPP],[SZFEA],[SZFEC],[SZFPRC],[SZFRAT],[SZFRGD],[SZFRMP],[SZFRTC],[SZFRTH],[SZFUC],[SZFUF1],[SZFUN2],[SZFUP],[SZFY],[SZGAN8],[SZGCARS],[SZGLC],[SZGPA8],[SZGRWT],[SZGSHAN],[SZGWUM],[SZHOLD],[SZINMG],[SZIR01],[SZIR02],[SZIR03],[SZIR04],[SZIR05],[SZITM],[SZITVL],[SZITWT],[SZIVD],[SZJOBN],[SZKCO],[SZKTLN],[SZKTP],[SZLCOD],[SZLITM],[SZLNID],[SZLNTY],[SZLOB],[SZLOCN],[SZLOTN],[SZLPRC],[SZLT],[SZLTTR],[SZMCU],[SZMOT],[SZNTR],[SZOBJ],[SZOCTO],[SZODCT],[SZODOC],[SZOGNO],[SZOKC],[SZOKCO],[SZOMCU],[SZOORN],[SZOPDJ],[SZOPTT],[SZORP],[SZORPR],[SZOTQY],[SZPA8],[SZPDDJ],[SZPDTT],[SZPEFJ],[SZPID],[SZPMDT],[SZPMPN],[SZPMTN],[SZPMTO],[SZPNID],[SZPNS],[SZPPDJ],[SZPQOR],[SZPRGR],[SZPRIO],[SZPRJM],[SZPROV],[SZPRP1],[SZPRP2],[SZPRP3],[SZPRP4],[SZPRP5],[SZPSDJ],[SZPSIG],[SZPSN],[SZPSTM],[SZPTC],[SZQRLV],[SZQTYT],[SZRATT],[SZRCD],[SZRCTO],[SZRESL],[SZRFRV],[SZRKCO],[SZRKIT],[SZRLDJ],[SZRLIT],[SZRLLN],[SZRLNU],[SZRLTM],[SZRORN],[SZROUT],[SZRPRC],[SZRSDJ],[SZRYIN],[SZSBAL],[SZSBL],[SZSBLT],[SZSERN],[SZSFXO],[SZSHAN],[SZSHCM],[SZSHCN],[SZSHPN],[SZSO01],[SZSO02],[SZSO03],[SZSO04],[SZSO05],[SZSO06],[SZSO07],[SZSO08],[SZSO09],[SZSO10],[SZSO11],[SZSO12],[SZSO13],[SZSO14],[SZSO15],[SZSOBK],[SZSOCN],[SZSOOR],[SZSOQS],[SZSQOR],[SZSRP1],[SZSRP2],[SZSRP3],[SZSRP4],[SZSRP5],[SZSTOP],[SZSTTS],[SZSUB],[SZTAX1],[SZTCST],[SZTDAY],[SZTHGD],[SZTHRP],[SZTORG],[SZTPC],[SZTRDC],[SZTRDJ],[SZTXA1],[SZUNCD],[SZUNCS],[SZUOM],[SZUOM1],[SZUOM2],[SZUOM4],[SZUOPN],[SZUORG],[SZUPC1],[SZUPC2],[SZUPC3],[SZUPMJ],[SZUPRC],[SZURAB],[SZURAT],[SZURCD],[SZURDT],[SZURRF],[SZUSER],[SZVEND],[SZVLUM],[SZVR01],[SZVR02],[SZWTUM],[SZZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_1_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47132]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_1_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47132]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 259
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47132] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47132] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132];
			CREATE NONCLUSTERED INDEX IX_AIDBA_1_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47132] (
			[SZDCTO],[SZDOCO],[SZEDCT],[SZEDSP],[SZEKCO],[SZKCOO],[SZNXTR],[SZSONE],[SZSWMS]
			) INCLUDE (
			[SZACOM],[SZADDJ],[SZADTM],[SZAEXP],[SZAFT],[SZAID],[SZAITM],[SZAN8],[SZANBY],[SZANI],[SZAOPN],[SZAPTS],[SZAPUM],[SZASN],[SZATXT],[SZBACK],[SZBSC],[SZCADC],[SZCARS],[SZCBSC],[SZCHGC],[SZCITM],[SZCLVL],[SZCMCG],[SZCMGL],[SZCMGP],[SZCNDJ],[SZCNID],[SZCO],[SZCOMM],[SZCOT],[SZCPNT],[SZCRCD],[SZCRMD],[SZCRR],[SZCSTO],[SZCTRY],[SZDCT],[SZDEID],[SZDELN],[SZDGL],[SZDMCS],[SZDMCT],[SZDOC],[SZDRQJ],[SZDRQT],[SZDSC1],[SZDSC2],[SZDSFT],[SZDSPR],[SZDTBS],[SZDTYS],[SZDUAL],[SZDVAN],[SZECST],[SZEDBT],[SZEDDL],[SZEDDT],[SZEDER],[SZEDFT],[SZEDLN],[SZEDOC],[SZEDSQ],[SZEDST],[SZEDTY],[SZEMCU],[SZEUSE],[SZEXDP],[SZEXR1],[SZFAPP],[SZFEA],[SZFEC],[SZFPRC],[SZFRAT],[SZFRGD],[SZFRMP],[SZFRTC],[SZFRTH],[SZFUC],[SZFUF1],[SZFUN2],[SZFUP],[SZFY],[SZGAN8],[SZGCARS],[SZGLC],[SZGPA8],[SZGRWT],[SZGSHAN],[SZGWUM],[SZHOLD],[SZINMG],[SZIR01],[SZIR02],[SZIR03],[SZIR04],[SZIR05],[SZITM],[SZITVL],[SZITWT],[SZIVD],[SZJOBN],[SZKCO],[SZKTLN],[SZKTP],[SZLCOD],[SZLITM],[SZLNID],[SZLNTY],[SZLOB],[SZLOCN],[SZLOTN],[SZLPRC],[SZLT],[SZLTTR],[SZMCU],[SZMOT],[SZNTR],[SZOBJ],[SZOCTO],[SZODCT],[SZODOC],[SZOGNO],[SZOKC],[SZOKCO],[SZOMCU],[SZOORN],[SZOPDJ],[SZOPTT],[SZORP],[SZORPR],[SZOTQY],[SZPA8],[SZPDDJ],[SZPDTT],[SZPEFJ],[SZPID],[SZPMDT],[SZPMPN],[SZPMTN],[SZPMTO],[SZPNID],[SZPNS],[SZPPDJ],[SZPQOR],[SZPRGR],[SZPRIO],[SZPRJM],[SZPROV],[SZPRP1],[SZPRP2],[SZPRP3],[SZPRP4],[SZPRP5],[SZPSDJ],[SZPSIG],[SZPSN],[SZPSTM],[SZPTC],[SZQRLV],[SZQTYT],[SZRATT],[SZRCD],[SZRCTO],[SZRESL],[SZRFRV],[SZRKCO],[SZRKIT],[SZRLDJ],[SZRLIT],[SZRLLN],[SZRLNU],[SZRLTM],[SZRORN],[SZROUT],[SZRPRC],[SZRSDJ],[SZRYIN],[SZSBAL],[SZSBL],[SZSBLT],[SZSERN],[SZSFXO],[SZSHAN],[SZSHCM],[SZSHCN],[SZSHPN],[SZSO01],[SZSO02],[SZSO03],[SZSO04],[SZSO05],[SZSO06],[SZSO07],[SZSO08],[SZSO09],[SZSO10],[SZSO11],[SZSO12],[SZSO13],[SZSO14],[SZSO15],[SZSOBK],[SZSOCN],[SZSOOR],[SZSOQS],[SZSQOR],[SZSRP1],[SZSRP2],[SZSRP3],[SZSRP4],[SZSRP5],[SZSTOP],[SZSTTS],[SZSUB],[SZTAX1],[SZTCST],[SZTDAY],[SZTHGD],[SZTHRP],[SZTORG],[SZTPC],[SZTRDC],[SZTRDJ],[SZTXA1],[SZUNCD],[SZUNCS],[SZUOM],[SZUOM1],[SZUOM2],[SZUOM4],[SZUOPN],[SZUORG],[SZUPC1],[SZUPC2],[SZUPC3],[SZUPMJ],[SZUPRC],[SZURAB],[SZURAT],[SZURCD],[SZURDT],[SZURRF],[SZUSER],[SZVEND],[SZVLUM],[SZVR01],[SZVR02],[SZWTUM],[SZZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_1_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_1_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47132] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_2_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47011] (
			[SYDRQJ],[SYEDCT],[SYEDDT],[SYSHAN],[SYVR01]
			) INCLUDE (
			[SYADDJ],[SYADLJ],[SYADTM],[SYAFT],[SYAN8],[SYANBY],[SYASN],[SYATXT],[SYAUFI],[SYAUFT],[SYAUTN],[SYBACK],[SYBCRC],[SYBSC],[SYCACT],[SYCARS],[SYCCIDLN],[SYCEXP],[SYCLASS01],[SYCLASS02],[SYCLASS03],[SYCLASS04],[SYCLASS05],[SYCNDJ],[SYCNID],[SYCO],[SYCORD],[SYCOT],[SYCRCD],[SYCRMD],[SYCRR],[SYCRRM],[SYDCT4],[SYDCTO],[SYDEL1],[SYDEL2],[SYDOC1],[SYDOCO],[SYDRQT],[SYDVAN],[SYEDBT],[SYEDDL],[SYEDER],[SYEDFT],[SYEDLN],[SYEDOC],[SYEDSP],[SYEDSQ],[SYEDST],[SYEDTY],[SYEKCO],[SYEXDT0],[SYEXDT1],[SYEXDT2],[SYEXNM0],[SYEXNM1],[SYEXNM2],[SYEXNMP0],[SYEXNMP1],[SYEXNMP2],[SYEXR1],[SYEXVAR0],[SYEXVAR1],[SYEXVAR12],[SYEXVAR13],[SYEXVAR4],[SYEXVAR5],[SYEXVAR6],[SYEXVAR7],[SYFAP],[SYFCST],[SYFRTH],[SYFTAN],[SYFUF1],[SYGAN8],[SYGCARS],[SYGDVAN],[SYGFTAN],[SYGITAN],[SYGPA8],[SYGPBAN],[SYGPRAN8],[SYGSHAN],[SYHOLD],[SYINMG],[SYIR01],[SYIR02],[SYIR03],[SYIR04],[SYIR05],[SYITAN],[SYJOBN],[SYKCOO],[SYLNGP],[SYMCU],[SYMOT],[SYNTR],[SYNXDJ],[SYOCTO],[SYOFRQ],[SYOKCO],[SYOORN],[SYOPBA],[SYOPBK],[SYOPBO],[SYOPDJ],[SYOPLD],[SYOPLL],[SYOPMS],[SYOPPID],[SYOPPL],[SYOPPS],[SYOPSB],[SYOPSS],[SYOPTC],[SYOPTT],[SYORBY],[SYOTIND],[SYOTOT],[SYPA8],[SYPBAN],[SYPCRT],[SYPDDJ],[SYPDTT],[SYPEFJ],[SYPID],[SYPMDT],[SYPNID],[SYPOHAB01],[SYPOHAB02],[SYPOHC01],[SYPOHC02],[SYPOHC03],[SYPOHC04],[SYPOHC05],[SYPOHC06],[SYPOHC07],[SYPOHC08],[SYPOHC09],[SYPOHC10],[SYPOHC11],[SYPOHC12],[SYPOHD01],[SYPOHD02],[SYPOHP01],[SYPOHP02],[SYPOHP03],[SYPOHP04],[SYPOHP05],[SYPOHP06],[SYPOHP07],[SYPOHP08],[SYPOHP09],[SYPOHP10],[SYPOHP11],[SYPOHP12],[SYPOHP13],[SYPOHU01],[SYPOHU02],[SYPPDJ],[SYPRAN8],[SYPRCIDLN],[SYPRGP],[SYPRIO],[SYPSDJ],[SYPSTM],[SYPTC],[SYRCD],[SYRCTO],[SYRETI],[SYRKCO],[SYRORN],[SYROUT],[SYRQSJ],[SYRSDT],[SYRSHT],[SYRYIN],[SYSBAL],[SYSDATTN],[SYSFXO],[SYSHCCIDLN],[SYSOOR],[SYSPATTN],[SYSSDJ],[SYSTOP],[SYTDAY],[SYTKBY],[SYTORG],[SYTOTC],[SYTPUR],[SYTRDC],[SYTRDJ],[SYTXA1],[SYTXCT],[SYUPMJ],[SYURAB],[SYURAT],[SYURCD],[SYURDT],[SYURRF],[SYUSER],[SYVR02],[SYVR03],[SYVUMD],[SYWUMD],[SYZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_2_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47011]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_2_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47011]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 211
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47011] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47011] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011];
			CREATE NONCLUSTERED INDEX IX_AIDBA_2_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47011] (
			[SYDRQJ],[SYEDCT],[SYEDDT],[SYSHAN],[SYVR01]
			) INCLUDE (
			[SYADDJ],[SYADLJ],[SYADTM],[SYAFT],[SYAN8],[SYANBY],[SYASN],[SYATXT],[SYAUFI],[SYAUFT],[SYAUTN],[SYBACK],[SYBCRC],[SYBSC],[SYCACT],[SYCARS],[SYCCIDLN],[SYCEXP],[SYCLASS01],[SYCLASS02],[SYCLASS03],[SYCLASS04],[SYCLASS05],[SYCNDJ],[SYCNID],[SYCO],[SYCORD],[SYCOT],[SYCRCD],[SYCRMD],[SYCRR],[SYCRRM],[SYDCT4],[SYDCTO],[SYDEL1],[SYDEL2],[SYDOC1],[SYDOCO],[SYDRQT],[SYDVAN],[SYEDBT],[SYEDDL],[SYEDER],[SYEDFT],[SYEDLN],[SYEDOC],[SYEDSP],[SYEDSQ],[SYEDST],[SYEDTY],[SYEKCO],[SYEXDT0],[SYEXDT1],[SYEXDT2],[SYEXNM0],[SYEXNM1],[SYEXNM2],[SYEXNMP0],[SYEXNMP1],[SYEXNMP2],[SYEXR1],[SYEXVAR0],[SYEXVAR1],[SYEXVAR12],[SYEXVAR13],[SYEXVAR4],[SYEXVAR5],[SYEXVAR6],[SYEXVAR7],[SYFAP],[SYFCST],[SYFRTH],[SYFTAN],[SYFUF1],[SYGAN8],[SYGCARS],[SYGDVAN],[SYGFTAN],[SYGITAN],[SYGPA8],[SYGPBAN],[SYGPRAN8],[SYGSHAN],[SYHOLD],[SYINMG],[SYIR01],[SYIR02],[SYIR03],[SYIR04],[SYIR05],[SYITAN],[SYJOBN],[SYKCOO],[SYLNGP],[SYMCU],[SYMOT],[SYNTR],[SYNXDJ],[SYOCTO],[SYOFRQ],[SYOKCO],[SYOORN],[SYOPBA],[SYOPBK],[SYOPBO],[SYOPDJ],[SYOPLD],[SYOPLL],[SYOPMS],[SYOPPID],[SYOPPL],[SYOPPS],[SYOPSB],[SYOPSS],[SYOPTC],[SYOPTT],[SYORBY],[SYOTIND],[SYOTOT],[SYPA8],[SYPBAN],[SYPCRT],[SYPDDJ],[SYPDTT],[SYPEFJ],[SYPID],[SYPMDT],[SYPNID],[SYPOHAB01],[SYPOHAB02],[SYPOHC01],[SYPOHC02],[SYPOHC03],[SYPOHC04],[SYPOHC05],[SYPOHC06],[SYPOHC07],[SYPOHC08],[SYPOHC09],[SYPOHC10],[SYPOHC11],[SYPOHC12],[SYPOHD01],[SYPOHD02],[SYPOHP01],[SYPOHP02],[SYPOHP03],[SYPOHP04],[SYPOHP05],[SYPOHP06],[SYPOHP07],[SYPOHP08],[SYPOHP09],[SYPOHP10],[SYPOHP11],[SYPOHP12],[SYPOHP13],[SYPOHU01],[SYPOHU02],[SYPPDJ],[SYPRAN8],[SYPRCIDLN],[SYPRGP],[SYPRIO],[SYPSDJ],[SYPSTM],[SYPTC],[SYRCD],[SYRCTO],[SYRETI],[SYRKCO],[SYRORN],[SYROUT],[SYRQSJ],[SYRSDT],[SYRSHT],[SYRYIN],[SYSBAL],[SYSDATTN],[SYSFXO],[SYSHCCIDLN],[SYSOOR],[SYSPATTN],[SYSSDJ],[SYSTOP],[SYTDAY],[SYTKBY],[SYTORG],[SYTOTC],[SYTPUR],[SYTRDC],[SYTRDJ],[SYTXA1],[SYTXCT],[SYUPMJ],[SYURAB],[SYURAT],[SYURCD],[SYURDT],[SYURRF],[SYUSER],[SYVR02],[SYVR03],[SYVUMD],[SYWUMD],[SYZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_2_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_2_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47011] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_3_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47042] (
			[SZAN8],[SZVINV]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_3_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47042]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_3_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47042]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47042] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47042] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042];
			CREATE NONCLUSTERED INDEX IX_AIDBA_3_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47042] (
			[SZAN8],[SZVINV]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_3_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_3_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47042] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_4_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4290] (
			[SEDCTO],[SEDOCO],[SEKCOO]
			) INCLUDE (
			[SECARS],[SEDDEL],[SEDELN],[SEFRTH],[SEITM],[SEITVL],[SEITWT],[SELNID],[SEMCU],[SESFXO],[SESHAN],[SESHCM],[SESHCN],[SESOQS],[SETRRS],[SEUOM]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_4_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4290]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_4_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4290]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 19
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4290] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4290] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290];
			CREATE NONCLUSTERED INDEX IX_AIDBA_4_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4290] (
			[SEDCTO],[SEDOCO],[SEKCOO]
			) INCLUDE (
			[SECARS],[SEDDEL],[SEDELN],[SEFRTH],[SEITM],[SEITVL],[SEITWT],[SELNID],[SEMCU],[SESFXO],[SESHAN],[SESHCM],[SESHCN],[SESOQS],[SETRRS],[SEUOM]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_4_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_4_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4290] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_5_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47131] (
			[SYCO],[SYDCTO],[SYDOCO],[SYEDCT],[SYEDDT],[SYEDFT],[SYEDSP],[SYEKCO],[SYKCOO]
			) INCLUDE (
			[SYADDJ],[SYADLJ],[SYADTM],[SYAFT],[SYAN8],[SYANBY],[SYASN],[SYATXT],[SYAUFI],[SYAUFT],[SYAUTN],[SYBACK],[SYBCRC],[SYBSC],[SYCACT],[SYCARS],[SYCCIDLN],[SYCEXP],[SYCNDJ],[SYCNID],[SYCORD],[SYCOT],[SYCRCD],[SYCRMD],[SYCRR],[SYCRRM],[SYDCT4],[SYDEL1],[SYDEL2],[SYDOC1],[SYDRQJ],[SYDRQT],[SYDVAN],[SYEDBT],[SYEDDL],[SYEDER],[SYEDLN],[SYEDOC],[SYEDSQ],[SYEDST],[SYEDTY],[SYEXR1],[SYFAP],[SYFCST],[SYFRTH],[SYFTAN],[SYFUF1],[SYGAN8],[SYGANS8],[SYGAUFI],[SYGAUFT],[SYGCARS],[SYGDVAN],[SYGFTAN],[SYGITAN],[SYGPA8],[SYGPBAN],[SYGSHAN],[SYHOLD],[SYINMG],[SYIR01],[SYIR02],[SYIR03],[SYIR04],[SYIR05],[SYITAN],[SYJOBN],[SYLNGP],[SYMCU],[SYMOT],[SYNTR],[SYOCTO],[SYOKCO],[SYOORN],[SYOPBA],[SYOPBK],[SYOPBO],[SYOPDJ],[SYOPLD],[SYOPLL],[SYOPMS],[SYOPPID],[SYOPPL],[SYOPPS],[SYOPSB],[SYOPSS],[SYOPTC],[SYOPTT],[SYORBY],[SYOTIND],[SYOTOT],[SYPA8],[SYPBAN],[SYPCRT],[SYPDDJ],[SYPDTT],[SYPEFJ],[SYPID],[SYPMDT],[SYPNID],[SYPPDJ],[SYPRAN8],[SYPRCIDLN],[SYPRGP],[SYPRIO],[SYPSDJ],[SYPSTM],[SYPTC],[SYRCD],[SYRCTO],[SYRKCO],[SYRORN],[SYROUT],[SYRQSJ],[SYRSDT],[SYRSHT],[SYRYIN],[SYSBAL],[SYSDATTN],[SYSFXO],[SYSHAN],[SYSHCCIDLN],[SYSOOR],[SYSPATTN],[SYSTOP],[SYTDAY],[SYTKBY],[SYTORG],[SYTOTC],[SYTPUR],[SYTRDC],[SYTRDJ],[SYTXA1],[SYTXCT],[SYUPMJ],[SYURAB],[SYURAT],[SYURCD],[SYURDT],[SYURRF],[SYUSER],[SYVR01],[SYVR02],[SYVR03],[SYVUMD],[SYWUMD],[SYZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_5_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47131]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_5_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47131]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 156
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47131] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47131] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131];
			CREATE NONCLUSTERED INDEX IX_AIDBA_5_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47131] (
			[SYCO],[SYDCTO],[SYDOCO],[SYEDCT],[SYEDDT],[SYEDFT],[SYEDSP],[SYEKCO],[SYKCOO]
			) INCLUDE (
			[SYADDJ],[SYADLJ],[SYADTM],[SYAFT],[SYAN8],[SYANBY],[SYASN],[SYATXT],[SYAUFI],[SYAUFT],[SYAUTN],[SYBACK],[SYBCRC],[SYBSC],[SYCACT],[SYCARS],[SYCCIDLN],[SYCEXP],[SYCNDJ],[SYCNID],[SYCORD],[SYCOT],[SYCRCD],[SYCRMD],[SYCRR],[SYCRRM],[SYDCT4],[SYDEL1],[SYDEL2],[SYDOC1],[SYDRQJ],[SYDRQT],[SYDVAN],[SYEDBT],[SYEDDL],[SYEDER],[SYEDLN],[SYEDOC],[SYEDSQ],[SYEDST],[SYEDTY],[SYEXR1],[SYFAP],[SYFCST],[SYFRTH],[SYFTAN],[SYFUF1],[SYGAN8],[SYGANS8],[SYGAUFI],[SYGAUFT],[SYGCARS],[SYGDVAN],[SYGFTAN],[SYGITAN],[SYGPA8],[SYGPBAN],[SYGSHAN],[SYHOLD],[SYINMG],[SYIR01],[SYIR02],[SYIR03],[SYIR04],[SYIR05],[SYITAN],[SYJOBN],[SYLNGP],[SYMCU],[SYMOT],[SYNTR],[SYOCTO],[SYOKCO],[SYOORN],[SYOPBA],[SYOPBK],[SYOPBO],[SYOPDJ],[SYOPLD],[SYOPLL],[SYOPMS],[SYOPPID],[SYOPPL],[SYOPPS],[SYOPSB],[SYOPSS],[SYOPTC],[SYOPTT],[SYORBY],[SYOTIND],[SYOTOT],[SYPA8],[SYPBAN],[SYPCRT],[SYPDDJ],[SYPDTT],[SYPEFJ],[SYPID],[SYPMDT],[SYPNID],[SYPPDJ],[SYPRAN8],[SYPRCIDLN],[SYPRGP],[SYPRIO],[SYPSDJ],[SYPSTM],[SYPTC],[SYRCD],[SYRCTO],[SYRKCO],[SYRORN],[SYROUT],[SYRQSJ],[SYRSDT],[SYRSHT],[SYRYIN],[SYSBAL],[SYSDATTN],[SYSFXO],[SYSHAN],[SYSHCCIDLN],[SYSOOR],[SYSPATTN],[SYSTOP],[SYTDAY],[SYTKBY],[SYTORG],[SYTOTC],[SYTPUR],[SYTRDC],[SYTRDJ],[SYTXA1],[SYTXCT],[SYUPMJ],[SYURAB],[SYURAT],[SYURCD],[SYURDT],[SYURRF],[SYUSER],[SYVR01],[SYVR02],[SYVR03],[SYVUMD],[SYWUMD],[SYZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_5_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_5_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47131] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_6_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F1201] (
			[FAACL1],[FACO],[FADSP],[FAEQST],[FALOC],[FAMCU]
			) INCLUDE (
			[FAAAID],[FAACL0],[FAACL2],[FAACL3],[FAACL4],[FAACL5],[FAACL6],[FAACL7],[FAACL8],[FAACL9],[FAADDS],[FAAESV],[FAAFE],[FAAITP],[FAAITY],[FAAIV],[FAALRC],[FAAMCU],[FAAMF],[FAAN8],[FAAOBJ],[FAAPID],[FAAPOM],[FAAPUR],[FAARCQ],[FAAROQ],[FAARPC],[FAASID],[FAASUB],[FACRTL],[FADADC],[FADADO],[FADADS],[FADAJ],[FADER],[FADEXJ],[FADL01],[FADL02],[FADL03],[FADMCU],[FADOBJ],[FADSCC],[FADSUB],[FAEFTB],[FAEX],[FAEXR],[FAFA0],[FAFA1],[FAFA2],[FAFA21],[FAFA22],[FAFA23],[FAFA3],[FAFA4],[FAFA5],[FAFA6],[FAFA7],[FAFA8],[FAFA9],[FAFINC],[FAINSA],[FAINSC],[FAINSI],[FAINSM],[FAINSP],[FAITCO],[FAJBCD],[FAJBST],[FAJCD],[FAJOBN],[FAKIT],[FAKITL],[FALANO],[FALCT],[FAMSGA],[FANORU],[FANUMB],[FAPID],[FAPURO],[FAPURP],[FARMCU],[FARMK],[FARMK2],[FAROBJ],[FARSUB],[FASBLI],[FASEQ],[FASFC],[FATXJS],[FAUN],[FAUNIT],[FAUPMJ],[FAUPMT],[FAUSER],[FAWARJ],[FAWOYN],[FAWRFL],[FAXMCU],[FAXOBJ],[FAXSUB]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_6_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F1201]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_6_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F1201]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 106
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F1201] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F1201] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201];
			CREATE NONCLUSTERED INDEX IX_AIDBA_6_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F1201] (
			[FAACL1],[FACO],[FADSP],[FAEQST],[FALOC],[FAMCU]
			) INCLUDE (
			[FAAAID],[FAACL0],[FAACL2],[FAACL3],[FAACL4],[FAACL5],[FAACL6],[FAACL7],[FAACL8],[FAACL9],[FAADDS],[FAAESV],[FAAFE],[FAAITP],[FAAITY],[FAAIV],[FAALRC],[FAAMCU],[FAAMF],[FAAN8],[FAAOBJ],[FAAPID],[FAAPOM],[FAAPUR],[FAARCQ],[FAAROQ],[FAARPC],[FAASID],[FAASUB],[FACRTL],[FADADC],[FADADO],[FADADS],[FADAJ],[FADER],[FADEXJ],[FADL01],[FADL02],[FADL03],[FADMCU],[FADOBJ],[FADSCC],[FADSUB],[FAEFTB],[FAEX],[FAEXR],[FAFA0],[FAFA1],[FAFA2],[FAFA21],[FAFA22],[FAFA23],[FAFA3],[FAFA4],[FAFA5],[FAFA6],[FAFA7],[FAFA8],[FAFA9],[FAFINC],[FAINSA],[FAINSC],[FAINSI],[FAINSM],[FAINSP],[FAITCO],[FAJBCD],[FAJBST],[FAJCD],[FAJOBN],[FAKIT],[FAKITL],[FALANO],[FALCT],[FAMSGA],[FANORU],[FANUMB],[FAPID],[FAPURO],[FAPURP],[FARMCU],[FARMK],[FARMK2],[FAROBJ],[FARSUB],[FASBLI],[FASEQ],[FASFC],[FATXJS],[FAUN],[FAUNIT],[FAUPMJ],[FAUPMT],[FAUSER],[FAWARJ],[FAWOYN],[FAWRFL],[FAXMCU],[FAXOBJ],[FAXSUB]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_6_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_6_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F1201] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_7_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] (
			[DHADDJ],[DHBRIDV],[DHD48Y],[DHKY]
			) INCLUDE (
			[DH$AU2],[DH$AUD],[DH74UFY],[DH75TMPP],[DHAN8],[DHASJ],[DHAWBNO],[DHCBDT],[DHCFD],[DHDCTO],[DHDELN],[DHDL01],[DHDOCO],[DHDOCO1],[DHDRQJ],[DHEMCU],[DHEV01],[DHEV02],[DHEV03],[DHEV04],[DHEV05],[DHKCOO],[DHLTTR],[DHMCU],[DHMOT],[DHMTRC],[DHMTRO],[DHNXTR],[DHSMS3],[DHTRDJ]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_7_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSDO1]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_7_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSDO1]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 34
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1];
			CREATE NONCLUSTERED INDEX IX_AIDBA_7_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] (
			[DHADDJ],[DHBRIDV],[DHD48Y],[DHKY]
			) INCLUDE (
			[DH$AU2],[DH$AUD],[DH74UFY],[DH75TMPP],[DHAN8],[DHASJ],[DHAWBNO],[DHCBDT],[DHCFD],[DHDCTO],[DHDELN],[DHDL01],[DHDOCO],[DHDOCO1],[DHDRQJ],[DHEMCU],[DHEV01],[DHEV02],[DHEV03],[DHEV04],[DHEV05],[DHKCOO],[DHLTTR],[DHMCU],[DHMOT],[DHMTRC],[DHMTRO],[DHNXTR],[DHSMS3],[DHTRDJ]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_7_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_7_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSDO1] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_8_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4101] (
			[IMSRP6],[IMTMPL],[IMUOM1]
			) INCLUDE (
			[IMABCI],[IMABCM],[IMABCS],[IMACQ],[IMAING],[IMAITM],[IMALN],[IMANPL],[IMAPSC],[IMASHL],[IMATPAC],[IMATPCA],[IMATPRN],[IMAUOM],[IMAVRT],[IMBACK],[IMBBDD],[IMBPFG],[IMBUYR],[IMCARP],[IMCARS],[IMCDCD],[IMCKAV],[IMCLEV],[IMCMCG],[IMCMDM],[IMCMETH],[IMCMGL],[IMCOBY],[IMCOMH],[IMCONB],[IMCONT],[IMCOORE],[IMCOTY],[IMCUMTH],[IMCUTH],[IMCYCL],[IMDEFD],[IMDFENDITM],[IMDFTPCT],[IMDLTL],[IMDPPO],[IMDRAW],[IMDSC1],[IMDSC2],[IMDSGP],[IMDSZE],[IMDUAL],[IMEQTY],[IMEXPD],[IMEXPI],[IMFIFO],[IMFRGD],[IMFRMP],[IMGCMP],[IMGLPT],[IMIFLA],[IMINMG],[IMITC],[IMITM],[IMJOBN],[IMKANEXLL],[IMKBIT],[IMLAF],[IMLECM],[IMLEDD],[IMLINE],[IMLITM],[IMLLX],[IMLMFG],[IMLNPA],[IMLNTY],[IMLOTC],[IMLOTS],[IMLTCM],[IMLTFM],[IMLTLV],[IMLTMF],[IMLTPU],[IMMAKE],[IMMCUTH],[IMMIC],[IMMLQ],[IMMMPC],[IMMOPTH],[IMMPSP],[IMMPST],[IMMRPP],[IMMTF1],[IMMTF2],[IMMTF3],[IMMTF4],[IMMTF5],[IMOPC],[IMOPTH],[IMOPV],[IMORDW],[IMORPR],[IMOT1Y],[IMOT2Y],[IMOVR],[IMPCTM],[IMPDGR],[IMPEFD],[IMPID],[IMPLEV],[IMPMTH],[IMPNYN],[IMPOC],[IMPPLV],[IMPRGR],[IMPRI1],[IMPRI2],[IMPRP0],[IMPRP1],[IMPRP2],[IMPRP3],[IMPRP4],[IMPRP5],[IMPRP6],[IMPRP7],[IMPRP8],[IMPRP9],[IMPRPO],[IMPTSC],[IMRPRC],[IMRVNO],[IMRWLA],[IMSBDD],[IMSCC0],[IMSCPSELL],[IMSEG0],[IMSEG1],[IMSEG2],[IMSEG3],[IMSEG4],[IMSEG5],[IMSEG6],[IMSEG7],[IMSEG8],[IMSEG9],[IMSFLT],[IMSHCM],[IMSHCN],[IMSLD],[IMSNS],[IMSRCE],[IMSRNR],[IMSRP0],[IMSRP1],[IMSRP2],[IMSRP3],[IMSRP4],[IMSRP5],[IMSRP7],[IMSRP8],[IMSRP9],[IMSRTX],[IMSTDG],[IMSTDP],[IMSTKT],[IMSUTM],[IMTDAY],[IMTFLA],[IMTHGD],[IMTHRP],[IMU1DD],[IMU2DD],[IMU3DD],[IMU4DD],[IMU5DD],[IMUMDF],[IMUMS0],[IMUMS1],[IMUMS2],[IMUMS3],[IMUMS4],[IMUMS5],[IMUMS6],[IMUMS7],[IMUMS8],[IMUMTH],[IMUMUP],[IMUMVW],[IMUOM2],[IMUOM3],[IMUOM4],[IMUOM6],[IMUOM8],[IMUOM9],[IMUPCN],[IMUPMJ],[IMURAB],[IMURAT],[IMURCD],[IMURDT],[IMURRF],[IMUSER],[IMUVM1],[IMUWUM],[IMVCPFC],[IMVCUD],[IMVMINV],[IMWARR],[IMWTRQ],[IMXDCK]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_8_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4101]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_8_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4101]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 209
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4101] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4101] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101];
			CREATE NONCLUSTERED INDEX IX_AIDBA_8_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4101] (
			[IMSRP6],[IMTMPL],[IMUOM1]
			) INCLUDE (
			[IMABCI],[IMABCM],[IMABCS],[IMACQ],[IMAING],[IMAITM],[IMALN],[IMANPL],[IMAPSC],[IMASHL],[IMATPAC],[IMATPCA],[IMATPRN],[IMAUOM],[IMAVRT],[IMBACK],[IMBBDD],[IMBPFG],[IMBUYR],[IMCARP],[IMCARS],[IMCDCD],[IMCKAV],[IMCLEV],[IMCMCG],[IMCMDM],[IMCMETH],[IMCMGL],[IMCOBY],[IMCOMH],[IMCONB],[IMCONT],[IMCOORE],[IMCOTY],[IMCUMTH],[IMCUTH],[IMCYCL],[IMDEFD],[IMDFENDITM],[IMDFTPCT],[IMDLTL],[IMDPPO],[IMDRAW],[IMDSC1],[IMDSC2],[IMDSGP],[IMDSZE],[IMDUAL],[IMEQTY],[IMEXPD],[IMEXPI],[IMFIFO],[IMFRGD],[IMFRMP],[IMGCMP],[IMGLPT],[IMIFLA],[IMINMG],[IMITC],[IMITM],[IMJOBN],[IMKANEXLL],[IMKBIT],[IMLAF],[IMLECM],[IMLEDD],[IMLINE],[IMLITM],[IMLLX],[IMLMFG],[IMLNPA],[IMLNTY],[IMLOTC],[IMLOTS],[IMLTCM],[IMLTFM],[IMLTLV],[IMLTMF],[IMLTPU],[IMMAKE],[IMMCUTH],[IMMIC],[IMMLQ],[IMMMPC],[IMMOPTH],[IMMPSP],[IMMPST],[IMMRPP],[IMMTF1],[IMMTF2],[IMMTF3],[IMMTF4],[IMMTF5],[IMOPC],[IMOPTH],[IMOPV],[IMORDW],[IMORPR],[IMOT1Y],[IMOT2Y],[IMOVR],[IMPCTM],[IMPDGR],[IMPEFD],[IMPID],[IMPLEV],[IMPMTH],[IMPNYN],[IMPOC],[IMPPLV],[IMPRGR],[IMPRI1],[IMPRI2],[IMPRP0],[IMPRP1],[IMPRP2],[IMPRP3],[IMPRP4],[IMPRP5],[IMPRP6],[IMPRP7],[IMPRP8],[IMPRP9],[IMPRPO],[IMPTSC],[IMRPRC],[IMRVNO],[IMRWLA],[IMSBDD],[IMSCC0],[IMSCPSELL],[IMSEG0],[IMSEG1],[IMSEG2],[IMSEG3],[IMSEG4],[IMSEG5],[IMSEG6],[IMSEG7],[IMSEG8],[IMSEG9],[IMSFLT],[IMSHCM],[IMSHCN],[IMSLD],[IMSNS],[IMSRCE],[IMSRNR],[IMSRP0],[IMSRP1],[IMSRP2],[IMSRP3],[IMSRP4],[IMSRP5],[IMSRP7],[IMSRP8],[IMSRP9],[IMSRTX],[IMSTDG],[IMSTDP],[IMSTKT],[IMSUTM],[IMTDAY],[IMTFLA],[IMTHGD],[IMTHRP],[IMU1DD],[IMU2DD],[IMU3DD],[IMU4DD],[IMU5DD],[IMUMDF],[IMUMS0],[IMUMS1],[IMUMS2],[IMUMS3],[IMUMS4],[IMUMS5],[IMUMS6],[IMUMS7],[IMUMS8],[IMUMTH],[IMUMUP],[IMUMVW],[IMUOM2],[IMUOM3],[IMUOM4],[IMUOM6],[IMUOM8],[IMUOM9],[IMUPCN],[IMUPMJ],[IMURAB],[IMURAT],[IMURCD],[IMURDT],[IMURRF],[IMUSER],[IMUVM1],[IMUWUM],[IMVCPFC],[IMVCUD],[IMVMINV],[IMWARR],[IMWTRQ],[IMXDCK]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_8_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_8_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4101] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_9_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] (
			[ITITM],[ITLOCN],[ITLOTN],[ITMCU]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_9_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55INVCL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_9_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55INVCL]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_9_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] (
			[ITITM],[ITLOCN],[ITLOTN],[ITMCU]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_9_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_9_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55INVCL] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_10_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] (
			[SAADDJ],[SAASP2],[SADL01],[SADL010],[SADL03],[SAIVD],[SAMC01],[SAUNCS],[SAUPMJ],[SAUPMT],[SAUSER]
			) INCLUDE (
			[SAA801],[SAAN01],[SAAN02],[SAAN03],[SAAN04],[SAAN05],[SAASP1],[SAASP3],[SACRCD],[SACRDJ],[SACRTT],[SADL011],[SADL02],[SADL04],[SALITM],[SALNID],[SAMC02],[SAMC03],[SAMC04],[SANQ01],[SANQ04],[SATORG],[SAUOM],[SAUPRC]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_10_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMSAL]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_10_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMSAL]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 35
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL];
			CREATE NONCLUSTERED INDEX IX_AIDBA_10_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] (
			[SAADDJ],[SAASP2],[SADL01],[SADL010],[SADL03],[SAIVD],[SAMC01],[SAUNCS],[SAUPMJ],[SAUPMT],[SAUSER]
			) INCLUDE (
			[SAA801],[SAAN01],[SAAN02],[SAAN03],[SAAN04],[SAAN05],[SAASP1],[SAASP3],[SACRCD],[SACRDJ],[SACRTT],[SADL011],[SADL02],[SADL04],[SALITM],[SALNID],[SAMC02],[SAMC03],[SAMC04],[SANQ01],[SANQ04],[SATORG],[SAUOM],[SAUPRC]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_10_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_10_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMSAL] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_11_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0902] (
			[GBAID],[GBCO],[GBCTRY],[GBFQ],[GBFY],[GBLT]
			) INCLUDE (
			[GBAN01],[GBAN02],[GBAN03],[GBAN04],[GBAN05],[GBAN06],[GBAN07],[GBAN08],[GBAN09],[GBAN10],[GBAN11],[GBAN12],[GBAN13],[GBAN14],[GBAPYC],[GBAPYN],[GBBAPR],[GBBORG],[GBBREQ],[GBCRCD],[GBCRCX],[GBMCU],[GBSBL],[GBSBLT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_11_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0902]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_11_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0902]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0902] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0902] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902];
			CREATE NONCLUSTERED INDEX IX_AIDBA_11_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0902] (
			[GBAID],[GBCO],[GBCTRY],[GBFQ],[GBFY],[GBLT]
			) INCLUDE (
			[GBAN01],[GBAN02],[GBAN03],[GBAN04],[GBAN05],[GBAN06],[GBAN07],[GBAN08],[GBAN09],[GBAN10],[GBAN11],[GBAN12],[GBAN13],[GBAN14],[GBAPYC],[GBAPYN],[GBBAPR],[GBBORG],[GBBREQ],[GBCRCD],[GBCRCX],[GBMCU],[GBSBL],[GBSBLT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_11_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_11_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0902] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_12_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F554079A] (
			[RRDCT]
			) INCLUDE (
			[RRAN8],[RRAST],[RRCGID],[RRCRCD],[RRCUMAMT],[RRCUMQTY],[RRCUMWGT],[RRDCTO],[RRDOC],[RRDOCO],[RREFTJ],[RREXDJ],[RREXR1],[RRIGID],[RRITM],[RRJOBN],[RRKCO],[RRKCOO],[RRLITM],[RRLNID],[RRLNIDDW],[RROGID],[RRORDSEQ],[RRPID],[RRRBAM],[RRRCTO],[RRREBL],[RRRKCO],[RRRLLN],[RRRORN],[RRSFXO],[RRTAX1],[RRTDAY],[RRTOQN],[RRTOSA],[RRTOWT],[RRTXA1],[RRUOM],[RRUPMJ],[RRURAT],[RRURC1],[RRURDT],[RRUSER],[RRVIDCHG],[RRWTUM]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_12_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554079A]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_12_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554079A]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 46
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F554079A] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F554079A] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A];
			CREATE NONCLUSTERED INDEX IX_AIDBA_12_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F554079A] (
			[RRDCT]
			) INCLUDE (
			[RRAN8],[RRAST],[RRCGID],[RRCRCD],[RRCUMAMT],[RRCUMQTY],[RRCUMWGT],[RRDCTO],[RRDOC],[RRDOCO],[RREFTJ],[RREXDJ],[RREXR1],[RRIGID],[RRITM],[RRJOBN],[RRKCO],[RRKCOO],[RRLITM],[RRLNID],[RRLNIDDW],[RROGID],[RRORDSEQ],[RRPID],[RRRBAM],[RRRCTO],[RRREBL],[RRRKCO],[RRRLLN],[RRRORN],[RRSFXO],[RRTAX1],[RRTDAY],[RRTOQN],[RRTOSA],[RRTOWT],[RRTXA1],[RRUOM],[RRUPMJ],[RRURAT],[RRURC1],[RRURDT],[RRUSER],[RRVIDCHG],[RRWTUM]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_12_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_12_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554079A] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_13_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F41021] (
			[LIITM],[LIMCU],[LIPBIN],[LIPQOH]
			) INCLUDE (
			[LICFGSID],[LICHDF],[LIFCOM],[LIFUN1],[LIGLPT],[LIHCMS],[LIHCOM],[LIJOBN],[LILOCN],[LILOTN],[LILOTS],[LILRCJ],[LINCDJ],[LIOT1A],[LIOT1P],[LIOT2P],[LIPBCK],[LIPCOM],[LIPID],[LIPJCM],[LIPJDM],[LIPREQ],[LIQONL],[LIQOWO],[LIQTIN],[LIQTO1],[LIQTO2],[LIQTRI],[LIQTRO],[LIQTTR],[LIQTY1],[LIQTY2],[LIQWBO],[LISCMS],[LISIBW],[LISOBW],[LISQOH],[LISQWO],[LISREQ],[LISWHC],[LISWSC],[LITDAY],[LIUPMJ],[LIURAB],[LIURAT],[LIURCD],[LIURDT],[LIURRF],[LIUSER],[LIWPDF]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_13_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41021]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_13_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41021]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 54
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F41021] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F41021] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021];
			CREATE NONCLUSTERED INDEX IX_AIDBA_13_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F41021] (
			[LIITM],[LIMCU],[LIPBIN],[LIPQOH]
			) INCLUDE (
			[LICFGSID],[LICHDF],[LIFCOM],[LIFUN1],[LIGLPT],[LIHCMS],[LIHCOM],[LIJOBN],[LILOCN],[LILOTN],[LILOTS],[LILRCJ],[LINCDJ],[LIOT1A],[LIOT1P],[LIOT2P],[LIPBCK],[LIPCOM],[LIPID],[LIPJCM],[LIPJDM],[LIPREQ],[LIQONL],[LIQOWO],[LIQTIN],[LIQTO1],[LIQTO2],[LIQTRI],[LIQTRO],[LIQTTR],[LIQTY1],[LIQTY2],[LIQWBO],[LISCMS],[LISIBW],[LISOBW],[LISQOH],[LISQWO],[LISREQ],[LISWHC],[LISWSC],[LITDAY],[LIUPMJ],[LIURAB],[LIURAT],[LIURCD],[LIURDT],[LIURRF],[LIUSER],[LIWPDF]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_13_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_13_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41021] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_14_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4311] (
			[PDAN8],[PDCO],[PDDCTO],[PDDSC1],[PDITM],[PDKCOO],[PDLITM],[PDMCU],[PDNXTR],[PDTORG]
			) INCLUDE (
			[PDACHG],[PDADDJ],[PDAEXP],[PDAID],[PDAITM],[PDAMC3],[PDANBY],[PDANCR],[PDANI],[PDAOPN],[PDAREC],[PDARLV],[PDARTG],[PDASID],[PDASN],[PDATXT],[PDAVCH],[PDBALU],[PDBCRC],[PDCATN],[PDCCMP],[PDCDCD],[PDCFGFL],[PDCHDT],[PDCHLN],[PDCHMJ],[PDCHRS],[PDCHRT],[PDCHT],[PDCLVL],[PDCMDCDE],[PDCNDJ],[PDCNID],[PDCNTRTDID],[PDCNTRTID],[PDCORD],[PDCOT],[PDCPNT],[PDCRCD],[PDCREC],[PDCRMD],[PDCRR],[PDCSMP],[PDCSTO],[PDCTAM],[PDCTRY],[PDDGL],[PDDLEJ],[PDDMCS],[PDDMCT],[PDDOCC],[PDDOCO],[PDDRQJ],[PDDRQT],[PDDSC2],[PDDSPR],[PDDSVJ],[PDDUAL],[PDECST],[PDELEV],[PDEXR1],[PDFAP],[PDFCHG],[PDFEA],[PDFEC],[PDFNLP],[PDFRAT],[PDFREC],[PDFRGD],[PDFRMP],[PDFRRC],[PDFRTC],[PDFRTH],[PDFTN1],[PDFTRL],[PDFUC],[PDFUF1],[PDFUF2],[PDFY],[PDGLC],[PDGRWT],[PDGWUM],[PDINMG],[PDITVL],[PDITWT],[PDJBCD],[PDJOBN],[PDKTLN],[PDLCOD],[PDLDNM],[PDLNID],[PDLNTY],[PDLOCN],[PDLOTN],[PDLT],[PDLTTR],[PDMACT],[PDMATY],[PDMCLN],[PDMERL],[PDMKFR],[PDMOADJ],[PDMOT],[PDNTR],[PDOBJ],[PDOCTO],[PDOGNO],[PDOKCO],[PDOMCU],[PDOORN],[PDOPDJ],[PDOSFX],[PDOTQY],[PDPDDJ],[PDPDP1],[PDPDP2],[PDPDP3],[PDPDP4],[PDPDP5],[PDPDS1],[PDPDS2],[PDPDS3],[PDPDS4],[PDPDS5],[PDPEFJ],[PDPID],[PDPL],[PDPMPN],[PDPMTN],[PDPN],[PDPNS],[PDPODC01],[PDPODC02],[PDPODC03],[PDPODC04],[PDPPDJ],[PDPQOR],[PDPRGR],[PDPRJM],[PDPROM],[PDPROV],[PDPRPY],[PDPRRC],[PDPS01],[PDPS02],[PDPS03],[PDPS04],[PDPS05],[PDPS06],[PDPS07],[PDPS08],[PDPS09],[PDPS10],[PDPSDJ],[PDPTC],[PDPURG],[PDR001],[PDRATT],[PDRCD],[PDRCPF],[PDRCTO],[PDRKCO],[PDRLIT],[PDRLLN],[PDRORN],[PDRSFX],[PDRSHT],[PDRTGC],[PDRTNR],[PDSBL],[PDSBLT],[PDSFXO],[PDSHAN],[PDSHCM],[PDSHCN],[PDSHPN],[PDSQOR],[PDSRQTY],[PDSRUOM],[PDSTTS],[PDSUB],[PDTAG],[PDTDAY],[PDTHGD],[PDTHRP],[PDTRDJ],[PDTRLV],[PDTX],[PDTXA1],[PDUCHG],[PDUKID],[PDUNCD],[PDUNSPSC],[PDUOM],[PDUOM1],[PDUOM2],[PDUOM3],[PDUOPN],[PDUORG],[PDUPMJ],[PDURAB],[PDURAT],[PDURCD],[PDURDT],[PDUREC],[PDURLV],[PDURRF],[PDUSER],[PDVLUM],[PDVR01],[PDVR02],[PDVR03],[PDVR04],[PDVR05],[PDWR01],[PDWTUM],[PDWVID],[PDZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_14_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4311]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_14_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4311]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 228
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4311] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4311] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311];
			CREATE NONCLUSTERED INDEX IX_AIDBA_14_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4311] (
			[PDAN8],[PDCO],[PDDCTO],[PDDSC1],[PDITM],[PDKCOO],[PDLITM],[PDMCU],[PDNXTR],[PDTORG]
			) INCLUDE (
			[PDACHG],[PDADDJ],[PDAEXP],[PDAID],[PDAITM],[PDAMC3],[PDANBY],[PDANCR],[PDANI],[PDAOPN],[PDAREC],[PDARLV],[PDARTG],[PDASID],[PDASN],[PDATXT],[PDAVCH],[PDBALU],[PDBCRC],[PDCATN],[PDCCMP],[PDCDCD],[PDCFGFL],[PDCHDT],[PDCHLN],[PDCHMJ],[PDCHRS],[PDCHRT],[PDCHT],[PDCLVL],[PDCMDCDE],[PDCNDJ],[PDCNID],[PDCNTRTDID],[PDCNTRTID],[PDCORD],[PDCOT],[PDCPNT],[PDCRCD],[PDCREC],[PDCRMD],[PDCRR],[PDCSMP],[PDCSTO],[PDCTAM],[PDCTRY],[PDDGL],[PDDLEJ],[PDDMCS],[PDDMCT],[PDDOCC],[PDDOCO],[PDDRQJ],[PDDRQT],[PDDSC2],[PDDSPR],[PDDSVJ],[PDDUAL],[PDECST],[PDELEV],[PDEXR1],[PDFAP],[PDFCHG],[PDFEA],[PDFEC],[PDFNLP],[PDFRAT],[PDFREC],[PDFRGD],[PDFRMP],[PDFRRC],[PDFRTC],[PDFRTH],[PDFTN1],[PDFTRL],[PDFUC],[PDFUF1],[PDFUF2],[PDFY],[PDGLC],[PDGRWT],[PDGWUM],[PDINMG],[PDITVL],[PDITWT],[PDJBCD],[PDJOBN],[PDKTLN],[PDLCOD],[PDLDNM],[PDLNID],[PDLNTY],[PDLOCN],[PDLOTN],[PDLT],[PDLTTR],[PDMACT],[PDMATY],[PDMCLN],[PDMERL],[PDMKFR],[PDMOADJ],[PDMOT],[PDNTR],[PDOBJ],[PDOCTO],[PDOGNO],[PDOKCO],[PDOMCU],[PDOORN],[PDOPDJ],[PDOSFX],[PDOTQY],[PDPDDJ],[PDPDP1],[PDPDP2],[PDPDP3],[PDPDP4],[PDPDP5],[PDPDS1],[PDPDS2],[PDPDS3],[PDPDS4],[PDPDS5],[PDPEFJ],[PDPID],[PDPL],[PDPMPN],[PDPMTN],[PDPN],[PDPNS],[PDPODC01],[PDPODC02],[PDPODC03],[PDPODC04],[PDPPDJ],[PDPQOR],[PDPRGR],[PDPRJM],[PDPROM],[PDPROV],[PDPRPY],[PDPRRC],[PDPS01],[PDPS02],[PDPS03],[PDPS04],[PDPS05],[PDPS06],[PDPS07],[PDPS08],[PDPS09],[PDPS10],[PDPSDJ],[PDPTC],[PDPURG],[PDR001],[PDRATT],[PDRCD],[PDRCPF],[PDRCTO],[PDRKCO],[PDRLIT],[PDRLLN],[PDRORN],[PDRSFX],[PDRSHT],[PDRTGC],[PDRTNR],[PDSBL],[PDSBLT],[PDSFXO],[PDSHAN],[PDSHCM],[PDSHCN],[PDSHPN],[PDSQOR],[PDSRQTY],[PDSRUOM],[PDSTTS],[PDSUB],[PDTAG],[PDTDAY],[PDTHGD],[PDTHRP],[PDTRDJ],[PDTRLV],[PDTX],[PDTXA1],[PDUCHG],[PDUKID],[PDUNCD],[PDUNSPSC],[PDUOM],[PDUOM1],[PDUOM2],[PDUOM3],[PDUOPN],[PDUORG],[PDUPMJ],[PDURAB],[PDURAT],[PDURCD],[PDURDT],[PDUREC],[PDURLV],[PDURRF],[PDUSER],[PDVLUM],[PDVR01],[PDVR02],[PDVR03],[PDVR04],[PDVR05],[PDWR01],[PDWTUM],[PDWVID],[PDZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_14_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_14_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4311] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_15_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B14] (
			[RZALT6],[RZAN8],[RZCO],[RZDGJ],[RZDMTJ],[RZICUT],[RZISTC],[RZKCO],[RZPA8],[RZPOST],[RZTYIN],[RZUSER]
			) INCLUDE (
			[RZAAAJ],[RZACR1],[RZACR2],[RZACRM],[RZACRR],[RZADGJ],[RZADSA],[RZADSC],[RZAGL],[RZAGLA],[RZAID],[RZAID2],[RZAIDC],[RZAM2],[RZBCRC],[RZCDS],[RZCDSA],[RZCKNU],[RZCRCD],[RZCRR],[RZCRRM],[RZCTL],[RZCTRY],[RZDCT],[RZDCTG],[RZDCTM],[RZDCTO],[RZDDA],[RZDDEX],[RZDDJ],[RZDDNJ],[RZDDST],[RZDICJ],[RZDOC],[RZDOCG],[RZDOCO],[RZDRCO],[RZECBA],[RZECBF],[RZECBR],[RZFCHG],[RZFDA],[RZFNLP],[RZFY],[RZGDCT],[RZGDOC],[RZGFL1],[RZGFL2],[RZGKCO],[RZGLC],[RZGLCC],[RZGSFX],[RZHCRR],[RZICU],[RZIDGJ],[RZJOBN],[RZKCOG],[RZKCOO],[RZLFCJ],[RZLRFL],[RZMCU],[RZMCU2],[RZNETDOC],[RZNETRC5],[RZNETTCID],[RZNFVD],[RZNUMB],[RZODCT],[RZODOC],[RZOKCO],[RZOMOD],[RZOSFX],[RZPAAP],[RZPDCT],[RZPDLT],[RZPFAP],[RZPID],[RZPKCO],[RZPN],[RZPO],[RZPYID],[RZRAMT],[RZRC5],[RZRFID],[RZRIDC],[RZRLIN],[RZRMK],[RZRNID],[RZRPID],[RZRSCO],[RZSBL],[RZSBLT],[RZSFX],[RZSFXO],[RZSHPN],[RZSMTJ],[RZTAAJ],[RZTAAP],[RZTADA],[RZTCBA],[RZTCRC],[RZTDA],[RZTORG],[RZUCTF],[RZUNIT],[RZUPMJ],[RZUPMT],[RZURAB],[RZURAT],[RZURC1],[RZURDT],[RZURRF],[RZUTIC],[RZVDGJ],[RZVR01],[RZVRE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_15_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B14]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_15_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B14]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 128
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B14] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B14] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14];
			CREATE NONCLUSTERED INDEX IX_AIDBA_15_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B14] (
			[RZALT6],[RZAN8],[RZCO],[RZDGJ],[RZDMTJ],[RZICUT],[RZISTC],[RZKCO],[RZPA8],[RZPOST],[RZTYIN],[RZUSER]
			) INCLUDE (
			[RZAAAJ],[RZACR1],[RZACR2],[RZACRM],[RZACRR],[RZADGJ],[RZADSA],[RZADSC],[RZAGL],[RZAGLA],[RZAID],[RZAID2],[RZAIDC],[RZAM2],[RZBCRC],[RZCDS],[RZCDSA],[RZCKNU],[RZCRCD],[RZCRR],[RZCRRM],[RZCTL],[RZCTRY],[RZDCT],[RZDCTG],[RZDCTM],[RZDCTO],[RZDDA],[RZDDEX],[RZDDJ],[RZDDNJ],[RZDDST],[RZDICJ],[RZDOC],[RZDOCG],[RZDOCO],[RZDRCO],[RZECBA],[RZECBF],[RZECBR],[RZFCHG],[RZFDA],[RZFNLP],[RZFY],[RZGDCT],[RZGDOC],[RZGFL1],[RZGFL2],[RZGKCO],[RZGLC],[RZGLCC],[RZGSFX],[RZHCRR],[RZICU],[RZIDGJ],[RZJOBN],[RZKCOG],[RZKCOO],[RZLFCJ],[RZLRFL],[RZMCU],[RZMCU2],[RZNETDOC],[RZNETRC5],[RZNETTCID],[RZNFVD],[RZNUMB],[RZODCT],[RZODOC],[RZOKCO],[RZOMOD],[RZOSFX],[RZPAAP],[RZPDCT],[RZPDLT],[RZPFAP],[RZPID],[RZPKCO],[RZPN],[RZPO],[RZPYID],[RZRAMT],[RZRC5],[RZRFID],[RZRIDC],[RZRLIN],[RZRMK],[RZRNID],[RZRPID],[RZRSCO],[RZSBL],[RZSBLT],[RZSFX],[RZSFXO],[RZSHPN],[RZSMTJ],[RZTAAJ],[RZTAAP],[RZTADA],[RZTCBA],[RZTCRC],[RZTDA],[RZTORG],[RZUCTF],[RZUNIT],[RZUPMJ],[RZUPMT],[RZURAB],[RZURAT],[RZURC1],[RZURDT],[RZURRF],[RZUTIC],[RZVDGJ],[RZVR01],[RZVRE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_15_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_15_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B14] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_16_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] (
			[CNAN8],[CNDCTO],[CNDOCO],[CNKCOO],[CNOCTO],[CNOKCO],[CNOORN],[CNTYOF],[CNUKID]
			) INCLUDE (
			[CNAAP],[CNAG],[CNAMTU],[CNANOG],[CNAOPN],[CNCKAM],[CNCKNU],[CNCRCD],[CNDCT],[CNDGJ],[CNDOC],[CNEDBT],[CNEDLN],[CNEDTN],[CNEDUS],[CNFLG],[CNGLBA],[CNJOBN],[CNKCO],[CNPID],[CNRMK2],[CNSEQ],[CNUPMJ],[CNUPMT],[CNURAB],[CNURAT],[CNURC1],[CNURDT],[CNURRF],[CNUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_16_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5603B13]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_16_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5603B13]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 39
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13];
			CREATE NONCLUSTERED INDEX IX_AIDBA_16_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] (
			[CNAN8],[CNDCTO],[CNDOCO],[CNKCOO],[CNOCTO],[CNOKCO],[CNOORN],[CNTYOF],[CNUKID]
			) INCLUDE (
			[CNAAP],[CNAG],[CNAMTU],[CNANOG],[CNAOPN],[CNCKAM],[CNCKNU],[CNCRCD],[CNDCT],[CNDGJ],[CNDOC],[CNEDBT],[CNEDLN],[CNEDTN],[CNEDUS],[CNFLG],[CNGLBA],[CNJOBN],[CNKCO],[CNPID],[CNRMK2],[CNSEQ],[CNUPMJ],[CNUPMT],[CNURAB],[CNURAT],[CNURC1],[CNURDT],[CNURRF],[CNUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_16_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_16_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5603B13] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_17_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4070] (
			[SNANPS]
			) INCLUDE (
			[SNASN],[SNAST],[SNEFTJ],[SNEXDJ],[SNINHT],[SNJOBN],[SNOSEQ],[SNPID],[SNSCTYPE],[SNSKIPEND],[SNSKIPTO],[SNSTPRCF],[SNTDAY],[SNTIER],[SNUPMJ],[SNURAB],[SNURAT],[SNURCD],[SNURDT],[SNURRF],[SNUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_17_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4070]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_17_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4070]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 22
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4070] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4070] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070];
			CREATE NONCLUSTERED INDEX IX_AIDBA_17_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4070] (
			[SNANPS]
			) INCLUDE (
			[SNASN],[SNAST],[SNEFTJ],[SNEXDJ],[SNINHT],[SNJOBN],[SNOSEQ],[SNPID],[SNSCTYPE],[SNSKIPEND],[SNSKIPTO],[SNSTPRCF],[SNTDAY],[SNTIER],[SNUPMJ],[SNURAB],[SNURAT],[SNURCD],[SNURDT],[SNURRF],[SNUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_17_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_17_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4070] CANNOT BE CREATED.';
END CATCH;


USE [JDE_ARCHIVE];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_18_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230822
			ON [JDE_ARCHIVE].[ARCDTA].[F0911] (
			[GLDGJ],[GLDOC],[GLEXTL],[GLLT],[GLMCU],[GLOBJ],[GLPOST]
			) INCLUDE (
			[GLAA],[GLAID],[GLALT1],[GLALT5],[GLALT9],[GLAN8],[GLANI],[GLASID],[GLBCRC],[GLCO],[GLCRCD],[GLCRR],[GLCRRM],[GLDCT],[GLDICJ],[GLDKC],[GLDSVJ],[GLEXA],[GLEXR],[GLHCRR],[GLHDGJ],[GLHMCU],[GLICU],[GLICUT],[GLJELN],[GLKCO],[GLPO],[GLPYID],[GLR1],[GLR2],[GLR3],[GLRCND],[GLSBL],[GLSBLT],[GLSUB],[GLTORG],[GLU],[GLUM],[GLUSER],[GLVINV],[GLWR01]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_18_20230822' AND i.object_id = OBJECT_ID('[JDE_ARCHIVE].[ARCDTA].[F0911]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_18_20230822' AND i2.object_id = OBJECT_ID('[JDE_ARCHIVE].[ARCDTA].[F0911]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 48
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_ARCHIVE].[ARCDTA].[F0911] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_ARCHIVE].[ARCDTA].[F0911] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911];
			CREATE NONCLUSTERED INDEX IX_AIDBA_18_20230822
			ON [JDE_ARCHIVE].[ARCDTA].[F0911] (
			[GLDGJ],[GLDOC],[GLEXTL],[GLLT],[GLMCU],[GLOBJ],[GLPOST]
			) INCLUDE (
			[GLAA],[GLAID],[GLALT1],[GLALT5],[GLALT9],[GLAN8],[GLANI],[GLASID],[GLBCRC],[GLCO],[GLCRCD],[GLCRR],[GLCRRM],[GLDCT],[GLDICJ],[GLDKC],[GLDSVJ],[GLEXA],[GLEXR],[GLHCRR],[GLHDGJ],[GLHMCU],[GLICU],[GLICUT],[GLJELN],[GLKCO],[GLPO],[GLPYID],[GLR1],[GLR2],[GLR3],[GLRCND],[GLSBL],[GLSBLT],[GLSUB],[GLTORG],[GLU],[GLUM],[GLUSER],[GLVINV],[GLWR01]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_18_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_18_20230822 ON [JDE_ARCHIVE].[ARCDTA].[F0911] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_19_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] (
			[RUCO],[RUEDBT],[RUEUPS],[RUICU],[RUICUT]
			) INCLUDE (
			[RUAG],[RUAM],[RUAN8],[RUCBNK],[RUCKAM],[RUCKNU],[RUCRCD],[RUCRR],[RUCRRM],[RUCTL],[RUDCT],[RUDG#],[RUDGJ],[RUDIC#],[RUDICJ],[RUDMT#],[RUDMTD],[RUDMTJ],[RUDMTM],[RUDMTY],[RUDOC],[RUEDLN],[RUEDTN],[RUEDUS],[RUEHBK],[RUEHTN],[RUFAP],[RUGLBA],[RUGMFD],[RUKCO],[RUPYID],[RUPYIN],[RURMK],[RUSFX],[RUTNST],[RUTYIN],[RUUSER],[RUVR01]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_19_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13Z1]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_19_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13Z1]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 43
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1];
			CREATE NONCLUSTERED INDEX IX_AIDBA_19_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] (
			[RUCO],[RUEDBT],[RUEUPS],[RUICU],[RUICUT]
			) INCLUDE (
			[RUAG],[RUAM],[RUAN8],[RUCBNK],[RUCKAM],[RUCKNU],[RUCRCD],[RUCRR],[RUCRRM],[RUCTL],[RUDCT],[RUDG#],[RUDGJ],[RUDIC#],[RUDICJ],[RUDMT#],[RUDMTD],[RUDMTJ],[RUDMTM],[RUDMTY],[RUDOC],[RUEDLN],[RUEDTN],[RUEDUS],[RUEHBK],[RUEHTN],[RUFAP],[RUGLBA],[RUGMFD],[RUKCO],[RUPYID],[RUPYIN],[RURMK],[RUSFX],[RUTNST],[RUTYIN],[RUUSER],[RUVR01]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_19_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_19_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13Z1] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_20_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F43199] (
			[OLADDJ],[OLAN8],[OLCO],[OLDCTO],[OLDSC1],[OLKCOO],[OLLTTR],[OLMCU],[OLNXTR],[OLUPMJ]
			) INCLUDE (
			[OLACHG],[OLAEXP],[OLAID],[OLAITM],[OLAMC3],[OLANBY],[OLANCR],[OLANI],[OLAOPN],[OLAREC],[OLARLV],[OLARTG],[OLASID],[OLASN],[OLATXT],[OLAVCH],[OLBALU],[OLBCRC],[OLCATN],[OLCCMP],[OLCDCD],[OLCHDT],[OLCHLN],[OLCHMJ],[OLCHRS],[OLCHRT],[OLCHT],[OLCLVL],[OLCMDCDE],[OLCNDJ],[OLCNID],[OLCORD],[OLCOT],[OLCPNT],[OLCRCD],[OLCREC],[OLCRMD],[OLCRR],[OLCSMP],[OLCSTO],[OLCTAM],[OLCTRY],[OLDGL],[OLDLEJ],[OLDLNID],[OLDMCS],[OLDMCT],[OLDOCC],[OLDOCO],[OLDRQJ],[OLDRQT],[OLDSC2],[OLDSPR],[OLDSVJ],[OLDUAL],[OLECST],[OLELEV],[OLEXR1],[OLFAP],[OLFCHG],[OLFEA],[OLFEC],[OLFNLP],[OLFRAT],[OLFREC],[OLFRGD],[OLFRMP],[OLFRRC],[OLFRTC],[OLFRTH],[OLFTN1],[OLFTRL],[OLFUC],[OLFUF1],[OLFUF2],[OLFY],[OLGLC],[OLGRWT],[OLGWUM],[OLINMG],[OLITM],[OLITVL],[OLITWT],[OLJOBN],[OLKTLN],[OLLCOD],[OLLDNM],[OLLITM],[OLLNID],[OLLNTY],[OLLOCN],[OLLOTN],[OLLT],[OLMACT],[OLMATY],[OLMCLN],[OLMERL],[OLMFLG],[OLMKFR],[OLMOT],[OLNTR],[OLOBJ],[OLOCTO],[OLOGNO],[OLOKCO],[OLOMCU],[OLOORN],[OLOPDJ],[OLOSFX],[OLOTQY],[OLPDDJ],[OLPDP1],[OLPDP2],[OLPDP3],[OLPDP4],[OLPDP5],[OLPDS1],[OLPDS2],[OLPDS3],[OLPDS4],[OLPDS5],[OLPEFJ],[OLPID],[OLPL],[OLPMTN],[OLPN],[OLPPDJ],[OLPQOR],[OLPRGR],[OLPRJM],[OLPROM],[OLPROV],[OLPRPY],[OLPRRC],[OLPS01],[OLPS02],[OLPS03],[OLPS04],[OLPS05],[OLPS06],[OLPS07],[OLPS08],[OLPS09],[OLPS10],[OLPSDJ],[OLPTC],[OLPURG],[OLR001],[OLRATT],[OLRCD],[OLRCPF],[OLRCTO],[OLRKCO],[OLRLIT],[OLRLLN],[OLRORN],[OLRSFX],[OLRSHT],[OLRTGC],[OLRTNR],[OLSBL],[OLSBLT],[OLSFXO],[OLSHAN],[OLSHCM],[OLSHCN],[OLSHMT],[OLSHPN],[OLSQOR],[OLSTTS],[OLSUB],[OLTAG],[OLTDAY],[OLTHGD],[OLTHRP],[OLTORG],[OLTRDJ],[OLTRLV],[OLTX],[OLTXA1],[OLUCHG],[OLUKID],[OLUNCD],[OLUNSPSC],[OLUOM],[OLUOM1],[OLUOM2],[OLUOM3],[OLUOPN],[OLUORG],[OLURAB],[OLURAT],[OLURCD],[OLURDT],[OLUREC],[OLURLV],[OLURRF],[OLUSER],[OLVLUM],[OLVR01],[OLVR02],[OLVR04],[OLVR05],[OLWR01],[OLWTUM],[OLZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_20_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43199]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_20_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43199]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 216
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F43199] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F43199] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199];
			CREATE NONCLUSTERED INDEX IX_AIDBA_20_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F43199] (
			[OLADDJ],[OLAN8],[OLCO],[OLDCTO],[OLDSC1],[OLKCOO],[OLLTTR],[OLMCU],[OLNXTR],[OLUPMJ]
			) INCLUDE (
			[OLACHG],[OLAEXP],[OLAID],[OLAITM],[OLAMC3],[OLANBY],[OLANCR],[OLANI],[OLAOPN],[OLAREC],[OLARLV],[OLARTG],[OLASID],[OLASN],[OLATXT],[OLAVCH],[OLBALU],[OLBCRC],[OLCATN],[OLCCMP],[OLCDCD],[OLCHDT],[OLCHLN],[OLCHMJ],[OLCHRS],[OLCHRT],[OLCHT],[OLCLVL],[OLCMDCDE],[OLCNDJ],[OLCNID],[OLCORD],[OLCOT],[OLCPNT],[OLCRCD],[OLCREC],[OLCRMD],[OLCRR],[OLCSMP],[OLCSTO],[OLCTAM],[OLCTRY],[OLDGL],[OLDLEJ],[OLDLNID],[OLDMCS],[OLDMCT],[OLDOCC],[OLDOCO],[OLDRQJ],[OLDRQT],[OLDSC2],[OLDSPR],[OLDSVJ],[OLDUAL],[OLECST],[OLELEV],[OLEXR1],[OLFAP],[OLFCHG],[OLFEA],[OLFEC],[OLFNLP],[OLFRAT],[OLFREC],[OLFRGD],[OLFRMP],[OLFRRC],[OLFRTC],[OLFRTH],[OLFTN1],[OLFTRL],[OLFUC],[OLFUF1],[OLFUF2],[OLFY],[OLGLC],[OLGRWT],[OLGWUM],[OLINMG],[OLITM],[OLITVL],[OLITWT],[OLJOBN],[OLKTLN],[OLLCOD],[OLLDNM],[OLLITM],[OLLNID],[OLLNTY],[OLLOCN],[OLLOTN],[OLLT],[OLMACT],[OLMATY],[OLMCLN],[OLMERL],[OLMFLG],[OLMKFR],[OLMOT],[OLNTR],[OLOBJ],[OLOCTO],[OLOGNO],[OLOKCO],[OLOMCU],[OLOORN],[OLOPDJ],[OLOSFX],[OLOTQY],[OLPDDJ],[OLPDP1],[OLPDP2],[OLPDP3],[OLPDP4],[OLPDP5],[OLPDS1],[OLPDS2],[OLPDS3],[OLPDS4],[OLPDS5],[OLPEFJ],[OLPID],[OLPL],[OLPMTN],[OLPN],[OLPPDJ],[OLPQOR],[OLPRGR],[OLPRJM],[OLPROM],[OLPROV],[OLPRPY],[OLPRRC],[OLPS01],[OLPS02],[OLPS03],[OLPS04],[OLPS05],[OLPS06],[OLPS07],[OLPS08],[OLPS09],[OLPS10],[OLPSDJ],[OLPTC],[OLPURG],[OLR001],[OLRATT],[OLRCD],[OLRCPF],[OLRCTO],[OLRKCO],[OLRLIT],[OLRLLN],[OLRORN],[OLRSFX],[OLRSHT],[OLRTGC],[OLRTNR],[OLSBL],[OLSBLT],[OLSFXO],[OLSHAN],[OLSHCM],[OLSHCN],[OLSHMT],[OLSHPN],[OLSQOR],[OLSTTS],[OLSUB],[OLTAG],[OLTDAY],[OLTHGD],[OLTHRP],[OLTORG],[OLTRDJ],[OLTRLV],[OLTX],[OLTXA1],[OLUCHG],[OLUKID],[OLUNCD],[OLUNSPSC],[OLUOM],[OLUOM1],[OLUOM2],[OLUOM3],[OLUOPN],[OLUORG],[OLURAB],[OLURAT],[OLURCD],[OLURDT],[OLUREC],[OLURLV],[OLURRF],[OLUSER],[OLVLUM],[OLVR01],[OLVR02],[OLVR04],[OLVR05],[OLWR01],[OLWTUM],[OLZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_20_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_20_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43199] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_21_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F43121] (
			[PRCO],[PRDCT],[PRDCTO],[PRKCOO],[PRLAND],[PRMATC],[PRMCU],[PRRCDJ],[PRRTBY]
			) INCLUDE (
			[PRACLO],[PRAID],[PRAITM],[PRALIN],[PRAN8],[PRANI],[PRAOPN],[PRAPTD],[PRAREC],[PRASID],[PRAVCH],[PRAVCO],[PRBALU],[PRBCRC],[PRCNID],[PRCPNT],[PRCRCD],[PRCRR],[PRCTAM],[PRDGL],[PRDLOG],[PRDMCS],[PRDMCT],[PRDOC],[PRDOCO],[PRDRQJ],[PRDUAL],[PRECST],[PREXR1],[PRFAP],[PRFAPT],[PRFCLO],[PRFEC],[PRFREC],[PRFRRC],[PRFSRRC],[PRFUF3],[PRFUF4],[PRFUF5],[PRFUF6],[PRGLC],[PRILOG],[PRIMCU],[PRITM],[PRJELN],[PRJOBN],[PRKCO],[PRKTLN],[PRLDNM],[PRLITM],[PRLNID],[PRLNTY],[PRLOCN],[PRLOTG],[PRLOTN],[PRLOTP],[PRLTTR],[PRLVLA],[PRMACT],[PRMERL],[PRNLIN],[PRNXTR],[PROBJ],[PROMCU],[PROPDJ],[PRPAK],[PRPDDJ],[PRPID],[PRPLT],[PRPMPN],[PRPNS],[PRPOE],[PRPRP5],[PRPRRC],[PRPST],[PRPTC],[PRQTYA],[PRQTYC],[PRQTYJ],[PRQTYR],[PRQTYS],[PRQTYW],[PRRCD],[PRRCPF],[PRRTGC],[PRSBL],[PRSBLT],[PRSCCN],[PRSCCQ],[PRSCUM],[PRSFX],[PRSFXO],[PRSHPN],[PRSQOR],[PRSRQTY],[PRSRRC],[PRSRUOM],[PRSTAM],[PRSUB],[PRTDAY],[PRTERM],[PRTORG],[PRTRDJ],[PRTX],[PRTXA1],[PRUCLO],[PRUKID],[PRUOM],[PRUOM2],[PRUOM3],[PRUOPN],[PRUORG],[PRUPCN],[PRUPMJ],[PRUPQT],[PRUPTD],[PRUPUM],[PRURAB],[PRURAT],[PRURCD],[PRURDT],[PRUREC],[PRURRF],[PRUSER],[PRVANI],[PRVARC],[PRVINV],[PRVR01],[PRVR02],[PRVR03],[PRVR04],[PRVR05],[PRVRMK],[PRWOPID],[PRXDCK]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_21_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43121]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_21_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F43121]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 144
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F43121] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F43121] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121];
			CREATE NONCLUSTERED INDEX IX_AIDBA_21_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F43121] (
			[PRCO],[PRDCT],[PRDCTO],[PRKCOO],[PRLAND],[PRMATC],[PRMCU],[PRRCDJ],[PRRTBY]
			) INCLUDE (
			[PRACLO],[PRAID],[PRAITM],[PRALIN],[PRAN8],[PRANI],[PRAOPN],[PRAPTD],[PRAREC],[PRASID],[PRAVCH],[PRAVCO],[PRBALU],[PRBCRC],[PRCNID],[PRCPNT],[PRCRCD],[PRCRR],[PRCTAM],[PRDGL],[PRDLOG],[PRDMCS],[PRDMCT],[PRDOC],[PRDOCO],[PRDRQJ],[PRDUAL],[PRECST],[PREXR1],[PRFAP],[PRFAPT],[PRFCLO],[PRFEC],[PRFREC],[PRFRRC],[PRFSRRC],[PRFUF3],[PRFUF4],[PRFUF5],[PRFUF6],[PRGLC],[PRILOG],[PRIMCU],[PRITM],[PRJELN],[PRJOBN],[PRKCO],[PRKTLN],[PRLDNM],[PRLITM],[PRLNID],[PRLNTY],[PRLOCN],[PRLOTG],[PRLOTN],[PRLOTP],[PRLTTR],[PRLVLA],[PRMACT],[PRMERL],[PRNLIN],[PRNXTR],[PROBJ],[PROMCU],[PROPDJ],[PRPAK],[PRPDDJ],[PRPID],[PRPLT],[PRPMPN],[PRPNS],[PRPOE],[PRPRP5],[PRPRRC],[PRPST],[PRPTC],[PRQTYA],[PRQTYC],[PRQTYJ],[PRQTYR],[PRQTYS],[PRQTYW],[PRRCD],[PRRCPF],[PRRTGC],[PRSBL],[PRSBLT],[PRSCCN],[PRSCCQ],[PRSCUM],[PRSFX],[PRSFXO],[PRSHPN],[PRSQOR],[PRSRQTY],[PRSRRC],[PRSRUOM],[PRSTAM],[PRSUB],[PRTDAY],[PRTERM],[PRTORG],[PRTRDJ],[PRTX],[PRTXA1],[PRUCLO],[PRUKID],[PRUOM],[PRUOM2],[PRUOM3],[PRUOPN],[PRUORG],[PRUPCN],[PRUPMJ],[PRUPQT],[PRUPTD],[PRUPUM],[PRURAB],[PRURAT],[PRURCD],[PRURDT],[PRUREC],[PRURRF],[PRUSER],[PRVANI],[PRVARC],[PRVINV],[PRVR01],[PRVR02],[PRVR03],[PRVR04],[PRVR05],[PRVRMK],[PRWOPID],[PRXDCK]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_21_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_21_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F43121] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_22_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] (
			[IVUPMJ],[IVUPMT],[IVUSER]
			) INCLUDE (
			[IVA801],[IVASP1],[IVASP2],[IVCRDJ],[IVCRTT],[IVDL010],[IVDL02],[IVLITM],[IVMC01],[IVNQ01],[IVTORG],[IVTRDJ],[IVUOM]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_22_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMINV]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_22_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55DMINV]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 16
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV];
			CREATE NONCLUSTERED INDEX IX_AIDBA_22_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] (
			[IVUPMJ],[IVUPMT],[IVUSER]
			) INCLUDE (
			[IVA801],[IVASP1],[IVASP2],[IVCRDJ],[IVCRTT],[IVDL010],[IVDL02],[IVLITM],[IVMC01],[IVNQ01],[IVTORG],[IVTRDJ],[IVUOM]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_22_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_22_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55DMINV] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_23_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F42420] (
			[ALCORD],[ALDCTO],[ALMCU],[ALRFRV],[ALUPMJ]
			) INCLUDE (
			[ALCNDJ],[ALDOCO],[ALDRQJ],[ALDSC1],[ALDSC2],[ALKCOO],[ALLITM],[ALLNID],[ALLTTR],[ALNXTR],[ALUOM],[ALUORG],[ALUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_23_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F42420]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_23_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F42420]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 18
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F42420] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F42420] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420];
			CREATE NONCLUSTERED INDEX IX_AIDBA_23_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F42420] (
			[ALCORD],[ALDCTO],[ALMCU],[ALRFRV],[ALUPMJ]
			) INCLUDE (
			[ALCNDJ],[ALDOCO],[ALDRQJ],[ALDSC1],[ALDSC2],[ALKCOO],[ALLITM],[ALLNID],[ALLTTR],[ALNXTR],[ALUOM],[ALUORG],[ALUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_23_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_23_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F42420] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_24_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4209] (
			[HOAN8],[HOASTS],[HODCTO],[HOHCOD],[HOMCU],[HORPER],[HOTRDJ]
			) INCLUDE (
			[HODOCO],[HOKCOO],[HOLNID],[HORDJ],[HORDT],[HOSFXO]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_24_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4209]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_24_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4209]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4209] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4209] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209];
			CREATE NONCLUSTERED INDEX IX_AIDBA_24_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4209] (
			[HOAN8],[HOASTS],[HODCTO],[HOHCOD],[HOMCU],[HORPER],[HOTRDJ]
			) INCLUDE (
			[HODOCO],[HOKCOO],[HOLNID],[HORDJ],[HORDT],[HOSFXO]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_24_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_24_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4209] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_25_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4106] (
			[BPAN8],[BPBSCD],[BPCGID],[BPCRCD],[BPEFTJ],[BPEXDJ],[BPIGID],[BPITM],[BPLOCN],[BPLOTN],[BPMCU],[BPUOM]
			) INCLUDE (
			[BPACRD],[BPFRMN],[BPFRMP],[BPLOTG],[BPTDAY],[BPUPMJ],[BPUPRC]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_25_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4106]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_25_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4106]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 19
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4106] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4106] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106];
			CREATE NONCLUSTERED INDEX IX_AIDBA_25_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4106] (
			[BPAN8],[BPBSCD],[BPCGID],[BPCRCD],[BPEFTJ],[BPEXDJ],[BPIGID],[BPITM],[BPLOCN],[BPLOTN],[BPMCU],[BPUOM]
			) INCLUDE (
			[BPACRD],[BPFRMN],[BPFRMP],[BPLOTG],[BPTDAY],[BPUPMJ],[BPUPRC]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_25_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_25_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4106] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_26_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] (
			[ELYFLR]
			) INCLUDE (
			[ELCO],[ELDCTO],[ELDOCO],[ELTORG],[ELUPMJ],[ELUPMT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_26_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55JDEMT]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_26_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55JDEMT]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 7
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT];
			CREATE NONCLUSTERED INDEX IX_AIDBA_26_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] (
			[ELYFLR]
			) INCLUDE (
			[ELCO],[ELDCTO],[ELDOCO],[ELTORG],[ELUPMJ],[ELUPMT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_26_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_26_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55JDEMT] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_27_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B11] (
			[RPAAP],[RPAN8],[RPAR01],[RPBCRC],[RPCO],[RPCRCD],[RPDCT],[RPDDEX],[RPDDJ],[RPDGJ],[RPKCO],[RPPST],[RPPYR],[RPRMK],[RPSDOC]
			) INCLUDE (
			[RPACR],[RPADSA],[RPADSC],[RPAFC],[RPAG],[RPAID],[RPAID2],[RPAJCL],[RPALPH],[RPALT6],[RPAM],[RPAM2],[RPAN8J],[RPAR02],[RPAR03],[RPAR04],[RPAR05],[RPAR06],[RPAR07],[RPAR08],[RPAR09],[RPAR10],[RPATAD],[RPATXA],[RPATXN],[RPBALJ],[RPCDS],[RPCDSA],[RPCLMG],[RPCMC1],[RPCMGR],[RPCOLL],[RPCORC],[RPCRR],[RPCRRM],[RPCTAD],[RPCTAM],[RPCTL],[RPCTRY],[RPCTXA],[RPCTXN],[RPDCTO],[RPDDNJ],[RPDICJ],[RPDIVJ],[RPDMCD],[RPDNLT],[RPDOC],[RPDOCO],[RPDRF],[RPDSVJ],[RPDTPB],[RPDTXS],[RPERDJ],[RPEXR1],[RPFAP],[RPFNLP],[RPFNRT],[RPFY],[RPGFL1],[RPGFL2],[RPGLBA],[RPGLC],[RPHCRR],[RPHDGJ],[RPICU],[RPICUT],[RPISTC],[RPISTR],[RPITM],[RPJCL],[RPJOBN],[RPKCOO],[RPLFCJ],[RPLNID],[RPMCU],[RPMCU2],[RPNBRR],[RPNETDOC],[RPNETRC5],[RPNETST],[RPNETTCID],[RPNRTA],[RPOBJ],[RPODCT],[RPODOC],[RPOKCO],[RPOMOD],[RPOSFX],[RPPA8],[RPPDCT],[RPPID],[RPPKCO],[RPPN],[RPPO],[RPPOST],[RPPPDI],[RPPRGF],[RPPTC],[RPPWPG],[RPPYID],[RPRDDJ],[RPRDRL],[RPRDSJ],[RPRF],[RPRMDS],[RPRMR1],[RPRNID],[RPRP1],[RPRP2],[RPRP3],[RPRSCO],[RPRYIN],[RPSBL],[RPSBLT],[RPSDCT],[RPSFX],[RPSFXO],[RPSHPN],[RPSKCO],[RPSMTJ],[RPSOTF],[RPSTAM],[RPSUB],[RPTORG],[RPTXA1],[RPU],[RPUM],[RPUNIT],[RPUPMJ],[RPUPMT],[RPURAB],[RPURAT],[RPURC1],[RPURDT],[RPURRF],[RPUSER],[RPVDGJ],[RPVINV],[RPVLDT],[RPVOD],[RPVR01]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_27_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B11]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_27_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B11]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 157
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B11] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B11] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11];
			CREATE NONCLUSTERED INDEX IX_AIDBA_27_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B11] (
			[RPAAP],[RPAN8],[RPAR01],[RPBCRC],[RPCO],[RPCRCD],[RPDCT],[RPDDEX],[RPDDJ],[RPDGJ],[RPKCO],[RPPST],[RPPYR],[RPRMK],[RPSDOC]
			) INCLUDE (
			[RPACR],[RPADSA],[RPADSC],[RPAFC],[RPAG],[RPAID],[RPAID2],[RPAJCL],[RPALPH],[RPALT6],[RPAM],[RPAM2],[RPAN8J],[RPAR02],[RPAR03],[RPAR04],[RPAR05],[RPAR06],[RPAR07],[RPAR08],[RPAR09],[RPAR10],[RPATAD],[RPATXA],[RPATXN],[RPBALJ],[RPCDS],[RPCDSA],[RPCLMG],[RPCMC1],[RPCMGR],[RPCOLL],[RPCORC],[RPCRR],[RPCRRM],[RPCTAD],[RPCTAM],[RPCTL],[RPCTRY],[RPCTXA],[RPCTXN],[RPDCTO],[RPDDNJ],[RPDICJ],[RPDIVJ],[RPDMCD],[RPDNLT],[RPDOC],[RPDOCO],[RPDRF],[RPDSVJ],[RPDTPB],[RPDTXS],[RPERDJ],[RPEXR1],[RPFAP],[RPFNLP],[RPFNRT],[RPFY],[RPGFL1],[RPGFL2],[RPGLBA],[RPGLC],[RPHCRR],[RPHDGJ],[RPICU],[RPICUT],[RPISTC],[RPISTR],[RPITM],[RPJCL],[RPJOBN],[RPKCOO],[RPLFCJ],[RPLNID],[RPMCU],[RPMCU2],[RPNBRR],[RPNETDOC],[RPNETRC5],[RPNETST],[RPNETTCID],[RPNRTA],[RPOBJ],[RPODCT],[RPODOC],[RPOKCO],[RPOMOD],[RPOSFX],[RPPA8],[RPPDCT],[RPPID],[RPPKCO],[RPPN],[RPPO],[RPPOST],[RPPPDI],[RPPRGF],[RPPTC],[RPPWPG],[RPPYID],[RPRDDJ],[RPRDRL],[RPRDSJ],[RPRF],[RPRMDS],[RPRMR1],[RPRNID],[RPRP1],[RPRP2],[RPRP3],[RPRSCO],[RPRYIN],[RPSBL],[RPSBLT],[RPSDCT],[RPSFX],[RPSFXO],[RPSHPN],[RPSKCO],[RPSMTJ],[RPSOTF],[RPSTAM],[RPSUB],[RPTORG],[RPTXA1],[RPU],[RPUM],[RPUNIT],[RPUPMJ],[RPUPMT],[RPURAB],[RPURAT],[RPURC1],[RPURDT],[RPURRF],[RPUSER],[RPVDGJ],[RPVINV],[RPVLDT],[RPVOD],[RPVR01]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_27_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_27_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B11] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_28_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0414] (
			[RNCO],[RNPOST]
			) INCLUDE (
			[RNADSA],[RNADSC],[RNAN8],[RNBCRC],[RNCDS],[RNCDSA],[RNCRCD],[RNCRR],[RNCRRM],[RNDCT],[RNDCTM],[RNDOC],[RNFNLP],[RNGLC],[RNHCRR],[RNKCO],[RNMCU],[RNPAAP],[RNPFAP],[RNPO],[RNPYID],[RNRC5],[RNRMK],[RNSFX],[RNSFXE],[RNUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_28_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0414]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_28_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0414]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 28
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0414] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0414] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414];
			CREATE NONCLUSTERED INDEX IX_AIDBA_28_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0414] (
			[RNCO],[RNPOST]
			) INCLUDE (
			[RNADSA],[RNADSC],[RNAN8],[RNBCRC],[RNCDS],[RNCDSA],[RNCRCD],[RNCRR],[RNCRRM],[RNDCT],[RNDCTM],[RNDOC],[RNFNLP],[RNGLC],[RNHCRR],[RNKCO],[RNMCU],[RNPAAP],[RNPFAP],[RNPO],[RNPYID],[RNRC5],[RNRMK],[RNSFX],[RNSFXE],[RNUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_28_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_28_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0414] CANNOT BE CREATED.';
END CATCH;


USE [JDE920];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_29_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230822
			ON [JDE920].[SVM920].[F986110] (
			[JCENHV],[JCFNDFUF2],[JCUSER]
			) INCLUDE (
			[JCACTDATE],[JCACTTIME],[JCEXEHOST],[JCFUNO],[JCJOBNBR],[JCJOBPTY],[JCJOBQUE],[JCJOBSTS],[JCJOBTYPE],[JCORGHOST],[JCPROCESSID],[JCPRTQ],[JCSBMDATE],[JCSBMTIME]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_29_20230822' AND i.object_id = OBJECT_ID('[JDE920].[SVM920].[F986110]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_29_20230822' AND i2.object_id = OBJECT_ID('[JDE920].[SVM920].[F986110]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 17
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE920].[SVM920].[F986110] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE920].[SVM920].[F986110] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110];
			CREATE NONCLUSTERED INDEX IX_AIDBA_29_20230822
			ON [JDE920].[SVM920].[F986110] (
			[JCENHV],[JCFNDFUF2],[JCUSER]
			) INCLUDE (
			[JCACTDATE],[JCACTTIME],[JCEXEHOST],[JCFUNO],[JCJOBNBR],[JCJOBPTY],[JCJOBQUE],[JCJOBSTS],[JCJOBTYPE],[JCORGHOST],[JCPROCESSID],[JCPRTQ],[JCSBMDATE],[JCSBMTIME]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_29_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_29_20230822 ON [JDE920].[SVM920].[F986110] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_30_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4941] (
			[RSLDNM]
			) INCLUDE (
			[RSCARS],[RSCRCD],[RSCRDC],[RSRSSN],[RSSHPN]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_30_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4941]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_30_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4941]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4941] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4941] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941];
			CREATE NONCLUSTERED INDEX IX_AIDBA_30_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4941] (
			[RSLDNM]
			) INCLUDE (
			[RSCARS],[RSCRCD],[RSCRDC],[RSRSSN],[RSSHPN]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_30_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_30_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4941] CANNOT BE CREATED.';
END CATCH;


USE [JDE920];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_31_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230822
			ON [JDE920].[OL920].[F9860W] (
			[WOFMNM],[WOOBNM],[WOWOCAT]
			) INCLUDE (
			[WOSY],[WOSYR],[WOVER],[WOWOBNM],[WOWOOBNML],[WOWOOBNMS],[WOWOTHRD]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_31_20230822' AND i.object_id = OBJECT_ID('[JDE920].[OL920].[F9860W]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_31_20230822' AND i2.object_id = OBJECT_ID('[JDE920].[OL920].[F9860W]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE920].[OL920].[F9860W] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE920].[OL920].[F9860W] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W];
			CREATE NONCLUSTERED INDEX IX_AIDBA_31_20230822
			ON [JDE920].[OL920].[F9860W] (
			[WOFMNM],[WOOBNM],[WOWOCAT]
			) INCLUDE (
			[WOSY],[WOSYR],[WOVER],[WOWOBNM],[WOWOOBNML],[WOWOOBNMS],[WOWOTHRD]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_31_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_31_20230822 ON [JDE920].[OL920].[F9860W] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_32_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4801T] (
			[WAPRODM]
			) INCLUDE (
			[WAAID],[WACRCD],[WACRDC],[WACRRM],[WADOCO],[WAFAILCD],[WAREPDT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_32_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801T]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_32_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801T]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 8
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4801T] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4801T] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T];
			CREATE NONCLUSTERED INDEX IX_AIDBA_32_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4801T] (
			[WAPRODM]
			) INCLUDE (
			[WAAID],[WACRCD],[WACRDC],[WACRRM],[WADOCO],[WAFAILCD],[WAREPDT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_32_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_32_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801T] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_33_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_33_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03012] (
			[AICO]
			) INCLUDE (
			[AIAB2],[AIABA1],[AIABAM],[AIABC1],[AIABC2],[AIABC3],[AIAC01],[AIAC02],[AIAC03],[AIAC04],[AIAC05],[AIAC06],[AIAC07],[AIAC08],[AIAC09],[AIAC10],[AIAC11],[AIAC12],[AIAC13],[AIAC14],[AIAC15],[AIAC16],[AIAC17],[AIAC18],[AIAC19],[AIAC20],[AIAC21],[AIAC22],[AIAC23],[AIAC24],[AIAC25],[AIAC26],[AIAC27],[AIAC28],[AIAC29],[AIAC30],[AIACL],[AIAD],[AIAFC],[AIAFCP],[AIAFCY],[AIAFT],[AIAHB],[AIAIDR],[AIALGM],[AIALP],[AIAMCR],[AIAN8],[AIAN8R],[AIAPRC],[AIAPSB],[AIAPTS],[AIARC],[AIARL],[AIARPY],[AIARTO],[AIASHL],[AIASN],[AIASTY],[AIATCS],[AIAVD],[AIBACK],[AIBADT],[AIBLFR],[AIBO],[AIBSC],[AIBYAL],[AICAAD],[AICARS],[AICFCE],[AICFDF],[AICFPP],[AICFSP],[AICIG],[AICKHC],[AICLMG],[AICMC1],[AICMC2],[AICMGR],[AICMR1],[AICMR2],[AICOLL],[AICP01],[AICPGP],[AICRCA],[AICRCD],[AICRMD],[AICUSTS],[AICYCN],[AIDAOJ],[AIDB],[AIDCAR],[AIDEL1],[AIDEL2],[AIDFIJ],[AIDLC],[AIDLIJ],[AIDLP],[AIDLQJ],[AIDLQT],[AIDNBJ],[AIDNLT],[AIDR03],[AIDR04],[AIDR08],[AIDR09],[AIDSO],[AIDSPA],[AIDT1J],[AIDTAR],[AIDTEE],[AIEDAD],[AIEDCI],[AIEDF1],[AIEDF2],[AIEDII],[AIEDPM],[AIEDQD],[AIEXHD],[AIEXR1],[AIFD],[AIFNDJ],[AIFP],[AIFRTH],[AIGOPASF],[AIHDAR],[AIHOLD],[AIICON],[AIINMG],[AIINVC],[AIJOBN],[AIKCOR],[AILEDJ],[AILTDT],[AIMAN8],[AIMAXO],[AIMCUR],[AIMINO],[AIMORD],[AINBCL],[AINBR1],[AINBR2],[AINBR3],[AINBRR],[AINIVD],[AIOBAR],[AIOPBO],[AIOPY],[AIORTP],[AIOYTD],[AIPALC],[AIPID],[AIPLCR],[AIPLST],[AIPLY],[AIPOPN],[AIPORQ],[AIPRGF],[AIPRIO],[AIPRSN],[AIPWPCP],[AIROUT],[AIRQ01],[AIRQ02],[AIRQ03],[AIRQ04],[AIRQ05],[AIRQ06],[AIRQ07],[AIRQ08],[AIRQ09],[AIRVDJ],[AIRYIN],[AISBAL],[AISI01],[AISI02],[AISI03],[AISI04],[AISI05],[AISITO],[AISLDW],[AISLPG],[AISPYE],[AISQNL],[AISTMT],[AISTOF],[AISTOP],[AISTTO],[AISYNCS],[AITERRID],[AITIER1],[AITORG],[AITRAR],[AITRDC],[AITRW],[AITSTA],[AITWDJ],[AITXA1],[AIUPMJ],[AIUPMT],[AIURAB],[AIURAT],[AIURCD],[AIURDT],[AIURRF],[AIUSER],[AIVUMD],[AIWUMD],[AIZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_33_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03012]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_33_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03012]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 210
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03012] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03012] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012];
			CREATE NONCLUSTERED INDEX IX_AIDBA_33_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03012] (
			[AICO]
			) INCLUDE (
			[AIAB2],[AIABA1],[AIABAM],[AIABC1],[AIABC2],[AIABC3],[AIAC01],[AIAC02],[AIAC03],[AIAC04],[AIAC05],[AIAC06],[AIAC07],[AIAC08],[AIAC09],[AIAC10],[AIAC11],[AIAC12],[AIAC13],[AIAC14],[AIAC15],[AIAC16],[AIAC17],[AIAC18],[AIAC19],[AIAC20],[AIAC21],[AIAC22],[AIAC23],[AIAC24],[AIAC25],[AIAC26],[AIAC27],[AIAC28],[AIAC29],[AIAC30],[AIACL],[AIAD],[AIAFC],[AIAFCP],[AIAFCY],[AIAFT],[AIAHB],[AIAIDR],[AIALGM],[AIALP],[AIAMCR],[AIAN8],[AIAN8R],[AIAPRC],[AIAPSB],[AIAPTS],[AIARC],[AIARL],[AIARPY],[AIARTO],[AIASHL],[AIASN],[AIASTY],[AIATCS],[AIAVD],[AIBACK],[AIBADT],[AIBLFR],[AIBO],[AIBSC],[AIBYAL],[AICAAD],[AICARS],[AICFCE],[AICFDF],[AICFPP],[AICFSP],[AICIG],[AICKHC],[AICLMG],[AICMC1],[AICMC2],[AICMGR],[AICMR1],[AICMR2],[AICOLL],[AICP01],[AICPGP],[AICRCA],[AICRCD],[AICRMD],[AICUSTS],[AICYCN],[AIDAOJ],[AIDB],[AIDCAR],[AIDEL1],[AIDEL2],[AIDFIJ],[AIDLC],[AIDLIJ],[AIDLP],[AIDLQJ],[AIDLQT],[AIDNBJ],[AIDNLT],[AIDR03],[AIDR04],[AIDR08],[AIDR09],[AIDSO],[AIDSPA],[AIDT1J],[AIDTAR],[AIDTEE],[AIEDAD],[AIEDCI],[AIEDF1],[AIEDF2],[AIEDII],[AIEDPM],[AIEDQD],[AIEXHD],[AIEXR1],[AIFD],[AIFNDJ],[AIFP],[AIFRTH],[AIGOPASF],[AIHDAR],[AIHOLD],[AIICON],[AIINMG],[AIINVC],[AIJOBN],[AIKCOR],[AILEDJ],[AILTDT],[AIMAN8],[AIMAXO],[AIMCUR],[AIMINO],[AIMORD],[AINBCL],[AINBR1],[AINBR2],[AINBR3],[AINBRR],[AINIVD],[AIOBAR],[AIOPBO],[AIOPY],[AIORTP],[AIOYTD],[AIPALC],[AIPID],[AIPLCR],[AIPLST],[AIPLY],[AIPOPN],[AIPORQ],[AIPRGF],[AIPRIO],[AIPRSN],[AIPWPCP],[AIROUT],[AIRQ01],[AIRQ02],[AIRQ03],[AIRQ04],[AIRQ05],[AIRQ06],[AIRQ07],[AIRQ08],[AIRQ09],[AIRVDJ],[AIRYIN],[AISBAL],[AISI01],[AISI02],[AISI03],[AISI04],[AISI05],[AISITO],[AISLDW],[AISLPG],[AISPYE],[AISQNL],[AISTMT],[AISTOF],[AISTOP],[AISTTO],[AISYNCS],[AITERRID],[AITIER1],[AITORG],[AITRAR],[AITRDC],[AITRW],[AITSTA],[AITWDJ],[AITXA1],[AIUPMJ],[AIUPMT],[AIURAB],[AIURAT],[AIURCD],[AIURDT],[AIURRF],[AIUSER],[AIVUMD],[AIWUMD],[AIZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_33_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_33_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03012] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_34_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_34_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F41112] (
			[INCTRY],[INFY],[INITM],[INLITM],[INMCU]
			) INCLUDE (
			[INAISL],[INAITM],[INAN01],[INAN02],[INAN03],[INAN04],[INAN05],[INAN06],[INAN07],[INAN08],[INAN09],[INAN10],[INAN11],[INAN12],[INAN13],[INAN14],[INAN8],[INBIN],[INCMQT],[INCUMA],[INDCT],[INGLPT],[INJOBN],[INLOCN],[INLOTN],[INNQ01],[INNQ02],[INNQ03],[INNQ04],[INNQ05],[INNQ06],[INNQ07],[INNQ08],[INNQ09],[INNQ10],[INNQ11],[INNQ12],[INNQ13],[INNQ14],[INPID],[INSHAN],[INTDAY],[INUPMJ],[INUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_34_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41112]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_34_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F41112]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 49
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F41112] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F41112] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112];
			CREATE NONCLUSTERED INDEX IX_AIDBA_34_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F41112] (
			[INCTRY],[INFY],[INITM],[INLITM],[INMCU]
			) INCLUDE (
			[INAISL],[INAITM],[INAN01],[INAN02],[INAN03],[INAN04],[INAN05],[INAN06],[INAN07],[INAN08],[INAN09],[INAN10],[INAN11],[INAN12],[INAN13],[INAN14],[INAN8],[INBIN],[INCMQT],[INCUMA],[INDCT],[INGLPT],[INJOBN],[INLOCN],[INLOTN],[INNQ01],[INNQ02],[INNQ03],[INNQ04],[INNQ05],[INNQ06],[INNQ07],[INNQ08],[INNQ09],[INNQ10],[INNQ11],[INNQ12],[INNQ13],[INNQ14],[INPID],[INSHAN],[INTDAY],[INUPMJ],[INUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_34_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_34_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F41112] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_35_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_35_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0411] (
			[RPAN8],[RPCO],[RPDCTA],[RPDGJ],[RPDIVJ],[RPGLBA],[RPGLC],[RPKCO],[RPMCU],[RPPDCT],[RPPO],[RPPOST],[RPPST],[RPPYE]
			) INCLUDE (
			[RPAAP],[RPAC07],[RPACR],[RPADSA],[RPADSC],[RPAG],[RPAID2],[RPAM],[RPATAD],[RPATXA],[RPATXN],[RPBAID],[RPBALJ],[RPBCRC],[RPBLSCD2],[RPCDS],[RPCDSA],[RPCNTRTCD],[RPCNTRTID],[RPCRC],[RPCRCD],[RPCRR],[RPCRRM],[RPCTAD],[RPCTAM],[RPCTL],[RPCTRY],[RPCTXA],[RPCTXN],[RPDCT],[RPDDJ],[RPDDNJ],[RPDDRL],[RPDICJ],[RPDMCD],[RPDOC],[RPDRF],[RPDSVJ],[RPDTXS],[RPEXR1],[RPEXR3],[RPFAP],[RPFNLP],[RPFNRT],[RPFY],[RPGAM1],[RPGAM2],[RPGEN4],[RPGEN5],[RPGFL5],[RPGFL6],[RPHARPER],[RPHARSFX],[RPHCRR],[RPHDGJ],[RPICU],[RPICUT],[RPITM],[RPJOBN],[RPLNID],[RPMCU2],[RPNETDOC],[RPNETRC5],[RPNETST],[RPNETTCID],[RPNRTA],[RPOBJ],[RPODCT],[RPODOC],[RPOKCO],[RPOPSQ],[RPOSFX],[RPPID],[RPPKCO],[RPPN],[RPPRGF],[RPPTC],[RPPWPG],[RPPYIN],[RPPYWP],[RPRF],[RPRMK],[RPRP1],[RPRP2],[RPRP3],[RPSBL],[RPSBLT],[RPSEQN],[RPSFX],[RPSFXE],[RPSFXO],[RPSMMF],[RPSNTO],[RPSTAM],[RPSUB],[RPTAXP],[RPTNN],[RPTNST],[RPTORG],[RPTXA1],[RPTXA3],[RPU],[RPUM],[RPUNIT],[RPUPMJ],[RPUPMT],[RPURAB],[RPURAT],[RPURC1],[RPURDT],[RPURRF],[RPUSER],[RPVINV],[RPVOD],[RPVR01],[RPWTAD],[RPWTAF],[RPWVID],[RPYC01],[RPYC02],[RPYC03],[RPYC04],[RPYC05],[RPYC06],[RPYC07],[RPYC08],[RPYC09],[RPYC10]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_35_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0411]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_35_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0411]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 142
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0411] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0411] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411];
			CREATE NONCLUSTERED INDEX IX_AIDBA_35_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0411] (
			[RPAN8],[RPCO],[RPDCTA],[RPDGJ],[RPDIVJ],[RPGLBA],[RPGLC],[RPKCO],[RPMCU],[RPPDCT],[RPPO],[RPPOST],[RPPST],[RPPYE]
			) INCLUDE (
			[RPAAP],[RPAC07],[RPACR],[RPADSA],[RPADSC],[RPAG],[RPAID2],[RPAM],[RPATAD],[RPATXA],[RPATXN],[RPBAID],[RPBALJ],[RPBCRC],[RPBLSCD2],[RPCDS],[RPCDSA],[RPCNTRTCD],[RPCNTRTID],[RPCRC],[RPCRCD],[RPCRR],[RPCRRM],[RPCTAD],[RPCTAM],[RPCTL],[RPCTRY],[RPCTXA],[RPCTXN],[RPDCT],[RPDDJ],[RPDDNJ],[RPDDRL],[RPDICJ],[RPDMCD],[RPDOC],[RPDRF],[RPDSVJ],[RPDTXS],[RPEXR1],[RPEXR3],[RPFAP],[RPFNLP],[RPFNRT],[RPFY],[RPGAM1],[RPGAM2],[RPGEN4],[RPGEN5],[RPGFL5],[RPGFL6],[RPHARPER],[RPHARSFX],[RPHCRR],[RPHDGJ],[RPICU],[RPICUT],[RPITM],[RPJOBN],[RPLNID],[RPMCU2],[RPNETDOC],[RPNETRC5],[RPNETST],[RPNETTCID],[RPNRTA],[RPOBJ],[RPODCT],[RPODOC],[RPOKCO],[RPOPSQ],[RPOSFX],[RPPID],[RPPKCO],[RPPN],[RPPRGF],[RPPTC],[RPPWPG],[RPPYIN],[RPPYWP],[RPRF],[RPRMK],[RPRP1],[RPRP2],[RPRP3],[RPSBL],[RPSBLT],[RPSEQN],[RPSFX],[RPSFXE],[RPSFXO],[RPSMMF],[RPSNTO],[RPSTAM],[RPSUB],[RPTAXP],[RPTNN],[RPTNST],[RPTORG],[RPTXA1],[RPTXA3],[RPU],[RPUM],[RPUNIT],[RPUPMJ],[RPUPMT],[RPURAB],[RPURAT],[RPURC1],[RPURDT],[RPURRF],[RPUSER],[RPVINV],[RPVOD],[RPVR01],[RPWTAD],[RPWTAF],[RPWVID],[RPYC01],[RPYC02],[RPYC03],[RPYC04],[RPYC05],[RPYC06],[RPYC07],[RPYC08],[RPYC09],[RPYC10]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_35_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_35_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0411] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_36_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_36_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4960] (
			[TMLDLS]
			) INCLUDE (
			[TMADDS],[TMADDZ],[TMANCC],[TMANID],[TMCARS],[TMCTR],[TMCTY1],[TMCVUM],[TMDSGP],[TMLDNM],[TMLDTY],[TMLOAD],[TMMCUX],[TMMOT],[TMNMCU],[TMPMDT],[TMPPDJ],[TMPVEH],[TMRLNO],[TMROUT],[TMSEQ],[TMSHFT],[TMTMLS],[TMVLUM],[TMVMCU],[TMVR01],[TMVTYP],[TMWTUM],[TMZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_36_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4960]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_36_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4960]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4960] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4960] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960];
			CREATE NONCLUSTERED INDEX IX_AIDBA_36_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4960] (
			[TMLDLS]
			) INCLUDE (
			[TMADDS],[TMADDZ],[TMANCC],[TMANID],[TMCARS],[TMCTR],[TMCTY1],[TMCVUM],[TMDSGP],[TMLDNM],[TMLDTY],[TMLOAD],[TMMCUX],[TMMOT],[TMNMCU],[TMPMDT],[TMPPDJ],[TMPVEH],[TMRLNO],[TMROUT],[TMSEQ],[TMSHFT],[TMTMLS],[TMVLUM],[TMVMCU],[TMVR01],[TMVTYP],[TMWTUM],[TMZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_36_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_36_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4960] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_37_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_37_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4108] (
			[IODLEJ],[IOITM],[IOMCU],[IOMMEJ]
			) INCLUDE (
			[IOAITM],[IOBBDJ],[IOBODJ],[IOCHDF],[IODCTO],[IODOC1],[IODOCO],[IOJOBN],[IOKCOO],[IOLDSC],[IOLITM],[IOLOT1],[IOLOT2],[IOLOT3],[IOLOTC],[IOLOTG],[IOLOTN],[IOLOTP],[IOLOTR],[IOLOTS],[IOLRP0],[IOLRP1],[IOLRP2],[IOLRP3],[IOLRP4],[IOLRP5],[IOLRP6],[IOLRP7],[IOLRP8],[IOLRP9],[IOOHDJ],[IOORIG],[IOPID],[IORLOT],[IOSBDJ],[IOSERN],[IOTDAY],[IOU1DJ],[IOU2DJ],[IOU3DJ],[IOU4DJ],[IOU5DJ],[IOUA01],[IOUA02],[IOUA03],[IOUA04],[IOUA05],[IOUA06],[IOUB01],[IOUB02],[IOUB03],[IOUB04],[IOUB05],[IOUB06],[IOUPMJ],[IOUSER],[IOVEND],[IOWPDF]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_37_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4108]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_37_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4108]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 62
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4108] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4108] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108];
			CREATE NONCLUSTERED INDEX IX_AIDBA_37_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4108] (
			[IODLEJ],[IOITM],[IOMCU],[IOMMEJ]
			) INCLUDE (
			[IOAITM],[IOBBDJ],[IOBODJ],[IOCHDF],[IODCTO],[IODOC1],[IODOCO],[IOJOBN],[IOKCOO],[IOLDSC],[IOLITM],[IOLOT1],[IOLOT2],[IOLOT3],[IOLOTC],[IOLOTG],[IOLOTN],[IOLOTP],[IOLOTR],[IOLOTS],[IOLRP0],[IOLRP1],[IOLRP2],[IOLRP3],[IOLRP4],[IOLRP5],[IOLRP6],[IOLRP7],[IOLRP8],[IOLRP9],[IOOHDJ],[IOORIG],[IOPID],[IORLOT],[IOSBDJ],[IOSERN],[IOTDAY],[IOU1DJ],[IOU2DJ],[IOU3DJ],[IOU4DJ],[IOU5DJ],[IOUA01],[IOUA02],[IOUA03],[IOUA04],[IOUA05],[IOUA06],[IOUB01],[IOUB02],[IOUB03],[IOUB04],[IOUB05],[IOUB06],[IOUPMJ],[IOUSER],[IOVEND],[IOWPDF]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_37_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_37_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4108] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_38_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_38_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47012] (
			[SZAEXP],[SZDRQJ]
			) INCLUDE (
			[SZACOM],[SZADDJ],[SZADTM],[SZAFT],[SZAID],[SZAITM],[SZAN8],[SZANBY],[SZANI],[SZAOPN],[SZAPTS],[SZAPUM],[SZASN],[SZATXT],[SZBACK],[SZBSC],[SZCADC],[SZCARS],[SZCBSC],[SZCFGFL],[SZCITM],[SZCLVL],[SZCMCG],[SZCMGL],[SZCMGP],[SZCNDJ],[SZCNID],[SZCO],[SZCOMM],[SZCOT],[SZCPNT],[SZCRCD],[SZCRMD],[SZCRR],[SZCSTO],[SZCTRY],[SZDCT],[SZDCTO],[SZDEID],[SZDELN],[SZDGL],[SZDMCS],[SZDMCT],[SZDOC],[SZDOCO],[SZDRQT],[SZDSC1],[SZDSC2],[SZDSFT],[SZDSPR],[SZDTBS],[SZDTYS],[SZDUAL],[SZDVAN],[SZECST],[SZEDBT],[SZEDCT],[SZEDDL],[SZEDDT],[SZEDER],[SZEDFT],[SZEDLN],[SZEDOC],[SZEDSP],[SZEDSQ],[SZEDST],[SZEDTY],[SZEKCO],[SZEMCU],[SZEUSE],[SZEXDP],[SZEXR1],[SZFAPP],[SZFEA],[SZFEC],[SZFPRC],[SZFRAT],[SZFRGD],[SZFRMP],[SZFRTC],[SZFRTH],[SZFUC],[SZFUF1],[SZFUN2],[SZFUP],[SZFY],[SZGAN8],[SZGCARS],[SZGDVAN],[SZGLC],[SZGPA8],[SZGRWT],[SZGSHAN],[SZGVEND],[SZGWUM],[SZHOLD],[SZINMG],[SZIR01],[SZIR02],[SZIR03],[SZIR04],[SZIR05],[SZITM],[SZITVL],[SZITWT],[SZIVD],[SZJBCD],[SZJOBN],[SZKCO],[SZKCOO],[SZKTLN],[SZKTP],[SZLCOD],[SZLITM],[SZLNID],[SZLNTY],[SZLOB],[SZLOCN],[SZLOTN],[SZLPRC],[SZLT],[SZLTTR],[SZMCU],[SZMOT],[SZNTR],[SZNXTR],[SZOBJ],[SZOCTO],[SZODCT],[SZODOC],[SZOGNO],[SZOKC],[SZOKCO],[SZOMCU],[SZOORN],[SZOPDJ],[SZOPTT],[SZORP],[SZORPR],[SZOTQY],[SZPA8],[SZPDDJ],[SZPDTT],[SZPEFJ],[SZPID],[SZPMDT],[SZPMPN],[SZPMTN],[SZPMTO],[SZPNID],[SZPODC01],[SZPODC02],[SZPODC03],[SZPODC04],[SZPPDJ],[SZPQOR],[SZPRGR],[SZPRIO],[SZPRJM],[SZPROV],[SZPRP1],[SZPRP2],[SZPRP3],[SZPRP4],[SZPRP5],[SZPSDJ],[SZPSIG],[SZPSN],[SZPSTM],[SZPTC],[SZQRLV],[SZQTYT],[SZRATT],[SZRCD],[SZRCTO],[SZRESL],[SZRFRV],[SZRKCO],[SZRKIT],[SZRLDJ],[SZRLIT],[SZRLLN],[SZRLNU],[SZRLTM],[SZRORN],[SZROUT],[SZRPRC],[SZRSDJ],[SZRYIN],[SZSBAL],[SZSBL],[SZSBLT],[SZSERN],[SZSFXO],[SZSHAN],[SZSHCM],[SZSHCN],[SZSHPN],[SZSO01],[SZSO02],[SZSO03],[SZSO04],[SZSO05],[SZSO06],[SZSO07],[SZSO08],[SZSO09],[SZSO10],[SZSO11],[SZSO12],[SZSO13],[SZSO14],[SZSO15],[SZSOBK],[SZSOCN],[SZSONE],[SZSOOR],[SZSOQS],[SZSQOR],[SZSRP1],[SZSRP2],[SZSRP3],[SZSRP4],[SZSRP5],[SZSRQTY],[SZSRUOM],[SZSTOP],[SZSTTS],[SZSUB],[SZSWMS],[SZTAX1],[SZTCST],[SZTDAY],[SZTHGD],[SZTHRP],[SZTORG],[SZTPC],[SZTRDC],[SZTRDJ],[SZTXA1],[SZUNCD],[SZUNCS],[SZUOM],[SZUOM1],[SZUOM2],[SZUOM4],[SZUOPN],[SZUORG],[SZUPC1],[SZUPC2],[SZUPC3],[SZUPMJ],[SZUPRC],[SZURAB],[SZURAT],[SZURCD],[SZURDT],[SZURRF],[SZUSER],[SZVEND],[SZVLUM],[SZVR01],[SZVR02],[SZWTUM],[SZZON]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_38_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47012]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_38_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47012]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 267
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47012] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47012] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012];
			CREATE NONCLUSTERED INDEX IX_AIDBA_38_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47012] (
			[SZAEXP],[SZDRQJ]
			) INCLUDE (
			[SZACOM],[SZADDJ],[SZADTM],[SZAFT],[SZAID],[SZAITM],[SZAN8],[SZANBY],[SZANI],[SZAOPN],[SZAPTS],[SZAPUM],[SZASN],[SZATXT],[SZBACK],[SZBSC],[SZCADC],[SZCARS],[SZCBSC],[SZCFGFL],[SZCITM],[SZCLVL],[SZCMCG],[SZCMGL],[SZCMGP],[SZCNDJ],[SZCNID],[SZCO],[SZCOMM],[SZCOT],[SZCPNT],[SZCRCD],[SZCRMD],[SZCRR],[SZCSTO],[SZCTRY],[SZDCT],[SZDCTO],[SZDEID],[SZDELN],[SZDGL],[SZDMCS],[SZDMCT],[SZDOC],[SZDOCO],[SZDRQT],[SZDSC1],[SZDSC2],[SZDSFT],[SZDSPR],[SZDTBS],[SZDTYS],[SZDUAL],[SZDVAN],[SZECST],[SZEDBT],[SZEDCT],[SZEDDL],[SZEDDT],[SZEDER],[SZEDFT],[SZEDLN],[SZEDOC],[SZEDSP],[SZEDSQ],[SZEDST],[SZEDTY],[SZEKCO],[SZEMCU],[SZEUSE],[SZEXDP],[SZEXR1],[SZFAPP],[SZFEA],[SZFEC],[SZFPRC],[SZFRAT],[SZFRGD],[SZFRMP],[SZFRTC],[SZFRTH],[SZFUC],[SZFUF1],[SZFUN2],[SZFUP],[SZFY],[SZGAN8],[SZGCARS],[SZGDVAN],[SZGLC],[SZGPA8],[SZGRWT],[SZGSHAN],[SZGVEND],[SZGWUM],[SZHOLD],[SZINMG],[SZIR01],[SZIR02],[SZIR03],[SZIR04],[SZIR05],[SZITM],[SZITVL],[SZITWT],[SZIVD],[SZJBCD],[SZJOBN],[SZKCO],[SZKCOO],[SZKTLN],[SZKTP],[SZLCOD],[SZLITM],[SZLNID],[SZLNTY],[SZLOB],[SZLOCN],[SZLOTN],[SZLPRC],[SZLT],[SZLTTR],[SZMCU],[SZMOT],[SZNTR],[SZNXTR],[SZOBJ],[SZOCTO],[SZODCT],[SZODOC],[SZOGNO],[SZOKC],[SZOKCO],[SZOMCU],[SZOORN],[SZOPDJ],[SZOPTT],[SZORP],[SZORPR],[SZOTQY],[SZPA8],[SZPDDJ],[SZPDTT],[SZPEFJ],[SZPID],[SZPMDT],[SZPMPN],[SZPMTN],[SZPMTO],[SZPNID],[SZPODC01],[SZPODC02],[SZPODC03],[SZPODC04],[SZPPDJ],[SZPQOR],[SZPRGR],[SZPRIO],[SZPRJM],[SZPROV],[SZPRP1],[SZPRP2],[SZPRP3],[SZPRP4],[SZPRP5],[SZPSDJ],[SZPSIG],[SZPSN],[SZPSTM],[SZPTC],[SZQRLV],[SZQTYT],[SZRATT],[SZRCD],[SZRCTO],[SZRESL],[SZRFRV],[SZRKCO],[SZRKIT],[SZRLDJ],[SZRLIT],[SZRLLN],[SZRLNU],[SZRLTM],[SZRORN],[SZROUT],[SZRPRC],[SZRSDJ],[SZRYIN],[SZSBAL],[SZSBL],[SZSBLT],[SZSERN],[SZSFXO],[SZSHAN],[SZSHCM],[SZSHCN],[SZSHPN],[SZSO01],[SZSO02],[SZSO03],[SZSO04],[SZSO05],[SZSO06],[SZSO07],[SZSO08],[SZSO09],[SZSO10],[SZSO11],[SZSO12],[SZSO13],[SZSO14],[SZSO15],[SZSOBK],[SZSOCN],[SZSONE],[SZSOOR],[SZSOQS],[SZSQOR],[SZSRP1],[SZSRP2],[SZSRP3],[SZSRP4],[SZSRP5],[SZSRQTY],[SZSRUOM],[SZSTOP],[SZSTTS],[SZSUB],[SZSWMS],[SZTAX1],[SZTCST],[SZTDAY],[SZTHGD],[SZTHRP],[SZTORG],[SZTPC],[SZTRDC],[SZTRDJ],[SZTXA1],[SZUNCD],[SZUNCS],[SZUOM],[SZUOM1],[SZUOM2],[SZUOM4],[SZUOPN],[SZUORG],[SZUPC1],[SZUPC2],[SZUPC3],[SZUPMJ],[SZUPRC],[SZURAB],[SZURAT],[SZURCD],[SZURDT],[SZURRF],[SZUSER],[SZVEND],[SZVLUM],[SZVR01],[SZVR02],[SZWTUM],[SZZON]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_38_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_38_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47012] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_39_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_39_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4201] (
			[SHCO],[SHDRQJ]
			) INCLUDE (
			[SHBCRC],[SHCRCD],[SHCRRM],[SHDCTO],[SHDOCO],[SHKCOO],[SHMCU],[SHTRDJ]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_39_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4201]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_39_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4201]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 10
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4201] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201];
			CREATE NONCLUSTERED INDEX IX_AIDBA_39_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4201] (
			[SHCO],[SHDRQJ]
			) INCLUDE (
			[SHBCRC],[SHCRCD],[SHCRRM],[SHDCTO],[SHDOCO],[SHKCOO],[SHMCU],[SHTRDJ]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_39_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_39_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4201] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_40_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_40_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47122] (
			[MJLOTN]
			) INCLUDE (
			[MJAITM],[MJAN8],[MJANI],[MJASII],[MJBALU],[MJCDEC],[MJCITM],[MJCRCD],[MJCRR],[MJDCT],[MJDCTO],[MJDGL],[MJDMCS],[MJDMCT],[MJDOC],[MJDOCO],[MJDSC1],[MJDSC2],[MJEDBT],[MJEDCT],[MJEDDL],[MJEDDT],[MJEDER],[MJEDFT],[MJEDLN],[MJEDOC],[MJEDSP],[MJEDSQ],[MJEDST],[MJEDTY],[MJEKCO],[MJFRTO],[MJGAN8],[MJGLPT],[MJICU],[MJITM],[MJJELN],[MJJOBN],[MJKCO],[MJKCOO],[MJKSEQ],[MJLDSC],[MJLDSQ],[MJLITM],[MJLMCX],[MJLNID],[MJLOCN],[MJLOTC],[MJLOTG],[MJLOTP],[MJLOTS],[MJMCU],[MJMMCU],[MJMMEJ],[MJNLIN],[MJORIG],[MJPACD],[MJPAID],[MJPID],[MJPLOT],[MJPMPN],[MJPNID],[MJPNS],[MJRCD],[MJSBL],[MJSBLT],[MJSFX],[MJSQOR],[MJSTUN],[MJTDAY],[MJTORG],[MJTRDJ],[MJTREF],[MJTREX],[MJTRNO],[MJTRQT],[MJTRUM],[MJUNCS],[MJUOM2],[MJUPMJ],[MJURAB],[MJURAT],[MJURCD],[MJURDT],[MJURRF],[MJUSER],[MJVR01],[MJWR01],[MJXRT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_40_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47122]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_40_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F47122]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 90
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47122] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F47122] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122];
			CREATE NONCLUSTERED INDEX IX_AIDBA_40_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F47122] (
			[MJLOTN]
			) INCLUDE (
			[MJAITM],[MJAN8],[MJANI],[MJASII],[MJBALU],[MJCDEC],[MJCITM],[MJCRCD],[MJCRR],[MJDCT],[MJDCTO],[MJDGL],[MJDMCS],[MJDMCT],[MJDOC],[MJDOCO],[MJDSC1],[MJDSC2],[MJEDBT],[MJEDCT],[MJEDDL],[MJEDDT],[MJEDER],[MJEDFT],[MJEDLN],[MJEDOC],[MJEDSP],[MJEDSQ],[MJEDST],[MJEDTY],[MJEKCO],[MJFRTO],[MJGAN8],[MJGLPT],[MJICU],[MJITM],[MJJELN],[MJJOBN],[MJKCO],[MJKCOO],[MJKSEQ],[MJLDSC],[MJLDSQ],[MJLITM],[MJLMCX],[MJLNID],[MJLOCN],[MJLOTC],[MJLOTG],[MJLOTP],[MJLOTS],[MJMCU],[MJMMCU],[MJMMEJ],[MJNLIN],[MJORIG],[MJPACD],[MJPAID],[MJPID],[MJPLOT],[MJPMPN],[MJPNID],[MJPNS],[MJRCD],[MJSBL],[MJSBLT],[MJSFX],[MJSQOR],[MJSTUN],[MJTDAY],[MJTORG],[MJTRDJ],[MJTREF],[MJTREX],[MJTRNO],[MJTRQT],[MJTRUM],[MJUNCS],[MJUOM2],[MJUPMJ],[MJURAB],[MJURAT],[MJURCD],[MJURDT],[MJURRF],[MJUSER],[MJVR01],[MJWR01],[MJXRT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_40_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_40_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F47122] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_41_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_41_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0101] (
			[ABAC26],[ABAT1]
			) INCLUDE (
			[ABAC01],[ABAC02],[ABAC03],[ABAC04],[ABAC05],[ABAC06],[ABAC07],[ABAC08],[ABAC09],[ABAC10],[ABAC11],[ABAC12],[ABAC13],[ABAC14],[ABAC15],[ABAC16],[ABAC17],[ABAC18],[ABAC19],[ABAC20],[ABAC21],[ABAC22],[ABAC23],[ABAC24],[ABAC25],[ABAC27],[ABAC28],[ABAC29],[ABAC30],[ABALKY],[ABALPH],[ABAN8],[ABCM],[ABDC],[ABMCU],[ABSIC],[ABSYNCS],[ABTAX]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_41_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0101]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_41_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0101]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 40
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0101] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0101] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101];
			CREATE NONCLUSTERED INDEX IX_AIDBA_41_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0101] (
			[ABAC26],[ABAT1]
			) INCLUDE (
			[ABAC01],[ABAC02],[ABAC03],[ABAC04],[ABAC05],[ABAC06],[ABAC07],[ABAC08],[ABAC09],[ABAC10],[ABAC11],[ABAC12],[ABAC13],[ABAC14],[ABAC15],[ABAC16],[ABAC17],[ABAC18],[ABAC19],[ABAC20],[ABAC21],[ABAC22],[ABAC23],[ABAC24],[ABAC25],[ABAC27],[ABAC28],[ABAC29],[ABAC30],[ABALKY],[ABALPH],[ABAN8],[ABCM],[ABDC],[ABMCU],[ABSIC],[ABSYNCS],[ABTAX]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_41_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_41_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0101] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_42_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_42_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] (
			[HRCRTSOCL],[HRDTE],[HRKY],[HRTPE],[HRUPFG]
			) INCLUDE (
			[HR74UBTE],[HR74UETE],[HR74UTE],[HRAA],[HRADDJ],[HRAG],[HRAMND],[HRAN8],[HRAWBNO],[HRBRIDV],[HRBRNW],[HRCCCT],[HRCNID],[HRDIFPERC],[HRDL011],[HRDTITL],[HREV01],[HRGLOC],[HRTDAY],[HRUPMJ],[HRUSER],[HRVARAMT]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_42_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSWB1]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_42_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55LSWB1]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 27
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1];
			CREATE NONCLUSTERED INDEX IX_AIDBA_42_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] (
			[HRCRTSOCL],[HRDTE],[HRKY],[HRTPE],[HRUPFG]
			) INCLUDE (
			[HR74UBTE],[HR74UETE],[HR74UTE],[HRAA],[HRADDJ],[HRAG],[HRAMND],[HRAN8],[HRAWBNO],[HRBRIDV],[HRBRNW],[HRCCCT],[HRCNID],[HRDIFPERC],[HRDL011],[HRDTITL],[HREV01],[HRGLOC],[HRTDAY],[HRUPMJ],[HRUSER],[HRVARAMT]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_42_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_42_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55LSWB1] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_43_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_43_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B13] (
			[RYAAP],[RYALGO],[RYASTA],[RYATCS],[RYCKAM],[RYCO],[RYDMTJ],[RYEXR],[RYPA8],[RYPYR],[RYTYIN],[RYVERS]
			) INCLUDE (
			[RYAID],[RYALPH],[RYALT6],[RYAM],[RYAN8],[RYARL],[RYARS],[RYBCRC],[RYBKTR],[RYCBNK],[RYCKNU],[RYCRCD],[RYCRR],[RYCRRM],[RYCTRY],[RYDCTG],[RYDCTQ],[RYDGJ],[RYDICJ],[RYDKC],[RYDOCG],[RYDOCQ],[RYEAAC],[RYECLK],[RYEUFB],[RYFAP],[RYFCAM],[RYFY],[RYGLBA],[RYGLC],[RYICU],[RYICUT],[RYISTR],[RYJOBN],[RYNETDOC],[RYNETTCID],[RYNFVD],[RYPID],[RYPN],[RYPOST],[RYPYID],[RYRREF],[RYRYIN],[RYTNST],[RYTORG],[RYUPMJ],[RYUPMT],[RYURAB],[RYURAT],[RYURC1],[RYURDT],[RYURRF],[RYUSER],[RYVDGJ],[RYVLDT],[RYVRE]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_43_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_43_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F03B13]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 68
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B13] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F03B13] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13];
			CREATE NONCLUSTERED INDEX IX_AIDBA_43_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F03B13] (
			[RYAAP],[RYALGO],[RYASTA],[RYATCS],[RYCKAM],[RYCO],[RYDMTJ],[RYEXR],[RYPA8],[RYPYR],[RYTYIN],[RYVERS]
			) INCLUDE (
			[RYAID],[RYALPH],[RYALT6],[RYAM],[RYAN8],[RYARL],[RYARS],[RYBCRC],[RYBKTR],[RYCBNK],[RYCKNU],[RYCRCD],[RYCRR],[RYCRRM],[RYCTRY],[RYDCTG],[RYDCTQ],[RYDGJ],[RYDICJ],[RYDKC],[RYDOCG],[RYDOCQ],[RYEAAC],[RYECLK],[RYEUFB],[RYFAP],[RYFCAM],[RYFY],[RYGLBA],[RYGLC],[RYICU],[RYICUT],[RYISTR],[RYJOBN],[RYNETDOC],[RYNETTCID],[RYNFVD],[RYPID],[RYPN],[RYPOST],[RYPYID],[RYRREF],[RYRYIN],[RYTNST],[RYTORG],[RYUPMJ],[RYUPMT],[RYURAB],[RYURAT],[RYURC1],[RYURDT],[RYURRF],[RYUSER],[RYVDGJ],[RYVLDT],[RYVRE]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_43_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_43_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F03B13] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_44_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_44_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F554153E] (
			[SBKCO]
			) INCLUDE (
			[SBAN01],[SBAN02],[SBAN03],[SBAN04],[SBAN05],[SBAN06],[SBAN07],[SBAN08],[SBAN09],[SBAN10],[SBAN11],[SBAN12],[SBMCU],[SBNQ01],[SBNQ02],[SBNQ03],[SBNQ04],[SBNQ05],[SBNQ06],[SBNQ07],[SBNQ08],[SBNQ09],[SBNQ10],[SBNQ11],[SBNQ12],[SBTRDJ],[SBUITM],[SBUNCS],[SBUOM1]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_44_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554153E]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_44_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F554153E]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 30
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F554153E] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F554153E] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E];
			CREATE NONCLUSTERED INDEX IX_AIDBA_44_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F554153E] (
			[SBKCO]
			) INCLUDE (
			[SBAN01],[SBAN02],[SBAN03],[SBAN04],[SBAN05],[SBAN06],[SBAN07],[SBAN08],[SBAN09],[SBAN10],[SBAN11],[SBAN12],[SBMCU],[SBNQ01],[SBNQ02],[SBNQ03],[SBNQ04],[SBNQ05],[SBNQ06],[SBNQ07],[SBNQ08],[SBNQ09],[SBNQ10],[SBNQ11],[SBNQ12],[SBTRDJ],[SBUITM],[SBUNCS],[SBUOM1]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_44_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_44_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F554153E] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_45_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_45_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] (
			[MPCFY]
			) INCLUDE (
			[MPAN8],[MPCO],[MPDSE],[MPLITM],[MPMCU]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_45_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55POTMH]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_45_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55POTMH]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH];
			CREATE NONCLUSTERED INDEX IX_AIDBA_45_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] (
			[MPCFY]
			) INCLUDE (
			[MPAN8],[MPCO],[MPDSE],[MPLITM],[MPMCU]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_45_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_45_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55POTMH] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_46_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_46_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0413] (
			[RMDICJ]
			) INCLUDE (
			[RMCRCD],[RMCRRM],[RMDCTM],[RMDMTJ],[RMDOCM],[RMICU],[RMICUT],[RMISTP],[RMPAAP],[RMPYE],[RMPYID],[RMUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_46_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0413]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_46_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0413]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 13
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0413] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0413] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413];
			CREATE NONCLUSTERED INDEX IX_AIDBA_46_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0413] (
			[RMDICJ]
			) INCLUDE (
			[RMCRCD],[RMCRRM],[RMDCTM],[RMDMTJ],[RMDOCM],[RMICU],[RMICUT],[RMISTP],[RMPAAP],[RMPYE],[RMPYID],[RMUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_46_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_46_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0413] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_47_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_47_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4801] (
			[WAAPID],[WADCTO],[WADL01],[WAMCU],[WASRST],[WATRDJ],[WATYPS],[WAUPMJ]
			) INCLUDE (
			[WAAAID],[WAACDN],[WAAISL],[WAAITM],[WAAMLC],[WAAMMC],[WAAMOT],[WAAMTA],[WAAMTC],[WAAMTO],[WAAN8],[WAANO],[WAANP],[WAANPA],[WAANSA],[WAANT],[WAAPRT],[WABIN],[WABM],[WABOMC],[WABREV],[WABRT],[WACO],[WACTS1],[WADAP],[WADAT],[WADCG],[WADCT],[WADOCO],[WADPL],[WADRQJ],[WADRWC],[WAESDN],[WAHRSA],[WAHRSC],[WAHRSO],[WAINDC],[WAITM],[WAJOBN],[WALBAM],[WALITM],[WALNID],[WALOCN],[WALOTG],[WALOTN],[WALOTP],[WALTCM],[WALTLV],[WAMMCU],[WAMOH],[WAMPOS],[WAMTAM],[WANAN8],[WANTST],[WANUMB],[WAPARS],[WAPAYT],[WAPBTM],[WAPC],[WAPEC],[WAPHSE],[WAPID],[WAPNRQ],[WAPOU],[WAPPDT],[WAPPFG],[WAPRTS],[WAPTWO],[WAQTYT],[WARAT1],[WARAT2],[WARCTO],[WAREAS],[WARESC],[WARKCO],[WARORN],[WARREV],[WARTCH],[WARTG],[WASAID],[WASBLI],[WASETC],[WASFXO],[WASHNO],[WASHTY],[WASOBK],[WASOCN],[WASOQS],[WASPRT],[WASTCM],[WASTRT],[WASTRX],[WASUB],[WATBM],[WATDAY],[WATDT],[WATRT],[WAUNCD],[WAUOM],[WAUORG],[WAURAB],[WAURAT],[WAURCD],[WAURDT],[WAURRF],[WAUSER],[WAVR01],[WAVR02],[WAWR01],[WAWR02],[WAWR03],[WAWR04],[WAWR05],[WAWR06],[WAWR07],[WAWR08],[WAWR09],[WAWR10],[WAXDSP],[WAXRTO]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_47_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_47_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4801]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 128
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4801] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4801] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801];
			CREATE NONCLUSTERED INDEX IX_AIDBA_47_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4801] (
			[WAAPID],[WADCTO],[WADL01],[WAMCU],[WASRST],[WATRDJ],[WATYPS],[WAUPMJ]
			) INCLUDE (
			[WAAAID],[WAACDN],[WAAISL],[WAAITM],[WAAMLC],[WAAMMC],[WAAMOT],[WAAMTA],[WAAMTC],[WAAMTO],[WAAN8],[WAANO],[WAANP],[WAANPA],[WAANSA],[WAANT],[WAAPRT],[WABIN],[WABM],[WABOMC],[WABREV],[WABRT],[WACO],[WACTS1],[WADAP],[WADAT],[WADCG],[WADCT],[WADOCO],[WADPL],[WADRQJ],[WADRWC],[WAESDN],[WAHRSA],[WAHRSC],[WAHRSO],[WAINDC],[WAITM],[WAJOBN],[WALBAM],[WALITM],[WALNID],[WALOCN],[WALOTG],[WALOTN],[WALOTP],[WALTCM],[WALTLV],[WAMMCU],[WAMOH],[WAMPOS],[WAMTAM],[WANAN8],[WANTST],[WANUMB],[WAPARS],[WAPAYT],[WAPBTM],[WAPC],[WAPEC],[WAPHSE],[WAPID],[WAPNRQ],[WAPOU],[WAPPDT],[WAPPFG],[WAPRTS],[WAPTWO],[WAQTYT],[WARAT1],[WARAT2],[WARCTO],[WAREAS],[WARESC],[WARKCO],[WARORN],[WARREV],[WARTCH],[WARTG],[WASAID],[WASBLI],[WASETC],[WASFXO],[WASHNO],[WASHTY],[WASOBK],[WASOCN],[WASOQS],[WASPRT],[WASTCM],[WASTRT],[WASTRX],[WASUB],[WATBM],[WATDAY],[WATDT],[WATRT],[WAUNCD],[WAUOM],[WAUORG],[WAURAB],[WAURAT],[WAURCD],[WAURDT],[WAURRF],[WAUSER],[WAVR01],[WAVR02],[WAWR01],[WAWR02],[WAWR03],[WAWR04],[WAWR05],[WAWR06],[WAWR07],[WAWR08],[WAWR09],[WAWR10],[WAXDSP],[WAXRTO]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_47_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_47_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4801] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_48_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_48_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4072] (
			[ADAN8],[ADBKTPID],[ADEXDJ],[ADIGID]
			) INCLUDE (
			[ADAITM],[ADAPRS],[ADAST],[ADATID],[ADBSCD],[ADCGID],[ADCRCD],[ADCRCDVID],[ADEFTJ],[ADFGY],[ADFRMN],[ADFVTR],[ADFVUM],[ADITM],[ADJOBN],[ADLEDG],[ADLITM],[ADMNQ],[ADNBRORD],[ADOGID],[ADPARTFG],[ADPID],[ADRULENAME],[ADTDAY],[ADUOM],[ADUOMVID],[ADUPMJ],[ADURAB],[ADURAT],[ADURCD],[ADURDT],[ADURRF],[ADUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_48_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4072]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_48_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4072]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 37
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4072] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4072] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072];
			CREATE NONCLUSTERED INDEX IX_AIDBA_48_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4072] (
			[ADAN8],[ADBKTPID],[ADEXDJ],[ADIGID]
			) INCLUDE (
			[ADAITM],[ADAPRS],[ADAST],[ADATID],[ADBSCD],[ADCGID],[ADCRCD],[ADCRCDVID],[ADEFTJ],[ADFGY],[ADFRMN],[ADFVTR],[ADFVUM],[ADITM],[ADJOBN],[ADLEDG],[ADLITM],[ADMNQ],[ADNBRORD],[ADOGID],[ADPARTFG],[ADPID],[ADRULENAME],[ADTDAY],[ADUOM],[ADUOMVID],[ADUPMJ],[ADURAB],[ADURAT],[ADURCD],[ADURDT],[ADURRF],[ADUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_48_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_48_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4072] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_49_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_49_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0912] (
			[RJCO],[RJDOC]
			) INCLUDE (
			[RJAID],[RJDCT],[RJDGJ],[RJDIST],[RJEXA],[RJFFY],[RJFLT],[RJFPN],[RJFROM],[RJFSBL],[RJFSUB],[RJHST],[RJJELN],[RJLT],[RJMCU],[RJMORY],[RJOBJF],[RJOBJT],[RJRE],[RJRF],[RJRFAC],[RJSDTE],[RJSLK],[RJSUBT],[RJTHRU],[RJUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_49_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0912]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_49_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0912]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 28
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0912] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0912] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912];
			CREATE NONCLUSTERED INDEX IX_AIDBA_49_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0912] (
			[RJCO],[RJDOC]
			) INCLUDE (
			[RJAID],[RJDCT],[RJDGJ],[RJDIST],[RJEXA],[RJFFY],[RJFLT],[RJFPN],[RJFROM],[RJFSBL],[RJFSUB],[RJHST],[RJJELN],[RJLT],[RJMCU],[RJMORY],[RJOBJF],[RJOBJT],[RJRE],[RJRF],[RJRFAC],[RJSDTE],[RJSLK],[RJSUBT],[RJTHRU],[RJUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_49_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_49_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0912] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_50_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_50_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] (
			[TTCO],[TTUKID]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_50_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5503B5A]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_50_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F5503B5A]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A];
			CREATE NONCLUSTERED INDEX IX_AIDBA_50_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] (
			[TTCO],[TTUKID]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_50_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_50_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F5503B5A] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_51_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_51_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0401] (
			[A6SCK]
			) INCLUDE (
			[A6AB1],[A6AN8],[A6CRCA]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_51_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0401]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_51_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F0401]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0401] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F0401] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401];
			CREATE NONCLUSTERED INDEX IX_AIDBA_51_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F0401] (
			[A6SCK]
			) INCLUDE (
			[A6AB1],[A6AN8],[A6CRCA]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_51_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_51_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F0401] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_52_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_52_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4141] (
			[PJCCCD],[PJCYNO]
			) INCLUDE (
			[PJAISL],[PJAITM],[PJBIN],[PJCNTB],[PJCNTJ],[PJGLPT],[PJITM],[PJJOBN],[PJLITM],[PJLOCN],[PJLOT1],[PJLOT2],[PJLOT3],[PJLOTN],[PJMCU],[PJPID],[PJSQOH],[PJSQOR],[PJSRP1],[PJSRP2],[PJSRP3],[PJSRP4],[PJSRP5],[PJSTUN],[PJTACT],[PJTAOH],[PJTDAY],[PJTQCT],[PJTQOH],[PJUNCS],[PJUPMJ],[PJUSER]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_52_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4141]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_52_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4141]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 34
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4141] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4141] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141];
			CREATE NONCLUSTERED INDEX IX_AIDBA_52_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4141] (
			[PJCCCD],[PJCYNO]
			) INCLUDE (
			[PJAISL],[PJAITM],[PJBIN],[PJCNTB],[PJCNTJ],[PJGLPT],[PJITM],[PJJOBN],[PJLITM],[PJLOCN],[PJLOT1],[PJLOT2],[PJLOT3],[PJLOTN],[PJMCU],[PJPID],[PJSQOH],[PJSQOR],[PJSRP1],[PJSRP2],[PJSRP3],[PJSRP4],[PJSRP5],[PJSTUN],[PJTACT],[PJTAOH],[PJTDAY],[PJTQCT],[PJTQOH],[PJUNCS],[PJUPMJ],[PJUSER]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_52_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_52_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4141] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_53_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_53_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4140] (
			[PICSDJ]
			) INCLUDE (
			[PICYCS],[PICYIT],[PICYLO],[PICYNO],[PIDSC1]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_53_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4140]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_53_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F4140]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 6
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4140] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F4140] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140];
			CREATE NONCLUSTERED INDEX IX_AIDBA_53_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F4140] (
			[PICSDJ]
			) INCLUDE (
			[PICYCS],[PICYIT],[PICYLO],[PICYNO],[PIDSC1]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_53_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_53_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F4140] CANNOT BE CREATED.';
END CATCH;


USE [JDE_PRODUCTION];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_54_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_54_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] (
			[RCAPVNAME]
			) INCLUDE (
			[RCAAD1],[RCBFSD],[RCCALNM]) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_54_20230822' AND i.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55SD005]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_54_20230822' AND i2.object_id = OBJECT_ID('[JDE_PRODUCTION].[PRODDTA].[F55SD005]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 4
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005];
			CREATE NONCLUSTERED INDEX IX_AIDBA_54_20230822
			ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] (
			[RCAPVNAME]
			) INCLUDE (
			[RCAAD1],[RCBFSD],[RCCALNM]) WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_54_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_54_20230822 ON [JDE_PRODUCTION].[PRODDTA].[F55SD005] CANNOT BE CREATED.';
END CATCH;


USE [JDE920];

BEGIN TRY
BEGIN TRAN
	IF NOT EXISTS ( SELECT * FROM sys.indexes WHERE NAME = N'IX_AIDBA_55_20230822')
	BEGIN
		CREATE NONCLUSTERED INDEX IX_AIDBA_55_20230822
			ON [JDE920].[SY920].[F9563110] (
			[RJJOBNBR],[RJRPDEXHST]
			) WITH STATISTICS_ONLY ;

		SELECT 
		@iid = ic.object_id , @oid = ic.index_id , @is_disable = i.is_disabled, @iname = i.Name
		FROM sys.indexes i
		INNER JOIN sys.index_columns ic
		ON i.index_id = ic.index_id AND i.object_id = ic.object_id
		WHERE i.name <> N'IX_AIDBA_55_20230822' AND i.object_id = OBJECT_ID('[JDE920].[SY920].[F9563110]') 
		AND EXISTS
		(SELECT *
		FROM sys.indexes i2
		INNER JOIN sys.index_columns ic2
		ON i2.index_id = ic2.index_id AND i2.object_id = ic2.object_id 
		WHERE i2.name = N'IX_AIDBA_55_20230822' AND i2.object_id = OBJECT_ID('[JDE920].[SY920].[F9563110]')
		AND i.object_id = i2.object_id
		AND i.type = i2.type
		AND ic.index_column_id = ic2.index_column_id 
		AND ic.column_id = ic2.column_id
		AND ic.key_ordinal = ic2.key_ordinal
		AND ic.partition_ordinal = ic2.partition_ordinal
		AND ic.is_descending_key = ic2.is_descending_key
		AND ic.is_included_column = ic2.is_included_column)
		GROUP BY ic.object_id,ic.index_id, i.is_disabled, i.Name  
		HAVING 
		COUNT(*) = 2
		AND COUNT(*) = (SELECT COUNT(*) FROM sys.index_columns ic3 WHERE ic3.index_id = ic.index_id AND ic3.object_id = ic.object_id);

		IF @iid IS NOT NULL
		BEGIN
			DROP INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110];
			PRINT N'HYPOTHETICAL INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110] IS DROPPED DUE TO DUPLICATION.';
			IF @is_disable = 1
			BEGIN
				SET @Smt = N'ALTER INDEX '+@iname+' ON [JDE920].[SY920].[F9563110] REBUILD WITH (SORT_IN_TEMPDB = ON);';
				EXEC (@Smt);
				PRINT N'INDEX '+@iname+' ON [JDE920].[SY920].[F9563110] IS ENABLED.';
			END
		END
		ELSE
		BEGIN
			DROP INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110];
			CREATE NONCLUSTERED INDEX IX_AIDBA_55_20230822
			ON [JDE920].[SY920].[F9563110] (
			[RJJOBNBR],[RJRPDEXHST]
			)WITH (SORT_IN_TEMPDB = ON);

			PRINT N'INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110] IS CREATED.';
		END
	END
	ELSE
	BEGIN
		PRINT N'There is already an index named IX_AIDBA_55_20230822 in the database.';
	END
COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT > 0
ROLLBACK TRAN
	PRINT N'INDEX IX_AIDBA_55_20230822 ON [JDE920].[SY920].[F9563110] CANNOT BE CREATED.';
END CATCH;

