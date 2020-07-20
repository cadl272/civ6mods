-- Suk_Ingolfur_XP2
-- Author: Sukrit
-- DateCreated: 8/17/2018 4:51:38 AM
--==========================================================================================================================
														-- START BIAS --
--==========================================================================================================================
DELETE FROM StartBiasFeatures
WHERE CivilizationType = 'CIVILIZATION_SUK_ICELAND';

INSERT INTO StartBiasFeatures	
		(CivilizationType,						FeatureType,						Tier)
VALUES	('CIVILIZATION_SUK_ICELAND',			'FEATURE_VOLCANO',					4),
		('CIVILIZATION_SUK_ICELAND',			'FEATURE_GEOTHERMAL_FISSURE',		4);
--==========================================================================================================================
														-- DISTRICTS --
--==========================================================================================================================
INSERT INTO Districts_XP2	
		(DistrictType,						PreventsDrought)
VALUES	('DISTRICT_SUK_TORFBAEIR',			1);

UPDATE Districts
SET Description = 'LOC_DISTRICT_SUK_TORFBAEIR_XP2_DESCRIPTION'
WHERE DistrictType = 'DISTRICT_SUK_TORFBAEIR';
--==========================================================================================================================
														-- TRAITS --
--==========================================================================================================================
UPDATE Traits
SET Description = 'LOC_TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS_DESCRIPTION_XP2'
WHERE TraitType = 'TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS';
----------------------------------------------------------------------------------------------------------------------------
-- +2 Appeal from Volcanoes, Volcanic Soil, and Geothermal Fissures.
--
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,														ModifierId)
VALUES	('TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS', 				'SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANO'),
		('TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS', 				'SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANIC_SOIL'),
		('TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS', 				'SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_GEOTHERMAL_FISSURE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,															ModifierType)
VALUES	('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANO',					'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER'),
		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANIC_SOIL',			'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER'),
		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_GEOTHERMAL_FISSURE',		'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,															Name,							Value)
VALUES	('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANO',					'FeatureType',					'FEATURE_VOLCANO'),
		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANO',					'Amount',						2),

		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANIC_SOIL',			'FeatureType',					'FEATURE_VOLCANIC_SOIL'),
		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_VOLCANIC_SOIL',			'Amount',						2),

		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_GEOTHERMAL_FISSURE',		'FeatureType',					'FEATURE_GEOTHERMAL_FISSURE'),
		('SUK_SAGAS_OF_THE_ICELANDERS_APPEAL_FEATURE_GEOTHERMAL_FISSURE',		'Amount',						2);
--==========================================================================================================================
											-- NAMED PLACES --
--==========================================================================================================================
-- Types
--------------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,									Kind)
VALUES	("NAMED_RIVER_THJORSA",					"KIND_NAMED_RIVER"),
		("NAMED_RIVER_HVITA",					"KIND_NAMED_RIVER"),
		("NAMED_RIVER_FNJOSKA",					"KIND_NAMED_RIVER"),
		("NAMED_RIVER_KUTHAFLJOT",				"KIND_NAMED_RIVER"),
		("NAMED_RIVER_SKJALFANDAFLJOT",			"KIND_NAMED_RIVER"),
		("NAMED_RIVER_JOKULSA_A_FJOLLUM",		"KIND_NAMED_RIVER"),
		("NAMED_RIVER_JOKULSA_A_DAL",			"KIND_NAMED_RIVER"),
		("NAMED_MOUNTAIN_ESJAN",				"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_HOFSJOKULL",			"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_VATNAJOKULL",			"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_LANGJOKULL",			"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_MYRDALSJOKULL",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_LANDMANNALAUGAR",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_VOLCANO_HEKLA",					"KIND_NAMED_VOLCANO"),
		("NAMED_VOLCANO_BARTHARBUNGA",			"KIND_NAMED_VOLCANO"),
		("NAMED_VOLCANO_KATLA",					"KIND_NAMED_VOLCANO"),
		("NAMED_VOLCANO_KRAFLA_CALDERA",		"KIND_NAMED_VOLCANO"),
		("NAMED_VOLCANO_ASKJA_CALDERA",			"KIND_NAMED_VOLCANO"),
		("NAMED_VOLCANO_ELDFELL",				"KIND_NAMED_VOLCANO"),
		("NAMED_VOLCANO_THRIHNJUKAGIGUR",		"KIND_NAMED_VOLCANO"),

		("NAMED_LAKE_THINGVALLAVATN",			"KIND_NAMED_LAKE"),
		("NAMED_LAKE_MYVATN",					"KIND_NAMED_LAKE"),
		("NAMED_LAKE_KERITH",					"KIND_NAMED_LAKE"),
		("NAMED_LAKE_OSKJUVATN",				"KIND_NAMED_LAKE"),
		("NAMED_LAKE_JOKULSARLON",				"KIND_NAMED_LAKE"),
		("NAMED_LAKE_LAGARFLJOT",				"KIND_NAMED_LAKE"),
		("NAMED_LAKE_HVITARVATN",				"KIND_NAMED_LAKE"),
		("NAMED_SEA_BAKKAFLOI",					"KIND_NAMED_SEA"),
		("NAMED_SEA_FAXAFLOI",					"KIND_NAMED_SEA"),
		("NAMED_SEA_GRUNNAVIK",					"KIND_NAMED_SEA"),
		("NAMED_SEA_HERADSFLOI",				"KIND_NAMED_SEA"),
		("NAMED_SEA_HUNAFLOI",					"KIND_NAMED_SEA"),
		("NAMED_SEA_THISTILFJORTHUR",			"KIND_NAMED_SEA"),
		("NAMED_SEA_BREITHAFJORTHUR",			"KIND_NAMED_SEA"),
		("NAMED_SEA_ISAFJARTHARDJUP",			"KIND_NAMED_SEA"),
		("NAMED_SEA_SKAGAFJORTHUR",				"KIND_NAMED_SEA"),
		("NAMED_SEA_EYJAFJORTHUR",				"KIND_NAMED_SEA");
