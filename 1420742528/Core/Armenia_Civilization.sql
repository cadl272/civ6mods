/*
	Civilization
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

CREATE TABLE IF NOT EXISTS ModCheck (Version TEXT NOT NULL, PRIMARY KEY (Version));

INSERT INTO ModCheck (Version) VALUES ('CIVITAS_ARMENIA');

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind				)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,				Name,									Description,								Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity			)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'LOC_CIVILIZATION_CVS_ARMENIA_NAME',	'LOC_CIVILIZATION_CVS_ARMENIA_DESCRIPTION',	'LOC_CIVILIZATION_CVS_ARMENIA_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_EURO'	);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType			)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'NAMED_MOUNTAIN_CAUCASUS'	);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name						)
VALUES	('NAMED_RIVER_AKHURIAN',	'LOC_NAMED_RIVER_AKHURIAN'	),
		('NAMED_RIVER_VOROTAN',		'LOC_NAMED_RIVER_VOROTAN'	),
		('NAMED_RIVER_HRAZDAN',		'LOC_NAMED_RIVER_HRAZDAN'	);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType				)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'NAMED_RIVER_AKHURIAN'		),
		('CIVILIZATION_CVS_ARMENIA',	'NAMED_RIVER_VOROTAN'		),
		('CIVILIZATION_CVS_ARMENIA',	'NAMED_RIVER_ARAS_RIVER'	),
		('CIVILIZATION_CVS_ARMENIA',	'NAMED_RIVER_HRAZDAN'		);

-----------------------------------------------
-- NamedVolcanoes
-----------------------------------------------

REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,				Name							)
VALUES	('NAMED_VOLCANO_ARAGATS',		'LOC_NAMED_VOLCANO_ARAGATS'		),
		('NAMED_VOLCANO_PORAK',			'LOC_NAMED_VOLCANO_PORAK'		),
		('NAMED_VOLCANO_DAR_ALAGES',	'LOC_NAMED_VOLCANO_DAR_ALAGES'	);

-----------------------------------------------
-- NamedVolcanoCivilizations
-----------------------------------------------

INSERT INTO NamedVolcanoCivilizations
		(CivilizationType,				NamedVolcanoType			)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'NAMED_VOLCANO_ARARAT'		),
		('CIVILIZATION_CVS_ARMENIA',	'NAMED_VOLCANO_ARAGATS'		),
		('CIVILIZATION_CVS_ARMENIA',	'NAMED_VOLCANO_PORAK'		),
		('CIVILIZATION_CVS_ARMENIA',	'NAMED_VOLCANO_DAR_ALAGES'	);

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,			 CityName )
VALUES	('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_TIGRANAKERT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ARTASHAT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_VAGHARSHAPAT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_GYUMRI'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_YEREVAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_YERVANDASHAT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ARMAVIR'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SOPHENE'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_VAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ARARAT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_DVIN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_MANZIKERT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_MOXOENE'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_VANADZOR'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SAMOSATA'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_BAGARAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_EDESSA'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SHIRAKAVAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_KARS'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_KAPAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ANI'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ABOVYAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_IJEVAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_GORIS'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_BAGHABERD'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ARTIK'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_BITLIS'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SASUNIK'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_PARTAV'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_HRAZDAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ARTAHAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SISIAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ERZURUM'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ARSAMOSATA'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ZAREHAVAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_GAVAR'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_NAXCIVAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ALASHKERT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SHUSHA'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_STEPANAKERT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_TIRAKATAR'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_DILIJAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ZARISHAT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_MAKU'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_ADAMAKERT'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SIVAS'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_SASSOUN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_APARAN'),
		('CIVILIZATION_CVS_ARMENIA', 'LOC_CITY_NAME_VARDENIS');
			
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,				CitizenName,							Female	)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_1',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_2',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_3',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_4',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_5',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_6',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_7',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_8',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_9',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_MALE_10',		0 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_1',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_2',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_3',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_4',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_5',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_6',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_7',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_8',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_9',		1 		),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CITIZEN_CVS_ARMENIA_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_CVS_ARMENIA_LOCATION',		10			),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_CVS_ARMENIA_SIZE',			20			),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_CVS_ARMENIA_POPULATION',	30			),
		('CIVILIZATION_CVS_ARMENIA',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_CVS_ARMENIA_CAPITAL',		40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier	)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'TERRAIN_GRASS_MOUNTAIN',	3		),
		('CIVILIZATION_CVS_ARMENIA',	'TERRAIN_PLAINS_MOUNTAIN',	3		),
		('CIVILIZATION_CVS_ARMENIA',	'TERRAIN_GRASS_HILLS',		5		),
		('CIVILIZATION_CVS_ARMENIA',	'TERRAIN_PLAINS_HILLS',		5		);

INSERT INTO	StartBiasResources
		(CivilizationType,				ResourceType,				Tier	)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'RESOURCE_STONE',			5		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_ARMENIA',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType						)
VALUES	('REQ_CVS_PLAYER_IS_ARMENIA',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,				Value							)
VALUES	('REQ_CVS_PLAYER_IS_ARMENIA',	'RequirementSetId', 'REQSET_CVS_PLAYER_IS_ARMENIA'	);

-----------------------------------------------
-- Support for Alternative Leaders
-- Copy the below and add your leader into the requirements to ensure that they get the Civ's UA applied to them
-----------------------------------------------
/*
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId						)
VALUES	('REQSET_CVS_ARMENIA_IS_ARMENIAN',	'REQ_CVS_ARMENIA_UI_IS_LEADERNAME'	);

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_ARMENIA_UI_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value				)
VALUES	('REQ_CVS_ARMENIA_UI_LEADERNAME',	'LeaderType',	'LEADER_LEADERNAME'	);
*/