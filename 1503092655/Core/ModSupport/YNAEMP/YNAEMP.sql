/*
	Mod Support YNAEMP
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,				MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_AKKAD',	'LEADER_CVS_ENHEDUANNA',	'GiantEarth',		39,		49	),
		--('CIVILIZATION_CVS_AKKAD',	'LEADER_CVS_ENHEDUANNA',	'LargestEarth',		67,		39	), -- ?
		('CIVILIZATION_CVS_AKKAD',	'LEADER_CVS_ENHEDUANNA',	'GreatestEarthMap',	67,		39	), 
		('CIVILIZATION_CVS_AKKAD',	'LEADER_CVS_ENHEDUANNA',	'CordiformEarth',	51,		20	);
