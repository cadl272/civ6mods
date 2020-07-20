/*
	Mod Support
	Credits: ChimpanG
*/

-----------------------------------------------
-- Steel and Thunder
-----------------------------------------------

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
SELECT	'UNIT_CVS_WILLIAM_UU',	'UNIT_ST_LONGSWORDSMAN'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('STEEL_AND_THUNDER'));

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
		(MapType,		Civ,					LeaderType,						X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	11,	60	);

INSERT INTO TSL
		(MapType,		Civ,							LeaderType,						X,	Y	)
SELECT	'40sw4rmOW',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_NORMANDY',	11,	60
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(Civilization,				Leader,							MapName,			X,		Y	)
VALUES	('CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'GiantEarth',		11,		68	),
		('CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'GreatestEarthMap',	38,		48	), 
		('CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'CordiformEarth',	32,		29	),
		('CIVILIZATION_ENGLAND',	'LEADER_CVS_WILLIAM_ENGLAND',	'PlayEuropeAgain',	26,		54	);

INSERT INTO StartPosition (Civilization, Leader, MapName, X, Y)
SELECT	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_NORMANDY',	MapName, X, Y
FROM	StartPosition
WHERE	Leader = 'LEADER_CVS_WILLIAM_ENGLAND'
AND EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));