--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,					ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_SUK_INGOLFUR',			'LEADER_SUK_INGOLFUR_NEUTRAL',		'LEADER_SUK_INGOLFUR_BACKGROUND',		0);

--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_SUK_INGOLFUR',		'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,											InheritFrom,		SceneLayers)
VALUES	('LEADER_SUK_INGOLFUR',		'LOC_LEADER_SUK_INGOLFUR_NAME',					'LEADER_DEFAULT',	4);
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_SUK_INGOLFUR',		'LOC_PEDIA_LEADERS_PAGE_SUK_INGOLFUR_QUOTE');	
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_SUK_INGOLFUR',			'TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS');	
-- -- -------------------------------------
-- -- -- FavoredReligions
-- -- -------------------------------------	
INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType,					ReligionType)
VALUES	('LEADER_SUK_INGOLFUR',			'RELIGION_PROTESTANTISM');

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_FORN_SIDR'
WHERE LeaderType = 'LEADER_SUK_INGOLFUR'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');
--==========================================================================================================================
-- TRAITS
-- Book of Settlements
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT OR REPLACE INTO Types	
		(Type,															Kind)
VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS',						'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,													Description)
VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS',		'LOC_TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS_NAME',		'LOC_TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS_DESCRIPTION');
--==========================================================================================================================
-- Cities on tiles with Breathtaking appeal, or within 2 tiles of a Natural Wonder receive +1 [ICON_Amenities] Amenity, +4 Loyalty.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 				'SUK_BOOK_OF_SETTLEMENTS_LOYALTY'),
		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 				'SUK_BOOK_OF_SETTLEMENTS_AMENITIES');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,										OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_LOYALTY',						'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',	NULL,					'SUK_BOOK_OF_SETTLEMENTS_NATURAL_WONDER_OR_BREATHTAKING'),
		('SUK_BOOK_OF_SETTLEMENTS_AMENITIES',					'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY', 	NULL,					'SUK_BOOK_OF_SETTLEMENTS_NATURAL_WONDER_OR_BREATHTAKING');

