/*
	XP2
	Authors: ChimpanG
*/

-----------------------------------------------
-- NamedDeserts
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,				Name								)
VALUES	('NAMED_DESERT_DASHT_E_KAVIR',	'LOC_NAMED_DESERT_DASHT_E_KAVIR'	),
		('NAMED_DESERT_DASHT_E_LUT',	'LOC_NAMED_DESERT_DASHT_E_LUT'		),
		('NAMED_DESERT_MARANJAB',		'LOC_NAMED_DESERT_MARANJAB'			),
		('NAMED_DESERT_SYRIAN',			'LOC_NAMED_DESERT_SYRIAN'			);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,				NamedDesertType					)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_DASHT_E_KAVIR'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_DASHT_E_LUT'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_MARANJAB'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_DESERT_SYRIAN'			);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,			Name							)
VALUES	('NAMED_MOUNTAIN_SULAIMAN',	'LOC_NAMED_MOUNTAIN_SULAIMAN'	);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType			)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_ALBORZ'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_ZAGROS'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_SULAIMAN'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_CAUCASUS'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_MOUNTAIN_TAURUS'		);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name							)
VALUES	('NAMED_RIVER_ARVAND_RUD',	'LOC_NAMED_RIVER_ARVAND_RUD'	),
		('NAMED_RIVER_OXUS',		'LOC_NAMED_RIVER_OXUS'			);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType				)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_ARVAND_RUD'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_KARUN'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_TIGRIS'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_EUPHRATES'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_OXUS'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_RIVER_SYR_DARYA'		);

-----------------------------------------------
-- NamedLakes
-----------------------------------------------

REPLACE INTO NamedLakes
		(NamedLakeType,			Name						)
VALUES	('NAMED_LAKE_SAWA',		'LOC_NAMED_LAKE_SAWA'		),
		('NAMED_LAKE_ZREBAR',	'LOC_NAMED_LAKE_ZREBAR'		),
		('NAMED_LAKE_SHORABIL',	'LOC_NAMED_LAKE_SHORABIL'	),
		('NAMED_LAKE_ALENDAN',	'LOC_NAMED_LAKE_ALENDAN'	),
		('NAMED_LAKE_KEEYOW',	'LOC_NAMED_LAKE_KEEYOW'		),
		('NAMED_LAKE_OVAN',		'LOC_NAMED_LAKE_OVAN'		);

-----------------------------------------------
-- NamedLakeCivilizations
-----------------------------------------------

INSERT INTO NamedLakeCivilizations
		(CivilizationType,				NamedLakeType					)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_LAKE_HABBANIYAH'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_LAKE_HAMMAR'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_SAWA'				),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_LAKE_URMIA'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_ZREBAR'				),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_SHORABIL'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_ALENDAN'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_KEEYOW'				),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_LAKE_OVAN'				);

-----------------------------------------------
-- NamedSeas
-----------------------------------------------

REPLACE INTO NamedSeas
		(NamedSeaType,					Name								)
VALUES	('NAMED_SEA_STRAIT_OF_HORMUZ',	'LOC_NAMED_SEA_STRAIT_OF_HORMUZ'	),
		('NAMED_SEA_CILICIAN_SEA',		'LOC_NAMED_SEA_CILICIAN_SEA'		);

-----------------------------------------------
-- NamedSeaCivilizations
-----------------------------------------------

INSERT INTO NamedSeaCivilizations
		(CivilizationType,				NamedSeaType					)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_MEDITERRANEAN_SEA'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_PERSIAN_GULF'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_CASPIAN_SEA'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_LEVANTINE_SEA'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_ARABIAN_SEA'			),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_STRAIT_OF_HORMUZ'	),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_GULF_OF_OMAN'		),
		('CIVILIZATION_CVS_SELEUCID',	'NAMED_SEA_CILICIAN_SEA'		);