/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind			)
VALUES	('LEADER_CVS_ANTIOCHUS_III',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,					CapitalName				)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_ANTIOCHUS_III',	'LOC_CITY_NAME_ANTIOCH'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,					Name,									InheritFrom,		SceneLayers	)
VALUES	('LEADER_CVS_ANTIOCHUS_III',	'LOC_LEADER_CVS_ANTIOCHUS_III_NAME',	'LEADER_DEFAULT', 	4			);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote												)
VALUES	('LEADER_CVS_ANTIOCHUS_III',	'LOC_PEDIA_LEADERS_PAGE_CVS_ANTIOCHUS_III_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,					ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ANTIOCHUS_III',	'LEADER_CVS_ANTIOCHUS_III_NEUTRAL',	'LEADER_CVS_ANTIOCHUS_III_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO	FavoredReligions
		(LeaderType,					ReligionType				)
VALUES	('LEADER_CVS_ANTIOCHUS_III',	'RELIGION_ZOROASTRIANISM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_LEADER_IS_ANTIOCHUS_III',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_LEADER_IS_SELEUCID',		'REQ_CVS_LEADER_IS_ANTIOCHUS_III'	),
		('REQSET_CVS_LEADER_IS_ANTIOCHUS_III',	'REQ_CVS_LEADER_IS_ANTIOCHUS_III'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_ANTIOCHUS_III',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value						)
VALUES	('REQ_CVS_LEADER_IS_ANTIOCHUS_III',	'LeaderType',	'LEADER_CVS_ANTIOCHUS_III'	);
