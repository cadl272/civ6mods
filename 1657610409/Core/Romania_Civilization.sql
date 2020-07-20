/*
	Civilization
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind				)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,				Name,									Description,								Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity			)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LOC_CIVILIZATION_CVS_ROMANIA_NAME',	'LOC_CIVILIZATION_CVS_ROMANIA_DESCRIPTION',	'LOC_CIVILIZATION_CVS_ROMANIA_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_EURO' 	);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,			Name							)
VALUES	('NAMED_MOUNTAIN_ALMAJ',	'LOC_NAMED_MOUNTAIN_ALMAJ'		),
		('NAMED_MOUNTAIN_BIHOR',	'LOC_NAMED_MOUNTAIN_BIHOR'		),
		('NAMED_MOUNTAIN_BUCEGI',	'LOC_NAMED_MOUNTAIN_BUCEGI'		),
		('NAMED_MOUNTAIN_FAGARAS',	'LOC_NAMED_MOUNTAIN_FAGARAS'	),
		('NAMED_MOUNTAIN_GODEANU',	'LOC_NAMED_MOUNTAIN_GODEANU'	),
		('NAMED_MOUNTAIN_RETEZAT',	'LOC_NAMED_MOUNTAIN_RETEZAT'	),
		('NAMED_MOUNTAIN_VRANCEA',	'LOC_NAMED_MOUNTAIN_VRANCEA'	),
		('NAMED_MOUNTAIN_SUREANU',	'LOC_NAMED_MOUNTAIN_SUREANU'	),
		('NAMED_MOUNTAIN_TARCU',	'LOC_NAMED_MOUNTAIN_TARCU'		);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType				)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_CARPATHIANS'	),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_ALMAJ'			),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_BIHOR'			),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_BUCEGI'			),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_FAGARAS'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_GODEANU'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_RETEZAT'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_VRANCEA'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_SUREANU'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_MOUNTAIN_TARCU'			);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name						)
VALUES	('NAMED_RIVER_MURES',		'LOC_NAMED_RIVER_MURES'		),
		('NAMED_RIVER_PRUT',		'LOC_NAMED_RIVER_PRUT'		),
		('NAMED_RIVER_OLT',			'LOC_NAMED_RIVER_OLT'		),
		('NAMED_RIVER_SIRET',		'LOC_NAMED_RIVER_SIRET'		),
		('NAMED_RIVER_IALOMITA',	'LOC_NAMED_RIVER_IALOMITA'	),
		('NAMED_RIVER_SOMES',		'LOC_NAMED_RIVER_SOMES'		),
		('NAMED_RIVER_ARGES',		'LOC_NAMED_RIVER_ARGES'		),
		('NAMED_RIVER_JIU',			'LOC_NAMED_RIVER_JIU'		),
		('NAMED_RIVER_BUZAU',		'LOC_NAMED_RIVER_BUZAU'		),
		('NAMED_RIVER_DAMBOVITA',	'LOC_NAMED_RIVER_DAMBOVITA'	);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType			)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_DANUBE'	),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_MURES'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_PRUT'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_OLT'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_SIRET'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_IALOMITA'	),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_SOMES'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_ARGES'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_JIU'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_BUZAU'		),
		('CIVILIZATION_CVS_ROMANIA',	'NAMED_RIVER_DAMBOVITA'	);

-----------------------------------------------
-- NamedDeserts
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,			Name						)
VALUES	('NAMED_DESERT_OLTENIA',	'LOC_NAMED_DESERT_OLTENIA'	);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,				NamedDesertType			)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'NAMED_DESERT_OLTENIA'	);

-----------------------------------------------
-- NamedVolcanoes
-----------------------------------------------

REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,			Name							)
VALUES	('NAMED_VOLCANO_CIOMADUL',	'LOC_NAMED_VOLCANO_CIOMADUL'	);

-----------------------------------------------
-- NamedVolcanoCivilizations
-----------------------------------------------

INSERT INTO NamedVolcanoCivilizations
		(CivilizationType,				NamedVolcanoType			)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'NAMED_VOLCANO_CIOMADUL'	);

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,				CityName						)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_BUCHAREST'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_IASI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_SUCEAVA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_TARGOVISTE'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_CONSTANTA'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_CLUJ_NAPOCA'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_ARGES'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_TIMISOARA'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_ALBA_IULIA'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_ORADEA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_CRAIOVA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_BRAILA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_GALATI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_TIGHINA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_ARAD'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_TARGU_MURES'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_BRASOV'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_SATU_MARE'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_SEVERIN'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_SIBIU'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_BISTRITA'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_DEVA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_PLOESTI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_GIURGIU'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_PITESTI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_SFANTU_GHEORGHE'	),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_TURDA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_BAIA_MARE'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_SLATINA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_CAMPULUNG'		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_BUZAU'			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITY_NAME_LUGOJ'			);
		
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,				CitizenName,							Female	)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_1',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_2',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_3',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_4',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_5',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_6',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_7',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_8',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_9',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_MALE_10',		0 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_1',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_2',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_3',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_4',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_5',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_6',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_7',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_8',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_9',		1 		),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CITIZEN_CVS_ROMANIA_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_CVS_ROMANIA_LOCATION',		10			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_CVS_ROMANIA_SIZE',			20			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_CVS_ROMANIA_POPULATION',	30			),
		('CIVILIZATION_CVS_ROMANIA',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_CVS_ROMANIA_CAPITAL',		40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier	)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'TERRAIN_GRASS_MOUNTAIN',	3		),
		('CIVILIZATION_CVS_ROMANIA',	'TERRAIN_GRASS_HILLS',		5		);

INSERT INTO	StartBiasFeatures
		(CivilizationType,				FeatureType,		Tier	)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'FEATURE_FOREST',	5		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_ROMANIAN',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_ROMANIAN',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_PLAYER_IS_ROMANIAN',	'REQ_CVS_PLAYER_IS_ROMANIAN'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType						)
VALUES	('REQ_CVS_PLAYER_IS_ROMANIAN',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,				Value							)
VALUES	('REQ_CVS_PLAYER_IS_ROMANIAN',	'RequirementSetId', 'REQSET_CVS_LEADER_IS_ROMANIAN'	);

/*
-----------------------------------------------
-- Support for Alternative Leaders
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_ROMANIAN',	'REQ_CVS_LEADER_IS_LEADERNAME'	);

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'LeaderType',	'LEADER_CVS_LEADERNAME'	);

*/