UPDATE Modifiers
SET ModifierType = 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY'
WHERE ModifierId = 'SUK_BOOK_OF_SETTLEMENTS_AMENITIES' AND EXISTS (SELECT * FROM DynamicModifiers WHERE ModifierType = 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_LOYALTY',							'Amount',						4),
		('SUK_BOOK_OF_SETTLEMENTS_AMENITIES',						'Amount',						2);
----------------------------------------------------------------------------------------------------------------------------
-- REQUIREMENTS
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,														RequirementSetType)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_NATURAL_WONDER_OR_BREATHTAKING',				'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,													RequirementId)
SELECT	'SUK_BOOK_OF_SETTLEMENTS_NATURAL_WONDER_OR_BREATHTAKING',			'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType
FROM Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,													RequirementId)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_NATURAL_WONDER_OR_BREATHTAKING',			'SUK_BOOK_OF_SETTLEMENTS_REQ_BREATHTAKING_APPEAL');	
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 										RequirementType)
SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType,				'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'
FROM Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId,														RequirementType)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_REQ_BREATHTAKING_APPEAL',					'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 											Name,					Value)
SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType, 					'FeatureType',			FeatureType
FROM Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 											Name,					Value)
SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType, 					'MinRange',				1
FROM Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 											Name,					Value)
SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType, 					'MaxRange',				2
FROM Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 											Name,					Value)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_REQ_BREATHTAKING_APPEAL', 		'MinimumAppeal',		4);
--==========================================================================================================================
-- Settlers and Recon units receive +1 [ICON_Movement] Movement, doubled during a [ICON_GLORY_DARK_AGE] Dark Age.
-- Units escorting a Settlers inherit their [ICON_Movement] Movement speed.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,												ModifierId)
VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 				'SUK_BOOK_OF_SETTLEMENTS_MOVEMENT'),
		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 				'SUK_BOOK_OF_SETTLEMENTS_MOVEMENT_DARK_AGE'),
		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 				'SUK_BOOK_OF_SETTLEMENTS_ESCORT');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,										OwnerRequirementSetId, 	SubjectRequirementSetId)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_MOVEMENT',					'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT', 			NULL,					'SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT'),
		('SUK_BOOK_OF_SETTLEMENTS_MOVEMENT_DARK_AGE',			'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT', 			NULL,					'SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_DARK_AGE'),
		('SUK_BOOK_OF_SETTLEMENTS_ESCORT',						'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 			NULL,					'SUK_BOOK_OF_SETTLEMENTS_IS_SETTLER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_MOVEMENT',						'Amount',						1),
		('SUK_BOOK_OF_SETTLEMENTS_MOVEMENT_DARK_AGE',				'Amount',						1),
		('SUK_BOOK_OF_SETTLEMENTS_ESCORT',							'ModifierId',					'ESCORT_MOBILITY_SHARED_MOVEMENT');
----------------------------------------------------------------------------------------------------------------------------
-- REQUIREMENTS
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,													RequirementSetType)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_IS_SETTLER',								'REQUIREMENTSET_TEST_ALL'),
		
		('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT',								'REQUIREMENTSET_TEST_ALL'),
		('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_DARK_AGE',						'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,													RequirementId)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_IS_SETTLER',								'SUK_BOOK_OF_SETTLEMENTS_IS_SETTLER_REQUIREMENT'),

		('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT',								'SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_REQUIREMENT'),

		('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_DARK_AGE',						'REQUIRES_PLAYER_HAS_DARK_AGE'),
		('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_DARK_AGE',						'SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_REQUIREMENT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 													RequirementType)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_REQUIREMENT',					'REQUIREMENT_UNIT_TAG_MATCHES'),
		('SUK_BOOK_OF_SETTLEMENTS_IS_SETTLER_REQUIREMENT',					'REQUIREMENT_UNIT_TYPE_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 													Name,				Value)
VALUES	('SUK_BOOK_OF_SETTLEMENTS_VALID_UNIT_REQUIREMENT', 					'Tag',				'CLASS_SUK_BOOK_OF_SETTLEMENTS_UNIT'),
		('SUK_BOOK_OF_SETTLEMENTS_IS_SETTLER_REQUIREMENT', 					'UnitType',			'UNIT_SETTLER');
-------------------------------------
-- Tags
-------------------------------------
INSERT INTO Tags
			(Tag,										Vocabulary)
VALUES		('CLASS_SUK_BOOK_OF_SETTLEMENTS_UNIT',		'ABILITY_CLASS');
-------------------------------------
-- TypeTags
-------------------------------------
INSERT INTO TypeTags
			(Type,						Tag)
SELECT		UnitType,					'CLASS_SUK_BOOK_OF_SETTLEMENTS_UNIT'
FROM Units WHERE UnitType = 'UNIT_SETTLER' OR PromotionClass = 'PROMOTION_CLASS_RECON';
--==========================================================================================================================
-- AGENDAS
-- Bay of Smoke
--==========================================================================================================================
-- -- HistoricalAgendas
-- -------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,						AgendaType)
VALUES	('LEADER_SUK_INGOLFUR',				'AGENDA_SUK_BAY_OF_SMOKE');
-------------------------------------
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,						Name,										Description)
VALUES	('AGENDA_SUK_BAY_OF_SMOKE',			'LOC_AGENDA_SUK_BAY_OF_SMOKE_NAME',			'LOC_AGENDA_SUK_BAY_OF_SMOKE_DESCRIPTION');
-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,							AgendaTwo)
VALUES	('AGENDA_SUK_BAY_OF_SMOKE',			'AGENDA_EXPLORER');
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,						TraitType)
VALUES	('AGENDA_SUK_BAY_OF_SMOKE',			'TRAIT_AGENDA_SUK_BAY_OF_SMOKE');
-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SUK_BAY_OF_SMOKE',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,										Description)
VALUES	('TRAIT_AGENDA_SUK_BAY_OF_SMOKE',			'LOC_AGENDA_SUK_BAY_OF_SMOKE_NAME',			'LOC_AGENDA_SUK_BAY_OF_SMOKE_DESCRIPTION');
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES	('TRAIT_AGENDA_SUK_BAY_OF_SMOKE', 							'AGENDA_SUK_BAY_OF_SMOKE_KUDOS'),
		('TRAIT_AGENDA_SUK_BAY_OF_SMOKE', 							'AGENDA_SUK_BAY_OF_SMOKE_WARNING');
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
----------------------------------------------------------------------------------------------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,											SubjectRequirementSetId)
VALUES	('AGENDA_SUK_BAY_OF_SMOKE_KUDOS',						'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_BAY_OF_SMOKE_KUDOS'),
		('AGENDA_SUK_BAY_OF_SMOKE_WARNING',						'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',			'SUK_BAY_OF_SMOKE_WARNING');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
