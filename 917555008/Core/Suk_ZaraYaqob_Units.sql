--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('UNIT_SUK_SHOTELAI',			'KIND_UNIT');		
--------------------------------------------------------------------------------------------------------------------------
-- Units
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Units
		(
			UnitType,
			Name, 
			Description,

			Cost,
			Maintenance,
			StrategicResource,
			PurchaseYield,

			BaseMoves,
			BaseSightRange,
			ZoneOfControl,

			Combat,
			RangedCombat,
			Range,

			Domain,
			PromotionClass,
			FormationClass,
			AdvisorType,

			PrereqTech,
			MandatoryObsoleteTech,
			PrereqCivic,
			MandatoryObsoleteCivic,
			TraitType
		)
SELECT			
			'UNIT_SUK_SHOTELAI',
			'LOC_UNIT_SUK_SHOTELAI_NAME', 
			'LOC_UNIT_SUK_SHOTELAI_DESCRIPTION',

			Cost,
			Maintenance,
			StrategicResource,
			PurchaseYield,

			BaseMoves,
			BaseSightRange,
			ZoneOfControl,

			Combat,
			RangedCombat,
			Range,

			Domain,
			PromotionClass,
			FormationClass,
			AdvisorType,

			PrereqTech,
			MandatoryObsoleteTech,
			PrereqCivic,
			MandatoryObsoleteCivic,
			'TRAIT_CIVILIZATION_UNIT_SUK_SHOTELAI'

FROM Units WHERE UnitType = 'UNIT_PIKEMAN';
-----------------------------------------------------------------------------------
-- UnitReplaces
-----------------------------------------------------------------------------------
INSERT INTO UnitReplaces
			(CivUniqueUnitType,					ReplacesUnitType)
VALUES 		('UNIT_SUK_SHOTELAI',				'UNIT_PIKEMAN');
-----------------------------------------------------------------------------------
-- UnitUpgrades
-----------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
			(Unit,								UpgradeUnit)
SELECT 		'UNIT_SUK_SHOTELAI',				UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_PIKEMAN';
-----------------------------------------------------------------------------------
-- UnitAiInfos
-----------------------------------------------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_SUK_SHOTELAI',				AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_PIKEMAN';
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,							Tag)
SELECT 		'UNIT_SUK_SHOTELAI',			Tag
FROM TypeTags WHERE Type = 'UNIT_PIKEMAN';

INSERT OR REPLACE INTO TypeTags
			(Type,									Tag)
VALUES		('UNIT_SUK_SHOTELAI',					'CLASS_SUK_SHOTELAI'),
			('ABILITY_SUK_SHOTELAI_MELEE',			'CLASS_SUK_SHOTELAI'),
			('ABILITY_SUK_SHOTELAI_XP',				'CLASS_SUK_SHOTELAI');
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,								Vocabulary)
VALUES		('CLASS_SUK_SHOTELAI',				'ABILITY_CLASS');		
--==========================================================================================================================
-- UNIT ABILITIES
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_SUK_SHOTELAI_MELEE',			'KIND_ABILITY'),
		('ABILITY_SUK_SHOTELAI_XP',				'KIND_ABILITY');
-------------------------------------
-- UnitAbilities
-------------------------------------					
INSERT INTO UnitAbilities			
		(UnitAbilityType,					Name,										Description)
VALUES	('ABILITY_SUK_SHOTELAI_MELEE',		'LOC_ABILITY_SUK_SHOTELAI_MELEE_NAME',		'LOC_ABILITY_SUK_SHOTELAI_MELEE_DESCRIPTION'),
		('ABILITY_SUK_SHOTELAI_XP',			'LOC_ABILITY_SUK_SHOTELAI_XP_NAME',			'LOC_ABILITY_SUK_SHOTELAI_XP_DESCRIPTION');
-------------------------------------
-- UnitAbilityModifiers
-------------------------------------
INSERT INTO UnitAbilityModifiers	
		(UnitAbilityType,						ModifierId)
VALUES	('ABILITY_SUK_SHOTELAI_MELEE',			'ABILITY_SUK_SHOTELAI_MELEE_MODIFIER');

		-- ('ABILITY_SUK_SHOTELAI_XP',				'ABILITY_SUK_SHOTELAI_XP_MODIFIER'),
		-- ('ABILITY_SUK_SHOTELAI_XP',				'ABILITY_SUK_SHOTELAI_XP_CAPITAL_MODIFIER');
--==========================================================================================================================
-- +5 [ICON_Strength] Combat Strength against melee units.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
--------------------------------------------------------------------
-- Modifiers
-------------------------------------					
INSERT INTO Modifiers			
		(ModifierId,								ModifierType,								SubjectRequirementSetId)
