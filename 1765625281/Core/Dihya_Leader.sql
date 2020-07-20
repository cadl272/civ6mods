/*
	Leader
	Authors: SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_DIHYA',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,			LeaderType,			CapitalName					)
VALUES	('CIVILIZATION_CVS_BERBER',	'LEADER_CVS_DIHYA',	'LOC_CITY_NAME_KHENCHELA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_DIHYA',	'LOC_LEADER_CVS_DIHYA_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_DIHYA',	'LOC_PEDIA_LEADERS_PAGE_CVS_DIHYA_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,			BackgroundImage,				PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_DIHYA',	'LEADER_CVS_DIHYA_NEUTRAL',	'LEADER_CVS_DIHYA_BACKGROUND',	0					);

-----------------------------------------------	
-- FavoredReligions
-----------------------------------------------	

INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType		)
VALUES	('LEADER_CVS_DIHYA',		'RELIGION_JUDAISM'	);


/*
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,				RequirementId				)
VALUES	('REQSET_CVS_LEADER_IS_BERBER',	'REQ_CVS_LEADER_IS_DIHYA'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,				RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_DIHYA',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,				Name,			Value				)
VALUES	('REQ_CVS_LEADER_IS_DIHYA',	'LeaderType',	'LEADER_CVS_DIHYA'	);

*/