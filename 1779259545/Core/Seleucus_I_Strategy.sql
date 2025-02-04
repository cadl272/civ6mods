/*
	Strategy
	Authors: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType								)
VALUES 	('LEADER_CVS_SELEUCUS_I_TECHS'			),
		('LEADER_CVS_SELEUCUS_I_CIVICS'			),
		('LEADER_CVS_SELEUCUS_I_DISTRICTS'		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS'		),
		('LEADER_CVS_SELEUCUS_I_PROJECTS'		),
		('LEADER_CVS_SELEUCUS_I_DIPLOMACY'		),
		('LEADER_CVS_SELEUCUS_I_TACTICS'		),
		('LEADER_CVS_SELEUCUS_I_EXPANSION'		),
		('LEADER_CVS_SELEUCUS_I_PSUEDOS'		),
		-- XP1
		('LEADER_CVS_SELEUCUS_I_COMMEMORATIONS'	),
		-- XP2
		('LEADER_CVS_SELEUCUS_I_DISCUSSIONS'	);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,									AgendaType,						System				) -- AgendaType links to a TraitType, not an AgendaType... :/
VALUES  ('LEADER_CVS_SELEUCUS_I_TECHS',				'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Technologies'		),
		('LEADER_CVS_SELEUCUS_I_CIVICS',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Civics'			),
		('LEADER_CVS_SELEUCUS_I_DISTRICTS',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Districts'			),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Buildings'			),
		('LEADER_CVS_SELEUCUS_I_PROJECTS',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Projects'			),
		('LEADER_CVS_SELEUCUS_I_TACTICS',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Tactics'			),
		('LEADER_CVS_SELEUCUS_I_DIPLOMACY',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'DiplomaticActions'	),
		('LEADER_CVS_SELEUCUS_I_EXPANSION',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'PlotEvaluations'	),
		('LEADER_CVS_SELEUCUS_I_PSUEDOS',			'TRAIT_AGENDA_CVS_SELEUCUS_I',	'PsuedoYields'		),
		-- XP1
		('LEADER_CVS_SELEUCUS_I_COMMEMORATIONS',	'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Commemorations'	),
		-- XP2
		('LEADER_CVS_SELEUCUS_I_DISCUSSIONS',		'TRAIT_AGENDA_CVS_SELEUCUS_I',	'Discussions'		);

-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,									Item,									Favored	)
VALUES  -- TECHS
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_ARCHERY',							1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_BRONZE_WORKING',					1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_HORSEBACK_RIDING',				1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_IRON_WORKING',					1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_CURRENCY',						1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_MILITARY_ENGINEERING',			1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_CASTLES',							1		),
		('LEADER_CVS_SELEUCUS_I_TECHS',				'TECH_SIEGE_TACTICS',					1		),
		-- CIVICS
		('LEADER_CVS_SELEUCUS_I_CIVICS',			'CIVIC_FOREIGN_TRADE',					1		),
		('LEADER_CVS_SELEUCUS_I_CIVICS',			'CIVIC_MILITARY_TRADITION',				1		),
		('LEADER_CVS_SELEUCUS_I_CIVICS',			'CIVIC_MILITARY_TRAINING',				1		),
		-- DISTRICTS
		('LEADER_CVS_SELEUCUS_I_DISTRICTS',			'DISTRICT_CVS_SELEUCID_UI',				1		),
		('LEADER_CVS_SELEUCUS_I_DISTRICTS',			'DISTRICT_ENCAMPMENT',					1		),
		-- BUILDINGS
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_WALLS',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_CASTLE',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_STAR_FORT',					1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_BARRACKS',					1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_STABLE',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_ARMORY',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_MILITARY_ACADEMY',			1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_MARKET',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_BANK',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_STOCK_EXCHANGE',				1		),
		-- WONDERS
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_ALHAMBRA',					1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_PETRA',						1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_GREAT_ZIMBABWE',				1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_HANGING_GARDENS',				1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_PYRAMIDS',					1		),
		('LEADER_CVS_SELEUCUS_I_BUILDINGS',			'BUILDING_TERRACOTTA_ARMY',				1		),
		-- COMMEMORATIONS (XP1)
		('LEADER_CVS_SELEUCUS_I_COMMEMORATIONS',	'COMMEMORATION_MILITARY',				1		),
		-- DISCUSSIONS (XP2)
		('LEADER_CVS_SELEUCUS_I_DISCUSSIONS',		'WC_EMERGENCY_MILITARY',				0		),
		('LEADER_CVS_SELEUCUS_I_DISCUSSIONS',		'WC_EMERGENCY_NUCLEAR',					0		);

INSERT INTO AiFavoredItems
		(ListType,							Item,						Favored,	Value,	StringVal					)
VALUES  -- EXPANSION
		('LEADER_CVS_SELEUCUS_I_EXPANSION',	'Resource Class',			1,			5,		'RESOURCECLASS_STRATEGIC'	),
		-- PSUEDOS
		('LEADER_CVS_SELEUCUS_I_PSUEDOS',	'PSEUDOYIELD_UNIT_TRADE',	1,			5,		NULL						),
		('LEADER_CVS_SELEUCUS_I_PSUEDOS',	'PSEUDOYIELD_GPP_GENERAL',	1,			50,		NULL						),
		('LEADER_CVS_SELEUCUS_I_PSUEDOS',	'PSEUDOYIELD_UNIT_COMBAT',	1,			30,		NULL						);
