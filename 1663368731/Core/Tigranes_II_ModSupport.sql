/*
	Mod Support
	Authors: ChimpanG
*/

-----------------------------------------------
-- 40sw4rm's Old World
-----------------------------------------------

CREATE TABLE IF NOT EXISTS TSL 
    (
    MapType		TEXT	DEFAULT NULL,
    Civ			TEXT	DEFAULT NULL,
    LeaderType	TEXT	DEFAULT NULL,
    X			INTEGER	DEFAULT	NULL,
    Y			INTEGER	DEFAULT NULL
    );

INSERT INTO TSL
		(MapType,		Civ,							LeaderType,					X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_CVS_ARMENIA',		'LEADER_CVS_TIGRANES_II',	44,	45	);

-----------------------------------------------
-- GEDEMON'S YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,						MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'GiantEarth',		41,		59	),
		('CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'GreatestEarthMap',	64,		44	), 
		('CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'CordiformEarth',	49,		25	),
		('CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'PlayEuropeAgain',	94,		33	),
		('CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'LargeEurope',		69,		29	);