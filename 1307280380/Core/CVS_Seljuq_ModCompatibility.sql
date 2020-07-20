-- CVS_Seljuq_ModCompatibility
-- Author: thecrazyscotsman
-- DateCreated: 2/19/2018 2:33:15 PM
--------------------------------------------------------------
INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_ModCompatibility', 'BEGIN', 1;

CREATE TABLE IF NOT EXISTS StartPosition
		(    
		MapName TEXT NOT NULL,
        Civilization TEXT,
        Leader TEXT,
        DisabledByCivilization TEXT,
        DisabledByLeader TEXT,
        AlternateStart INT default 0,    
        X INT default 0,
        Y INT default 0
		);

INSERT INTO StartPosition (MapName, Civilization, X, Y)
	VALUES
		('GreatestEarthMap', 'CVS_CIVILIZATION_SELJUQ', 67, 41),
		('GreatestEarthMap', 'CVS_CIVILIZATION_ALAMUT', 67, 43),
		('GreatestEarthMap', 'CVS_CIVILIZATION_URGENCH', 71, 48),
		('GiantEarth', 'CVS_CIVILIZATION_SELJUQ', 45, 51),
		('GiantEarth', 'CVS_CIVILIZATION_ALAMUT', 45, 56),
		('GiantEarth', 'CVS_CIVILIZATION_URGENCH', 50, 61),
		('PlayEuropeAgain', 'CVS_CIVILIZATION_ALAMUT', 103, 29),
		('CordiformEarth', 'CVS_CIVILIZATION_SELJUQ', 52, 24),
		('CordiformEarth', 'CVS_CIVILIZATION_ALAMUT', 51, 26),
		('CordiformEarth', 'CVS_CIVILIZATION_URGENCH', 52, 29);

CREATE TABLE IF NOT EXISTS TSL 
	(
	MapType TEXT DEFAULT NULL,
	Civ TEXT DEFAULT NULL,
	LeaderType TEXT DEFAULT NULL,
	X INTEGER DEFAULT NULL,
	Y INTEGER DEFAULT NULL
	);

INSERT INTO TSL (MapType, Civ, LeaderType, X,Y)
	VALUES	
		('40sw4rmOW', 'CVS_CIVILIZATION_SELJUQ', 'CVS_LEADER_ALP_ARSLAN', 51,36), 
		('40sw4rmOW', 'CVS_CIVILIZATION_ALAMUT', 'CVS_LEADER_MINOR_CIV_ALAMUT', 50,39),	
		('40sw4rmOW', 'CVS_CIVILIZATION_URGENCH', 'CVS_LEADER_MINOR_CIV_URGENCH', 56,47);

INSERT INTO THECRAZYSCOTSMAN_DEBUGGING (Document, Marker, Pass) SELECT 'CVS_Seljuq_ModCompatibility', 'END', 1;