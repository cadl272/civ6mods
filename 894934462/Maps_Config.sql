--===================================
-- SQL by p0kiehl
--===================================
-- MapSizes
-------------------------------------
UPDATE MapSizes SET MaxPlayers=60, MaxCityStates=60;

INSERT INTO MapSizes
		(MapSizeType,			Name,							Description,						MinPlayers,	MaxPlayers,	DefaultPlayers,	MaxCityStates,	DefaultCityStates,	SortIndex)
VALUES	('MAPSIZE_MASSIVE',		'LOC_MAPSIZE_MASSIVE_NAME',		'LOC_MAPSIZE_MASSIVE_DESCRIPTION',	2,			60,			12,				60,				18,					72),
		('MAPSIZE_GIGANTIC',	'LOC_MAPSIZE_GIGANTIC_NAME',	'LOC_MAPSIZE_GIGANTIC_DESCRIPTION',	2,			60,			14,				60,				20,					73),
		('MAPSIZE_COLOSSAL',	'LOC_MAPSIZE_COLOSSAL_NAME',	'LOC_MAPSIZE_COLOSSAL_DESCRIPTION',	2,			60,			14,				60,				22,					74);

