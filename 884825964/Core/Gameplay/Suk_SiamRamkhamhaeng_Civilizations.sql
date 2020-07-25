--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('CIVILIZATION_SUK_SIAM',			'KIND_CIVILIZATION');
-------------------------------------
-- Civilizations
-------------------------------------
-- Types
-------------------------------------
INSERT INTO Civilizations
		(CivilizationType,			Name,								Description,								Adjective,								StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity)
VALUES	('CIVILIZATION_SUK_SIAM',	'LOC_CIVILIZATION_SUK_SIAM_NAME',	'LOC_CIVILIZATION_SUK_SIAM_DESCRIPTION',	'LOC_CIVILIZATION_SUK_SIAM_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_ASIAN');
-------------------------------------
-- CityNames
-------------------------------------
INSERT INTO CityNames
			(CivilizationType,								CityName)
VALUES		('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_KRUNG_THEP'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_AYUTTHAYA'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SUKHOTHAI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_PHITSANULOK'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_CHIANG_MAI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NAKHON_SI_THAMMARAT'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_LAMPANG'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_KAMPHAENG_PHET'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_RATCHABURI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_LOPBURI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_CHIANG_RAI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NAKHON_RATCHASIMA'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NAKHON_SAWAN'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NONTHABURI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_UBON_RATCHATHANI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_UDON_THANI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NAKHON_PATHOM'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_KANCHANABURI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_KHON_KAEN'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SURIN'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_PHIMAI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_PHETCHABURI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SI_SATCHANALAI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NAN'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_BURIRAM'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_NONG_BUA_LAMPHU'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_CHAIYAPHUM'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_HAT_YAI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_PAK_KRET'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_PATTAYA'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SONGKHLA'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SURAT_THANI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_YALA'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_PHUKET'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SAMUT_PRAKAN'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_TRANG'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SAMUI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SAMUT_SAKHON'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_RAYONG'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_MAE_SOT'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_OM_NOI'),
			('CIVILIZATION_SUK_SIAM',			'LOC_CITY_NAME_SIAM_SAKON_NAKHON');
-------------------------------------
-- CivilizationCitizenNames
-------------------------------------
INSERT INTO CivilizationCitizenNames
		(CivilizationType,					CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_1',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_2',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_3',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_4',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_5',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_6',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_7',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_8',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_9',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MALE_10',				0,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_1',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_2',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_3',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_4',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_5',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_6',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_7',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_8',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_9',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_FEMALE_10',			1,			0),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_1',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_2',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_3',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_4',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_5',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_6',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_7',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_8',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_9',		1,			1),
		('CIVILIZATION_SUK_SIAM',			'LOC_CITIZEN_SUK_SIAM_MODERN_FEMALE_10',	1,			1);
-------------------------------------
-- StartBiasRivers
-------------------------------------
INSERT INTO StartBiasRivers
		(CivilizationType,					Tier)
VALUES	('CIVILIZATION_SUK_SIAM',			2);
-------------------------------------
-- StartBiasTerrains
-------------------------------------
INSERT INTO StartBiasTerrains
		(CivilizationType,					TerrainType,				Tier)
VALUES	('CIVILIZATION_SUK_SIAM',			'TERRAIN_GRASS',			3),
		('CIVILIZATION_SUK_SIAM',			'TERRAIN_GRASS_HILLS',		3),
		('CIVILIZATION_SUK_SIAM',			'TERRAIN_PLAINS',			3),
		('CIVILIZATION_SUK_SIAM',			'TERRAIN_PLAINS_HILLS',		3);
-------------------------------------
-- CivilizationInfo
-------------------------------------
INSERT INTO CivilizationInfo
			(CivilizationType,				Header,						Caption,								SortIndex)
VALUES		('CIVILIZATION_SUK_SIAM',		'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_SUK_SIAM_LOCATION',		10),
			('CIVILIZATION_SUK_SIAM',		'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_SUK_SIAM_SIZE',			20),
			('CIVILIZATION_SUK_SIAM',		'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_SUK_SIAM_POPULATION',		30),
			('CIVILIZATION_SUK_SIAM',		'LOC_CIVINFO_CAPITAL', 		'LOC_CIVINFO_SUK_SIAM_CAPITAL',			40);
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,														Kind)
VALUES	('TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA',					'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_UNIT_SUK_SIAM_CHANGSUEK',				'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_DISTRICT_SUK_FLOATINGMARKET',			'KIND_TRAIT');
-------------------------------------
-- Traits
-------------------------------------
INSERT INTO Traits
		(TraitType,												Name,															Description)
