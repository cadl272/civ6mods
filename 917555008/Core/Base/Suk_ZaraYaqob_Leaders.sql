--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------
INSERT INTO LoadingInfo
		(LeaderType,					ForegroundImage,					BackgroundImage,				PlayDawnOfManAudio)
VALUES	('LEADER_SUK_ZARAYAQOB',		'LEADER_SUK_ZARAYAQOB_NEUTRAL',		'LEADER_DEFAULT_BACKGROUND',	0);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('LEADER_SUK_ZARAYAQOB',		'KIND_LEADER');
-------------------------------------
-- Leaders
-------------------------------------
INSERT INTO Leaders
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_ZARAYAQOB',		'LOC_LEADER_SUK_ZARAYAQOB_NAME',					'LEADER_DEFAULT',	4);
-------------------------------------
-- LeaderQuotes
-------------------------------------
INSERT INTO LeaderQuotes
		(LeaderType,					Quote)
VALUES	('LEADER_SUK_ZARAYAQOB',		'LOC_PEDIA_LEADERS_PAGE_SUK_ZARAYAQOB_QUOTE');
-------------------------------------
-- LeaderTraits
-------------------------------------
INSERT INTO LeaderTraits
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_ZARAYAQOB',		'TRAIT_LEADER_SUK_DEBRE_MITMAQ');
-- -------------------------------------
-- -- FavoredReligions
-- -------------------------------------
INSERT OR REPLACE INTO FavoredReligions
		(LeaderType,					ReligionType)
VALUES	('LEADER_SUK_ZARAYAQOB',		'RELIGION_ORTHODOXY');

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_C1_ORIENTAL'
WHERE LeaderType = 'LEADER_SUK_ZARAYAQOB'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C1_ORIENTAL');
--==========================================================================================================================
-- TRAITS
-- Council of Debre Mitmaq
--==========================================================================================================================
-- Types
-------------------------------------
INSERT OR REPLACE INTO Types
		(Type,													Kind)
VALUES	('TRAIT_LEADER_SUK_DEBRE_MITMAQ',						'KIND_TRAIT');
-------------------------------------
-- Traits
-------------------------------------
INSERT INTO Traits
		(TraitType,								Name,											Description)
VALUES	('TRAIT_LEADER_SUK_DEBRE_MITMAQ',		'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_NAME',		'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,												ModifierId)
VALUES	('TRAIT_LEADER_SUK_DEBRE_MITMAQ', 						'SUK_DEBRE_MITMAQ_3_SITES'),
		('TRAIT_LEADER_SUK_DEBRE_MITMAQ', 						'SUK_DEBRE_MITMAQ_6_SITES');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,													SubjectRequirementSetId)
VALUES	('SUK_DEBRE_MITMAQ_3_SITES',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'SUK_DEBRE_MITMAQ_HAS_3_SITES'),
		('SUK_DEBRE_MITMAQ_6_SITES', 					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'SUK_DEBRE_MITMAQ_HAS_6_SITES');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
VALUES	('SUK_DEBRE_MITMAQ_3_SITES',					'GovernmentSlotType',			'SLOT_WILDCARD'),
		('SUK_DEBRE_MITMAQ_6_SITES',					'GovernmentSlotType',			'SLOT_WILDCARD');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_DEBRE_MITMAQ_HAS_3_SITES',							'REQUIREMENTSET_TEST_ALL'),
		('SUK_DEBRE_MITMAQ_HAS_6_SITES',							'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_DEBRE_MITMAQ_HAS_3_SITES',					'SUK_DEBRE_MITMAQ_HAS_3_SITES_REQUIREMENT'),
		('SUK_DEBRE_MITMAQ_HAS_6_SITES',					'SUK_DEBRE_MITMAQ_HAS_6_SITES_REQUIREMENT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 											RequirementType)
VALUES	('SUK_DEBRE_MITMAQ_HAS_3_SITES_REQUIREMENT',				'REQUIREMENT_COLLECTION_COUNT_ATLEAST'),
		('SUK_DEBRE_MITMAQ_HAS_6_SITES_REQUIREMENT',				'REQUIREMENT_COLLECTION_COUNT_ATLEAST');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 								Name,						Value)
VALUES	('SUK_DEBRE_MITMAQ_HAS_3_SITES_REQUIREMENT', 	'CollectionType',			'COLLECTION_PLAYER_DISTRICTS'),
		('SUK_DEBRE_MITMAQ_HAS_3_SITES_REQUIREMENT', 	'Count',					3),
		('SUK_DEBRE_MITMAQ_HAS_3_SITES_REQUIREMENT', 	'RequirementSetId',			'DISTRICT_IS_HOLY_SITE'),

		('SUK_DEBRE_MITMAQ_HAS_6_SITES_REQUIREMENT', 	'CollectionType',			'COLLECTION_PLAYER_DISTRICTS'),
		('SUK_DEBRE_MITMAQ_HAS_6_SITES_REQUIREMENT', 	'Count',					6),
		('SUK_DEBRE_MITMAQ_HAS_6_SITES_REQUIREMENT', 	'RequirementSetId',			'DISTRICT_IS_HOLY_SITE');
--==========================================================================================================================
-- AGENDAS
-- Book of Light
--==========================================================================================================================
-- -- HistoricalAgendas
-- -------------------------------------
INSERT INTO HistoricalAgendas
		(LeaderType,					AgendaType)
