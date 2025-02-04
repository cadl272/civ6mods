/*
	Strategy
	Credits: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType								)
VALUES 	('LEADER_CVS_WILLIAM_TECHS'				),
		('LEADER_CVS_WILLIAM_CIVICS'			),
		('LEADER_CVS_WILLIAM_DISTRICTS'			),
		('LEADER_CVS_WILLIAM_BUILDINGS'			),
		('LEADER_CVS_WILLIAM_PROJECTS'			),
		('LEADER_CVS_WILLIAM_DIPLOMACY'			),
		('LEADER_CVS_WILLIAM_EXPANSION'			),
		('LEADER_CVS_WILLIAM_PSUEDOS'			),
		('LEADER_CVS_WILLIAM_YIELDS'			),
		('LEADER_CVS_WILLIAM_ALLIANCES'			),
		('LEADER_CVS_WILLIAM_COMMEMORATIONS'	);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,								AgendaType,					System				)
VALUES  ('LEADER_CVS_WILLIAM_TECHS',			'TRAIT_AGENDA_CVS_WILLIAM',	'Technologies'		),
		('LEADER_CVS_WILLIAM_CIVICS',			'TRAIT_AGENDA_CVS_WILLIAM',	'Civics'			),
		('LEADER_CVS_WILLIAM_DISTRICTS',		'TRAIT_AGENDA_CVS_WILLIAM',	'Districts'			),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'TRAIT_AGENDA_CVS_WILLIAM',	'Buildings'			),
		('LEADER_CVS_WILLIAM_PROJECTS',			'TRAIT_AGENDA_CVS_WILLIAM',	'Projects'			),
		('LEADER_CVS_WILLIAM_DIPLOMACY',		'TRAIT_AGENDA_CVS_WILLIAM',	'DiplomaticActions'	),
		('LEADER_CVS_WILLIAM_EXPANSION',		'TRAIT_AGENDA_CVS_WILLIAM',	'PlotEvaluations'	),
		('LEADER_CVS_WILLIAM_PSUEDOS',			'TRAIT_AGENDA_CVS_WILLIAM',	'PsuedoYields'		),
		('LEADER_CVS_WILLIAM_YIELDS',			'TRAIT_AGENDA_CVS_WILLIAM',	'Yields'			),
		('LEADER_CVS_WILLIAM_ALLIANCES',		'TRAIT_AGENDA_CVS_WILLIAM',	'Alliances'			),
		('LEADER_CVS_WILLIAM_COMMEMORATIONS',	'TRAIT_AGENDA_CVS_WILLIAM',	'Commemorations'	);
		
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,								Item,										Favored	)
VALUES  -- TECHS
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_BRONZE_WORKING',						1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_HORSEBACK_RIDING',					1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_THE_WHEEL',							1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_CURRENCY',							1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_IRON_WORKING',						1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_MATHEMATICS',							1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_CONSTRUCTION',						1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_STIRRUPS',							1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_ENGINEERING',							1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_MILITARY_ENGINEERING',				1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_BANKING',								1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_METAL_CASTING',						1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_MILITARY_SCIENCE',					1		),
		('LEADER_CVS_WILLIAM_TECHS',			'TECH_ECONOMICS',							1		),
		-- CIVICS
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_CRAFTMANSHIP',						1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_EARLY_EMPIRE',						1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_FOREIGN_TRADE',						1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_MILITARY_TRAINING',					1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_MILITARY_TRADITION',					1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_FEUDALISM',							1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_NATIONALISM',						1		),
		('LEADER_CVS_WILLIAM_CIVICS',			'CIVIC_DIVINE_RIGHT',						1		),
		-- DISTRICTS
		('LEADER_CVS_WILLIAM_DISTRICTS',		'DISTRICT_ENCAMPMENT',						1		),
		('LEADER_CVS_WILLIAM_DISTRICTS',		'DISTRICT_COMMERCIAL_HUB',					1		),
		('LEADER_CVS_WILLIAM_DISTRICTS',		'DISTRICT_ENTERTAINMENT_COMPLEX',			1		),
		-- BUILDINGS
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_MARKET',							1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_BARRACKS',						1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_STABLE',							1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_BANK',							1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_ARMORY',							1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_STOCK_EXCHANGE',					1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_MILITARY_ACADEMY',				1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_ARENA',							1		),
		-- WONDERS
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_ALHAMBRA',						1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_TERRACOTTA_ARMY',					1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_JEBEL_BARKAL',					1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_COLOSSEUM',						1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_COLOSSUS',						1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_PETRA',							1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_ALHAMBRA',						1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_GREAT_ZIMBABWE',					1		),
		('LEADER_CVS_WILLIAM_BUILDINGS',		'BUILDING_BIG_BEN',							1		),
		-- ALLIANCES
		('LEADER_CVS_WILLIAM_ALLIANCES',		'ALLIANCE_MILITARY',						1		),
		('LEADER_CVS_WILLIAM_ALLIANCES',		'ALLIANCE_ECONOMIC',						1		),
		-- COMMEMORATIONS
		('LEADER_CVS_WILLIAM_COMMEMORATIONS',	'COMMEMORATION_MILITARY',					1		),
		('LEADER_CVS_WILLIAM_COMMEMORATIONS',	'COMMEMORATION_ECONOMIC',					1		),
		-- DIPLOMACY
		('LEADER_CVS_WILLIAM_DIPLOMACY',		'DIPLOACTION_ALLIANCE_MILITARY',			1		),
		('LEADER_CVS_WILLIAM_DIPLOMACY',		'DIPLOACTION_ALLIANCE_ECONOMIC',			1		);
		
INSERT INTO AiFavoredItems
		(ListType,							Item,								Favored,	Value,	StringVal					)
VALUES  -- EXPANSION
		('LEADER_CVS_WILLIAM_EXPANSION',	'Resource Class',					1,			5,		'RESOURCECLASS_STRATEGIC'	),
		-- PSUEDOS
		('LEADER_CVS_WILLIAM_PSUEDOS',		'PSEUDOYIELD_GPP_GENERAL',			1,			15,		NULL						),
		('LEADER_CVS_WILLIAM_PSUEDOS',		'PSEUDOYIELD_IMPROVEMENT',			1,			5,		NULL						),
		('LEADER_CVS_WILLIAM_PSUEDOS',		'PSEUDOYIELD_UNIT_COMBAT',			1,			20,		NULL						),
		('LEADER_CVS_WILLIAM_PSUEDOS',		'PSEUDOYIELD_HAPPINESS',			1,			5,		NULL						);

