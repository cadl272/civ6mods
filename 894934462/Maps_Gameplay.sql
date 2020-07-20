--===================================
-- SQL by p0kiehl
--===================================	
-- Types
-------------------------------------	
INSERT INTO Types
		(Type,					Kind)
VALUES	('MAPSIZE_MASSIVE',		'KIND_MAPSIZE'),
		('MAPSIZE_GIGANTIC',	'KIND_MAPSIZE'),
		('MAPSIZE_COLOSSAL',	'KIND_MAPSIZE');
-------------------------------------	
-- Maps
-------------------------------------	
INSERT INTO Maps
		(MapSizeType,			Name,							Description,						DefaultPlayers,	NumNaturalWonders,	GridWidth,	GridHeight,	PlateValue,	Continents)
VALUES	('MAPSIZE_MASSIVE',		'LOC_MAPSIZE_MASSIVE_NAME',		'LOC_MAPSIZE_MASSIVE_DESCRIPTION',	12,				12,					128,		80,			6,			6),
		('MAPSIZE_GIGANTIC',	'LOC_MAPSIZE_GIGANTIC_NAME',	'LOC_MAPSIZE_GIGANTIC_DESCRIPTION',	14,				14,					144,		90,			7,			7),
		('MAPSIZE_COLOSSAL',	'LOC_MAPSIZE_COLOSSAL_NAME',	'LOC_MAPSIZE_COLOSSAL_DESCRIPTION',	16,				16,					160,		100,		8,			8);
-------------------------------------	
-- Map_GreatPersonClasses
-------------------------------------				
INSERT INTO Map_GreatPersonClasses
		(MapSizeType,			GreatPersonClassType,			MaxWorldInstances)
VALUES	('MAPSIZE_MASSIVE',		'GREAT_PERSON_CLASS_PROPHET',	7),
		('MAPSIZE_GIGANTIC',	'GREAT_PERSON_CLASS_PROPHET',	7),
		('MAPSIZE_COLOSSAL',	'GREAT_PERSON_CLASS_PROPHET',	7);
-------------------------------------	
-- Maps_XP2
-------------------------------------	
INSERT INTO Maps_XP2
		(MapSizeType,		CO2For1DegreeTempRise,	DesertPlotCountToLabel,	MountainPlotCountToLabel)
SELECT	'MAPSIZE_MASSIVE',	3000000,				5,						5 WHERE EXISTS (SELECT * FROM Technologies WHERE TechnologyType='TECH_SEASTEADS');

INSERT INTO Maps_XP2
		(MapSizeType,		CO2For1DegreeTempRise,	DesertPlotCountToLabel,	MountainPlotCountToLabel)
SELECT	'MAPSIZE_GIGANTIC',	3000000,				5,						5 WHERE EXISTS (SELECT * FROM Technologies WHERE TechnologyType='TECH_SEASTEADS');

INSERT INTO Maps_XP2
		(MapSizeType,		CO2For1DegreeTempRise,	DesertPlotCountToLabel,	MountainPlotCountToLabel)
SELECT	'MAPSIZE_COLOSSAL',	3000000,				5,						5 WHERE EXISTS (SELECT * FROM Technologies WHERE TechnologyType='TECH_SEASTEADS');

