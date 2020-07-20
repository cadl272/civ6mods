/*
	Mod Support
	Authors: ChimpanG
*/

-----------------------------------------------
-- GEDEMON'S YNAMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'GiantEarth',		88,		40	),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'GreatestEarthMap',	89,		34	),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'Cordiform',		69,		34	);