/*
	Leader
	Authors: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_VLAD_III',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName					)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'LOC_CITY_NAME_TARGOVISTE'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_VLAD_III',	'LOC_LEADER_CVS_VLAD_III_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_VLAD_III',	'LOC_PEDIA_LEADERS_PAGE_CVS_VLAD_III_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_VLAD_III',	'LEADER_CVS_VLAD_III_NEUTRAL',	'LEADER_CVS_VLAD_III_BACKGROUND',	0					);

-----------------------------------------------
-- Colors
-----------------------------------------------
/*
INSERT INTO	PlayerColors
		(Type,					Usage,		PrimaryColor,		 			SecondaryColor,					TextColor					)
VALUES	('LEADER_CVS_VLAD_III',	'Unique',	'COLOR_CVS_VLAD_III_PRIMARY',	'COLOR_CVS_VLAD_III_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_VLAD_III_PRIMARY',		'38,96,94,255'		),
		('COLOR_CVS_VLAD_III_SECONDARY',	'252,202,132,255'	);
*/
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_ROMANIAN',	'REQ_CVS_LEADER_IS_VLAD_III'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_VLAD_III',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_VLAD_III',	'LeaderType',	'LEADER_CVS_VLAD_III'	);

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,				LeaderType,				SortIndex,	CityName						)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_TARGOVISTE'		),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_ARGES'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_BUCHAREST'		),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_CRAIOVA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_PITESTI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_RAMNICU_VALCEA'	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_CAMPULUNG'		),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_BRAN'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_BRAILA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_GIURGIU'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_RAMNICU_SARAT'	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_SEVERIN'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_BUZAU'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_TURNU'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_TARGU_JIU'		),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_CORABIA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_POENARI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_ORASUL_DE_FLOCI'	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_SLATINA'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_RUSII_DE_VEDE'	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_BREZOI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_CARACAL'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_PLOESTI'			),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	-1,			'LOC_CITY_NAME_BAIA_DE_ARAMA'	);
