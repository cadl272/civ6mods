/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_CVS_TIGRANES_II_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_TIGRANES_II_UA_ADJUST_STRENGTH',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description											)
VALUES	('TRAIT_LEADER_CVS_TIGRANES_II_UA',	'LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_NAME',	'LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_TIGRANES_II',	'TRAIT_LEADER_CVS_TIGRANES_II_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId										)
VALUES	('TRAIT_LEADER_CVS_TIGRANES_II_UA',	'MODIFIER_CVS_TIGRANES_II_UA_HILL_STRENGTH'		),
		('TRAIT_LEADER_CVS_TIGRANES_II_UA',	'MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_TIGRANES_II_UA_ADJUST_STRENGTH',		'COLLECTION_PLAYER_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	),
		('MODTYPE_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'COLLECTION_OWNER',			'EFFECT_GRANT_BOOST_WITH_GREAT_PERSON'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId,					RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_TIGRANES_II_UA_HILL_STRENGTH',		'MODTYPE_CVS_TIGRANES_II_UA_ADJUST_STRENGTH',	'REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		0,			0			),
		('MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'MODTYPE_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	NULL,										0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,				Value							)
VALUES	('MODIFIER_CVS_TIGRANES_II_UA_HILL_STRENGTH',		'Amount',			3								),
		('MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'GreatPersonClass',	'GREAT_PERSON_CLASS_GENERAL'	),
		('MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'TechBoost',		0								),
		('MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'OtherPlayers',		0								);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO	ModifierStrings		
		(ModifierId,									Context,	Text														)
VALUES	('MODIFIER_CVS_TIGRANES_II_UA_HILL_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_TIGRANES_II_UA_HILL_STRENGTH_DESCRIPTION'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId								)
VALUES	('REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		'REQ_CVS_TIGRANES_II_PLOT_IS_GRASS_HILLS'	),
		('REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		'REQ_CVS_TIGRANES_II_PLOT_IS_PLAINS_HILLS'	),
		('REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		'REQ_CVS_TIGRANES_II_PLOT_IS_DESERT_HILLS'	),
		('REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		'REQ_CVS_TIGRANES_II_PLOT_IS_TUNDRA_HILLS'	),
		('REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		'REQ_CVS_TIGRANES_II_PLOT_IS_SNOW_HILLS'	),
		('REQSET_CVS_TIGRANES_II_CITY_HAS_ENCAMPMENT',	'REQ_CVS_TIGRANES_II_CITY_HAS_ENCAMPMENT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_TIGRANES_II_UNIT_ON_HILLS',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_TIGRANES_II_CITY_HAS_ENCAMPMENT',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType							)
VALUES	('REQ_CVS_TIGRANES_II_PLOT_IS_GRASS_HILLS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_PLAINS_HILLS',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_DESERT_HILLS',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_TUNDRA_HILLS',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_SNOW_HILLS',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'	),
		('REQ_CVS_TIGRANES_II_CITY_HAS_ENCAMPMENT',		'REQUIREMENT_CITY_HAS_DISTRICT'			);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value					)
VALUES	('REQ_CVS_TIGRANES_II_PLOT_IS_GRASS_HILLS',		'TerrainType',	'TERRAIN_GRASS_HILLS'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_PLAINS_HILLS',	'TerrainType',	'TERRAIN_PLAINS_HILLS'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_DESERT_HILLS',	'TerrainType',	'TERRAIN_DESERT_HILLS'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_TUNDRA_HILLS',	'TerrainType',	'TERRAIN_TUNDRA_HILLS'	),
		('REQ_CVS_TIGRANES_II_PLOT_IS_SNOW_HILLS',		'TerrainType',	'TERRAIN_SNOW_HILLS'	),
		('REQ_CVS_TIGRANES_II_CITY_HAS_ENCAMPMENT',		'DistrictType',	'DISTRICT_ENCAMPMENT'	);