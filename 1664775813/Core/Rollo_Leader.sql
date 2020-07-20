/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_ROLLO',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,			CapitalName				)
VALUES	('CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',	'LOC_CITY_NAME_ROUEN'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_ROLLO',	'LOC_LEADER_CVS_ROLLO_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_ROLLO',	'LOC_PEDIA_LEADERS_PAGE_CVS_ROLLO_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,			BackgroundImage,				PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ROLLO',	'LEADER_CVS_ROLLO_NEUTRAL',	'LEADER_CVS_ROLLO_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,			ReligionType			)
VALUES	('LEADER_CVS_ROLLO',	'RELIGION_CATHOLICISM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

REPLACE INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_LEADER_IS_NORMANDY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_ROLLO',		'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId				)
VALUES	('REQSET_CVS_LEADER_IS_NORMANDY',	'REQ_CVS_LEADER_IS_ROLLO'	),
		('REQSET_CVS_LEADER_IS_ROLLO',		'REQ_CVS_LEADER_IS_ROLLO'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,				RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_ROLLO',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,				Name,			Value				)
VALUES	('REQ_CVS_LEADER_IS_ROLLO',	'LeaderType',	'LEADER_CVS_ROLLO'	);