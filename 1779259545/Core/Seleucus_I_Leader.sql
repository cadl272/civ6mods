/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_SELEUCUS_I',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,					CapitalName					)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'LOC_CITY_NAME_SELEUKIA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers	)
VALUES	('LEADER_CVS_SELEUCUS_I',	'LOC_LEADER_CVS_SELEUCUS_I_NAME',	'LEADER_DEFAULT', 	4			);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_SELEUCUS_I',	'LOC_PEDIA_LEADERS_PAGE_CVS_SELEUCUS_I_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_SELEUCUS_I',	'LEADER_CVS_SELEUCUS_I_NEUTRAL',	'LEADER_CVS_SELEUCUS_I_BACKGROUND',		0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO	FavoredReligions
		(LeaderType,				ReligionType				)
VALUES	('LEADER_CVS_SELEUCUS_I',	'RELIGION_ZOROASTRIANISM'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_LEADER_IS_SELEUCUS_I',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_SELEUCID',	'REQ_CVS_LEADER_IS_SELEUCUS_I'	),
		('REQSET_CVS_LEADER_IS_SELEUCUS_I',	'REQ_CVS_LEADER_IS_SELEUCUS_I'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_SELEUCUS_I',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_SELEUCUS_I',	'LeaderType',	'LEADER_CVS_SELEUCID_I'	);