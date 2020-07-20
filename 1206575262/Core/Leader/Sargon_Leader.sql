/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind				)
VALUES	('LEADER_CVS_SARGON',	'KIND_LEADER'		);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,			LeaderType,				CapitalName					)
VALUES	('CIVILIZATION_CVS_AKKAD',	'LEADER_CVS_SARGON',	'LOC_CITY_NAME_SC_AKKAD'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_SARGON',	'LOC_LEADER_CVS_SARGON_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_SARGON',	'LOC_PEDIA_LEADERS_PAGE_CVS_SARGON_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_SARGON',	'LEADER_CVS_SARGON_NEUTRAL',	'LEADER_CVS_SARGON_BACKGROUND',		0					);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,					Usage,			PrimaryColor,		 		SecondaryColor,					TextColor					)
VALUES	('LEADER_CVS_SARGON',	'Unique',		'COLOR_CVS_SARGON_PRIMARY',	'COLOR_CVS_SARGON_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,							Color				)
VALUES	('COLOR_CVS_SARGON_PRIMARY',	'9,70,110,255'		),
		('COLOR_CVS_SARGON_SECONDARY',	'198,160,119,255'	);
		