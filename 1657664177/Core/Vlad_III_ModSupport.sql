/*
	Mod Support
	Authors: SeelingCat, ChimpanG
*/

-----------------------------------------------
-- GEDEMON'S YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(Civilization,					Leader,					MapName,				X,		Y	)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'GiantEarth',			30,		64	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'GreatestEarthMap',		57,		48	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'LargestEarthCustom',	39,		79	), 
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'CordiformEarth',		43,		26	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'PlayEuropeAgain',		64,		39	),
		('CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	'LargeEurope',			50,		37	);

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
		(MapType,		Civ,						LeaderType,				X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_CVS_ROMANIA',	'LEADER_CVS_VLAD_III',	83,	8	);
