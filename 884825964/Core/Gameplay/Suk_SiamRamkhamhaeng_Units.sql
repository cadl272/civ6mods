--==========================================================================================================================
-- Units
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('UNIT_SUK_SIAM_CHANGSUEK',			'KIND_UNIT');
-----------------------------------------------------------------------------------
-- Units
-----------------------------------------------------------------------------------
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
			'UNIT_SUK_SIAM_CHANGSUEK',
			'LOC_UNIT_SUK_SIAM_CHANGSUEK_NAME',
			'LOC_UNIT_SUK_SIAM_CHANGSUEK_DESCRIPTION',

			Cost*1.25,
			Maintenance,
			StrategicResource,
			PurchaseYield,

			BaseMoves-1,
			BaseSightRange,
			ZoneOfControl,

			Combat+5,
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
			'TRAIT_CIVILIZATION_UNIT_SUK_SIAM_CHANGSUEK'

FROM Units WHERE UnitType = 'UNIT_KNIGHT';
-----------------------------------------------------------------------------------
-- UnitUpgrades
-----------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
			(Unit,								UpgradeUnit)
SELECT 		'UNIT_SUK_SIAM_CHANGSUEK',			UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_KNIGHT';
-----------------------------------------------------------------------------------
-- UnitAiInfos
-----------------------------------------------------------------------------------
INSERT INTO UnitAiInfos
			(UnitType,							AiType)
SELECT 		'UNIT_SUK_SIAM_CHANGSUEK',			AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_KNIGHT';
-----------------------------------------------------------------------------------
-- UnitReplaces
-----------------------------------------------------------------------------------
INSERT INTO UnitReplaces
			(CivUniqueUnitType,					ReplacesUnitType)
VALUES		('UNIT_SUK_SIAM_CHANGSUEK',			'UNIT_KNIGHT');
-----------------------------------------------------------------------------------
-- TypeTags
-----------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,								Tag)
SELECT 		'UNIT_SUK_SIAM_CHANGSUEK',			Tag
FROM TypeTags WHERE Type = 'UNIT_KNIGHT';

INSERT INTO TypeTags
			(Type,								Tag)
VALUES		('UNIT_SUK_SIAM_CHANGSUEK',			'CLASS_SUK_SIAM_CHANGSUEK'),
			('ABILITY_SUK_CHANGSUEK',			'CLASS_SUK_SIAM_CHANGSUEK');
-----------------------------------------------------------------------------------
-- Tags
-----------------------------------------------------------------------------------
INSERT INTO Tags
			(Tag,								Vocabulary)
VALUES		('CLASS_SUK_SIAM_CHANGSUEK',		'ABILITY_CLASS');
--==========================================================================================================================
-- Abilities
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('ABILITY_SUK_CHANGSUEK',				'KIND_ABILITY');
-------------------------------------
-- UnitAbilities
-------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description)
VALUES	('ABILITY_SUK_CHANGSUEK',		'LOC_ABILITY_SUK_CHANGSUEK_NAME',		'LOC_ABILITY_SUK_CHANGSUEK_DESCRIPTION');
-------------------------------------
-- UnitAbilityModifiers
-------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('ABILITY_SUK_CHANGSUEK',				'ABILITY_SUK_CHANGSUEK_ATTACH_MODIFIER');
--==========================================================================================================================
-- MODIFIERS
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES	('ABILITY_SUK_CHANGSUEK_ATTACH_MODIFIER',			'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',					'SUK_FRIENDLY_CHANGSUEK_ADJACENT'),
		('ABILITY_SUK_CHANGSUEK_MODIFIER',					'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER',		null);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('ABILITY_SUK_CHANGSUEK_ATTACH_MODIFIER',		'ModifierId',		'ABILITY_SUK_CHANGSUEK_MODIFIER'),
		('ABILITY_SUK_CHANGSUEK_MODIFIER',				'Amount',			100);
--==========================================================================================================================
-- Requirements
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('SUK_FRIENDLY_CHANGSUEK_ADJACENT',							'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_FRIENDLY_CHANGSUEK_ADJACENT',					'SUK_REQUIRES_FRIENDLY_CHANGSUEK_ADJACENT');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 									RequirementType)
VALUES	('SUK_REQUIRES_FRIENDLY_CHANGSUEK_ADJACENT',		'REQUIREMENT_PLOT_ADJACENT_TO_OWNER');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 											Name,					Value)
VALUES	('SUK_REQUIRES_FRIENDLY_CHANGSUEK_ADJACENT', 				'MinDistance',			1),
		('SUK_REQUIRES_FRIENDLY_CHANGSUEK_ADJACENT', 				'MaxDistance',			1);
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------