--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
	INSERT INTO Types	
			(Type,							Kind)
	VALUES	('UNIT_SUK_JAHAZI',				'KIND_UNIT');		
--------------------------------------------------------------------------------------------------------------------------
-- Units
--------------------------------------------------------------------------------------------------------------------------	
	WITH CTE(IsGatheringStorm) AS (SELECT EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION"))
	INSERT INTO Units	

			(
				UnitType,
				Name,
				Description,

				TraitType,
				PrereqTech,

				Cost,
				CostProgressionModel,
				CostProgressionParam1,
				Maintenance,
				PurchaseYield,

				BaseMoves,
				BaseSightRange,
				ZoneOfControl,

				AdvisorType,

				Domain,
				FormationClass,
				PromotionClass
			)

	SELECT
				'UNIT_SUK_JAHAZI',
				'LOC_UNIT_SUK_JAHAZI_NAME',
				CASE
					WHEN IsGatheringStorm
					THEN 'LOC_UNIT_SUK_JAHAZI_DESCRIPTION_XP2'
					ELSE 'LOC_UNIT_SUK_JAHAZI_DESCRIPTION'
				END,

				'TRAIT_CIVILIZATION_UNIT_SUK_JAHAZI',
				'TECH_APPRENTICESHIP',

				120,
				'COST_PROGRESSION_PREVIOUS_COPIES',
				50,
				CASE
					WHEN IsGatheringStorm
					THEN 0
					ELSE 3
				END,
				PurchaseYield,

				BaseMoves,
				BaseSightRange,
				0,

				CASE
					WHEN IsGatheringStorm
					THEN 'ADVISOR_CULTURE'
					ELSE 'ADVISOR_GENERIC'
				END,

				Domain,
				'FORMATION_CLASS_SUPPORT',
				'PROMOTION_CLASS_SUPPORT'

	FROM Units, CTE WHERE UnitType = 'UNIT_CARAVEL';
	--------------------------------------------------------------------------
	-- UnitAiInfos
	--------------------------------------------------------------------------
		INSERT INTO UnitAiInfos
					(UnitType,						AiType)
		VALUES 		('UNIT_SUK_JAHAZI',				'UNITTYPE_CIVILIAN'),
					('UNIT_SUK_JAHAZI',				'UNITAI_BUILD');
	--------------------------------------------------------------------------
	-- TypeTags
	--------------------------------------------------------------------------
		INSERT OR REPLACE INTO TypeTags
					(Type,										Tag)
		VALUES		('UNIT_SUK_JAHAZI',							'CLASS_SUPPORT'),
					('UNIT_SUK_JAHAZI',							'CLASS_SUK_JAHAZI'),
					('ABILITY_SUK_JAHAZI_ADJACENT_HEAL',		'CLASS_SUK_JAHAZI'),
					('ABILITY_SUK_JAHAZI_YIELD_BOOST',			'CLASS_SUK_JAHAZI');
	----------------------------------------------------------------------------------------------------------------------------
	-- Tags
	----------------------------------------------------------------------------------------------------------------------------
	INSERT INTO Tags
				(Tag,								Vocabulary)
	VALUES		('CLASS_SUK_JAHAZI',				'ABILITY_CLASS');		
--==========================================================================================================================
-- Abilities
--==========================================================================================================================
	-- Types
	--------------------------------------------------------------------------	
		INSERT INTO Types	
				(Type,									Kind)
		VALUES	('ABILITY_SUK_JAHAZI_ADJACENT_HEAL',	'KIND_ABILITY'),
				('ABILITY_SUK_JAHAZI_YIELD_BOOST',		'KIND_ABILITY');
	--------------------------------------------------------------------------
	-- UnitAbilities
	--------------------------------------------------------------------------					
		INSERT INTO UnitAbilities			
			(
				UnitAbilityType,
				Name,
				Description
			)
			VALUES
			(
				'ABILITY_SUK_JAHAZI_ADJACENT_HEAL',
				'LOC_ABILITY_SUK_JAHAZI_ADJACENT_HEAL_NAME',
				'LOC_ABILITY_SUK_JAHAZI_ADJACENT_HEAL_DESCRIPTION'
			),
			(
				'ABILITY_SUK_JAHAZI_YIELD_BOOST',
				'LOC_ABILITY_SUK_JAHAZI_YIELD_BOOST_NAME',
				CASE
					WHEN EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION")
					THEN 'LOC_ABILITY_SUK_JAHAZI_YIELD_BOOST_DESCRIPTION_XP2'
					ELSE 'LOC_ABILITY_SUK_JAHAZI_YIELD_BOOST_DESCRIPTION'
				END
			);
--==========================================================================================================================
-- If the Jahazi is in friendly territory, your Naval units within 2 tiles heal +20 HP per turn.
--==========================================================================================================================
	-- MODIFIERS
	------------------------------------------------------------------------------------------------------------------------
		-- UnitAbilityModifiers
		-------------------------------------
			INSERT INTO UnitAbilityModifiers	
					(UnitAbilityType,									ModifierId)
			VALUES	('ABILITY_SUK_JAHAZI_ADJACENT_HEAL',				'SUK_JAHAZI_ADJACENT_HEAL');
		-------------------------------------	
		-- Modifiers
		-------------------------------------	
			INSERT INTO Modifiers	
				(
					ModifierId,
					ModifierType,
					OwnerRequirementSetId,
					SubjectRequirementSetId
				)
			VALUES	
				(
					'SUK_JAHAZI_ADJACENT_HEAL',
					'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN',
					'SUK_JAHAZI_FRIENDLY_TERRITORY',
					'SUK_JAHAZI_FRIENDLY_ADJACENT_NAVAL_UNIT'
				);
		-------------------------------------	
		-- ModifierArguments		
		-------------------------------------		
			INSERT INTO ModifierArguments		
					(ModifierId,						Name,			Value)
			VALUES	('SUK_JAHAZI_ADJACENT_HEAL',		'Amount',		20),
					('SUK_JAHAZI_ADJACENT_HEAL',		'Type',			'ALL');
	------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		--------------------------------------------------------------------------
			INSERT INTO RequirementSets
					(RequirementSetId,									RequirementSetType)
			VALUES	('SUK_JAHAZI_FRIENDLY_TERRITORY',					'REQUIREMENTSET_TEST_ALL'),
					('SUK_JAHAZI_FRIENDLY_ADJACENT_NAVAL_UNIT',			'REQUIREMENTSET_TEST_ALL');
		--------------------------------------------------------------------------
		-- RequirementSetRequirements
		--------------------------------------------------------------------------
			INSERT INTO RequirementSetRequirements
					(RequirementSetId,									RequirementId)
			VALUES	('SUK_JAHAZI_FRIENDLY_TERRITORY',					'UNIT_IN_OWNER_TERRITORY_REQUIREMENT'),

					('SUK_JAHAZI_FRIENDLY_ADJACENT_NAVAL_UNIT',			'AOE_REQUIRES_OWNER_ADJACENCY'),
					('SUK_JAHAZI_FRIENDLY_ADJACENT_NAVAL_UNIT',			'REQUIRES_SEA_DOMAIN');
--==========================================================================================================================
-- Provides +1 [ICON_Food] Food and +1 [ICON_Production] Production to adjacent water tiles. (No GS)
--==========================================================================================================================
	-- MODIFIERS
	------------------------------------------------------------------------------------------------------------------------
		-- UnitAbilityModifiers
		-------------------------------------
			INSERT INTO UnitAbilityModifiers	
				(UnitAbilityType,						ModifierId)
			SELECT * FROM (VALUES
				('ABILITY_SUK_JAHAZI_YIELD_BOOST',		'ABILITY_SUK_JAHAZI_FOOD_BOOST'),
				('ABILITY_SUK_JAHAZI_YIELD_BOOST',		'ABILITY_SUK_JAHAZI_PROD_BOOST')
			)
			WHERE NOT EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		-------------------------------------	
		-- Modifiers
		-------------------------------------	
			INSERT INTO Modifiers	
				(
					ModifierId,
					ModifierType,
					OwnerRequirementSetId,
					SubjectRequirementSetId
				)
			SELECT * FROM (VALUES
				(
					'ABILITY_SUK_JAHAZI_FOOD_BOOST',
					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
					NULL,
					'SUK_JAHAZI_ADJACENT_WATER_PLOT'
				),
				(
					'ABILITY_SUK_JAHAZI_PROD_BOOST',
					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
					NULL,
					'SUK_JAHAZI_ADJACENT_WATER_PLOT'
				)
			)
			WHERE NOT EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		-------------------------------------	
		-- ModifierArguments		
		-------------------------------------		
			INSERT INTO ModifierArguments		
					(ModifierId,							Name,			Value)
			SELECT * FROM (VALUES
					('ABILITY_SUK_JAHAZI_FOOD_BOOST',		'YieldType',	'YIELD_FOOD'),
					('ABILITY_SUK_JAHAZI_FOOD_BOOST',		'Amount',		1),

					('ABILITY_SUK_JAHAZI_PROD_BOOST',		'YieldType',	'YIELD_PRODUCTION'),
					('ABILITY_SUK_JAHAZI_PROD_BOOST',		'Amount',		1)
			)
			WHERE NOT EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
	------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		--------------------------------------------------------------------------
			INSERT INTO RequirementSets
					(RequirementSetId,							RequirementSetType)
			VALUES	('SUK_JAHAZI_ADJACENT_WATER_PLOT',			'REQUIREMENTSET_TEST_ALL');
		--------------------------------------------------------------------------
		-- RequirementSetRequirements
		--------------------------------------------------------------------------
			INSERT INTO RequirementSetRequirements
					(RequirementSetId,							RequirementId)
			VALUES	('SUK_JAHAZI_ADJACENT_WATER_PLOT',			'REQUIRES_SUK_JAHAZI_ADJACENT_PLOT'),
					('SUK_JAHAZI_ADJACENT_WATER_PLOT',			'REQUIRES_SUK_JAHAZI_WATER_PLOT');
		--------------------------------------------------------------------------
		-- Requirements
		--------------------------------------------------------------------------
			INSERT INTO Requirements
					(RequirementId, 							RequirementType)
			VALUES	('REQUIRES_SUK_JAHAZI_ADJACENT_PLOT',		'REQUIREMENT_PLOT_ADJACENT_TO_OWNER'),
					('REQUIRES_SUK_JAHAZI_WATER_PLOT',			'REQUIREMENT_PLOT_TERRAIN_CLASS_MATCHES');
		--------------------------------------------------------------------------
		-- RequirementArguments
		--------------------------------------------------------------------------
			INSERT INTO RequirementArguments
					(RequirementId, 							Name,					Value)
			VALUES	('REQUIRES_SUK_JAHAZI_ADJACENT_PLOT', 		'MinDistance',			0),
					('REQUIRES_SUK_JAHAZI_ADJACENT_PLOT', 		'MaxDistance',			1),

					('REQUIRES_SUK_JAHAZI_WATER_PLOT', 			'TerrainClass',			'TERRAIN_CLASS_WATER');
--==========================================================================================================================
-- If on a water tile adjacent to a Jahazi, Features provide +2 [ICON_Culture] Culture
-- Fishing Boats provide +2 [ICON_Gold] Gold.
-- Features on water tiles adjacent to a Jahazi provide +2 [ICON_Tourism] Tourism after researching Conservation.
--==========================================================================================================================
	-- MODIFIERS
	------------------------------------------------------------------------------------------------------------------------
		-- Types
		-------------------------------------
			INSERT OR REPLACE INTO Types
					(Type,											Kind)
			VALUES	('MODIFIER_SUK_PLAYER_PLOTS_ATTACH_MODIFIER',	'KIND_MODIFIER');
		-------------------------------------
		-- DynamicModifiers
		-------------------------------------
			INSERT OR REPLACE INTO DynamicModifiers
				(
					ModifierType,
					CollectionType,
					EffectType
				)
			VALUES
				(
					'MODIFIER_SUK_PLAYER_PLOTS_ATTACH_MODIFIER',
					'COLLECTION_PLAYER_PLOT_YIELDS',
					'EFFECT_ATTACH_MODIFIER'
				);
		-------------------------------------
		-- TraitModifiers
		-------------------------------------
			INSERT INTO TraitModifiers	
				(TraitType,								ModifierId)
			SELECT * FROM (VALUES
				('TRAIT_CIVILIZATION_UNIT_SUK_JAHAZI',	'SUK_JAHAZI_CULT_BOOST'),
				('TRAIT_CIVILIZATION_UNIT_SUK_JAHAZI',	'SUK_JAHAZI_GOLD_BOOST'),
				('TRAIT_CIVILIZATION_UNIT_SUK_JAHAZI',	'SUK_JAHAZI_TOURISM_BOOST')
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		-------------------------------------	
		-- Modifiers
		-------------------------------------	
			INSERT INTO Modifiers	
				(
					ModifierId,
					ModifierType,
					OwnerRequirementSetId,
					SubjectRequirementSetId
				)
			SELECT * FROM (VALUES
				(
					'SUK_JAHAZI_GOLD_BOOST',
					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
					NULL,
					'SUK_IS_FISHING_BOAT_WITH_JAHAZI_ADJACENT'
				),
				(
					'SUK_JAHAZI_CULT_BOOST',
					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
					NULL,
					'SUK_IS_WATER_FEATURE_WITH_JAHAZI_ADJACENT'
				),
				(
					'SUK_JAHAZI_TOURISM_BOOST',
					'MODIFIER_SUK_PLAYER_PLOTS_ATTACH_MODIFIER',
					'SUK_JAHAZI_PLAYER_HAS_CONSERVATION',
					'SUK_IS_WATER_FEATURE_WITH_JAHAZI_ADJACENT'
				),
				(
					'SUK_JAHAZI_TOURISM_BOOST_MODIFIER',
					'MODIFIER_CITY_DISTRICTS_ADJUST_TOURISM_CHANGE',
					NULL,
					'SUK_JAHAZI_DISTRICT_IS_CITY_CENTER'
				)
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		-------------------------------------	
		-- ModifierArguments		
		-------------------------------------		
			INSERT INTO ModifierArguments		
					(ModifierId,							Name,			Value)
			SELECT * FROM (VALUES
					('SUK_JAHAZI_GOLD_BOOST',				'YieldType',	'YIELD_GOLD'),
					('SUK_JAHAZI_GOLD_BOOST',				'Amount',		2),

					('SUK_JAHAZI_CULT_BOOST',				'YieldType',	'YIELD_CULTURE'),
					('SUK_JAHAZI_CULT_BOOST',				'Amount',		2),

					('SUK_JAHAZI_TOURISM_BOOST',			'ModifierId',	'SUK_JAHAZI_TOURISM_BOOST_MODIFIER'),
					('SUK_JAHAZI_TOURISM_BOOST_MODIFIER',	'Amount',		2)
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
	------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		--------------------------------------------------------------------------
			INSERT INTO RequirementSets
					(RequirementSetId,									RequirementSetType)
			SELECT * FROM (VALUES
					('SUK_IS_FISHING_BOAT_WITH_JAHAZI_ADJACENT',		'REQUIREMENTSET_TEST_ALL'),
					('SUK_IS_WATER_FEATURE_WITH_JAHAZI_ADJACENT',		'REQUIREMENTSET_TEST_ALL'),
					('SUK_JAHAZI_PLAYER_HAS_CONSERVATION',				'REQUIREMENTSET_TEST_ALL'),
					('SUK_JAHAZI_DISTRICT_IS_CITY_CENTER',				'REQUIREMENTSET_TEST_ALL')
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		--------------------------------------------------------------------------
		-- RequirementSetRequirements
		--------------------------------------------------------------------------
			INSERT INTO RequirementSetRequirements
					(RequirementSetId,									RequirementId)
			SELECT * FROM (VALUES
					('SUK_IS_FISHING_BOAT_WITH_JAHAZI_ADJACENT',		'REQUIRES_SUK_JAHAZI_IS_ADJACENT'),
					('SUK_IS_FISHING_BOAT_WITH_JAHAZI_ADJACENT',		'REQUIRES_PLOT_HAS_FISHINGBOATS'),

					('SUK_IS_WATER_FEATURE_WITH_JAHAZI_ADJACENT',		'REQUIRES_SUK_JAHAZI_IS_ADJACENT'),
					('SUK_IS_WATER_FEATURE_WITH_JAHAZI_ADJACENT',		'REQUIRES_SUK_JAHAZI_PLOT_HAS_ANY_FEATURE'),
					('SUK_IS_WATER_FEATURE_WITH_JAHAZI_ADJACENT',		'REQUIRES_SUK_JAHAZI_WATER_PLOT'),

					('SUK_JAHAZI_PLAYER_HAS_CONSERVATION',				'REQUIRES_PLAYER_HAS_CONSERVATION'),

					('SUK_JAHAZI_DISTRICT_IS_CITY_CENTER',				'REQUIRES_DISTRICT_IS_CITY_CENTER')
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		--------------------------------------------------------------------------
		-- Requirements
		--------------------------------------------------------------------------
			INSERT INTO Requirements
					(RequirementId, 									RequirementType)
			SELECT * FROM (VALUES
					('REQUIRES_SUK_JAHAZI_IS_ADJACENT',					'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES'),
					('REQUIRES_SUK_JAHAZI_PLOT_HAS_ANY_FEATURE',		'REQUIREMENT_PLOT_HAS_ANY_FEATURE')
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
		--------------------------------------------------------------------------
		-- RequirementArguments
		--------------------------------------------------------------------------
			INSERT INTO RequirementArguments
					(RequirementId, 							Name,					Value)
			SELECT * FROM (VALUES
					('REQUIRES_SUK_JAHAZI_IS_ADJACENT', 		'Tag',					'CLASS_SUK_JAHAZI')
			)
			WHERE EXISTS (SELECT * FROM Requirements WHERE RequirementId = "REQUIRES_PLAYER_HAS_CONSERVATION");
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Suk_Swahili_Jahazi');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,							LeaderType,										System)
VALUES	('Suk_Swahili_Jahazi',				'TRAIT_CIVILIZATION_UNIT_SUK_JAHAZI',			'Units');
-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(
			ListType,
			Item,
			Favored,
			Value
		)
VALUES	('Suk_Swahili_Jahazi',	'UNIT_SUK_JAHAZI',		1,		1);
--==========================================================================================================================
--==========================================================================================================================