--------------------------------------------------------------------
-- NamedRivers
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRivers
		(NamedRiverType,						Name)
VALUES	("NAMED_RIVER_THJORSA",					"LOC_NAMED_RIVER_THJORSA_NAME"),
		("NAMED_RIVER_HVITA",					"LOC_NAMED_RIVER_HVITA_NAME"),
		("NAMED_RIVER_FNJOSKA",					"LOC_NAMED_RIVER_FNJOSKA_NAME"),
		("NAMED_RIVER_KUTHAFLJOT",				"LOC_NAMED_RIVER_KUTHAFLJOT_NAME"),
		("NAMED_RIVER_SKJALFANDAFLJOT",			"LOC_NAMED_RIVER_SKJALFANDAFLJOT_NAME"),
		("NAMED_RIVER_JOKULSA_A_FJOLLUM",		"LOC_NAMED_RIVER_JOKULSA_A_FJOLLUM_NAME"),
		("NAMED_RIVER_JOKULSA_A_DAL",			"LOC_NAMED_RIVER_JOKULSA_A_DAL_NAME");
--------------------------------------------------------------------
-- NamedMountains
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountains
		(NamedMountainType,						Name)
VALUES	("NAMED_MOUNTAIN_ESJAN",				"LOC_NAMED_MOUNTAIN_ESJAN_NAME"),
		("NAMED_MOUNTAIN_HOFSJOKULL",			"LOC_NAMED_MOUNTAIN_HOFSJOKULL_NAME"),
		("NAMED_MOUNTAIN_VATNAJOKULL",			"LOC_NAMED_MOUNTAIN_VATNAJOKULL_NAME"),
		("NAMED_MOUNTAIN_LANGJOKULL",			"LOC_NAMED_MOUNTAIN_LANGJOKULL_NAME"),
		("NAMED_MOUNTAIN_MYRDALSJOKULL",		"LOC_NAMED_MOUNTAIN_MYRDALSJOKULL_NAME"),
		("NAMED_MOUNTAIN_LANDMANNALAUGAR",		"LOC_NAMED_MOUNTAIN_LANDMANNALAUGAR_NAME");
--------------------------------------------------------------------
-- NamedVolcanoes
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,						Name)
VALUES	("NAMED_VOLCANO_HEKLA",					"LOC_NAMED_VOLCANO_HEKLA_NAME"),
		("NAMED_VOLCANO_BARTHARBUNGA",			"LOC_NAMED_VOLCANO_BARTHARBUNGA_NAME"),
		("NAMED_VOLCANO_KATLA",					"LOC_NAMED_VOLCANO_KATLA_NAME"),
		("NAMED_VOLCANO_KRAFLA_CALDERA",		"LOC_NAMED_VOLCANO_KRAFLA_CALDERA_NAME"),
		("NAMED_VOLCANO_ASKJA_CALDERA",			"LOC_NAMED_VOLCANO_ASKJA_CALDERA_NAME"),
		("NAMED_VOLCANO_ELDFELL",				"LOC_NAMED_VOLCANO_ELDFELL_NAME"),
		("NAMED_VOLCANO_THRIHNJUKAGIGUR",		"LOC_NAMED_VOLCANO_THRIHNJUKAGIGUR_NAME");
--------------------------------------------------------------------
-- NamedLakes
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedLakes
		(NamedLakeType,						Name)