VALUES	('LEADER_SUK_ZARAYAQOB',		'AGENDA_SUK_BOOK_OF_LIGHT');
-------------------------------------
-- Agendas
-------------------------------------
INSERT INTO Agendas
		(AgendaType,							Name,											Description)
VALUES	('AGENDA_SUK_BOOK_OF_LIGHT',			'LOC_AGENDA_SUK_BOOK_OF_LIGHT_NAME',	'LOC_AGENDA_SUK_BOOK_OF_LIGHT_DESCRIPTION');
-------------------------------------
-- AgendaTraits
-------------------------------------
INSERT INTO AgendaTraits
		(AgendaType,							TraitType)
VALUES	('AGENDA_SUK_BOOK_OF_LIGHT',			'TRAIT_AGENDA_SUK_BOOK_OF_LIGHT');
-------------------------------------
-- Types
-------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SUK_BOOK_OF_LIGHT',		'KIND_TRAIT');
-------------------------------------
-- Traits
-------------------------------------
INSERT INTO Traits
		(TraitType,										Name,											Description)
VALUES	('TRAIT_AGENDA_SUK_BOOK_OF_LIGHT',				'LOC_AGENDA_SUK_BOOK_OF_LIGHT_NAME',	'LOC_AGENDA_SUK_BOOK_OF_LIGHT_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,											ModifierId)
VALUES	('TRAIT_AGENDA_SUK_BOOK_OF_LIGHT', 					'AGENDA_SUK_BOOK_OF_LIGHT_SAME_RELIGION'),
		('TRAIT_AGENDA_SUK_BOOK_OF_LIGHT', 					'AGENDA_SUK_BOOK_OF_LIGHT_DIFF_RELIGION');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_BOOK_OF_LIGHT_SAME_RELIGION',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_BOOK_OF_LIGHT_SAME_RELIGION'),
		('AGENDA_SUK_BOOK_OF_LIGHT_DIFF_RELIGION',					'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_BOOK_OF_LIGHT_DIFF_RELIGION');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,							Value)
VALUES	('AGENDA_SUK_BOOK_OF_LIGHT_SAME_RELIGION',				'InitialValue',					8),
		('AGENDA_SUK_BOOK_OF_LIGHT_SAME_RELIGION',				'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_ZARAYAQOB_REASON_ANY'),
		('AGENDA_SUK_BOOK_OF_LIGHT_SAME_RELIGION',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_BOOK_OF_LIGHT_SAME_RELIGION'),

		('AGENDA_SUK_BOOK_OF_LIGHT_DIFF_RELIGION',				'InitialValue',					-12),
		('AGENDA_SUK_BOOK_OF_LIGHT_DIFF_RELIGION',				'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_ZARAYAQOB_REASON_ANY'),
		('AGENDA_SUK_BOOK_OF_LIGHT_DIFF_RELIGION',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_BOOK_OF_LIGHT_DIFF_RELIGION');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,											Context,                        Text)
VALUES	('AGENDA_SUK_BOOK_OF_LIGHT_SAME_RELIGION',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SUK_BOOK_OF_LIGHT_DIFF_RELIGION',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_BOOK_OF_LIGHT_SAME_RELIGION',							'REQUIREMENTSET_TEST_ALL'),
		('SUK_BOOK_OF_LIGHT_DIFF_RELIGION',							'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_BOOK_OF_LIGHT_SAME_RELIGION',					'REQUIRES_SAME_RELIGION'),
		('SUK_BOOK_OF_LIGHT_SAME_RELIGION',					'REQUIRES_SUK_BOOK_OF_LIGHT_DIFF_HOME_CONTINENT'),
		('SUK_BOOK_OF_LIGHT_SAME_RELIGION',					'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_BOOK_OF_LIGHT_SAME_RELIGION',					'REQUIRES_MET_10_TURNS_AGO'),

		('SUK_BOOK_OF_LIGHT_DIFF_RELIGION',					'REQUIRES_SUK_BOOK_OF_LIGHT_DIFF_RELIGION'),
		('SUK_BOOK_OF_LIGHT_DIFF_RELIGION',					'REQUIRES_SAME_HOME_CONTINENT'),
		('SUK_BOOK_OF_LIGHT_DIFF_RELIGION',					'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_BOOK_OF_LIGHT_DIFF_RELIGION',					'REQUIRES_MET_10_TURNS_AGO');
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
INSERT INTO Requirements
		(RequirementId, 													RequirementType,								Inverse)
VALUES	('REQUIRES_SUK_BOOK_OF_LIGHT_DIFF_RELIGION',						'REQUIREMENT_PLAYER_IS_SAME_RELIGION',			1),
		('REQUIRES_SUK_BOOK_OF_LIGHT_DIFF_HOME_CONTINENT',					'REQUIREMENT_PLAYER_SHARES_HOME_CONTINENT',		1);
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 				CivilizationType,				CapitalName)
VALUES  ('LEADER_SUK_ZARAYAQOB',	'CIVILIZATION_SUK_ETHIOPIA',	'LOC_CITY_NAME_ETHIOPIA_DEBRE_BERHAN');
--==========================================================================================================================
--==========================================================================================================================