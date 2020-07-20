--=============================================
-- LINCA / AI
--=============================================
-----------------------------------------------	
-- AiListTypes
-----------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('CVS_DARIUS_Civics'),
		('CVS_DARIUS_Techs'),
		('CVS_DARIUS_Buildings'),
		('CVS_DARIUS_Districts'),
		('CVS_DARIUS_Improvements'),
		('CVS_DARIUS_PseudoYields'),
		('CVS_DARIUS_Yields'),
		('CVS_DARIUS_Units'),
		('CVS_DARIUS_Alliances'),
		('CVS_DARIUS_Diploaction');

-----------------------------------------------	
-- AiLists
-----------------------------------------------	
INSERT INTO AiLists	
		(ListType,							AgendaType,							System)
VALUES	('CVS_DARIUS_Civics',				'TRAIT_AGENDA_CVS_DARIUS',		'Civics'),
		('CVS_DARIUS_Techs',				'TRAIT_AGENDA_CVS_DARIUS',		'Technologies'),
		('CVS_DARIUS_Buildings',			'TRAIT_AGENDA_CVS_DARIUS',		'Buildings'),
		('CVS_DARIUS_Districts',			'TRAIT_AGENDA_CVS_DARIUS',		'Districts'),
		('CVS_DARIUS_Improvements',			'TRAIT_AGENDA_CVS_DARIUS',		'Improvements'),
		('CVS_DARIUS_PseudoYields',			'TRAIT_AGENDA_CVS_DARIUS',		'PseudoYields'),
		('CVS_DARIUS_Yields',				'TRAIT_AGENDA_CVS_DARIUS',		'Yields'),
		('CVS_DARIUS_Units',				'TRAIT_AGENDA_CVS_DARIUS',		'Units'),
		('CVS_DARIUS_Alliances',			'TRAIT_AGENDA_CVS_DARIUS',		'Alliances'),
		('CVS_DARIUS_Diploaction',			'TRAIT_AGENDA_CVS_DARIUS',		'DiplomaticActions');

-----------------------------------------------	
-- AiFavoredItems
-----------------------------------------------
INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Item,							Value)
VALUES	
-- YIELDS
		('CVS_DARIUS_Yields',			1,			'YIELD_GOLD',						10),		
		('CVS_DARIUS_Yields',			1,			'YIELD_CULTURE',					10),		
-- PSEUDOYIELDS
		('CVS_DARIUS_PseudoYields',	1,				'PSEUDOYIELD_GPP_MERCHANT',			50),
-- UNITS
		('CVS_DARIUS_Units',			1,			'UNIT_PERSIAN_IMMORTAL',			10),
-- DISTRICTS
		('CVS_DARIUS_Districts',		1,			'DISTRICT_COMMERCIAL_HUB',			20),				
		('CVS_DARIUS_Districts',		1,			'DISTRICT_GOVERNMENT',				0),	
-- IMPROVEMENTS
		('CVS_DARIUS_Improvements',	1,				'IMPROVEMENT_PAIRIDAEZA',			50),
-- WONDERS
		('CVS_DARIUS_Buildings',		1,			'BUILDING_APADANA',					0),
		('CVS_DARIUS_Buildings',		1,			'BUILDING_PETRA',					0),
		('CVS_DARIUS_Buildings',		1,			'BUILDING_PYRAMIDS',				0),
		('CVS_DARIUS_Buildings',		1,			'BUILDING_KILWA_KISIWANI',			0),
-- CIVICS & TECHS
		('CVS_DARIUS_Civics',			1,			'CIVIC_FOREIGN_TRADE',				0), 
		('CVS_DARIUS_Civics',			1,			'CIVIC_MERCANTILISM',				0), 
		('CVS_DARIUS_Civics',			1,			'CIVIC_STATE_WORKFORCE',			0), 
		('CVS_DARIUS_Techs',			1,			'TECH_TECH_BANKING',				0), 
		('CVS_DARIUS_Techs',			1,			'TECH_IRON_WORKING',				0), 
		('CVS_DARIUS_Techs',			1,			'TECH_CURRENCY',					0),
-- ALLIANCES
		('CVS_DARIUS_Alliances',		1,			'ALLIANCE_ECONOMIC',				0),
-- DIPLOACTION
		('CVS_DARIUS_Diploaction',		1,			'DIPLOACTION_ALLIANCE_ECONOMIC',	0);

INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Item,			Value)
SELECT	'CVS_DARIUS_Buildings',		1,			BuildingType,		0
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_GOVERNMENT';

INSERT INTO AiFavoredItems	
		(ListType,						Favored,	Item,			Value)
SELECT	'CVS_DARIUS_Buildings',		1,			BuildingType,		0
FROM Buildings WHERE PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';