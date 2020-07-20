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
		(Civilization,					Leader,							MapName,				X,		Y)
VALUES	('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'GiantEarth',			75,		43),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'GreatestEarthMap',		83,		37),
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'CordiformEarth',		63,		25),
	--	('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'PlayEuropeAgain',		65,		71), -- N/A
		('CIVILIZATION_SUK_SIAM',		'LEADER_SUK_RAMKHAMHAENG',		'LargestEarth',			100,	54);
--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Civilization_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Civilization_Titles (
	CivilizationType  										text 		 																			default null,
	GovernmentType											text 	REFERENCES Governments(GovernmentType) ON DELETE CASCADE ON UPDATE CASCADE		default null,
	LeaderTitle												text																					default null,
	PolicyType  											text 		 																			default null,
	IsNoSpace												boolean																					default 0,
	IsSuffix												boolean																					default 0);	
	
INSERT INTO Civilization_Titles
		(CivilizationType, 									GovernmentType, 							PolicyType,				LeaderTitle)
VALUES	('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_CHIEFDOM',						null,					'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_SUK_SIAM'),					--Chiefdom
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_JFD_HORDE',						null,					'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_SUK_SIAM'),					--Horde	
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_JFD_POLIS',						null,					'LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_SUK_SIAM'),						--Polis
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_AUTOCRACY',						null,					'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_SUK_SIAM'),					--Autocracy
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_OLIGARCHY',						null,					'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_SUK_SIAM'),					--Oligarchy
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_MONARCHY',						null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_SIAM'),					--Feudal Monarchy
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_SIAM'),					--Absolute Monarchy
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_SIAM'),					--Constitutional Monarchy
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_JFD_NOBLE_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_NOBLE_REPUBLIC_LEADER_TITLE_SUK_SIAM'),				--Noble Republic
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_DEMOCRACY',						null,					'LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_SUK_SIAM'),			--People's Republic
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_COMMUNISM',						null,					'LOC_GOVERNMENT_JFD_PEOPLES_REPUBLIC_LEADER_TITLE_SUK_SIAM'),			--People's Republic
		('CIVILIZATION_SUK_SIAM',							'GOVERNMENT_FASCISM',						null,					'LOC_GOVERNMENT_JFD_MILITARY_GUARDIANSHIP_LEADER_TITLE_SUK_SIAM'),		--Military Guardianship
		('CIVILIZATION_SUK_SIAM',							null,										'POLICY_JFD_EMPIRE',	'LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_SUK_SIAM');						--Empire

DELETE FROM Civilization_Titles 
WHERE CivilizationType = 'CIVILIZATION_SUK_SIAM' AND GovernmentType IS NOT null
AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);

DELETE FROM Civilization_Titles 
WHERE CivilizationType = 'CIVILIZATION_SUK_SIAM' AND PolicyType IS NOT null
AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
------------------------------------------------------------
-- Leader_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 																			default null,
	GovernmentType											text 	REFERENCES Governments(GovernmentType) ON DELETE CASCADE ON UPDATE CASCADE		default null,
	LeaderTitle												text																					default null,
	PolicyType  											text 		 																			default null,
	UseFeminine												boolean																					default 0,
	TitleIsFullName											boolean																					default 0,
	IsNoSpace												boolean																					default 0,
	IsSuffix												boolean																					default 0);

INSERT INTO Leader_Titles
		(LeaderType, 										GovernmentType, 							PolicyType,				LeaderTitle)
VALUES	('LEADER_SUK_RAMKHAMHAENG',							'GOVERNMENT_MONARCHY',						null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_RAMKHAMHAENG'),	--Feudal Monarchy
		('LEADER_SUK_RAMKHAMHAENG',							'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_RAMKHAMHAENG'),	--Absolute Monarchy
		('LEADER_SUK_RAMKHAMHAENG',							'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SUK_RAMKHAMHAENG');	--Constitutional Monarchy

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_RAMKHAMHAENG' AND GovernmentType IS NOT null
AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_RAMKHAMHAENG' AND PolicyType IS NOT null
AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
--==========================================================================================================================
--==========================================================================================================================