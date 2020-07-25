--==========================================================================================================================
-- IMPROVEMENTS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('IMPROVEMENT_SUK_STELE',		'KIND_IMPROVEMENT');
--------------------------------------------------------------------------------------------------------------------------
-- Improvements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Improvements
	(
		ImprovementType,
		Icon,
		Name,
		Description,

		Buildable,
		Workable,

		TraitType,
		PrereqTech,
		PrereqCivic,

		YieldFromAppeal,
		YieldFromAppealPercent,

		Appeal,
		Housing,
		TilesRequired,

		PlunderType,
		PlunderAmount,

		OnePerCity
	)
VALUES
	(
		'IMPROVEMENT_SUK_STELE',
		'ICON_IMPROVEMENT_SUK_STELE',
		'LOC_IMPROVEMENT_SUK_STELE_NAME',
		'LOC_IMPROVEMENT_SUK_STELE_DLC_DESCRIPTION',

		1,
		1,

		'TRAIT_LEADER_IMPROVEMENT_SUK_STELE',
		'TECH_CURRENCY',
		NULL,

		'YIELD_GOLD',
		100,

		0,
		0,
		1,

		'PLUNDER_FAITH',
		25,

		1
	);
-----------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
			(ImprovementType,							UnitType)
VALUES 		('IMPROVEMENT_SUK_STELE',					'UNIT_BUILDER');
-----------------------------------------------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
			(ImprovementType,							TerrainType)
VALUES 		('IMPROVEMENT_SUK_STELE',					'TERRAIN_DESERT_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_TUNDRA_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_PLAINS_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_GRASS_HILLS'),
			('IMPROVEMENT_SUK_STELE',					'TERRAIN_SNOW_HILLS');
-----------------------------------------------------------------------------------
-- Improvement_ValidFeatures
-----------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
			(ImprovementType,							FeatureType)
SELECT 		'IMPROVEMENT_SUK_STELE',					'FEATURE_VOLCANIC_SOIL'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_VOLCANIC_SOIL');
--=================================================================================
-- Trade Routes from this city gain +3 [ICON_Gold] Gold.
-- International [ICON_TradeRoute] Trade Routes from this city gain +1 [ICON_Culture] Culture
--=================================================================================
-- ImprovementModifiers
-------------------------------------
INSERT INTO ImprovementModifiers
		(ImprovementType,									ModifierId)
VALUES
		--('IMPROVEMENT_SUK_STELE', 							'SUK_STELE_TRADE_ROUTE_GOLD'),
		('IMPROVEMENT_SUK_STELE', 							'SUK_STELE_TRADE_ROUTE_CULTURE');
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
	-- (
	-- 	'SUK_STELE_TRADE_ROUTE_GOLD',
	-- 	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD',
	-- 	NULL,
	-- 	NULL
	-- ),
	(
		'SUK_STELE_TRADE_ROUTE_CULTURE',
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',
		NULL,
		NULL
	);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,						Value)
VALUES
		-- ('SUK_STELE_TRADE_ROUTE_GOLD',			'YieldType',				'YIELD_GOLD'),
		-- ('SUK_STELE_TRADE_ROUTE_GOLD',			'Amount',					2),

		('SUK_STELE_TRADE_ROUTE_CULTURE',		'YieldType',				'YIELD_CULTURE'),
		('SUK_STELE_TRADE_ROUTE_CULTURE',		'Amount',					1);
--=================================================================================
-- Trade Routes from this city gain +3 [ICON_Gold] Gold.
-- International [ICON_TradeRoute] Trade Routes from this city gain +1 [ICON_Culture] Culture
--=================================================================================
-- ImprovementModifiers
-------------------------------------
INSERT INTO ImprovementModifiers
		(ImprovementType,									ModifierId)
VALUES	('IMPROVEMENT_SUK_STELE', 							'SUK_STELE_TRADE_ROUTE_CULTURE_CHARMING'),
		('IMPROVEMENT_SUK_STELE', 							'SUK_STELE_TRADE_ROUTE_CULTURE_BREATHTAKING');
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
		'SUK_STELE_TRADE_ROUTE_CULTURE_CHARMING',
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',
		NULL,
		'PLOT_CHARMING_APPEAL'
	),
	(
		'SUK_STELE_TRADE_ROUTE_CULTURE_BREATHTAKING',
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',
		NULL,
		'PLOT_BREATHTAKING_APPEAL'
	);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
VALUES	('SUK_STELE_TRADE_ROUTE_CULTURE_CHARMING',			'YieldType',		'YIELD_CULTURE'),
		('SUK_STELE_TRADE_ROUTE_CULTURE_CHARMING',			'Amount',			1),

		('SUK_STELE_TRADE_ROUTE_CULTURE_BREATHTAKING',		'YieldType',		'YIELD_CULTURE'),
		('SUK_STELE_TRADE_ROUTE_CULTURE_BREATHTAKING',		'Amount',			1);
--==========================================================================================================================
--==========================================================================================================================