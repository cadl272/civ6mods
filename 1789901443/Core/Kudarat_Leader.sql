/*
	Leader
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_KUDARAT',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,				CapitalName					)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KUDARAT',	'LOC_CITY_NAME_COTABATO'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_KUDARAT',	'LOC_LEADER_CVS_KUDARAT_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote										)
VALUES	('LEADER_CVS_KUDARAT',		'LOC_PEDIA_LEADERS_PAGE_CVS_KUDARAT_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_KUDARAT',	'LEADER_CVS_KUDARAT_NEUTRAL',	'LEADER_CVS_KUDARAT_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType		)
VALUES	('LEADER_CVS_KUDARAT',	'RELIGION_ISLAM'	);
