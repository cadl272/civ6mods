/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_ESCHER',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,				CapitalName				)
VALUES	('CIVILIZATION_CVS_SWITZERLAND',	'LEADER_CVS_ESCHER',	'LOC_CITY_NAME_ZURICH'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_ESCHER',	'LOC_LEADER_CVS_ESCHER_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_ESCHER',	'LOC_PEDIA_LEADERS_PAGE_CVS_ESCHER_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,				PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ESCHER',	'LEADER_CVS_ESCHER_NEUTRAL',	'LEADER_CVS_ESCHER_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,			ReligionType			)
VALUES	('LEADER_CVS_ESCHER',	'RELIGION_CATHOLICISM'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId				)
VALUES	('REQSET_CVS_LEADER_IS_SWITZERLAND',	'REQ_CVS_LEADER_IS_ESCHER'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_ESCHER',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value				)
VALUES	('REQ_CVS_LEADER_IS_ESCHER',	'LeaderType',	'LEADER_CVS_ESCHER'	);
		