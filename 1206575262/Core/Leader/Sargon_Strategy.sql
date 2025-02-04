/*
	Strategy
	Credits: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType						)
VALUES 	('LEADER_CVS_SARGON_TECHS'		),
		('LEADER_CVS_SARGON_CIVICS'		),
		('LEADER_CVS_SARGON_DISTRICTS'	),
		('LEADER_CVS_SARGON_BUILDINGS'	),
		('LEADER_CVS_SARGON_PROJECTS'	),
		('LEADER_CVS_SARGON_DIPLOMACY'	),
		('LEADER_CVS_SARGON_TACTICS'	),
		('LEADER_CVS_SARGON_EXPANSION'	),
		('LEADER_CVS_SARGON_PSUEDOS'	);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,						AgendaType,				System				)
VALUES  ('LEADER_CVS_SARGON_TECHS',		'AGENDA_CVS_SARGON',	'Technologies'		),
		('LEADER_CVS_SARGON_CIVICS',	'AGENDA_CVS_SARGON',	'Civics'			),
		('LEADER_CVS_SARGON_DISTRICTS',	'AGENDA_CVS_SARGON',	'Districts'			),
		('LEADER_CVS_SARGON_BUILDINGS',	'AGENDA_CVS_SARGON',	'Buildings'			),
		('LEADER_CVS_SARGON_PROJECTS',	'AGENDA_CVS_SARGON',	'Projects'			),
		('LEADER_CVS_SARGON_TACTICS',	'AGENDA_CVS_SARGON',	'Tactics'			),
		('LEADER_CVS_SARGON_DIPLOMACY',	'AGENDA_CVS_SARGON',	'DiplomaticActions'	),
		('LEADER_CVS_SARGON_EXPANSION',	'AGENDA_CVS_SARGON',	'PlotEvaluations'	),
		('LEADER_CVS_SARGON_PSUEDOS',	'AGENDA_CVS_SARGON',	'PsuedoYields'		);

-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,						Item,									Favored	)
VALUES  -- TECHS
		('LEADER_CVS_SARGON_TECHS',		'TECH_ARCHERY',							1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_BRONZE_WORKING',					1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_HORSEBACK_RIDING',				1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_IRON_WORKING',					1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_CURRENCY',						1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_MILITARY_ENGINEERING',			1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_CASTLES',							1		),
		('LEADER_CVS_SARGON_TECHS',		'TECH_SIEGE_TACTICS',					1		),
		-- CIVICS
		('LEADER_CVS_SARGON_CIVICS',	'CIVIC_FOREIGN_TRADE',					1		),
		('LEADER_CVS_SARGON_CIVICS',	'CIVIC_MILITARY_TRADITION',				1		),
		('LEADER_CVS_SARGON_CIVICS',	'CIVIC_MILITARY_TRAINING',				1		),
		-- DISTRICTS
		('LEADER_CVS_SARGON_DISTRICTS',	'DISTRICT_CVS_AKKAD_UI',				1		),
		('LEADER_CVS_SARGON_DISTRICTS',	'DISTRICT_COMMERCIAL_HUB',				1		),
		-- BUILDINGS
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_WALLS',						1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_BARRACKS',					1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_STABLE',						1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_ARMORY',						1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_MILITARY_ACADEMY',			1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_MARKET',						1		),
		-- WONDERS
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_ALHAMBRA',					1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_PETRA',						1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_GREAT_ZIMBABWE',				1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_HANGING_GARDENS',				1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_PYRAMIDS',					1		),
		('LEADER_CVS_SARGON_BUILDINGS',	'BUILDING_TERRACOTTA_ARMY',				1		);
		-- PROJECTS
		-- TACTICS
		-- DIPLOMACY

INSERT INTO AiFavoredItems
		(ListType,							Item,					Favored,	Value,	StringVal					)
VALUES  -- EXPANSION
		('LEADER_CVS_SARGON_EXPANSION',	'Resource Class',			1,			5,		'RESOURCECLASS_STRATEGIC'	),
		('LEADER_CVS_SARGON_EXPANSION',	'Specific Feature',			1,			5,		'FEATURE_FLOODPLAINS'		),
		-- PSUEDOS
		('LEADER_CVS_SARGON_PSUEDOS',	'PSEUDOYIELD_UNIT_TRADE',	1,			5,		NULL						),
		('LEADER_CVS_SARGON_PSUEDOS',	'PSEUDOYIELD_GPP_GENERAL',	1,			50,		NULL						),
		('LEADER_CVS_SARGON_PSUEDOS',	'PSEUDOYIELD_UNIT_COMBAT',	1,			30,		NULL						);
