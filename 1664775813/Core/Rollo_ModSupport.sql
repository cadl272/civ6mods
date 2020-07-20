/*
	Mod Support
	Credits: ChimpanG, Chrisy15
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
		(MapType,		Civ,							LeaderType,						X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_WILLIAM_ENGLAND',	12,	60	);

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(Civilization,					Leader,				MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',	'GiantEarth',		13,		68	),
		('CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',	'GreatestEarthMap',	40,		48	), 
		('CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',	'CordiformEarth',	34,		30	),
		('CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',	'PlayEuropeAgain',	29,		54	);

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS CVS_ROLLO_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_FORN_SIDR'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,			ReligionType		)
	VALUES	('LEADER_CVS_ROLLO',	NEW.ReligionType	);
END;