VALUES	('ABILITY_SUK_SHOTELAI_MELEE_MODIFIER',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'SUK_SHOTELAI_MELEE_OPPONENT');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('ABILITY_SUK_SHOTELAI_MELEE_MODIFIER',		'Amount',		5);
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,								Context,		'Text')
VALUES	('ABILITY_SUK_SHOTELAI_MELEE_MODIFIER',		'Preview',		'LOC_ABILITY_SUK_SHOTELAI_MELEE_MODIFIER_DESCRIPTION');
--------------------------------------------------------------------
-- REQUIREMENTS
--------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('SUK_SHOTELAI_MELEE_OPPONENT',			'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('SUK_SHOTELAI_MELEE_OPPONENT',			'SUK_SHOTELAI_MELEE_OPPONENT_REQUIREMENT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 								RequirementType)
VALUES	('SUK_SHOTELAI_MELEE_OPPONENT_REQUIREMENT',		'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 								Name,						Value)
VALUES	('SUK_SHOTELAI_MELEE_OPPONENT_REQUIREMENT',		'UnitPromotionClass',		'PROMOTION_CLASS_MELEE');
--==========================================================================================================================
-- +1 XP per turn while garrisoned in a City Center. +1 XP per turn for cities founded on a Hills tile. +1 XP per turn if that city is the [ICON_Capital] Capital.
----------------------------------------------------------------------------------------------------------------------------
-- MODIFIERS
--------------------------------------------------------------------
-- Modifiers
-------------------------------------					
-- INSERT INTO Modifiers			
-- 		(ModifierId,									ModifierType,									SubjectRequirementSetId)
-- VALUES	('ABILITY_SUK_SHOTELAI_XP_MODIFIER',			'MODIFIER_PLAYER_UNIT_ADJUST_GRANT_EXPERIENCE',	'SUK_SHOTELAI_IN_CITY'),
-- 		('ABILITY_SUK_SHOTELAI_XP_CAPITAL_MODIFIER',	'MODIFIER_PLAYER_UNIT_ADJUST_GRANT_EXPERIENCE',	'SUK_SHOTELAI_IN_CAPITAL');
-- -------------------------------------
-- -- ModifierArguments
-- -------------------------------------
-- INSERT INTO ModifierArguments
-- 		(ModifierId,									Name,			Value)
-- VALUES	('ABILITY_SUK_SHOTELAI_XP_MODIFIER',			'Amount',		1),
-- 		('ABILITY_SUK_SHOTELAI_XP_CAPITAL_MODIFIER',	'Amount',		2);
-- --------------------------------------------------------------------
-- -- REQUIREMENTS
-- --------------------------------------------------------------------
-- -- RequirementSets
-- -------------------------------------
-- INSERT INTO RequirementSets
-- 		(RequirementSetId,						RequirementSetType)
-- VALUES	('SUK_SHOTELAI_IN_CITY',				'REQUIREMENTSET_TEST_ALL'),
-- 		('SUK_SHOTELAI_IN_CAPITAL',				'REQUIREMENTSET_TEST_ALL');
-- -------------------------------------
-- -- RequirementSetRequirements
-- -------------------------------------
-- INSERT INTO RequirementSetRequirements
-- 		(RequirementSetId,						RequirementId)
-- VALUES	('SUK_SHOTELAI_IN_CITY',				'REQUIRES_SUK_SHOTELAI_IN_CITY'),
-- 		('SUK_SHOTELAI_IN_CITY',				'REQUIRES_TURN_STARTED'),

-- 		('SUK_SHOTELAI_IN_CAPITAL',				'REQUIRES_SUK_SHOTELAI_IN_CAPITAL'),
-- 		('SUK_SHOTELAI_IN_CAPITAL',				'REQUIRES_TURN_STARTED');
-- -------------------------------------
-- -- Requirements
-- -------------------------------------
-- INSERT INTO Requirements
-- 		(RequirementId, 						RequirementType)
-- VALUES	('REQUIRES_SUK_SHOTELAI_IN_CITY',		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
-- 		('REQUIRES_SUK_SHOTELAI_IN_CAPITAL',	'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES');
-- -------------------------------------
-- -- RequirementArguments
-- -------------------------------------
-- INSERT INTO RequirementArguments
-- 		(RequirementId, 						Name,				Value)
-- VALUES	('REQUIRES_SUK_SHOTELAI_IN_CITY',		'DistrictType',		'DISTRICT_CITY_CENTER'),
-- 		('REQUIRES_SUK_SHOTELAI_IN_CITY',		'MaxRange',			0),
-- 		('REQUIRES_SUK_SHOTELAI_IN_CITY',		'MinRange',			0),

-- 		('REQUIRES_SUK_SHOTELAI_IN_CAPITAL',	'BuildingType',		'BUILDING_PALACE'),
-- 		('REQUIRES_SUK_SHOTELAI_IN_CAPITAL',	'MaxRange',			0),
-- 		('REQUIRES_SUK_SHOTELAI_IN_CAPITAL',	'MinRange',			0);
--==========================================================================================================================
--==========================================================================================================================