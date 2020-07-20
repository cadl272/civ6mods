--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,					ForegroundImage,					BackgroundImage,			PlayDawnOfManAudio)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'LEADER_SUK_RAMKHAMHAENG_NEUTRAL',	'LEADER_HOJO_BACKGROUND',	0);	
--==========================================================================================================================
-- DIPLOMACY INFO
--==========================================================================================================================
-- DiplomacyInfo
-------------------------------------	
-- INSERT INTO DiplomacyInfo	
-- 		(Type,						BackgroundImage)
-- VALUES	('LEADER_SUK_RAMKHAMHAENG',		'FALLBACK_NEUTRAL_SUK_RAMKHAMHAENG.dds');
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'LOC_LEADER_SUK_RAMKHAMHAENG_NAME',					'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'LOC_PEDIA_LEADERS_PAGE_SUK_RAMKHAMHAENG_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'TRAIT_LEADER_SUK_THE_THAI_ALPHABET');	
-- -------------------------------------
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'AGENDA_SUK_FATHER_GOVERNS_CHILDREN');	
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------	
INSERT INTO FavoredReligions	
		(LeaderType,					ReligionType)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'RELIGION_BUDDHISM');
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_LEADER_SUK_THE_THAI_ALPHABET',					'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,												Description)
VALUES	('TRAIT_LEADER_SUK_THE_THAI_ALPHABET',			'LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_NAME',		'LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_DESCRIPTION');
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,									Name,											Description)
VALUES	('AGENDA_SUK_FATHER_GOVERNS_CHILDREN',			'LOC_AGENDA_SUK_FATHER_GOVERNS_CHILDREN_NAME',	'LOC_AGENDA_SUK_FATHER_GOVERNS_CHILDREN_DESCRIPTION');	
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN',	'KIND_TRAIT');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,									TraitType)
VALUES	('AGENDA_SUK_FATHER_GOVERNS_CHILDREN',			'TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_SUK_FATHER_GOVERNS_CHILDREN',			'AGENDA_FUN_LOVING'),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN',			'AGENDA_DARWINIST');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,											Description)
VALUES	('TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN',	'LOC_AGENDA_SUK_FATHER_GOVERNS_CHILDREN_NAME',	'LOC_AGENDA_SUK_FATHER_GOVERNS_CHILDREN_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,														ModifierId)
VALUES	('TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN', 					'AGENDA_SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS'),
		('TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN', 					'AGENDA_SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS');
--==========================================================================================================================
-- Modifiers
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS'),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'InitialValue',					12),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_RAMKHAMHAENG_REASON_ANY'),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_FATHER_GOVERNS_CHILDREN_HAPPY'),

		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'InitialValue',					-6),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_RAMKHAMHAENG_REASON_ANY'),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_FATHER_GOVERNS_CHILDREN_UNHAPPY');
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',				'REQUIREMENTSET_TEST_ALL'),
		('SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',				'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'REQUIRES_HAS_HIGH_HAPPINESS'),
		('SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'REQUIRES_HAS_HIGH_CULTURE'),
		('SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',		'REQUIRES_MET_10_TURNS_AGO'),

		('SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'REQUIRES_HAS_LOW_HAPPINESS'),
		('SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',		'REQUIRES_MET_10_TURNS_AGO');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,														Context,                        Text)
VALUES	('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_HIGH_HAPPINESS',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SUK_FATHER_GOVERNS_CHILDREN_LOW_HAPPINESS',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');		
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
-- INSERT INTO Requirements
-- 		(RequirementId, 													RequirementType)
-- VALUES	('SUK_FATHER_GOVERNS_CHILDREN_REQUIRES_MINOR_INVOLVEMENT',			'REQUIREMENT_COLLECTION_ANY_MET');
-- -------------------------------------
-- -- RequirementArguments
-- -------------------------------------
-- INSERT INTO RequirementArguments
-- 		(RequirementId, 														Name,					Value)
-- VALUES	('SUK_FATHER_GOVERNS_CHILDREN_REQUIRES_MINOR_INVOLVEMENT', 				'CollectionType',		'COLLECTION_MINOR_PLAYERS'),
-- 		('SUK_FATHER_GOVERNS_CHILDREN_REQUIRES_MINOR_INVOLVEMENT', 				'RequirementSetId',		'PLAYER_IS_SUZERAIN');
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Suk_Ramkhamhaeng_Wonders'),
		('Suk_Ramkhamhaeng_Civics'),
		('Suk_Ramkhamhaeng_Techs');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,						AgendaType,										System)
VALUES	('Suk_Ramkhamhaeng_Wonders',	'TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN',		'Buildings'),
		('Suk_Ramkhamhaeng_Civics',		'TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN',		'Civics'),
		('Suk_Ramkhamhaeng_Techs',		'TRAIT_AGENDA_SUK_FATHER_GOVERNS_CHILDREN',		'Technologies');
-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,						Item)
VALUES	('Suk_Ramkhamhaeng_Wonders',	'BUILDING_GREAT_LIBRARY'),
		('Suk_Ramkhamhaeng_Wonders',	'BUILDING_POTALA_PALACE'),
		('Suk_Ramkhamhaeng_Wonders',	'BUILDING_FORBIDDEN_CITY'),

		('Suk_Ramkhamhaeng_Civics',		'CIVIC_MYSTICISM'),
		('Suk_Ramkhamhaeng_Civics',		'CIVIC_FOREIGN_TRADE'),
		('Suk_Ramkhamhaeng_Civics',		'CIVIC_MILITARY_TRAINING'),
		('Suk_Ramkhamhaeng_Civics',		'CIVIC_NATURAL_HISTORY'),
		('Suk_Ramkhamhaeng_Civics',		'CIVIC_OPERA_BALLET'),
		('Suk_Ramkhamhaeng_Civics',		'CIVIC_CULTURAL_HERITAGE'),

		('Suk_Ramkhamhaeng_Techs',		'TECH_CURRENCY'),
		('Suk_Ramkhamhaeng_Techs',		'TECH_STIRRUPS');		
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 				CivilizationType,			CapitalName)
VALUES  ('LEADER_SUK_RAMKHAMHAENG',	'CIVILIZATION_SUK_SIAM',	'LOC_CITY_NAME_SIAM_SUKHOTHAI');
--==========================================================================================================================
--==========================================================================================================================