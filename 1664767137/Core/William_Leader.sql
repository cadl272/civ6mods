/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Schema
-----------------------------------------------

CREATE TABLE IF NOT EXISTS ModValidation (Version TEXT DEFAULT NULL);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind			)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'KIND_LEADER'	);

INSERT INTO	Types
		(Type,							Kind			)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'KIND_LEADER'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,			LeaderType,						CapitalName				)
VALUES	('CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'LOC_CITY_NAME_ROUEN'	);

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,						CapitalName				)
SELECT	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_NORMANDY',	'LOC_CITY_NAME_ROUEN'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,					Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'LOC_LEADER_CVS_WILLIAM_NAME',	'LEADER_DEFAULT', 	4				);

INSERT INTO	Leaders
		(LeaderType,					Name,							InheritFrom,		SceneLayers		)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'LOC_LEADER_CVS_WILLIAM_NAME',	'LEADER_DEFAULT', 	4				
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- DuplicateLeaders
-----------------------------------------------

INSERT INTO	DuplicateLeaders
		(LeaderType,					OtherLeaderType		)
SELECT	'LEADER_CVS_WILLIAM_ENGLAND',	'LEADER_CVS_WILLIAM_NORMANDY'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote										)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_QUOTE'	);

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote										)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'LOC_PEDIA_LEADERS_PAGE_CVS_WILLIAM_QUOTE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,					ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'LEADER_CVS_WILLIAM_NEUTRAL',	'LEADER_CVS_WILLIAM_BACKGROUND',	0					);

INSERT INTO	LoadingInfo
		(LeaderType,					ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'LEADER_CVS_WILLIAM_NEUTRAL',	'LEADER_CVS_WILLIAM_BACKGROUND',	0					
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,					ReligionType			)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'RELIGION_CATHOLICISM'	);

INSERT INTO FavoredReligions
		(LeaderType,					ReligionType			)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'RELIGION_CATHOLICISM'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

REPLACE INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_LEADER_IS_NORMANDY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_WILLIAM',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId						)
VALUES	('REQSET_CVS_LEADER_IS_NORMANDY',	'REQ_CVS_LEADER_IS_WILLIAM_ENGLAND'	),
		('REQSET_CVS_LEADER_IS_WILLIAM',	'REQ_CVS_LEADER_IS_WILLIAM_ENGLAND'	);

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId	)
SELECT	'REQSET_CVS_LEADER_IS_NORMANDY',	'REQ_CVS_LEADER_IS_WILLIAM_NORMANDY'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

INSERT INTO RequirementSetRequirements
        (RequirementSetId,				RequirementId	)
SELECT	'REQSET_CVS_LEADER_IS_WILLIAM',	'REQ_CVS_LEADER_IS_WILLIAM_NORMANDY'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_WILLIAM_ENGLAND',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

INSERT INTO Requirements
		(RequirementId,							RequirementType	)
SELECT	'REQ_CVS_LEADER_IS_WILLIAM_NORMANDY',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value							)
VALUES	('REQ_CVS_LEADER_IS_WILLIAM_ENGLAND',	'LeaderType',	'LEADER_CVS_WILLIAM_ENGLAND'	);

INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value	)
SELECT	'REQ_CVS_LEADER_IS_WILLIAM_NORMANDY',	'LeaderType',	'LEADER_CVS_WILLIAM_NORMANDY'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));