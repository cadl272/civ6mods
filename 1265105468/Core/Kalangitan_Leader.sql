/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_KALANGITAN',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,					CapitalName				)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'LOC_CITY_NAME_TONDO'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_KALANGITAN',	'LOC_LEADER_CVS_KALANGITAN_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote											)
VALUES	('LEADER_CVS_KALANGITAN',		'LOC_PEDIA_LEADERS_PAGE_CVS_KALANGITAN_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_KALANGITAN',	'LEADER_CVS_KALANGITAN_NEUTRAL',	'LEADER_CVS_KALANGITAN_BACKGROUND',		0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType		)
VALUES	('LEADER_CVS_KALANGITAN',	'RELIGION_BUDDHISM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_LEADER_IS_KALANGITAN',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_NOT_KALANGITAN',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_PHILIPPINES',	'REQ_CVS_LEADER_IS_KALANGITAN'	),
		('REQSET_CVS_LEADER_IS_KALANGITAN',		'REQ_CVS_LEADER_IS_KALANGITAN'	),
		('REQSET_CVS_LEADER_NOT_KALANGITAN',	'REQ_CVS_LEADER_NOT_KALANGITAN'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,							Inverse	)
VALUES	('REQ_CVS_LEADER_IS_KALANGITAN',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	0		),
		('REQ_CVS_LEADER_NOT_KALANGITAN',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_KALANGITAN',	'LeaderType',	'LEADER_CVS_KALANGITAN'	),
		('REQ_CVS_LEADER_NOT_KALANGITAN',	'LeaderType',	'LEADER_CVS_KALANGITAN'	);
		