--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						ForegroundImage,							BackgroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_SUK_NARAI',				'LEADER_SUK_NARAI_NEUTRAL.dds',				'LEADER_SUK_NARAI_BACKGROUND',			0);	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('LEADER_SUK_NARAI',				'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,						Name,									InheritFrom,			SceneLayers)
VALUES	('LEADER_SUK_NARAI',				'LOC_LEADER_SUK_NARAI_NAME',			'LEADER_DEFAULT',		4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,						Quote)
VALUES	('LEADER_SUK_NARAI',				'LOC_PEDIA_LEADERS_PAGE_SUK_NARAI_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_SUK_NARAI',				'TRAIT_LEADER_SUK_SIAMOISES');	
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,						ReligionType)
VALUES	('LEADER_SUK_NARAI',				'RELIGION_BUDDHISM');
--==========================================================================================================================
-- TRAITS
-- Les Ambassades Siamoises
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT OR REPLACE INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_LEADER_SUK_SIAMOISES',			'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,										Description)
VALUES	('TRAIT_LEADER_SUK_SIAMOISES',			'LOC_TRAIT_LEADER_SUK_SIAMOISES_NAME',		'LOC_TRAIT_LEADER_SUK_SIAMOISES_DESCRIPTION');
--==========================================================================================================================
-- Each of your Alliances grant +15 [ICON_Gold] Gold, +3 [ICON_Culture] Culture, and +2 [ICON_FAVOR] Diplomatic Favor for you
--
-- Requirements first, easier to parse that way.
----------------------------------------------------------------------------------------------------------------------------
-- REQUIREMENTS
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
SELECT	'SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES',			'REQUIREMENTSET_TEST_ALL'
FROM Alliances;

INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('SUK_SIAMOISES_IS_MAJOR_ALLY',							'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
SELECT	'SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES',			'REQUIRES_SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES'
FROM Alliances;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('SUK_SIAMOISES_IS_MAJOR_ALLY',							'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_SIAMOISES_IS_MAJOR_ALLY',							'REQUIRES_PLAYER_ALLY');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 													RequirementType)
SELECT	'REQUIRES_SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES',				'REQUIREMENT_COLLECTION_COUNT_ATLEAST'
FROM Alliances;
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 													Name,						Value)
SELECT	'REQUIRES_SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES', 			'CollectionType',			'COLLECTION_MAJOR_PLAYERS'
FROM Alliances;

INSERT INTO RequirementArguments
		(RequirementId, 													Name,						Value)
SELECT	'REQUIRES_SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES', 			'RequirementSetId',			'SUK_SIAMOISES_IS_MAJOR_ALLY'
FROM Alliances;

INSERT INTO RequirementArguments
		(RequirementId, 													Name,						Value)
SELECT	'REQUIRES_SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES', 			'Count',					RowID
FROM Alliances;
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
SELECT	'TRAIT_LEADER_SUK_SIAMOISES', 				'SUK_SIAMOISES_SELF_GOLD_' || RowID
FROM Alliances;

INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
SELECT	'TRAIT_LEADER_SUK_SIAMOISES', 				'SUK_SIAMOISES_SELF_CULTURE_' || RowID
FROM Alliances;

INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
SELECT	'TRAIT_LEADER_SUK_SIAMOISES', 				'SUK_SIAMOISES_SELF_FAVOR_' || RowID
FROM Alliances;
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,								ModifierType,										OwnerRequirementSetId, 								SubjectRequirementSetId)
SELECT	'SUK_SIAMOISES_SELF_GOLD_' || RowID,		'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE',				'SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES',		NULL
FROM Alliances;

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,										OwnerRequirementSetId, 								SubjectRequirementSetId)
SELECT	'SUK_SIAMOISES_SELF_CULTURE_' || RowID,		'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE',				'SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES',		NULL
FROM Alliances;

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,										OwnerRequirementSetId, 								SubjectRequirementSetId)
SELECT	'SUK_SIAMOISES_SELF_FAVOR_' || RowID,		'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN',		'SUK_SIAMOISES_HAS_' || RowID || '_ALLIANCES',		NULL
FROM Alliances;
-------------------------------------
-- ModifierArguments
-------------------------------------

	-- Gold --

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'SUK_SIAMOISES_SELF_GOLD_' || RowID,			'YieldType',					'YIELD_GOLD'
FROM Alliances;

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'SUK_SIAMOISES_SELF_GOLD_' || RowID,			'Amount',						15
FROM Alliances;

	-- Culture --

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'SUK_SIAMOISES_SELF_CULTURE_' || RowID,			'YieldType',					'YIELD_CULTURE'
FROM Alliances;

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'SUK_SIAMOISES_SELF_CULTURE_' || RowID,			'Amount',						3
FROM Alliances;
	
	-- Favor --

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'SUK_SIAMOISES_SELF_FAVOR_' || RowID,			'Amount',						2
FROM Alliances;
--==========================================================================================================================
-- Each of your Alliances grant +15 [ICON_Gold] Gold, +3 [ICON_Culture] Culture, and +2 [ICON_FAVOR] Diplomatic Favor for the other player
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,										ModifierId)
VALUES	('TRAIT_LEADER_SUK_SIAMOISES', 					'SUK_SIAMOISES_OTHER_GOLD'),
		('TRAIT_LEADER_SUK_SIAMOISES', 					'SUK_SIAMOISES_OTHER_CULTURE'),
		('TRAIT_LEADER_SUK_SIAMOISES', 					'SUK_SIAMOISES_OTHER_FAVOR');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,									OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_SIAMOISES_OTHER_GOLD',					'MODIFIER_MAJOR_PLAYERS_ATTACH_MODIFIER',		NULL,					'SUK_SIAMOISES_IS_MAJOR_ALLY'),
		('SUK_SIAMOISES_OTHER_CULTURE',					'MODIFIER_MAJOR_PLAYERS_ATTACH_MODIFIER', 		NULL,					'SUK_SIAMOISES_IS_MAJOR_ALLY'),
		('SUK_SIAMOISES_OTHER_FAVOR',					'MODIFIER_MAJOR_PLAYERS_ATTACH_MODIFIER', 		NULL,					'SUK_SIAMOISES_IS_MAJOR_ALLY'),

		('SUK_SIAMOISES_OTHER_GOLD_MODIFIER',			'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE',			NULL,					NULL),
		('SUK_SIAMOISES_OTHER_CULTURE_MODIFIER',		'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE', 			NULL,					NULL),
		('SUK_SIAMOISES_OTHER_FAVOR_MODIFIER',			'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN', 	NULL,					NULL);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
VALUES	('SUK_SIAMOISES_OTHER_GOLD',					'ModifierId',					'SUK_SIAMOISES_OTHER_GOLD_MODIFIER'),
		('SUK_SIAMOISES_OTHER_CULTURE',					'ModifierId',					'SUK_SIAMOISES_OTHER_CULTURE_MODIFIER'),
		('SUK_SIAMOISES_OTHER_FAVOR',					'ModifierId',					'SUK_SIAMOISES_OTHER_FAVOR_MODIFIER'),

		('SUK_SIAMOISES_OTHER_GOLD_MODIFIER',			'YieldType',					'YIELD_GOLD'),
		('SUK_SIAMOISES_OTHER_GOLD_MODIFIER',			'Amount',						15),

		('SUK_SIAMOISES_OTHER_CULTURE_MODIFIER',		'YieldType',					'YIELD_CULTURE'),
		('SUK_SIAMOISES_OTHER_CULTURE_MODIFIER',		'Amount',						3),

		('SUK_SIAMOISES_OTHER_FAVOR_MODIFIER',			'Amount',						2);
