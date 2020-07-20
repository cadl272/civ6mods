/*
	UI
	Authors: SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind				)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI',	'KIND_TRAIT'		),
		('IMPROVEMENT_CVS_BERBER_UI',						'KIND_IMPROVEMENT'	),
		('MODTYPE_CVS_BERBER_UI_PLOT_YIELD',				'KIND_MODIFIER'		);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType										)
VALUES	('CIVILIZATION_CVS_BERBER',	'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI'	);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,											Name									)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI',	'LOC_IMPROVEMENT_CVS_BERBER_UI_NAME'	);

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
		BuildInLine,
		Domain		
		)
VALUES  (
		'IMPROVEMENT_CVS_BERBER_UI', -- ImprovementType
		'LOC_IMPROVEMENT_CVS_BERBER_UI_NAME', -- Name		
		'LOC_IMPROVEMENT_CVS_BERBER_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI', -- TraitType
		'ICON_IMPROVEMENT_CVS_BERBER_UI', -- Icon
		'TECH_IRRIGATION', -- PrereqTech
		1, -- Buildable
		'PLUNDER_HEAL', -- PlunderType
		25, -- PlunderAmount
		1, -- Housing
		2, -- TilesRequired
		1, -- SameAdjacentValid
		1, -- BuildInLine
		'DOMAIN_LAND' -- Domain
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType		)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType			)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'TERRAIN_DESERT'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'YIELD_FOOD',		1			),
		('IMPROVEMENT_CVS_BERBER_UI',	'YIELD_GOLD',		0			),
		('IMPROVEMENT_CVS_BERBER_UI',	'YIELD_CULTURE',	0			);

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,				YieldType,			BonusYieldChange,	PrereqCivic					)
VALUES	(405,	'IMPROVEMENT_CVS_BERBER_UI',	'YIELD_GOLD',		2,					'CIVIC_MEDIEVAL_FAIRES'		),
		(406,	'IMPROVEMENT_CVS_BERBER_UI',	'YIELD_CULTURE',	1,					'CIVIC_CULTURAL_HERITAGE'	);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
		
INSERT INTO Improvement_Adjacencies
		(ImprovementType,				YieldChangeId								)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD'					),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_DESERT'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_GRASS'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_PLAINS'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_TUNDRA'	),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_SNOW'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_HILLS_DESERT'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_HILLS_GRASS'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_HILLS_PLAINS'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_HILLS_TUNDRA'		),
		('IMPROVEMENT_CVS_BERBER_UI',	'ADJ_CVS_BERBER_UI_FOOD_HILLS_SNOW'			);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------
		
INSERT INTO Adjacency_YieldChanges
		(ID,										Description,	YieldType,		YieldChange,	TilesRequired,	AdjacentImprovement,			AdjacentTerrain,			PrereqCivic	)
VALUES	('ADJ_CVS_BERBER_UI_FOOD',					'Placeholder',	'YIELD_FOOD',	1,				2,				'IMPROVEMENT_CVS_BERBER_UI',	NULL,						NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_DESERT',	'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_DESERT_MOUNTAIN',	NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_GRASS',	'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_GRASS_MOUNTAIN',	NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_PLAINS',	'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_PLAINS_MOUNTAIN',	NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_TUNDRA',	'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_TUNDRA_MOUNTAIN',	NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_MOUNTAIN_SNOW',	'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_SNOW_MOUNTAIN',	NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_HILLS_DESERT',		'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_DESERT_HILLS',		NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_HILLS_GRASS',		'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_GRASS_HILLS',		NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_HILLS_PLAINS',		'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_PLAINS_HILLS',		NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_HILLS_TUNDRA',		'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_TUNDRA_HILLS',		NULL		),
		('ADJ_CVS_BERBER_UI_FOOD_HILLS_SNOW',		'Placeholder',	'YIELD_FOOD',	1,				1,				NULL,							'TERRAIN_SNOW_HILLS',		NULL		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId										)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_BERBER_UI',	'MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,						EffectType					)
VALUES	('MODTYPE_CVS_BERBER_UI_PLOT_YIELD',	'COLLECTION_PLAYER_PLOT_YIELDS',	'EFFECT_ADJUST_PLOT_YIELD'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY',	'MODTYPE_CVS_BERBER_UI_PLOT_YIELD',	'REQSET_CVS_BERBER_UI_ADJ_FOGGARA'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value			)
VALUES	('MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY',	'YieldType',	'YIELD_FOOD'	),
		('MODIFIER_CVS_BERBERS_UI_FLAT_FOOD_ADJACENCY',	'Amount',		1				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_BERBER_UI_ADJ_FOGGARA',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_BERBER_UI_FLAT_LAND',		'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_BERBER_UI_ADJ_FOGGARA',	'REQ_CVS_BERBER_UI_ADJ_FOGGARA'	),
		('REQSET_CVS_BERBER_UI_ADJ_FOGGARA',	'REQ_CVS_BERBER_UI_NOT_FOGGARA'	),
		('REQSET_CVS_BERBER_UI_ADJ_FOGGARA',	'REQ_CVS_BERBER_UI_FLAT_LAND'	),
		('REQSET_CVS_BERBER_UI_FLAT_LAND',		'REQ_CVS_BERBER_UI_IS_DESERT'	),
		('REQSET_CVS_BERBER_UI_FLAT_LAND',		'REQ_CVS_BERBER_UI_IS_GRASS'	),
		('REQSET_CVS_BERBER_UI_FLAT_LAND',		'REQ_CVS_BERBER_UI_IS_PLAINS'	),
		('REQSET_CVS_BERBER_UI_FLAT_LAND',		'REQ_CVS_BERBER_UI_IS_TUNDRA'	),
		('REQSET_CVS_BERBER_UI_FLAT_LAND',		'REQ_CVS_BERBER_UI_IS_SNOW'		);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,										Inverse	)
VALUES	('REQ_CVS_BERBER_UI_ADJ_FOGGARA',	'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES',	0		),
		('REQ_CVS_BERBER_UI_NOT_FOGGARA',	'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',			1		),
		('REQ_CVS_BERBER_UI_FLAT_LAND',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0		),
		('REQ_CVS_BERBER_UI_IS_DESERT',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_CVS_BERBER_UI_IS_GRASS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_CVS_BERBER_UI_IS_PLAINS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_CVS_BERBER_UI_IS_TUNDRA',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_CVS_BERBER_UI_IS_SNOW',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,				Value								)
VALUES	('REQ_CVS_BERBER_UI_ADJ_FOGGARA',	'ImprovementType',	'IMPROVEMENT_CVS_BERBER_UI'			),
		('REQ_CVS_BERBER_UI_NOT_FOGGARA',	'ImprovementType',	'IMPROVEMENT_CVS_BERBER_UI'			),
		('REQ_CVS_BERBER_UI_FLAT_LAND',		'RequirementSetId',	'REQSET_CVS_BERBER_UI_FLAT_LAND'	),
		('REQ_CVS_BERBER_UI_IS_DESERT',		'TerrainType',		'TERRAIN_DESERT'					),
		('REQ_CVS_BERBER_UI_IS_GRASS',		'TerrainType',		'TERRAIN_GRASS'						),
		('REQ_CVS_BERBER_UI_IS_PLAINS',		'TerrainType',		'TERRAIN_PLAINS'					),
		('REQ_CVS_BERBER_UI_IS_TUNDRA',		'TerrainType',		'TERRAIN_TUNDRA'					),
		('REQ_CVS_BERBER_UI_IS_SNOW',		'TerrainType',		'TERRAIN_SNOW'						);
