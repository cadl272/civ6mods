--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------
INSERT INTO LoadingInfo
		(LeaderType,					ForegroundImage,						BackgroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_SUK_EZANA_DLC',		'LEADER_SUK_EZANA_NEUTRAL',				'LEADER_SALADIN_BACKGROUND',		0);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('LEADER_SUK_EZANA_DLC',			'KIND_LEADER');
-------------------------------------
-- Leaders
-------------------------------------
INSERT INTO Leaders
		(LeaderType,						Name,									InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_EZANA_DLC',			'LOC_LEADER_SUK_EZANA_NAME',			'LEADER_DEFAULT',	4);
-------------------------------------
-- LeaderQuotes
-------------------------------------
INSERT INTO LeaderQuotes
		(LeaderType,					Quote)
VALUES	('LEADER_SUK_EZANA_DLC',		'LOC_PEDIA_LEADERS_PAGE_SUK_EZANA_DLC_QUOTE');
-------------------------------------
-- LeaderTraits
-------------------------------------
INSERT INTO LeaderTraits
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_EZANA_DLC',		'TRAIT_LEADER_SUK_AKSUMITE_COINAGE'),
		('LEADER_SUK_EZANA_DLC',		'TRAIT_LEADER_IMPROVEMENT_SUK_STELE');
-------------------------------------
-- -- FavoredReligions
-------------------------------------
INSERT OR REPLACE INTO FavoredReligions
		(LeaderType,						ReligionType)
VALUES	('LEADER_SUK_EZANA_DLC',		'RELIGION_ORTHODOXY');

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_C1_ORIENTAL'
WHERE LeaderType = 'LEADER_SUK_EZANA_DLC'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C1_ORIENTAL');
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
	(
		TraitType,
		Name,
		Description
	)
VALUES
	(
		'TRAIT_LEADER_SUK_AKSUMITE_COINAGE',
		'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_NAME',
		(SELECT CASE
			WHEN EXISTS (SELECT * FROM GameEffects WHERE Type = 'REQUIREMENT_GAME_ERA_ATLEAST_EXPANSION') THEN 'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_XP1_DESCRIPTION'
			ELSE 'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_DESCRIPTION'
			END Description
		)
	),
	(
		'TRAIT_LEADER_IMPROVEMENT_SUK_STELE',
		'LOC_IMPROVEMENT_SUK_STELE_NAME',
		'LOC_IMPROVEMENT_SUK_STELE_DLC_DESCRIPTION'
	);
-----------------------------------------------------------------------------------
-- Shrines provide +1 [ICON_TradeRoute] Trade Route capacity, if the city does not yet have a Market or a Lighthouse.
-----------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers
		(TraitType,														ModifierId)
VALUES	('TRAIT_LEADER_SUK_AKSUMITE_COINAGE', 							'SUK_AKSUMITE_COINAGE_TRADE_ROUTE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
	(
		ModifierId,
		ModifierType,
		SubjectRequirementSetId,
		OwnerRequirementSetId
	)
VALUES
	(
		'SUK_AKSUMITE_COINAGE_TRADE_ROUTE',
		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',
		'SUK_AKSUMITE_COINAGE_TRADE_ROUTE_REQUIREMENTS',
		NULL
	),
	(
		'SUK_AKSUMITE_COINAGE_TRADE_ROUTE_MODIFIER',
		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',
		NULL,
		NULL
	);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('SUK_AKSUMITE_COINAGE_TRADE_ROUTE',				'ModifierId',				'SUK_AKSUMITE_COINAGE_TRADE_ROUTE_MODIFIER'),
		('SUK_AKSUMITE_COINAGE_TRADE_ROUTE_MODIFIER',		'Amount',					1);
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('SUK_AKSUMITE_COINAGE_TRADE_ROUTE_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
	(
		RequirementSetId,
		RequirementId
	)
VALUES
	(
		'SUK_AKSUMITE_COINAGE_TRADE_ROUTE_REQUIREMENTS',
		(SELECT CASE
			WHEN EXISTS (SELECT * FROM GameEffects WHERE Type = 'REQUIREMENT_GAME_ERA_ATLEAST_EXPANSION') THEN 'REQUIRES_CITY_HAS_SHRINE'
			ELSE 'REQUIRES_CITY_HAS_HOLY_SITE'
			END RequirementId)
	),
	(
		'SUK_AKSUMITE_COINAGE_TRADE_ROUTE_REQUIREMENTS',
		(SELECT CASE
			WHEN EXISTS (SELECT * FROM GameEffects WHERE Type = 'REQUIREMENT_GAME_ERA_ATLEAST_EXPANSION') THEN 'REQUIRES_NO_MARKET'
			ELSE 'REQUIRES_NO_COMMERCIAL_HUB'
			END RequirementId)
	),
	(
		'SUK_AKSUMITE_COINAGE_TRADE_ROUTE_REQUIREMENTS',
		(SELECT CASE
			WHEN EXISTS (SELECT * FROM GameEffects WHERE Type = 'REQUIREMENT_GAME_ERA_ATLEAST_EXPANSION') THEN 'REQUIRES_NO_LIGHTHOUSE'
			ELSE 'REQUIRES_NO_HARBOR'
			END RequirementId)
	);
-------------------------------------
-- Requirements
-------------------------------------
INSERT OR REPLACE INTO Requirements
		(RequirementId, 					RequirementType,						Inverse)
VALUES	('REQUIRES_NO_HARBOR',				'REQUIREMENT_CITY_HAS_DISTRICT',		1),
		('REQUIRES_NO_LIGHTHOUSE',			'REQUIREMENT_CITY_HAS_BUILDING',		1);
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, 								Name,						Value)
VALUES	('REQUIRES_NO_HARBOR', 							'DistrictType',			'DISTRICT_HARBOR'),
		('REQUIRES_NO_HARBOR', 							'MustBeFunctioning',	0),
		('REQUIRES_NO_LIGHTHOUSE', 						'BuildingType',			'BUILDING_LIGHTHOUSE'),
		('REQUIRES_NO_LIGHTHOUSE', 						'MustBeFunctioning',	0);
--==========================================================================================================================
-- Agendas
--==========================================================================================================================
-- HistoricalAgendas
-------------------------------------
INSERT INTO HistoricalAgendas
		(LeaderType,						AgendaType)
VALUES	('LEADER_SUK_EZANA_DLC',			'AGENDA_SUK_EZANAS_STONE');
-------------------------------------
-- Agendas
-------------------------------------
INSERT INTO Agendas
		(AgendaType,						Name,											Description)
VALUES	('AGENDA_SUK_EZANAS_STONE',			'LOC_AGENDA_SUK_EZANAS_STONE_NAME',				'LOC_AGENDA_SUK_EZANAS_STONE_DESCRIPTION');
-------------------------------------
-- AgendaTraits
-------------------------------------
INSERT INTO AgendaTraits
		(AgendaType,						TraitType)
VALUES	('AGENDA_SUK_EZANAS_STONE',			'TRAIT_AGENDA_SUK_EZANAS_STONE');
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
		('AGENDA_SUK_EZANAS_STONE_KUDOS',			'StatementKey',					'LOC_DIPLO_KUDO_LEADER_SUK_EZANA_DLC_REASON_ANY'),
		('AGENDA_SUK_EZANAS_STONE_KUDOS',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_EZANAS_STONE_KUDO'),

		('AGENDA_SUK_EZANAS_STONE_WARNING',			'InitialValue',					-12),
		('AGENDA_SUK_EZANAS_STONE_WARNING',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_SUK_EZANA_DLC_REASON_ANY'),
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
		(LeaderType, 				CivilizationType,			CapitalName)
VALUES  ('LEADER_SUK_EZANA_DLC',	'CIVILIZATION_ETHIOPIA',	'LOC_CITY_NAME_AXUM');
--==========================================================================================================================
--==========================================================================================================================