--==========================================================================================================================
-- Alliance Points with all allies increase by an additional .25 per turn
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,										ModifierId)
VALUES	('TRAIT_LEADER_SUK_SIAMOISES', 					'SUK_SIAMOISES_ALLIANCEPOINTS');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,									OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_SIAMOISES_ALLIANCEPOINTS',				'MODIFIER_PLAYER_ADJUST_ALLIANCE_POINTS',		NULL,					NULL);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	('SUK_SIAMOISES_ALLIANCEPOINTS',				'Amount',					1); -- *shrugs*  It's the value the rest of the modifiers use and they all provide .25 per turn.
--==========================================================================================================================
-- The Floating Market district and its buildings each grant +1 [ICON_Science] Science to International [ICON_TradeRoute] Trade Routes sent from that city.
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,										ModifierId)
SELECT	'TRAIT_LEADER_SUK_SIAMOISES', 					'SUK_SIAMOISES_SCIENCE_' || BuildingType
FROM (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL
UNION SELECT 'DISTRICT_SUK_FLOATINGMARKET' AS BuildingType);
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,										OwnerRequirementSetId, 			SubjectRequirementSetId)
SELECT	'SUK_SIAMOISES_SCIENCE_' || BuildingType,			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			NULL,							'SUK_SIAMOISES_CITY_HAS_' || BuildingType
FROM (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL
UNION SELECT 'DISTRICT_SUK_FLOATINGMARKET' AS BuildingType);

INSERT INTO Modifiers	
		(ModifierId,										ModifierType,															OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_SIAMOISES_SCIENCE_INTERNATIONAL_ROUTE',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		NULL,					NULL);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,							Value)
SELECT	'SUK_SIAMOISES_SCIENCE_' || BuildingType,			'ModifierId',					'SUK_SIAMOISES_SCIENCE_INTERNATIONAL_ROUTE'
FROM (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL
UNION SELECT 'DISTRICT_SUK_FLOATINGMARKET' AS BuildingType);

INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('SUK_SIAMOISES_SCIENCE_INTERNATIONAL_ROUTE',		'YieldType',				'YIELD_SCIENCE'),
		('SUK_SIAMOISES_SCIENCE_INTERNATIONAL_ROUTE',		'Amount',					1);
--------------------------------------------------------------------
-- REQUIREMENTS
--------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
SELECT	'SUK_SIAMOISES_CITY_HAS_' || BuildingType,				'REQUIREMENTSET_TEST_ALL'
FROM (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL
UNION SELECT 'DISTRICT_SUK_FLOATINGMARKET' AS BuildingType);
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
SELECT	'SUK_SIAMOISES_CITY_HAS_' || BuildingType,				'REQUIRES_SUK_SIAMOISES_CITY_HAS_' || BuildingType
FROM (SELECT BuildingType FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL
UNION SELECT 'DISTRICT_SUK_FLOATINGMARKET' AS BuildingType);
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 										RequirementType)
SELECT	'REQUIRES_SUK_SIAMOISES_CITY_HAS_' || BuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL;

INSERT INTO Requirements
		(RequirementId, 													RequirementType)
VALUES	('REQUIRES_SUK_SIAMOISES_CITY_HAS_DISTRICT_SUK_FLOATINGMARKET',		'REQUIREMENT_CITY_HAS_DISTRICT');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 										Name,					Value)
SELECT	'REQUIRES_SUK_SIAMOISES_CITY_HAS_' || BuildingType,	 	'BuildingType',			BuildingType
FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL;

INSERT INTO RequirementArguments
		(RequirementId, 													Name,				Value)
VALUES	('REQUIRES_SUK_SIAMOISES_CITY_HAS_DISTRICT_SUK_FLOATINGMARKET',		'DistrictType',		'DISTRICT_SUK_FLOATINGMARKET');
--==========================================================================================================================			
-- Agendas
--==========================================================================================================================
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas
		(LeaderType,							AgendaType)
