/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,					CapitalName				)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'LOC_CITY_NAME_MANILA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'LOC_LEADER_CVS_JOSE_RIZAL_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote											)
VALUES	('LEADER_CVS_JOSE_RIZAL',		'LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'LEADER_CVS_JOSE_RIZAL_NEUTRAL',	'LEADER_CVS_JOSE_RIZAL_BACKGROUND',		0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO	FavoredReligions
		(LeaderType,				ReligionType			)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'RELIGION_CATHOLICISM'	);
	
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_LEADER_IS_JOSE_RIZAL',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_NOT_JOSE_RIZAL',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_PHILIPPINES',	'REQ_CVS_LEADER_IS_JOSE_RIZAL'	),
		('REQSET_CVS_LEADER_IS_JOSE_RIZAL',		'REQ_CVS_LEADER_IS_JOSE_RIZAL'	),
		('REQSET_CVS_LEADER_NOT_JOSE_RIZAL',	'REQ_CVS_LEADER_NOT_JOSE_RIZAL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,							Inverse	)
VALUES	('REQ_CVS_LEADER_IS_JOSE_RIZAL',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	0		),
		('REQ_CVS_LEADER_NOT_JOSE_RIZAL',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_JOSE_RIZAL',	'LeaderType',	'LEADER_CVS_JOSE_RIZAL'	),
		('REQ_CVS_LEADER_NOT_JOSE_RIZAL',	'LeaderType',	'LEADER_CVS_JOSE_RIZAL'	);