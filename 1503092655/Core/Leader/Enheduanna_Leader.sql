/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind				)
VALUES	('LEADER_CVS_ENHEDUANNA',	'KIND_LEADER'		);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,			LeaderType,					CapitalName						)
VALUES	('CIVILIZATION_CVS_AKKAD',	'LEADER_CVS_ENHEDUANNA',	'LOC_CITY_NAME_UR'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers,	Sex		)
VALUES	('LEADER_CVS_ENHEDUANNA',	'LOC_LEADER_CVS_ENHEDUANNA_NAME',	'LEADER_DEFAULT', 	4,				'Female'	);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,				Quote											)
VALUES	('LEADER_CVS_ENHEDUANNA',	'LOC_PEDIA_LEADERS_PAGE_CVS_ENHEDUANNA_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ENHEDUANNA',	'LEADER_CVS_ENHEDUANNA_NEUTRAL',	'LEADER_CVS_ENHEDUANNA_BACKGROUND',		0					);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,						Usage,			PrimaryColor,		 			SecondaryColor,						TextColor					)
VALUES	('LEADER_CVS_ENHEDUANNA',	'Unique',		'COLOR_CVS_ENHEDUANNA_PRIMARY',	'COLOR_CVS_ENHEDUANNA_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_ENHEDUANNA_PRIMARY',	'52,178,160,255'	),
		('COLOR_CVS_ENHEDUANNA_SECONDARY',	'255,254,235,255'	);
		