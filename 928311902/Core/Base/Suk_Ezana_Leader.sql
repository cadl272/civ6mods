--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------
INSERT INTO LoadingInfo
		(LeaderType,					ForegroundImage,						BackgroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_SUK_EZANA',			'LEADER_SUK_EZANA_NEUTRAL.dds',			'LEADER_SALADIN_BACKGROUND',		0);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('LEADER_SUK_EZANA',			'KIND_LEADER');
-------------------------------------
-- Leaders
-------------------------------------
INSERT INTO Leaders
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_EZANA',			'LOC_LEADER_SUK_EZANA_NAME',						'LEADER_DEFAULT',	4);
-------------------------------------
-- LeaderQuotes
-------------------------------------
INSERT INTO LeaderQuotes
		(LeaderType,					Quote)
VALUES	('LEADER_SUK_EZANA',			'LOC_PEDIA_LEADERS_PAGE_SUK_EZANA_QUOTE');
-------------------------------------
-- LeaderTraits
-------------------------------------
INSERT INTO LeaderTraits
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_EZANA',			'TRAIT_LEADER_SUK_AKSUMITE_COINAGE'),
		('LEADER_SUK_EZANA',			'TRAIT_LEADER_IMPROVEMENT_SUK_STELE');
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------
INSERT OR REPLACE INTO FavoredReligions
		(LeaderType,			ReligionType)
SELECT	'LEADER_SUK_EZANA',		ReligionType
FROM FavoredReligions WHERE LeaderType = 'LEADER_SUK_ZARAYAQOB';
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------
INSERT OR REPLACE INTO Types
		(Type,														Kind)
VALUES	('TRAIT_LEADER_SUK_AKSUMITE_COINAGE',						'KIND_TRAIT'),
		('TRAIT_LEADER_IMPROVEMENT_SUK_STELE',						'KIND_TRAIT');
-------------------------------------
-- Traits
-------------------------------------
INSERT INTO Traits
		(TraitType,										Name,												Description)
VALUES	('TRAIT_LEADER_SUK_AKSUMITE_COINAGE',			'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_NAME',		'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DESCRIPTION'),
		('TRAIT_LEADER_IMPROVEMENT_SUK_STELE',			'LOC_IMPROVEMENT_SUK_STELE_NAME',					'LOC_IMPROVEMENT_SUK_STELE_DESCRIPTION');
-----------------------------------------------------------------------------------
-- Aksumite Coinage, Your [ICON_TradeRoute] Trade Routes to other civilizations provide +1 [ICON_Culture] Culture and +2 [ICON_Gold] Gold for Ethiopia.
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,														ModifierId)
VALUES	('TRAIT_LEADER_SUK_AKSUMITE_COINAGE', 							'SUK_AKSUMITE_COINAGE_GOLD'),
		('TRAIT_LEADER_SUK_AKSUMITE_COINAGE', 							'SUK_AKSUMITE_COINAGE_CULTURE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType)
VALUES	('SUK_AKSUMITE_COINAGE_GOLD',							'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('SUK_AKSUMITE_COINAGE_CULTURE',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('SUK_AKSUMITE_COINAGE_GOLD',						'YieldType',				'YIELD_GOLD'),
		('SUK_AKSUMITE_COINAGE_GOLD',						'Amount',					2),
		('SUK_AKSUMITE_COINAGE_GOLD',						'Intercontinental',			0),

		('SUK_AKSUMITE_COINAGE_CULTURE',					'YieldType',				'YIELD_CULTURE'),
		('SUK_AKSUMITE_COINAGE_CULTURE',					'Amount',					1),
		('SUK_AKSUMITE_COINAGE_CULTURE',					'Intercontinental',			0);
-----------------------------------------------------------------------------------
-- Unlock Stele
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,														ModifierId)
VALUES	('TRAIT_LEADER_IMPROVEMENT_SUK_STELE', 							'SUK_UNLOCK_IMPROVEMENT_SUK_STELE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType)
VALUES	('SUK_UNLOCK_IMPROVEMENT_SUK_STELE',						'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('SUK_UNLOCK_IMPROVEMENT_SUK_STELE',				'ImprovementType',			'IMPROVEMENT_SUK_STELE');
-----------------------------------------------------------------------------------
-- +1 TR in Cities with 4+ Steles
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,														ModifierId)
VALUES	('TRAIT_LEADER_IMPROVEMENT_SUK_STELE', 							'SUK_STELE_TRADE_ROUTE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,										SubjectRequirementSetId)
VALUES	('SUK_STELE_TRADE_ROUTE',									'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			'SUK_CITY_HAS_4_STELE'),
		('SUK_STELE_TRADE_ROUTE_CAPACITY',							'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',		NULL);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('SUK_STELE_TRADE_ROUTE',							'ModifierId',				'SUK_STELE_TRADE_ROUTE_CAPACITY'),
		('SUK_STELE_TRADE_ROUTE_CAPACITY',					'Amount',					1);
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('SUK_CITY_HAS_4_STELE',							'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_SUK_STELE',								'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_CITY_HAS_4_STELE',							'SUK_CITY_HAS_4_STELE_REQUIREMENT'),
		('PLOT_HAS_SUK_STELE',								'PLOT_HAS_SUK_STELE_REQUIREMENT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 											RequirementType)
VALUES	('SUK_CITY_HAS_4_STELE_REQUIREMENT',						'REQUIREMENT_COLLECTION_COUNT_ATLEAST'),
		('PLOT_HAS_SUK_STELE_REQUIREMENT',							'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 								Name,						Value)
VALUES	('SUK_CITY_HAS_4_STELE_REQUIREMENT', 			'CollectionType',			'COLLECTION_CITY_PLOT_YIELDS'),
		('SUK_CITY_HAS_4_STELE_REQUIREMENT', 			'Count',					3),
		('SUK_CITY_HAS_4_STELE_REQUIREMENT', 			'RequirementSetId',			'PLOT_HAS_SUK_STELE'),
		('PLOT_HAS_SUK_STELE_REQUIREMENT', 				'ImprovementType',			'IMPROVEMENT_SUK_STELE');
--==========================================================================================================================
-- Agendas
--==========================================================================================================================
-- HistoricalAgendas
-------------------------------------
INSERT INTO HistoricalAgendas
		(LeaderType,					AgendaType)
VALUES	('LEADER_SUK_EZANA',			'AGENDA_SUK_EZANAS_STONE');
-------------------------------------
-- Agendas
-------------------------------------
INSERT INTO Agendas
		(AgendaType,									Name,											Description)
VALUES	('AGENDA_SUK_EZANAS_STONE',			'LOC_AGENDA_SUK_EZANAS_STONE_NAME',	'LOC_AGENDA_SUK_EZANAS_STONE_DESCRIPTION');
-------------------------------------
-- AgendaTraits
-------------------------------------
INSERT INTO AgendaTraits
		(AgendaType,									TraitType)
VALUES	('AGENDA_SUK_EZANAS_STONE',			'TRAIT_AGENDA_SUK_EZANAS_STONE');
-------------------------------------
-- ExclusiveAgendas
-------------------------------------
INSERT INTO ExclusiveAgendas
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_SUK_EZANAS_STONE',			'AGENDA_GREAT_PERSON_ADVOCATE'),
		('AGENDA_SUK_EZANAS_STONE',			'AGENDA_WONDER_ADVOCATE');
-------------------------------------
-- Types
-------------------------------------
INSERT INTO Types
		(Type,											Kind)
VALUES	('TRAIT_AGENDA_SUK_EZANAS_STONE',		'KIND_TRAIT');
-------------------------------------
-- Traits
-------------------------------------
INSERT INTO Traits
		(TraitType,										Name,											Description)
VALUES	('TRAIT_AGENDA_SUK_EZANAS_STONE',		'LOC_AGENDA_SUK_EZANAS_STONE_NAME',	'LOC_AGENDA_SUK_EZANAS_STONE_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,											ModifierId)
VALUES	('TRAIT_AGENDA_SUK_EZANAS_STONE', 					'AGENDA_SUK_EZANAS_STONE_KUDOS'),
		('TRAIT_AGENDA_SUK_EZANAS_STONE', 					'AGENDA_SUK_EZANAS_STONE_WARNING');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_EZANAS_STONE_KUDOS',							'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_EZANAS_STONE_KUDOS'),
		('AGENDA_SUK_EZANAS_STONE_WARNING',							'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_EZANAS_STONE_WARNING');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value)
VALUES	('AGENDA_SUK_EZANAS_STONE_KUDOS',			'InitialValue',					8),
		('AGENDA_SUK_EZANAS_STONE_KUDOS',			'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_EZANA_REASON_ANY'),
		('AGENDA_SUK_EZANAS_STONE_KUDOS',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_EZANAS_STONE_KUDO'),

		('AGENDA_SUK_EZANAS_STONE_WARNING',			'InitialValue',					-12),
		('AGENDA_SUK_EZANAS_STONE_WARNING',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_EZANA_REASON_ANY'),
		('AGENDA_SUK_EZANAS_STONE_WARNING',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_EZANAS_STONE_WARNING');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('SUK_EZANAS_STONE_KUDOS',						'REQUIREMENTSET_TEST_ALL'),
		('SUK_EZANAS_STONE_WARNING',					'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('SUK_EZANAS_STONE_KUDOS',				'REQUIRES_HAS_HIGH_STANDING_ARMY'),
		('SUK_EZANAS_STONE_KUDOS',				'REQUIRES_HAS_HIGH_INCOME'),
		('SUK_EZANAS_STONE_KUDOS',				'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_EZANAS_STONE_KUDOS',				'REQUIRES_MET_10_TURNS_AGO'),

		('SUK_EZANAS_STONE_WARNING',			'REQUIRES_HAS_LOW_STANDING_ARMY'),
		('SUK_EZANAS_STONE_WARNING',			'REQUIRES_HAS_HIGH_INCOME'),
		('SUK_EZANAS_STONE_WARNING',			'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_EZANAS_STONE_WARNING',			'REQUIRES_MET_10_TURNS_AGO');
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 			CivilizationType,				CapitalName)
VALUES  ('LEADER_SUK_EZANA',	'CIVILIZATION_SUK_ETHIOPIA',	'LOC_CITY_NAME_ETHIOPIA_AXUM');
--==========================================================================================================================
--==========================================================================================================================