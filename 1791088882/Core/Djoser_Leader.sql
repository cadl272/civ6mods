/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_DJOSER',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,		LeaderType,				CapitalName				)
VALUES	('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'LOC_CITY_NAME_MEMPHIS'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_DJOSER',	'LOC_LEADER_CVS_DJOSER_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_DJOSER',	'LOC_PEDIA_LEADERS_PAGE_CVS_DJOSER_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,				PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_DJOSER',	'LEADER_CVS_DJOSER_NEUTRAL',	'LEADER_CVS_DJOSER_BACKGROUND',	0					);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_DJOSER',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId				)
VALUES	('REQSET_CVS_PLAYER_IS_DJOSER',		'REQ_CVS_LEADER_IS_DJOSER'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_DJOSER',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value				)
VALUES	('REQ_CVS_LEADER_IS_DJOSER',	'LeaderType',	'LEADER_CVS_DJOSER'	);
