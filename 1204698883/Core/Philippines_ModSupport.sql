/*
	Mod Support
	Authors: ChimpanG, SeelingCat, Chrisy15
*/

-----------------------------------------------
-- Colonial City Names
-----------------------------------------------

CREATE TABLE IF NOT EXISTS C15_ColonyCityNames (CivilizationType TEXT NOT NULL, LeaderType TEXT DEFAULT NULL, CityName TEXT NOT NULL, PRIMARY KEY (CivilizationType, LeaderType, CityName)); 

CREATE TRIGGER IF NOT EXISTS C15_ColonyCityNames_RemoveFromCityNames
AFTER INSERT ON C15_ColonyCityNames
BEGIN
    DELETE FROM CityNames WHERE CityName = NEW.CityName AND (CivilizationType = NEW.CivilizationType OR LeaderType = NEW.LeaderType);
END;

CREATE TRIGGER IF NOT EXISTS C15_ColonyCityNames_DupeAddedToCityNames
AFTER INSERT ON CityNames
WHEN NEW.CityName IN (SELECT CityName FROM C15_ColonyCityNames WHERE CivilizationType = NEW.CivilizationType)
BEGIN
    DELETE FROM CityNames WHERE CityName = NEW.CityName AND CivilizationType = NEW.CivilizationType;
END;

INSERT OR REPLACE INTO C15_ColonyCityNames
        (CivilizationType,					CityName)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LOC_CITY_NAME_SULU'),
		('CIVILIZATION_CVS_PHILIPPINES',	'LOC_CITY_NAME_MANADO'),
		('CIVILIZATION_CVS_PHILIPPINES',	'LOC_CITY_NAME_SANDAKAN');

-----------------------------------------------
-- Historical Spawn Dates
-----------------------------------------------

CREATE TABLE IF NOT EXISTS HistoricalSpawnDates (Civilization TEXT NOT NULL UNIQUE,	StartYear INTEGER DEFAULT -10000);
INSERT OR REPLACE INTO HistoricalSpawnDates
		(Civilization,						StartYear	) 
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	1898		);

-----------------------------------------------
-- Rule with Faith
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

INSERT INTO Civilization_Titles
		(CivilizationType, 					GovernmentType, 							LeaderTitle										)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_CHIEFDOM',						'LOC_CHIEFDOM_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_JFD_HORDE',						'LOC_HORDE_TITLE_CVS_PHILIPPINES'				),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_JFD_POLIS',						'LOC_POLIS_TITLE_CVS_PHILIPPINES'				),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_AUTOCRACY',						'LOC_AUTOCRACY_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_OLIGARCHY',						'LOC_OLIGARCHY_TITLE_CVS_PHILIPPINES'			), 
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_CLASSICAL_REPUBLIC',			'LOC_CLASSICAL_DEMOCRACY_TITLE_CVS_PHILIPPINES'	),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_MONARCHY',						'LOC_MONARCHY_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_MERCHANT_REPUBLIC',				'LOC_REPUBLIC_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			'LOC_MONARCHY_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	'LOC_MONARCHY_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_JFD_NOBLE_REPUBLIC',			'LOC_REPUBLIC_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_DEMOCRACY',						'LOC_LIBERAL_DEMOCRACY_TITLE_CVS_PHILIPPINES'	),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_COMMUNISM',						'LOC_REPUBLIC_TITLE_CVS_PHILIPPINES'			),
		('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_FASCISM',						'LOC_HORDE_TITLE_CVS_PHILIPPINES'				);

DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_CVS_PHILIPPINES' AND GovernmentType IS NOT NULL AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_CVS_PHILIPPINES' AND PolicyType IS NOT NULL AND PolicyType NOT IN (SELECT PolicyType FROM Policies);

INSERT INTO	Civilization_StartingGovernment
		(CivilizationType,					GovernmentType			)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'GOVERNMENT_JFD_POLIS'	);