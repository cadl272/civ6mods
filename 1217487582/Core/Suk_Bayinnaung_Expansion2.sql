-- Suk_SwahiliSwahili_Expansion1
-- Author: Sukrit
-- DateCreated: 2/13/2018 8:53:59 PM
--==========================================================================================================================
											-- UNITS --
--==========================================================================================================================
UPDATE Units
SET
	Description = 'LOC_UNIT_SUK_MYINSI_DESCRIPTION_XP2',

	BaseMoves = (SELECT BaseMoves FROM Units WHERE UnitType = 'UNIT_CUIRASSIER'), 
	Cost = (SELECT Cost FROM Units WHERE UnitType = 'UNIT_CUIRASSIER'),

	Maintenance = (SELECT Maintenance FROM Units WHERE UnitType = 'UNIT_CUIRASSIER'),
	MandatoryObsoleteTech = (SELECT MandatoryObsoleteTech FROM Units WHERE UnitType = 'UNIT_CUIRASSIER'),

	Combat = (SELECT Combat - 4 FROM Units WHERE UnitType = 'UNIT_CUIRASSIER'),
	PrereqTech = 'TECH_METAL_CASTING'
WHERE UnitType = 'UNIT_SUK_MYINSI';

UPDATE UnitUpgrades
SET UpgradeUnit = 'UNIT_TANK'
WHERE Unit = 'UNIT_SUK_MYINSI';

INSERT INTO UnitReplaces
			(CivUniqueUnitType,			ReplacesUnitType)
VALUES		('UNIT_SUK_MYINSI',			'UNIT_CUIRASSIER');
--==========================================================================================================================
											-- NAMED PLACES --
--==========================================================================================================================
-- Types
--------------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,								Kind)
VALUES	("NAMED_RIVER_CHINDWIN",			"KIND_NAMED_RIVER"),
		("NAMED_RIVER_N_MAI",				"KIND_NAMED_RIVER"),
		("NAMED_RIVER_SITTAUNG",			"KIND_NAMED_RIVER"),
		("NAMED_MOUNTAIN_PEGU",				"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_SHAN_HILLS",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_KAREN_HILLS",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_NAGA_HILLS",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_TENASSERIM",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_KACHIN_HILLS",		"KIND_NAMED_MOUNTAIN"),
		("NAMED_MOUNTAIN_DAWNA",			"KIND_NAMED_MOUNTAIN"),
		("NAMED_VOLCANO_POPA",				"KIND_NAMED_VOLCANO");
--------------------------------------------------------------------
-- NamedRivers
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRivers
		(NamedRiverType,			Name)
VALUES	("NAMED_RIVER_CHINDWIN",	"LOC_NAMED_RIVER_CHINDWIN_NAME"),
		("NAMED_RIVER_N_MAI",		"LOC_NAMED_RIVER_N_MAI_NAME"),
		("NAMED_RIVER_SITTAUNG",	"LOC_NAMED_RIVER_SITTAUNG_NAME");
--------------------------------------------------------------------
-- NamedMountains
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountains
		(NamedMountainType,					Name)
VALUES	("NAMED_MOUNTAIN_PEGU",				"LOC_NAMED_MOUNTAIN_PEGU_NAME"),
		("NAMED_MOUNTAIN_SHAN_HILLS",		"LOC_NAMED_MOUNTAIN_SHAN_HILLS_NAME"),
		("NAMED_MOUNTAIN_KAREN_HILLS",		"LOC_NAMED_MOUNTAIN_KAREN_HILLS_NAME"),
		("NAMED_MOUNTAIN_NAGA_HILLS",		"LOC_NAMED_MOUNTAIN_NAGA_HILLS_NAME"),
		("NAMED_MOUNTAIN_TENASSERIM",		"LOC_NAMED_MOUNTAIN_TENASSERIM_NAME"),
		("NAMED_MOUNTAIN_KACHIN_HILLS",		"LOC_NAMED_MOUNTAIN_KACHIN_HILLS_NAME"),
		("NAMED_MOUNTAIN_DAWNA",			"LOC_NAMED_MOUNTAIN_DAWNA_NAME");
--------------------------------------------------------------------
-- NamedVolcanoes
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,			Name)
VALUES	("NAMED_VOLCANO_POPA",		"LOC_NAMED_VOLCANO_POPA_NAME");
--------------------------------------------------------------------
-- NamedRiverCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedRiverCivilizations
		(NamedRiverType,				CivilizationType)
VALUES	("NAMED_RIVER_MEKONG",			"CIVILIZATION_SUK_BURMA"),
		("NAMED_RIVER_SALWEEN",			"CIVILIZATION_SUK_BURMA"),
		("NAMED_RIVER_IRRAWADDY",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_RIVER_CHINDWIN",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_RIVER_N_MAI",			"CIVILIZATION_SUK_BURMA"),
		("NAMED_RIVER_SITTAUNG",		"CIVILIZATION_SUK_BURMA");
--------------------------------------------------------------------
-- NamedMountainCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedMountainCivilizations
		(NamedMountainType,					CivilizationType)
VALUES	("NAMED_MOUNTAIN_ARAKAN",			"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_PEGU",				"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_SHAN_HILLS",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_KAREN_HILLS",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_NAGA_HILLS",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_TENASSERIM",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_KACHIN_HILLS",		"CIVILIZATION_SUK_BURMA"),
		("NAMED_MOUNTAIN_DAWNA",			"CIVILIZATION_SUK_BURMA");
--------------------------------------------------------------------
-- NamedVolcanoCivilizations
--------------------------------------------------------------------
INSERT OR REPLACE INTO NamedVolcanoCivilizations
		(NamedVolcanoType,			CivilizationType)
VALUES	("NAMED_VOLCANO_POPA",		"CIVILIZATION_SUK_BURMA");
--==========================================================================================================================
--==========================================================================================================================