VALUES	('TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA',				'LOC_TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA_NAME',				'LOC_TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_SUK_SIAM_CHANGSUEK',			'LOC_TRAIT_CIVILIZATION_UNIT_SUK_SIAM_CHANGSUEK_NAME',			null),
		('TRAIT_CIVILIZATION_DISTRICT_SUK_FLOATINGMARKET',		'LOC_TRAIT_CIVILIZATION_DISTRICT_SUK_FLOATINGMARKET_NAME',		null);
-------------------------------------
-- CivilizationTraits
-------------------------------------
INSERT INTO CivilizationTraits
		(TraitType,													CivilizationType)
VALUES	('TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA',					'CIVILIZATION_SUK_SIAM'),
		('TRAIT_CIVILIZATION_UNIT_SUK_SIAM_CHANGSUEK',				'CIVILIZATION_SUK_SIAM'),
		('TRAIT_CIVILIZATION_DISTRICT_SUK_FLOATINGMARKET',			'CIVILIZATION_SUK_SIAM');
--==========================================================================================================================
-- Cities founded next to a River gain +2 [ICON_Housing] Housing, +1 [ICON_Amenities] Amenity.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,											ModifierId)
VALUES	('TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA', 			'SUK_SRI_AYUTTHAYA_RIVER_HOUSING'),
		('TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA', 			'SUK_SRI_AYUTTHAYA_RIVER_AMENITY');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,										OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('SUK_SRI_AYUTTHAYA_RIVER_HOUSING',				'MODIFIER_PLAYER_CITIES_ADJUST_WATER_HOUSING',		NULL,						'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS'),
		('SUK_SRI_AYUTTHAYA_RIVER_AMENITY',				'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',		NULL,						'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
VALUES	('SUK_SRI_AYUTTHAYA_RIVER_HOUSING',				'Amount',						2),
		('SUK_SRI_AYUTTHAYA_RIVER_AMENITY',				'Amount',						1);
--==========================================================================================================================
-- Specialty Districts next to a River provide +1 [ICON_Food] Food.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,											ModifierId)
VALUES	('TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA', 			'SRI_AYUTTHAYA_RIVER_FOOD');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,										OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('SRI_AYUTTHAYA_RIVER_FOOD',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	NULL,						'SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT_RIVER_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,						Value)
VALUES	('SRI_AYUTTHAYA_RIVER_FOOD',				'YieldType',				'YIELD_FOOD'),
		('SRI_AYUTTHAYA_RIVER_FOOD',				'Amount',					1);
----------------------------------------------------------------------------------------------------------------------------
-- REQUIREMENTS
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,													RequirementSetType)
VALUES	('SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT_RIVER_REQUIREMENTS',			'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,													RequirementId)
VALUES	('SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT_RIVER_REQUIREMENTS',			'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
		('SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT_RIVER_REQUIREMENTS',			'REQUIRES_SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT');
---------------------------------------
---- Requirements
---------------------------------------
INSERT INTO Requirements
		(RequirementId, 										RequirementType)
VALUES	('REQUIRES_SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT',		'REQUIREMENT_PLOT_DISTRICT_TAG_MATCHES');
---------------------------------------
---- RequirementArguments
---------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
VALUES	('REQUIRES_SUK_SRI_AYUTTHAYA_SPECIALTY_DISTRICT',			'Tag',							'CLASS_SRI_AYUTTHAYA');
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,							Vocabulary)
VALUES		('CLASS_SRI_AYUTTHAYA',			'RESOURCE_CLASS');
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,							Tag)
SELECT		DistrictType,					'CLASS_SRI_AYUTTHAYA'
FROM Districts WHERE RequiresPopulation = 1;

INSERT OR REPLACE INTO TypeTags
			(Type,								Tag)
VALUES		('DISTRICT_SUK_FLOATINGMARKET',		'CLASS_SRI_AYUTTHAYA');
--==========================================================================================================================
-- TSL
--==========================================================================================================================
CREATE TABLE IF NOT EXISTS StartPosition
	(MapName TEXT,
	Civilization TEXT,
	Leader TEXT,
	X INT default 0,
	Y INT default 0);

INSERT INTO StartPosition
		(Civilization,					Leader,							MapName,				X,		Y)
VALUES	('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'GiantEarth',			75,		43),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'GreatestEarthMap',		83,		37),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'CordiformEarth',		63,		25),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'LargestEarth',			100,	54);
--==========================================================================================================================
--==========================================================================================================================