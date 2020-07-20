/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- ModCheck
-----------------------------------------------

CREATE TABLE IF NOT EXISTS ModCheck (Version TEXT NOT NULL, PRIMARY KEY (Version));

INSERT INTO ModCheck (Version) VALUES ('CIVITAS_TIGRANES_II');

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_TIGRANES_II',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,					CapitalName					)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'LOC_CITY_NAME_TIGRANAKERT'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_TIGRANES_II',	'LOC_LEADER_CVS_TIGRANES_II_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_TIGRANES_II',	'LOC_PEDIA_LEADERS_PAGE_CVS_TIGRANES_II_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_TIGRANES_II',	'LEADER_CVS_TIGRANES_II_NEUTRAL',	'LEADER_CVS_TIGRANES_II_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType			)
VALUES	('LEADER_CVS_TIGRANES_II',	'RELIGION_ORTHODOXY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_PLAYER_IS_ARMENIA',	'REQ_CVS_LEADER_IS_TIGRANES'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_TIGRANES',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value						)
VALUES	('REQ_CVS_LEADER_IS_TIGRANES',	'LeaderType',	'LEADER_CVS_TIGRANES_II'	);
		