VALUES	('AGENDA_SUK_BAY_OF_SMOKE_KUDOS',				'InitialValue',					8),
		('AGENDA_SUK_BAY_OF_SMOKE_KUDOS',				'StatementKey',					'LOC_DIPLO_KUDO_EXIT_LEADER_SUK_INGOLFUR_ANY'),
		('AGENDA_SUK_BAY_OF_SMOKE_KUDOS',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_BAY_OF_SMOKE_KUDOS'),

		('AGENDA_SUK_BAY_OF_SMOKE_WARNING',				'InitialValue',					-12),
		('AGENDA_SUK_BAY_OF_SMOKE_WARNING',				'StatementKey',					'LOC_DIPLO_WARNING_EXIT_LEADER_SUK_INGOLFUR_ANY'),
		('AGENDA_SUK_BAY_OF_SMOKE_WARNING',				'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_SUK_BAY_OF_SMOKE_WARNING');
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,									Context,                        'Text')
VALUES	('AGENDA_SUK_BAY_OF_SMOKE_KUDOS',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SUK_BAY_OF_SMOKE_WARNING',				'Sample',						'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
----------------------------------------------------------------------------------------------------------------------------
-- REQUIREMENTS
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('SUK_BAY_OF_SMOKE_KUDOS',						'REQUIREMENTSET_TEST_ALL'),
		('SUK_BAY_OF_SMOKE_WARNING',					'REQUIREMENTSET_TEST_ALL'),

		('SUK_BAY_OF_SMOKE_OWNS_NATURAL_WONDERS',		'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('SUK_BAY_OF_SMOKE_KUDOS',				'REQUIRES_HAS_HIGH_EXPLORATION'),
		('SUK_BAY_OF_SMOKE_KUDOS',				'REQUIRES_BAY_OF_SMOKE_OWNS_NATURAL_WONDERS'),
		('SUK_BAY_OF_SMOKE_KUDOS',				'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_BAY_OF_SMOKE_KUDOS',				'REQUIRES_MET_10_TURNS_AGO'),
			
		('SUK_BAY_OF_SMOKE_WARNING',			'REQUIRES_HAS_LOW_EXPLORATION'),
		('SUK_BAY_OF_SMOKE_WARNING',			'REQUIRES_MAJOR_CIV_OPPONENT'),
		('SUK_BAY_OF_SMOKE_WARNING',			'REQUIRES_MET_10_TURNS_AGO');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
SELECT	'SUK_BAY_OF_SMOKE_OWNS_NATURAL_WONDERS',				'SUK_BAY_OF_SMOKE_OWNS_' || FeatureType
FROM Features WHERE NaturalWonder = 1;
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
INSERT INTO Requirements
		(RequirementId, 										RequirementType)
VALUES	('REQUIRES_BAY_OF_SMOKE_OWNS_NATURAL_WONDERS',			'REQUIREMENT_REQUIREMENTSET_IS_MET');

INSERT INTO Requirements
		(RequirementId, 										RequirementType)
SELECT	'SUK_BAY_OF_SMOKE_OWNS_' || FeatureType,				'REQUIREMENT_PLAYER_HAS_FEATURE'
FROM Features WHERE NaturalWonder = 1;
-- -------------------------------------
-- -- RequirementArguments
-- -------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
VALUES	('REQUIRES_BAY_OF_SMOKE_OWNS_NATURAL_WONDERS', 				'RequirementSetId',				'SUK_BAY_OF_SMOKE_OWNS_NATURAL_WONDERS');

INSERT INTO RequirementArguments
		(RequirementId, 											Name,							Value)
SELECT	'SUK_BAY_OF_SMOKE_OWNS_' || FeatureType,					'FeatureType',					FeatureType
FROM Features WHERE NaturalWonder = 1;
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,							Vocabulary)
VALUES		('CLASS_BAY_OF_SMOKE',			'RESOURCE_CLASS');
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,							Tag)
SELECT		FeatureType,					'CLASS_BAY_OF_SMOKE'
FROM Features WHERE NaturalWonder = 1;
--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 				CivilizationType,				CapitalName)
VALUES  ('LEADER_SUK_INGOLFUR',		'CIVILIZATION_SUK_ICELAND',		'LOC_CITY_NAME_SUK_ICELAND_REYKJAVIK');
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
VALUES	('CIVILIZATION_SUK_ICELAND',		'LEADER_SUK_INGOLFUR',		'GiantEarth',			1,		84),
		('CIVILIZATION_SUK_ICELAND',		'LEADER_SUK_INGOLFUR',		'GreatestEarthMap',		31,		62),
		('CIVILIZATION_SUK_ICELAND',		'LEADER_SUK_INGOLFUR',		'PlayEuropeAgain',		9,		89),
		('CIVILIZATION_SUK_ICELAND',		'LEADER_SUK_INGOLFUR',		'LargeEurope',			9,		70);
