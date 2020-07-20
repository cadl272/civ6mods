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
		(MapType,		Civ,					LeaderType,				X,	Y	)
VALUES	('40sw4rmOW',	'CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	35,	34	);

-----------------------------------------------
-- YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,			Leader,					MapName,				X,		Y	)
VALUES	('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'GiantEarth',			31,		47	),
		('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'GreatestEarthMap',		58,		35	), 
		('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'CordiformEarth',		44,		23	),
		('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'LargestEarthCustom',	40,		59	),
		('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'LargeEurope',			57,		14	),
		('CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'PlayEuropeAgain',		74,		8	);

-----------------------------------------------
-- HISTORICAL RELIGIONS
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS CVS_DJOSER_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_PESEDJET'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType		)
	VALUES	('LEADER_CVS_DJOSER',		NEW.ReligionType	);
END;