VALUES	('LEADER_SUK_NARAI',					'AGENDA_SUK_PHRAKHLANG');
-------------------------------------
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,										Description)
VALUES	('AGENDA_SUK_PHRAKHLANG',				'LOC_AGENDA_SUK_PHRAKHLANG_NAME',	'LOC_AGENDA_SUK_PHRAKHLANG_DESCRIPTION');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_SUK_PHRAKHLANG',				'TRAIT_AGENDA_SUK_PHRAKHLANG');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,								AgendaTwo)
VALUES	('AGENDA_SUK_PHRAKHLANG',				'AGENDA_DARWINIST'),
		('AGENDA_SUK_PHRAKHLANG',				'AGENDA_FLAT_EARTHER'),	
		('AGENDA_SUK_PHRAKHLANG',				'AGENDA_DEMAGOGUE');
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SUK_PHRAKHLANG',			'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,								Description)
VALUES	('TRAIT_AGENDA_SUK_PHRAKHLANG',			'LOC_AGENDA_SUK_PHRAKHLANG_NAME',	'LOC_AGENDA_SUK_PHRAKHLANG_DESCRIPTION');
--==========================================================================================================================
-- Likes civilizations with high Diplomatic Favor who are allied with him.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_SUK_PHRAKHLANG', 		'SUK_PHRAKHLANG_ALLIED');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('SUK_PHRAKHLANG_ALLIED',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'SUK_PHRAKHLANG_ALLIED_REQUREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value)
VALUES	('SUK_PHRAKHLANG_ALLIED',				'InitialValue',					8),
		('SUK_PHRAKHLANG_ALLIED',				'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_NARAI_REASON_ANY'),
		('SUK_PHRAKHLANG_ALLIED',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_PHRAKHLANG_ALLIED');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,							Context,                        'Text')
VALUES	('SUK_PHRAKHLANG_ALLIED',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
--------------------------------------------------------------------
-- REQUIREMENTS
--------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('SUK_PHRAKHLANG_ALLIED_REQUREMENTS',			'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('SUK_PHRAKHLANG_ALLIED_REQUREMENTS',			'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_PHRAKHLANG_ALLIED_REQUREMENTS',			'REQUIRES_MET_10_TURNS_AGO'),
		('SUK_PHRAKHLANG_ALLIED_REQUREMENTS',			'REQUIRES_HAS_HIGH_FAVOR'),
		('SUK_PHRAKHLANG_ALLIED_REQUREMENTS',			'REQUIRES_PLAYER_ALLY');
--==========================================================================================================================
-- Is slighted by civilizations who have many alliances, but are not allied with him.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_SUK_PHRAKHLANG', 		'SUK_PHRAKHLANG_NOT_ALLIED');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('SUK_PHRAKHLANG_NOT_ALLIED',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'SUK_PHRAKHLANG_NOT_ALLIED_REQUREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value)
VALUES	('SUK_PHRAKHLANG_NOT_ALLIED',			'InitialValue',					-8),
		('SUK_PHRAKHLANG_NOT_ALLIED',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_NARAI_REASON_ANY'),
		('SUK_PHRAKHLANG_NOT_ALLIED',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_PHRAKHLANG_NOT_ALLIED');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,							Context,                        'Text')
VALUES	('SUK_PHRAKHLANG_NOT_ALLIED',			'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
--------------------------------------------------------------------
-- REQUIREMENTS
--------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('SUK_PHRAKHLANG_NOT_ALLIED_REQUREMENTS',		'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('SUK_PHRAKHLANG_NOT_ALLIED_REQUREMENTS',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_PHRAKHLANG_NOT_ALLIED_REQUREMENTS',		'REQUIRES_MET_10_TURNS_AGO'),
		('SUK_PHRAKHLANG_NOT_ALLIED_REQUREMENTS',		'REQUIRES_SUK_PHRAKHLANG_NOT_ALLIED'),
		('SUK_PHRAKHLANG_NOT_ALLIED_REQUREMENTS',		'REQUIRES_PLAYER_NOT_ALLY');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 								RequirementType)
VALUES	('REQUIRES_SUK_PHRAKHLANG_NOT_ALLIED',			'REQUIREMENT_PLAYER_HAS_MANY_ALLIANCES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 								Name,						Value)
VALUES	('REQUIRES_SUK_PHRAKHLANG_NOT_ALLIED',			'MinOwnerAlliances',		3);
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Suk_Narai_Buildings'),
		('Suk_Narai_Civics'),

		('Suk_Narai_Alliances'),
		('Suk_Narai_Resolutions'),
		('Suk_Narai_Discussions');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,									AgendaType,								System)
VALUES	('Suk_Narai_Buildings',						'TRAIT_AGENDA_SUK_PHRAKHLANG',			'Buildings'),
		('Suk_Narai_Civics',						'TRAIT_AGENDA_SUK_PHRAKHLANG',			'Civics'),

		('Suk_Narai_Alliances',						'TRAIT_AGENDA_SUK_PHRAKHLANG',			'DiplomaticActions'),
		('Suk_Narai_Resolutions',					'TRAIT_AGENDA_SUK_PHRAKHLANG',			'Resolutions'),
		('Suk_Narai_Discussions',					'TRAIT_AGENDA_SUK_PHRAKHLANG',			'Discussions');
-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,									Item,									Favored)
VALUES	('Suk_Narai_Buildings',						'BUILDING_ORSZAGHAZ',					1),

		('Suk_Narai_Civics',						'CIVIC_CIVIL_SERVICE',					1),
		
		('Suk_Narai_Alliances',						'DIPLOACTION_ALLIANCE_RESEARCH',		1),
		('Suk_Narai_Alliances',						'DIPLOACTION_ALLIANCE_MILITARY',		1),
		('Suk_Narai_Alliances',						'DIPLOACTION_ALLIANCE_ECONOMIC',		1),
		('Suk_Narai_Alliances',						'DIPLOACTION_ALLIANCE_CULTURAL',		1),
		('Suk_Narai_Alliances',						'DIPLOACTION_ALLIANCE_RELIGIOUS',		1),
		('Suk_Narai_Alliances',						'DIPLOACTION_ALLIANCE_TEAMUP',			1),
		('Suk_Narai_Alliances',						'DIPLOACTION_DECLARE_SURPRISE_WAR',		0),
		('Suk_Narai_Alliances',						'DIPLOACTION_DECLARE_WAR_MINOR_CIV',	0),

		('Suk_Narai_Resolutions',					'WC_RES_SOVEREIGNTY',					1),
		('Suk_Narai_Resolutions',					'WC_RES_TRADE_TREATY',					1),

		('Suk_Narai_Discussions',					'WC_EMERGENCY_CITY_STATE',				1);

INSERT OR REPLACE INTO AiFavoredItems
		(ListType,						Item,					Favored)
SELECT	'Suk_Narai_Buildings',			BuildingType,			1
FROM Buildings WHERE PrereqDistrict = "DISTRICT_COMMERCIAL_HUB" AND TraitType IS NULL;

INSERT OR REPLACE INTO AiFavoredItems
		(ListType,						Item,					Favored)
SELECT	'Suk_Narai_Civics',				CivicType,				1
FROM CivicModifiers WHERE ModifierId LIKE "CIVIC/_AWARD/_%/_INFLUENCE/_TOKEN%" ESCAPE '/';
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 					CivilizationType,			CapitalName)
VALUES  ('LEADER_SUK_NARAI',			'CIVILIZATION_SUK_SIAM',	'LOC_CITY_NAME_SIAM_LOPBURI');
--==========================================================================================================================
-- TSL
--==========================================================================================================================
CREATE TABLE IF NOT EXISTS StartPosition
	(MapName TEXT,
	Civilization TEXT,
	Leader TEXT,
	X INT default 0,
	Y INT default 0);

INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,				X,		Y)
VALUES	('CIVILIZATION_SUK_SIAM',			'LEADER_SUK_NARAI',			'GiantEarth',			74,		41),
		('CIVILIZATION_SUK_SIAM',			'LEADER_SUK_NARAI',			'GreatestEarthMap',		83,		37),
		('CIVILIZATION_SUK_SIAM',			'LEADER_SUK_NARAI',			'LargestEarthCustom',	99,		52);
--==========================================================================================================================
--==========================================================================================================================