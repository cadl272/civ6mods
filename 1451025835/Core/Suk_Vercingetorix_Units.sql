--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('UNIT_SUK_OATHSWORN',			'KIND_UNIT');		
--------------------------------------------------------------------------------------------------------------------------
-- Units
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Units	
		(
			UnitType,
			Name,
			Description,
			TraitType,

			BaseMoves,
			Cost,
			Maintenance,
			Combat,
			BaseSightRange,
			ZoneOfControl,

			AdvisorType,
			Domain,
			PromotionClass,
			FormationClass,

			MandatoryObsoleteTech,
			PrereqTech,
			PurchaseYield
		)
SELECT  
			'UNIT_SUK_OATHSWORN',
			'LOC_UNIT_SUK_OATHSWORN_NAME',
			'LOC_UNIT_SUK_OATHSWORN_DESCRIPTION',
			'TRAIT_CIVILIZATION_UNIT_SUK_OATHSWORN',

			BaseMoves,
			Cost,
			Maintenance,
			Combat,
			BaseSightRange,
			ZoneOfControl,

			AdvisorType,
			Domain,
			PromotionClass,
			FormationClass,

			MandatoryObsoleteTech,
			PrereqTech,
			PurchaseYield
			
FROM Units WHERE UnitType = 'UNIT_SWORDSMAN';
-----------------------------------------------------------------------------------
-- UnitReplaces
-----------------------------------------------------------------------------------
INSERT INTO UnitReplaces
			(CivUniqueUnitType,					ReplacesUnitType)
VALUES 		('UNIT_SUK_OATHSWORN',				'UNIT_SWORDSMAN');
-----------------------------------------------------------------------------------
-- UnitUpgrades
-----------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
			(Unit,								UpgradeUnit)
SELECT 		'UNIT_SUK_OATHSWORN',				UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_SWORDSMAN';
-----------------------------------------------------------------------------------
-- UnitAiInfos
-----------------------------------------------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_SUK_OATHSWORN',				AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_SWORDSMAN';
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,							Tag)
SELECT 		'UNIT_SUK_OATHSWORN',			Tag
FROM TypeTags WHERE Type = 'UNIT_SWORDSMAN';

INSERT OR REPLACE INTO TypeTags
			(Type,										Tag)
VALUES		('UNIT_SUK_OATHSWORN',						'CLASS_SUK_OATHSWORN'),
			('ABILITY_SUK_OATHSWORN',	'CLASS_SUK_OATHSWORN');
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,								Vocabulary)
VALUES		('CLASS_SUK_OATHSWORN',				'ABILITY_CLASS');			
--==========================================================================================================================
-- Abilities
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('ABILITY_SUK_OATHSWORN',					'KIND_ABILITY');
-------------------------------------
-- UnitAbilities
-------------------------------------					
INSERT INTO UnitAbilities			
		(UnitAbilityType,							Name,									Description)
VALUES	('ABILITY_SUK_OATHSWORN',					'LOC_ABILITY_SUK_OATHSWORN_NAME',		'LOC_ABILITY_SUK_OATHSWORN_DESCRIPTION');
-------------------------------------
-- UnitAbilityModifiers
-------------------------------------
INSERT INTO UnitAbilityModifiers	
		(UnitAbilityType,									ModifierId)
VALUES	('ABILITY_SUK_OATHSWORN',							'SUK_OATHSWORN_COMBAT_BONUS_FOREST_AND_HILLS');
--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------					
INSERT INTO Modifiers			
		(ModifierId,										ModifierType,									SubjectRequirementSetId)
VALUES	('SUK_OATHSWORN_COMBAT_BONUS_FOREST_AND_HILLS',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'SUK_OATHSWORN_COMBAT_BONUS_TERRAIN_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('SUK_OATHSWORN_COMBAT_BONUS_FOREST_AND_HILLS',			'Amount',		5);
-------------------------------------
-- ModifierStrings
-------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,											Context,			'Text')
VALUES	('SUK_OATHSWORN_COMBAT_BONUS_FOREST_AND_HILLS',			'Preview',			'{LOC_ABILITY_SUK_OATHSWORN_COMBAT_BONUS_DESCRIPTION} {LOC_ABILITY_DESCRIPTOR_PREVIEW_TEXT}');
--======================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('SUK_OATHSWORN_COMBAT_BONUS_TERRAIN_REQUIREMENTS',		'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('SUK_OATHSWORN_COMBAT_BONUS_TERRAIN_REQUIREMENTS',		'PLOT_IS_HILLS_REQUIREMENT'),
		('SUK_OATHSWORN_COMBAT_BONUS_TERRAIN_REQUIREMENTS',		'PLOT_IS_FOREST_REQUIREMENT');
--==========================================================================================================================
--==========================================================================================================================