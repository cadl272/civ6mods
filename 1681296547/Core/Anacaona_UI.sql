/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_ANACAONA_UI',	'KIND_TRAIT'		),
		('IMPROVEMENT_CVS_ANACAONA_UI',					'KIND_IMPROVEMENT'	),
		('MODTYPE_CVS_ANACAONA_UI_PLOT_YIELD',			'KIND_MODIFIER'		);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name									)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_ANACAONA_UI',	'LOC_IMPROVEMENT_CVS_ANACAONA_UI_NAME'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId							)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_ANACAONA_UI',	'MODIFIER_CVS_ANACAONA_UI_UNLOCK'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(TraitType,										LeaderType				)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_ANACAONA_UI',	'LEADER_CVS_ANACAONA'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		PrereqCivic,
		Buildable,
		PlunderType,
		PlunderAmount,
		TilesRequired,
		SameAdjacentValid,
		RequiresAdjacentBonusOrLuxury,
		Domain		
		)
VALUES  (
		'IMPROVEMENT_CVS_ANACAONA_UI', -- ImprovementType
		'LOC_IMPROVEMENT_CVS_ANACAONA_UI_NAME', -- Name		
		'LOC_IMPROVEMENT_CVS_ANACAONA_UI_DESCRIPTION', -- Description
		'TRAIT_LEADER_IMPROVEMENT_CVS_ANACAONA_UI', -- TraitType
		'ICON_IMPROVEMENT_CVS_ANACAONA_UI', -- Icon
		'CIVIC_CRAFTSMANSHIP', -- PrereqCivic
		1, -- Buildable
		'PLUNDER_CULTURE', -- PlunderType
		25, -- PlunderAmount
		1, -- TilesRequired
		1, -- SameAdjacentValid
		1, -- RequiresAdjacentBonusOrLuxury
		'DOMAIN_LAND' -- Domain
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType		)
VALUES	('IMPROVEMENT_CVS_ANACAONA_UI',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType			)
VALUES	('IMPROVEMENT_CVS_ANACAONA_UI',	'TERRAIN_GRASS'		),
		('IMPROVEMENT_CVS_ANACAONA_UI',	'TERRAIN_PLAINS'	),
		('IMPROVEMENT_CVS_ANACAONA_UI',	'TERRAIN_TUNDRA'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CVS_ANACAONA_UI',	'YIELD_CULTURE',	1			);

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,				YieldType,			BonusYieldChange,	PrereqCivic					)
VALUES	(401,	'IMPROVEMENT_CVS_ANACAONA_UI',	'YIELD_CULTURE',	1,					'CIVIC_MEDIEVAL_FAIRES'		),
		(402,	'IMPROVEMENT_CVS_ANACAONA_UI',	'YIELD_CULTURE',	1,					'CIVIC_CULTURAL_HERITAGE'	);

-----------------------------------------------
-- Improvement_Tourism
-----------------------------------------------

INSERT INTO Improvement_Tourism
		(ImprovementType,				TourismSource,				PrereqTech,		ScalingFactor	)
VALUES	('IMPROVEMENT_CVS_ANACAONA_UI',	'TOURISMSOURCE_CULTURE',	'TECH_FLIGHT',	100				);

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------

INSERT INTO	ImprovementModifiers
		(ImprovementType,				ModifierId											)
VALUES	('IMPROVEMENT_CVS_ANACAONA_UI',	'MODIFIER_CVS_ANACAONA_UI_ADJ_GRASS_FOOD'			),
		('IMPROVEMENT_CVS_ANACAONA_UI',	'MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_FOOD'			),
		('IMPROVEMENT_CVS_ANACAONA_UI',	'MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_PRODUCTION'	),
		('IMPROVEMENT_CVS_ANACAONA_UI',	'MODIFIER_CVS_ANACAONA_UI_ADJ_TUNDRA_FOOD'			);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,						EffectType					)
