/*
	Mod Support
	Authors: ChimpanG, Chrisy15
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,				Leader,					MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_TAINO',	'LEADER_CVS_ANACAONA',	'GiantEarth',		155,	46	),
		('CIVILIZATION_CVS_TAINO',	'LEADER_CVS_ANACAONA',	'GreatestEarthMap',	27,		34	), 
		('CIVILIZATION_CVS_TAINO',	'LEADER_CVS_ANACAONA',	'CordiformEarth',	12,		26	);

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType)
SELECT	'LEADER_CVS_ANACAONA',		'RELIGION_ZEMIISM'
WHERE EXISTS (SELECT ReligionType FROM Religions WHERE ReligionType = 'RELIGION_ZEMIISM');

CREATE TRIGGER IF NOT EXISTS CVS_TAINO_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_ZEMIISM'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType)
	VALUES	('LEADER_CVS_ANACAONA',	NEW.ReligionType);
END;