VALUES	("NAMED_LAKE_THINGVALLAVATN",		"LOC_NAMED_LAKE_THINGVALLAVATN_NAME"),
		("NAMED_LAKE_MYVATN",				"LOC_NAMED_LAKE_MYVATN_NAME"),
		("NAMED_LAKE_KERITH",				"LOC_NAMED_LAKE_KERITH_NAME"),
		("NAMED_LAKE_OSKJUVATN",			"LOC_NAMED_LAKE_OSKJUVATN_NAME"),
		("NAMED_LAKE_JOKULSARLON",			"LOC_NAMED_LAKE_JOKULSARLON_NAME"),
		("NAMED_LAKE_LAGARFLJOT",			"LOC_NAMED_LAKE_LAGARFLJOT_NAME"),
		("NAMED_LAKE_HVITARVATN",			"LOC_NAMED_LAKE_HVITARVATN_NAME");
--------------------------------------------------------------------
-- NamedSeas
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedSeas
		(NamedSeaType,						Name)
VALUES	("NAMED_SEA_BAKKAFLOI",				"LOC_NAMED_SEA_BAKKAFLOI_NAME"),
		("NAMED_SEA_FAXAFLOI",				"LOC_NAMED_SEA_FAXAFLOI_NAME"),
		("NAMED_SEA_GRUNNAVIK",				"LOC_NAMED_SEA_GRUNNAVIK_NAME"),
		("NAMED_SEA_HERADSFLOI",			"LOC_NAMED_SEA_HERADSFLOI_NAME"),
		("NAMED_SEA_HUNAFLOI",				"LOC_NAMED_SEA_HUNAFLOI_NAME"),
		("NAMED_SEA_THISTILFJORTHUR",		"LOC_NAMED_SEA_THISTILFJORTHUR_NAME"),
		("NAMED_SEA_BREITHAFJORTHUR",		"LOC_NAMED_SEA_BREITHAFJORTHUR_NAME"),
		("NAMED_SEA_ISAFJARTHARDJUP",		"LOC_NAMED_SEA_ISAFJARTHARDJUP_NAME"),
		("NAMED_SEA_SKAGAFJORTHUR",			"LOC_NAMED_SEA_SKAGAFJORTHUR_NAME"),
		("NAMED_SEA_EYJAFJORTHUR",			"LOC_NAMED_SEA_EYJAFJORTHUR_NAME");
--------------------------------------------------------------------
-- NamedRiverCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRiverCivilizations
		(NamedRiverType,						CivilizationType)
VALUES	("NAMED_RIVER_THJORSA",					"CIVILIZATION_SUK_ICELAND"),
		("NAMED_RIVER_HVITA",					"CIVILIZATION_SUK_ICELAND"),
		("NAMED_RIVER_FNJOSKA",					"CIVILIZATION_SUK_ICELAND"),
		("NAMED_RIVER_KUTHAFLJOT",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_RIVER_SKJALFANDAFLJOT",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_RIVER_JOKULSA_A_FJOLLUM",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_RIVER_JOKULSA_A_DAL",			"CIVILIZATION_SUK_ICELAND");
--------------------------------------------------------------------
-- NamedMountainCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountainCivilizations
		(NamedMountainType,						CivilizationType)
VALUES	("NAMED_MOUNTAIN_ESJAN",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_MOUNTAIN_HOFSJOKULL",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_MOUNTAIN_VATNAJOKULL",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_MOUNTAIN_LANGJOKULL",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_MOUNTAIN_MYRDALSJOKULL",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_MOUNTAIN_LANDMANNALAUGAR",		"CIVILIZATION_SUK_ICELAND");
--------------------------------------------------------------------
-- NamedVolcanoCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoCivilizations
		(NamedVolcanoType,						CivilizationType)
VALUES	("NAMED_VOLCANO_HEKLA",					"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_BARTHARBUNGA",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_KATLA",					"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_KRAFLA_CALDERA",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_ASKJA_CALDERA",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_GRIMSVOTN",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_ELDFELL",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_VOLCANO_THRIHNJUKAGIGUR",		"CIVILIZATION_SUK_ICELAND");
--------------------------------------------------------------------
-- NamedLakeCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedLakeCivilizations
		(NamedLakeType,						CivilizationType)
VALUES	("NAMED_LAKE_THINGVALLAVATN",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_LAKE_MYVATN",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_LAKE_KERITH",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_LAKE_OSKJUVATN",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_LAKE_JOKULSARLON",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_LAKE_LAGARFLJOT",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_LAKE_HVITARVATN",			"CIVILIZATION_SUK_ICELAND");
--------------------------------------------------------------------
-- NamedSeaCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedSeaCivilizations
		(NamedSeaType,						CivilizationType)
VALUES	("NAMED_SEA_NORWEGIAN_SEA",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_BAKKAFLOI",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_FAXAFLOI",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_GRUNNAVIK",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_HERADSFLOI",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_HUNAFLOI",				"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_THISTILFJORTHUR",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_BREITHAFJORTHUR",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_ISAFJARTHARDJUP",		"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_SKAGAFJORTHUR",			"CIVILIZATION_SUK_ICELAND"),
		("NAMED_SEA_EYJAFJORTHUR",			"CIVILIZATION_SUK_ICELAND");
--==========================================================================================================================
--==========================================================================================================================