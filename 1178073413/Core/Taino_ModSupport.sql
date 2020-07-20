/*
	Mod Support
	Authors: ChimpanG
*/

-----------------------------------------------
-- Historical Spawn Dates
-----------------------------------------------

CREATE TABLE IF NOT EXISTS HistoricalSpawnDates (Civilization TEXT NOT NULL UNIQUE,	StartYear INTEGER DEFAULT -10000);
INSERT OR REPLACE INTO HistoricalSpawnDates
		(Civilization,				StartYear	) 
VALUES	('CIVILIZATION_CVS_TAINO',	1818		);

-----------------------------------------------
-- RwF | Schema
-----------------------------------------------

CREATE TABLE IF NOT EXISTS 
	Civilization_Titles (
	CivilizationType  				text 		 		default null,
	GovernmentType					text 	 			default null,
	LeaderTitle						text				default null,
	PolicyType  					text 		 		default null);

CREATE TABLE IF NOT EXISTS 
	Civilization_StartingGovernment (
	CivilizationType  				text 		 		default null,
	GovernmentType					text 				default null,
	LeaderType						text				default null);	

-----------------------------------------------
-- RwF | Civilization_Titles
-----------------------------------------------
	
INSERT INTO Civilization_Titles
		(CivilizationType, 			GovernmentType, 							LeaderTitle															)
VALUES	('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_CHIEFDOM',						'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_JFD_HORDE',						'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ROMANIA'					),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_JFD_POLIS',						'LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_ROMANIA'					),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_AUTOCRACY',						'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_OLIGARCHY',						'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_ROMANIA'				), 
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_CLASSICAL_REPUBLIC',			'LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_ROMANIA'	),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_MONARCHY',						'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_MERCHANT_REPUBLIC',				'LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_JFD_NOBLE_REPUBLIC',			'LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_DEMOCRACY',						'LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_ROMANIA'		),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_COMMUNISM',						'LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ROMANIA'				),
		('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_FASCISM',						'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ROMANIA'					);

DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_CVS_TAINO' AND GovernmentType IS NOT NULL AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_CVS_TAINO' AND PolicyType IS NOT NULL AND PolicyType NOT IN (SELECT PolicyType FROM Policies);

-----------------------------------------------
-- RwF | Civilization_StartingGovernment
-----------------------------------------------

INSERT INTO	Civilization_StartingGovernment
		(CivilizationType,			GovernmentType			)
VALUES	('CIVILIZATION_CVS_TAINO',	'GOVERNMENT_CHIEFDOM'	);