VALUES	('MODTYPE_CVS_ANACAONA_UI_PLOT_YIELD',	'COLLECTION_SINGLE_PLOT_YIELDS',	'EFFECT_ADJUST_PLOT_YIELD'	);
	
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId						)
VALUES	('MODIFIER_CVS_ANACAONA_UI_UNLOCK',					'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',	NULL										),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_GRASS_FOOD',			'MODTYPE_CVS_ANACAONA_UI_PLOT_YIELD',		'REQSET_CVS_ANACAONA_UI_IS_GRASS'			),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_FOOD',		'MODTYPE_CVS_ANACAONA_UI_PLOT_YIELD',		'REQSET_CVS_ANACAONA_UI_IS_PLAINS'			),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_PRODUCTION',	'MODTYPE_CVS_ANACAONA_UI_PLOT_YIELD',		'REQSET_CVS_ANACAONA_UI_IS_PLAINS'			),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_TUNDRA_FOOD',		'MODTYPE_CVS_ANACAONA_UI_PLOT_YIELD',		'REQSET_CVS_ANACAONA_UI_IS_TUNDRA'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,				Value							)
VALUES	('MODIFIER_CVS_ANACAONA_UI_UNLOCK',					'ImprovementType',	'IMPROVEMENT_CVS_ANACAONA_UI'	),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_GRASS_FOOD',			'YieldType',		'YIELD_FOOD'					),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_GRASS_FOOD',			'Amount',			2								),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_FOOD',		'YieldType',		'YIELD_FOOD'					),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_FOOD',		'Amount',			1								),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_PRODUCTION',	'YieldType',		'YIELD_PRODUCTION'				),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_PLAINS_PRODUCTION',	'Amount',			1								),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_TUNDRA_FOOD',		'YieldType',		'YIELD_FOOD'					),
		('MODIFIER_CVS_ANACAONA_UI_ADJ_TUNDRA_FOOD',		'Amount',			1								);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,							RequirementId									)
VALUES	('REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE',		'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_LUXURY'		),
		('REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE',		'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_BONUS'		),
		('REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE',		'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_STRATEGIC'	),
		('REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE_MET',	'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_MET'			),
		('REQSET_CVS_ANACAONA_UI_IS_GRASS',			'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_MET'			),
		('REQSET_CVS_ANACAONA_UI_IS_GRASS',			'REQ_CVS_ANACAONA_UI_PLOT_IS_GRASS'				),
		('REQSET_CVS_ANACAONA_UI_IS_PLAINS',		'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_MET'			),
		('REQSET_CVS_ANACAONA_UI_IS_PLAINS',		'REQ_CVS_ANACAONA_UI_PLOT_IS_PLAINS'			),
		('REQSET_CVS_ANACAONA_UI_IS_TUNDRA',		'REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_MET'			),
		('REQSET_CVS_ANACAONA_UI_IS_TUNDRA',		'REQ_CVS_ANACAONA_UI_PLOT_IS_TUNDRA'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE_MET',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ANACAONA_UI_IS_GRASS',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ANACAONA_UI_IS_PLAINS',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ANACAONA_UI_IS_TUNDRA',			'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType,											Inverse	)
VALUES	('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_LUXURY',		'REQUIREMENT_PLOT_ADJACENT_RESOURCE_CLASS_TYPE_MATCHES',	0		),
		('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_BONUS',		'REQUIREMENT_PLOT_ADJACENT_RESOURCE_CLASS_TYPE_MATCHES',	0		),
		('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_STRATEGIC',	'REQUIREMENT_PLOT_ADJACENT_RESOURCE_CLASS_TYPE_MATCHES',	0		),
		('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_MET',		'REQUIREMENT_REQUIREMENTSET_IS_MET',						0		),
		('REQ_CVS_ANACAONA_UI_PLOT_IS_GRASS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',					0		),
		('REQ_CVS_ANACAONA_UI_PLOT_IS_PLAINS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',					0		),
		('REQ_CVS_ANACAONA_UI_PLOT_IS_TUNDRA',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',					0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,									Name,					Value									)
VALUES	('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_LUXURY',		'ResourceClassType',	'RESOURCECLASS_LUXURY'					),
		('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_BONUS',		'ResourceClassType',	'RESOURCECLASS_BONUS'					),
		('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_STRATEGIC',	'ResourceClassType',	'RESOURCECLASS_STRATEGIC'				),
		('REQ_CVS_ANACAONA_UI_ADJ_RESOURCE_MET',		'RequirementSetId',		'REQSET_CVS_ANACAONA_UI_ADJ_RESOURCE'	),
		('REQ_CVS_ANACAONA_UI_PLOT_IS_GRASS',			'TerrainType',			'TERRAIN_GRASS'							),
		('REQ_CVS_ANACAONA_UI_PLOT_IS_PLAINS',			'TerrainType',			'TERRAIN_PLAINS'						),
		('REQ_CVS_ANACAONA_UI_PLOT_IS_TUNDRA',			'TerrainType',			'TERRAIN_TUNDRA'						);
		
-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

REPLACE INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture								)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'IMPROVEMENT_CVS_ANACAONA_UI',	'Moment_Infrastructure_CVS_Conuco'	);