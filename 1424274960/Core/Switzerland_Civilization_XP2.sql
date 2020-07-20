/*
	Civilization
	Credits: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains (NamedMountainType, Name)
SELECT	'NAMED_MOUNTAIN_RATIKON', 'LOC_NAMED_MOUNTAIN_RATIKON'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedMountains (NamedMountainType, Name)
SELECT	'NAMED_MOUNTAIN_RHAETIAN_ALPS', 'LOC_NAMED_MOUNTAIN_RHAETIAN_ALPS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedMountains (NamedMountainType, Name)
SELECT	'NAMED_MOUNTAIN_LEPONTINE_ALPS', 'LOC_NAMED_MOUNTAIN_LEPONTINE_ALPS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedMountains (NamedMountainType, Name)
SELECT	'NAMED_MOUNTAIN_GRAIAN_ALPS', 'LOC_NAMED_MOUNTAIN_GRAIAN_ALPS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations (CivilizationType, NamedMountainType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND', 'NAMED_MOUNTAIN_ALPS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedMountainCivilizations (CivilizationType, NamedMountainType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND', 'NAMED_MOUNTAIN_JURA_MOUNTAINS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedMountainCivilizations (CivilizationType, NamedMountainType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND', 'NAMED_MOUNTAIN_RATIKON'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedMountainCivilizations (CivilizationType, NamedMountainType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND', 'NAMED_MOUNTAIN_LEPONTINE_ALPS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedMountainCivilizations (CivilizationType, NamedMountainType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND', 'NAMED_MOUNTAIN_GRAIAN_ALPS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers (NamedRiverType, Name)
SELECT	'NAMED_RIVER_AARE', 'LOC_NAMED_RIVER_AARE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedRivers (NamedRiverType, Name)
SELECT	'NAMED_RIVER_REUSS', 'LOC_NAMED_RIVER_REUSS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedRivers (NamedRiverType, Name)
SELECT	'NAMED_RIVER_LINTH', 'LOC_NAMED_RIVER_LINTH'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedRivers (NamedRiverType, Name)
SELECT	'NAMED_RIVER_LINMAT', 'LOC_NAMED_RIVER_LINMAT'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedRivers (NamedRiverType, Name)
SELECT	'NAMED_RIVER_SAANE', 'LOC_NAMED_RIVER_SAANE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

REPLACE INTO NamedRivers (NamedRiverType, Name)
SELECT	'NAMED_RIVER_THUR', 'LOC_NAMED_RIVER_THUR'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_RHINE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_RHONE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_AARE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_REUSS'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_LINTH'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_LINMAT'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_SAANE'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO NamedRiverCivilizations (CivilizationType, NamedRiverType)
SELECT	'CIVILIZATION_CVS_SWITZERLAND',	'NAMED_RIVER_THUR'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));