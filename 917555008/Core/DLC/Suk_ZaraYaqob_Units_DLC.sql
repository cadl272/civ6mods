--==========================================================================================================================
-- OROMO CAVALRY
--==========================================================================================================================
	-- Traits
	--------------------------------------------------------------------------
		-- Remove From Ethiopia
		-------------------------------------
			DELETE FROM CivilizationTraits
			WHERE TraitType = 'TRAIT_CIVILIZATION_UNIT_ETHIOPIAN_OROMO_CAVALRY';
		-------------------------------------
		-- Add to Menelik II
		-------------------------------------
			INSERT INTO LeaderTraits
					(LeaderType,					TraitType)
			VALUES	('LEADER_MENELIK',				'TRAIT_CIVILIZATION_UNIT_ETHIOPIAN_OROMO_CAVALRY');
	--------------------------------------------------------------------------
	-- Units
	--------------------------------------------------------------------------
		-- Units
		-------------------------------------
			UPDATE Units
			SET
				Description = 'LOC_UNIT_ETHIOPIAN_OROMO_CAVALRY_DESCRIPTION_SUK_REWORK',

				Cost				= (SELECT Cost				FROM Units WHERE UnitType = 'UNIT_CAVALRY'),
				Maintenance			= (SELECT Maintenance		FROM Units WHERE UnitType = 'UNIT_CAVALRY'),
				StrategicResource	= (SELECT StrategicResource	FROM Units WHERE UnitType = 'UNIT_CAVALRY'),

				BaseMoves			= (SELECT BaseMoves			FROM Units WHERE UnitType = 'UNIT_CAVALRY'),
				BaseSightRange		= (SELECT BaseSightRange	FROM Units WHERE UnitType = 'UNIT_CAVALRY') + 1,
				Combat				= (SELECT Combat			FROM Units WHERE UnitType = 'UNIT_CAVALRY') + 2,

				PrereqCivic				= (SELECT PrereqCivic				FROM Units WHERE UnitType = 'UNIT_CAVALRY'),
				PrereqTech				= (SELECT PrereqTech				FROM Units WHERE UnitType = 'UNIT_CAVALRY'),
				MandatoryObsoleteCivic	= (SELECT MandatoryObsoleteCivic	FROM Units WHERE UnitType = 'UNIT_CAVALRY'),
				MandatoryObsoleteTech	= (SELECT MandatoryObsoleteTech		FROM Units WHERE UnitType = 'UNIT_CAVALRY')
			WHERE UnitType = 'UNIT_ETHIOPIAN_OROMO_CAVALRY';
		-------------------------------------
		-- UnitReplaces
		-------------------------------------
			INSERT OR REPLACE INTO UnitReplaces
					(CivUniqueUnitType,					ReplacesUnitType)
			VALUES 	('UNIT_ETHIOPIAN_OROMO_CAVALRY',	'UNIT_CAVALRY');
		-------------------------------------
		-- UnitUpgrades
		-------------------------------------
			INSERT OR REPLACE INTO UnitUpgrades
						(Unit,								UpgradeUnit)
			SELECT 		'UNIT_ETHIOPIAN_OROMO_CAVALRY',		UpgradeUnit
			FROM UnitUpgrades WHERE Unit = 'UNIT_CAVALRY';
--==========================================================================================================================
-- SHOTELAI
--==========================================================================================================================
	-- Traits
	--------------------------------------------------------------------------
		-- Types
		-------------------------------------
		INSERT INTO Types
				(Type,										Kind)
		VALUES	('TRAIT_CIVILIZATION_UNIT_SUK_SHOTELAI',	'KIND_TRAIT');
		-------------------------------------
		-- Traits
		-------------------------------------
		INSERT INTO Traits
				(TraitType,									Name,												Description)
		VALUES	('TRAIT_CIVILIZATION_UNIT_SUK_SHOTELAI',	'LOC_TRAIT_CIVILIZATION_UNIT_SUK_SHOTELAI_NAME',	NULL);
		-------------------------------------
		-- CivilizationTraits
		-------------------------------------
		INSERT INTO CivilizationTraits
				(TraitType,									CivilizationType)
		VALUES	('TRAIT_CIVILIZATION_UNIT_SUK_SHOTELAI',	'CIVILIZATION_ETHIOPIA');
	--------------------------------------------------------------------------
	-- Units
	--------------------------------------------------------------------------
		-- Types
		-------------------------------------
			INSERT INTO Types
					(Type,							Kind)
			VALUES	('UNIT_SUK_SHOTELAI',			'KIND_UNIT');
		-------------------------------------
		-- Units
		-------------------------------------
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
		-------------------------------------
		-- UnitReplaces
		-------------------------------------
			INSERT INTO UnitReplaces
						(CivUniqueUnitType,					ReplacesUnitType)
			VALUES 		('UNIT_SUK_SHOTELAI',				'UNIT_PIKEMAN');
		-------------------------------------
		-- UnitUpgrades
		-------------------------------------
			INSERT INTO UnitUpgrades
						(Unit,								UpgradeUnit)
			SELECT 		'UNIT_SUK_SHOTELAI',				UpgradeUnit
			FROM UnitUpgrades WHERE Unit = 'UNIT_PIKEMAN';
		-------------------------------------
		-- UnitAiInfos
		-------------------------------------
			INSERT INTO UnitAiInfos
						(UnitType,							AiType)
			SELECT 		'UNIT_SUK_SHOTELAI',				AiType
			FROM UnitAiInfos WHERE UnitType = 'UNIT_PIKEMAN';
		-------------------------------------
		-- TypeTags
		-------------------------------------
			INSERT INTO TypeTags
						(Type,							Tag)
			SELECT 		'UNIT_SUK_SHOTELAI',			Tag
			FROM TypeTags WHERE Type = 'UNIT_PIKEMAN';

			INSERT OR REPLACE INTO TypeTags
						(Type,									Tag)
			VALUES		('UNIT_SUK_SHOTELAI',					'CLASS_SUK_SHOTELAI'),
						('ABILITY_SUK_SHOTELAI_MELEE',			'CLASS_SUK_SHOTELAI'),
						('ABILITY_SUK_SHOTELAI_XP',				'CLASS_SUK_SHOTELAI');
		-------------------------------------
		-- Tags
		-------------------------------------
			INSERT INTO Tags
						(Tag,								Vocabulary)
			VALUES		('CLASS_SUK_SHOTELAI',				'ABILITY_CLASS');
--==========================================================================================================================
-- UNIT ABILITIES
--==========================================================================================================================
	-- Types
	-------------------------------------
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
--==========================================================================================================================