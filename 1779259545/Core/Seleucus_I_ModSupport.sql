/*
	Mod Support
	Authors: SeelingCat
*/

-----------------------------------------------
-- GEDEMON'S YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(Civilization,					Leader,						MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'GiantEarth',		39,		53	),
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'GreatestEarthMap',	65,		40	), 
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'PlayEuropeAgain',	96,		19	), 
		('CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	'CordiformEarth',	50,		22	);

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
VALUES	('40sw4rmOW',	'CIVILIZATION_CVS_SELEUCID',	'LEADER_CVS_SELEUCUS_I',	41,	42	);
