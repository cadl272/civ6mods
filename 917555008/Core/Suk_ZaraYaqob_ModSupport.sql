--==========================================================================================================================
-- YNAEMP
--==========================================================================================================================
CREATE TABLE IF NOT EXISTS StartPosition
	(MapName TEXT,
	Civilization TEXT,
	Leader TEXT,
	X INT default 0,
	Y INT default 0);
------------------------------------------------------------
-- StartPosition 
------------------------------------------------------------	
INSERT INTO StartPosition
		(Civilization,						Leader,							MapName,				X,		Y)
VALUES	('CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB',			'GiantEarth',			34,		35),
		('CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB',			'GreatestEarthMap',		65,		26),
		('CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB',			'LargestEarth',			49,		42);
--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Leader_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 											default null,
	GovernmentType											text 													default null,
	LeaderTitle												text													default null,
	PolicyType  											text 		 											default null,
	UseFeminine												boolean													default 0,
	TitleIsFullName											boolean													default 0);	
	
INSERT INTO Leader_Titles
		(LeaderType, 										GovernmentType, 							PolicyType,				LeaderTitle)
VALUES	('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_CHIEFDOM',						null,					'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_SUK_ZARAYAQOB'),					--Chiefdom
		('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_AUTOCRACY',						null,					'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_SUK_ZARAYAQOB'),					--Autocracy
		('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_OLIGARCHY',						null,					'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_SUK_ZARAYAQOB'),					--Oligarchy
		('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_MONARCHY',						null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_ZARAYAQOB'),			--Feudal Monarchy
		('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_ZARAYAQOB'),			--Absolute Monarchy
		('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_ZARAYAQOB'),	--Constitutional Monarchy
		('LEADER_SUK_ZARAYAQOB',							'GOVERNMENT_JFD_NOBLE_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_NOBLE_REPUBLIC_LEADER_TITLE_SUK_ZARAYAQOB'),				--Noble Republic
		('LEADER_SUK_ZARAYAQOB',							null,										'POLICY_JFD_EMPIRE',	'LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_SUK_ZARAYAQOB');					--Empire

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_ZARAYAQOB' AND GovernmentType IS NOT null
AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_ZARAYAQOB' AND PolicyType IS NOT null
AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
--==========================================================================================================================
--==========================================================================================================================