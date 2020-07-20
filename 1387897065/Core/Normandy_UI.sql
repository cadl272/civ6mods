/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind				)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_NORMANDY_UI',	'KIND_TRAIT'		),
		('IMPROVEMENT_CVS_NORMANDY_UI',						'KIND_IMPROVEMENT'	),
		('MODTYPE_CVS_NORMANDY_UI_ADJUST_LOYALTY',			'KIND_MODIFIER'		);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType											)
VALUES	('CIVILIZATION_CVS_NORMANDY',	'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_NORMANDY_UI'	);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,											Name									)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_NORMANDY_UI',	'LOC_IMPROVEMENT_CVS_NORMANDY_UI_NAME'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		PrereqTech,
		Buildable,
		PlunderType,
		PlunderAmount,
		Housing,
		TilesRequired,
		SameAdjacentValid,
		Domain,
		DefenseModifier,
		GrantFortification,
		MovementChange
		)
SELECT	'IMPROVEMENT_CVS_NORMANDY_UI', -- ImprovementType
		'LOC_IMPROVEMENT_CVS_NORMANDY_UI_NAME', -- Name		
		'LOC_IMPROVEMENT_CVS_NORMANDY_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_NORMANDY_UI', -- TraitType
		'ICON_IMPROVEMENT_CVS_NORMANDY_UI', -- Icon
		'TECH_MILITARY_ENGINEERING', -- PrereqTech
		1, -- Buildable
		'PLUNDER_GOLD', -- PlunderType
		50, -- PlunderAmount
		1, -- Housing
		2, -- TilesRequired
		0, -- SameAdjacentValid
		'DOMAIN_LAND', -- Domain
		DefenseModifier,
		GrantFortification,
		MovementChange
FROM	Improvements
WHERE	ImprovementType = 'IMPROVEMENT_FORT';

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType					)
VALUES	('IMPROVEMENT_CVS_NORMANDY_UI',	'UNIT_MILITARY_ENGINEER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType				)
VALUES	('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_GRASS'			),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_GRASS_HILLS'	),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_PLAINS'		),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_PLAINS_HILLS'	),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_TUNDRA'		),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_TUNDRA_HILLS'	),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_DESERT'		),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_DESERT_HILLS'	),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_SNOW'			),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'TERRAIN_SNOW_HILLS'	);

-----------------------------------------------
-- Improvement_ValidFeatures
-----------------------------------------------
		
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,					FeatureType			)
VALUES	('IMPROVEMENT_CVS_NORMANDY_UI',		'FEATURE_FOREST'	),
		('IMPROVEMENT_CVS_NORMANDY_UI',		'FEATURE_JUNGLE'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CVS_NORMANDY_UI',	'YIELD_PRODUCTION',	1			),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'YIELD_GOLD',		2			);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
		
INSERT INTO Improvement_Adjacencies
		(ImprovementType,				YieldChangeId									)
VALUES	('IMPROVEMENT_CVS_NORMANDY_UI',	'ADJ_CVS_NORMANDY_UI_PASTURE_PRODUCTION'		),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'ADJ_CVS_NORMANDY_UI_CAMP_PRODUCTION'			),
		('IMPROVEMENT_CVS_NORMANDY_UI',	'ADJ_CVS_NORMANDY_UI_FARM_GOLD'					);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------
		
INSERT INTO Adjacency_YieldChanges
		(ID,											Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentImprovement,	AdjacentDistrict,		PrereqCivic	)
VALUES	('ADJ_CVS_NORMANDY_UI_PASTURE_PRODUCTION',		'Placeholder',	'YIELD_PRODUCTION',	1,				1,				'IMPROVEMENT_PASTURE',	NULL,					NULL		),
		('ADJ_CVS_NORMANDY_UI_CAMP_PRODUCTION',			'Placeholder',	'YIELD_PRODUCTION',	1,				1,				'IMPROVEMENT_CAMP',		NULL,					NULL		),
		('ADJ_CVS_NORMANDY_UI_FARM_GOLD',				'Placeholder',	'YIELD_GOLD',		1,				1,				'IMPROVEMENT_FARM',		NULL,					NULL		);

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------

INSERT INTO	ImprovementModifiers	
		(ImprovementType,					ModifierId									)
VALUES	('IMPROVEMENT_CVS_NORMANDY_UI',		'MODIFIER_CVS_NORMANDY_UI_ADJUST_LOYALTY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,			EffectType								)
VALUES	('MODTYPE_CVS_NORMANDY_UI_ADJUST_LOYALTY',	'COLLECTION_OWNER',		'EFFECT_ADJUST_CITY_IDENTITY_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_NORMANDY_UI_ADJUST_LOYALTY',	'MODTYPE_CVS_NORMANDY_UI_ADJUST_LOYALTY',	'REQSET_CVS_NORMANDY_UI_ADJ_ENCAMPMENT'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value	)
VALUES	('MODIFIER_CVS_NORMANDY_UI_ADJUST_LOYALTY',	'Amount',		1		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_NORMANDY_UI_ADJ_ENCAMPMENT',	'REQ_CVS_NORMANDY_UI_ADJ_ENCAMPMENT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_NORMANDY_UI_ADJ_ENCAMPMENT',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,									Inverse	)
VALUES	('REQ_CVS_NORMANDY_UI_ADJ_ENCAMPMENT',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value					)
VALUES	('REQ_CVS_NORMANDY_UI_ADJ_ENCAMPMENT',	'DistrictType',		'DISTRICT_ENCAMPMENT'	),
		('REQ_CVS_NORMANDY_UI_ADJ_ENCAMPMENT',	'MinRange',			1						),
		('REQ_CVS_NORMANDY_UI_ADJ_ENCAMPMENT',	'MaxRange',			1						);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'IMPROVEMENT_CVS_NORMANDY_UI',	'MOMENT_CIVILIZATION_CVS_NORMANDY_UI'	);