--==========================================================================================================================
--==========================================================================================================================












-- --==========================================================================================================================
-- -- TRAITS
-- -- Book of Settlements
-- --==========================================================================================================================
-- -- Types
-- -------------------------------------	
-- INSERT OR REPLACE INTO Types	
-- 		(Type,															Kind)
-- VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS',						'KIND_TRAIT');	
-- -------------------------------------			
-- -- Traits			
-- -------------------------------------				
-- INSERT INTO Traits				
-- 		(TraitType,										Name,													Description)
-- VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS',		'LOC_TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS_NAME',		'LOC_TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS_DESCRIPTION');
-- -------------------------------------
-- -- TraitModifiers
-- -------------------------------------
-- INSERT INTO TraitModifiers			
-- 		(TraitType,														ModifierId)
-- VALUES	('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_NATURAL_WONDER'),
-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_NATURAL_WONDER_DARK_AGE'),
-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_FOREIGN'),
-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_FOREIGN_DARK_AGE'),

-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_LOYALTY_NATURAL_WONDER'),
-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_LOYALTY_NATURAL_WONDER_DARK_AGE'),
-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_LOYALTY_FOREIGN'),
-- 		('TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS', 						'SUK_BOOK_OF_SETTLEMENTS_LOYALTY_FOREIGN_DARK_AGE');
-- ----------------------------------------------------------------------------------------------------------------------------
-- -- MODIFIERS
-- ----------------------------------------------------------------------------------------------------------------------------
-- -- Modifiers
-- -------------------------------------
-- INSERT INTO Modifiers	
-- 		(ModifierId,														ModifierType,											SubjectRequirementSetId)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER',							'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',			NULL),

-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_NATURAL_WONDER',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_NATURAL_WONDER_DARK_AGE',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_DARK_AGE'),
	
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_FOREIGN',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				'SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_FOREIGN_DARK_AGE',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				'SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT_DARK_AGE'),

-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_NATURAL_WONDER',					'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',		'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_NATURAL_WONDER_DARK_AGE',			'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',		'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_DARK_AGE'),
	
-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_FOREIGN',							'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',		'SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_FOREIGN_DARK_AGE',				'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',		'SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT_DARK_AGE');
-- -------------------------------------
-- -- ModifierArguments
-- -------------------------------------
-- INSERT INTO ModifierArguments
-- 		(ModifierId,														Name,							Value)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER',							'GreatPersonClassType',			'GREAT_PERSON_CLASS_WRITER'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER',							'Amount',						1),

-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_NATURAL_WONDER',				'ModifierId',					'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_NATURAL_WONDER_DARK_AGE',	'ModifierId',					'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_FOREIGN',					'ModifierId',					'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER_FOREIGN_DARK_AGE',			'ModifierId',					'SUK_BOOK_OF_SETTLEMENTS_GREAT_WRITER'),

