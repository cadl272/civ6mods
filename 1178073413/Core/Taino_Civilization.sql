/*
	Civilization
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind				)
VALUES	('CIVILIZATION_CVS_TAINO',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,			Name,								Description,								Adjective,								StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity				)
VALUES	('CIVILIZATION_CVS_TAINO',	'LOC_CIVILIZATION_CVS_TAINO_NAME',	'LOC_CIVILIZATION_CVS_TAINO_DESCRIPTION',	'LOC_CIVILIZATION_CVS_TAINO_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_SOUTHAM' 	);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,				Name								)
VALUES	('NAMED_MOUNTAIN_GUANIGUANICO',	'LOC_NAMED_MOUNTAIN_GUANIGUANICO'	),
		('NAMED_MOUNTAIN_BAORUCO',		'LOC_NAMED_MOUNTAIN_BAORUCO'		);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,			NamedMountainType				)
VALUES	('CIVILIZATION_CVS_TAINO',	'NAMED_MOUNTAIN_GUANIGUANICO'	),
		('CIVILIZATION_CVS_TAINO',	'NAMED_MOUNTAIN_BAORUCO'		);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name							)
VALUES	('NAMED_RIVER_ARTIBONITE',	'LOC_NAMED_RIVER_ARTIBONITE'	),
		('NAMED_RIVER_THOA',		'LOC_NAMED_RIVER_THOA'			),
		('NAMED_RIVER_YAQUE',		'LOC_NAMED_RIVER_YAQUE'			),
		('NAMED_RIVER_YUNA',		'LOC_NAMED_RIVER_YUNA'			),
		('NAMED_RIVER_OZANA',		'LOC_NAMED_RIVER_OZAMA'			);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,			NamedRiverType			)
VALUES	('CIVILIZATION_CVS_TAINO',	'NAMED_RIVER_ARTIBONITE'),
		('CIVILIZATION_CVS_TAINO',	'NAMED_RIVER_THOA'		),
		('CIVILIZATION_CVS_TAINO',	'NAMED_RIVER_YAQUE'		),
		('CIVILIZATION_CVS_TAINO',	'NAMED_RIVER_YUNA'		),
		('CIVILIZATION_CVS_TAINO',	'NAMED_RIVER_OZANA'		);
		
-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames (CivilizationType, CityName)
VALUES	('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_YAGUANA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUARICO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_MAGUA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_MAGUANA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_HIGUEY'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_YAUCO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUAYNIA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_TOA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_ARASIBO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_AYMAMON'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_CAYNIABON'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_TURABO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_SEBUCO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUAYANEY'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUAYAMA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_OTOAO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_MACAO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUAJATACA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_BAYAMON'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUAYNABO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_YAGUECAS'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_DAGUAO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_JAYMANIO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_COABEY'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_CAYEY'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_JATIBONICU'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_BIEKE'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_ABEYNO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_HOROMICO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_MAYGUEZ'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_BARACOA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_CAMAGUEY'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_YABUCOA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_HAYUYA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_CAMUY'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_BAYAMO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_AMONA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GONAIBO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUANTANAMO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_ABAWANA'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_GUANABO'),
		('CIVILIZATION_CVS_TAINO', 'LOC_CITY_NAME_YAQUIMEL');
			
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,			CitizenName,						Female	)
VALUES	('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_1',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_2',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_3',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_4',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_5',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_6',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_7',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_8',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_9',		0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_MALE_10',	0 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_1',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_2',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_3',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_4',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_5',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_6',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_7',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_8',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_9',	1 		),
		('CIVILIZATION_CVS_TAINO',	'LOC_CITIZEN_CVS_TAINO_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,			Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_CVS_TAINO',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_CVS_TAINO_LOCATION',		10			),
		('CIVILIZATION_CVS_TAINO',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_CVS_TAINO_SIZE',			20			),
		('CIVILIZATION_CVS_TAINO',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_CVS_TAINO_POPULATION',		30			),
		('CIVILIZATION_CVS_TAINO',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_CVS_TAINO_CAPITAL',		40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasFeatures
		(CivilizationType,			FeatureType,		Tier	)
VALUES	('CIVILIZATION_CVS_TAINO',	'FEATURE_JUNGLE',	3		);

INSERT INTO	StartBiasTerrains
		(CivilizationType,			TerrainType,		Tier	)
VALUES	('CIVILIZATION_CVS_TAINO',	'TERRAIN_COAST',	2		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_TAINO',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_TAINO',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,				RequirementId				)
VALUES	('REQSET_CVS_PLAYER_IS_TAINO',	'REQ_CVS_PLAYER_IS_TAINO'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,				RequirementType						)
VALUES	('REQ_CVS_PLAYER_IS_TAINO',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,				Name,				Value							)
VALUES	('REQ_CVS_PLAYER_IS_TAINO',	'RequirementSetId', 'REQSET_CVS_LEADER_IS_TAINO'	);