-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_NATURAL_WONDER',					'Amount',						2),
-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_NATURAL_WONDER_DARK_AGE',			'Amount',						1),
-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_FOREIGN',							'Amount',						2),
-- 		('SUK_BOOK_OF_SETTLEMENTS_LOYALTY_FOREIGN_DARK_AGE',				'Amount',						1);
-- ----------------------------------------------------------------------------------------------------------------------------
-- -- REQUIREMENTS --  Cities you settled on a foreign continent
-- ----------------------------------------------------------------------------------------------------------------------------
-- INSERT INTO RequirementSets
-- 		(RequirementSetId,													RequirementSetType)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT_DARK_AGE',				'REQUIREMENTSET_TEST_ALL'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT',						'REQUIREMENTSET_TEST_ALL');
-- -------------------------------------
-- -- RequirementSetRequirements
-- -------------------------------------
-- INSERT INTO RequirementSetRequirements
-- 		(RequirementSetId,													RequirementId)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT_DARK_AGE',				'REQUIRES_CITY_IS_NOT_OWNER_CAPITAL_CONTINENT'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT_DARK_AGE',				'REQUIRES_PLAYER_HAS_DARK_AGE'),

-- 		('SUK_BOOK_OF_SETTLEMENTS_FOREIGN_CONTINENT',						'REQUIRES_CITY_IS_NOT_OWNER_CAPITAL_CONTINENT');
-- ----------------------------------------------------------------------------------------------------------------------------
-- -- REQUIREMENTS -- Cities within 2 tiles of a Natural Wonder
-- ----------------------------------------------------------------------------------------------------------------------------
-- -- RequirementSets
-- -------------------------------------
-- INSERT INTO RequirementSets
-- 		(RequirementSetId,													RequirementSetType)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_DARK_AGE',			'REQUIREMENTSET_TEST_ALL'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER',					'REQUIREMENTSET_TEST_ANY');
-- -------------------------------------
-- -- RequirementSetRequirements
-- -------------------------------------
-- INSERT INTO RequirementSetRequirements
-- 		(RequirementSetId,													RequirementId)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_DARK_AGE',			'REQUIRES_PLAYER_HAS_DARK_AGE'),
-- 		('SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_DARK_AGE',			'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_REQUIREMENT');

-- INSERT INTO RequirementSetRequirements
-- 		(RequirementSetId,												RequirementId)
-- SELECT	'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER',				'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType
-- FROM Features WHERE NaturalWonder = 1;		
-- -- -------------------------------------
-- -- -- Requirements
-- -- -------------------------------------
-- INSERT INTO Requirements
-- 		(RequirementId, 										RequirementType)
-- SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType,				'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'
-- FROM Features WHERE NaturalWonder = 1;

-- INSERT INTO Requirements
-- 		(RequirementId, 															RequirementType)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_REQUIREMENT',				'REQUIREMENT_REQUIREMENTSET_IS_MET');
-- -------------------------------------
-- -- RequirementArguments
-- -------------------------------------
-- INSERT INTO RequirementArguments
-- 		(RequirementId, 									Name,					Value)
-- SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType, 			'FeatureType',			FeatureType
-- FROM Features WHERE NaturalWonder = 1;

-- INSERT INTO RequirementArguments
-- 		(RequirementId, 									Name,					Value)
-- SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType, 			'MinRange',				1
-- FROM Features WHERE NaturalWonder = 1;

-- INSERT INTO RequirementArguments
-- 		(RequirementId, 									Name,					Value)
-- SELECT	'SUK_BOOK_OF_SETTLEMENTS_' || FeatureType, 			'MaxRange',				2
-- FROM Features WHERE NaturalWonder = 1;

-- INSERT INTO RequirementArguments
-- 		(RequirementId, 															Name,						Value)
-- VALUES	('SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER_REQUIREMENT', 				'RequirementSetId',			'SUK_BOOK_OF_SETTLEMENTS_2_PLOTS_NATURAL_WONDER');