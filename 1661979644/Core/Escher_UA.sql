/*
	UA
	Credits: Digihuman, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_ESCHER_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_ESCHER_UA_TERRAIN_ADJ',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ESCHER_UA_REGIONAL_YIELD',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_ESCHER_UA',	'LOC_TRAIT_LEADER_CVS_ESCHER_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ESCHER_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_ESCHER',	'TRAIT_LEADER_CVS_ESCHER_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId										)
VALUES	('TRAIT_LEADER_CVS_ESCHER_UA',	'MODIFIER_CVS_ESCHER_UA_REGIONAL_PRODUCTION'	),
		('TRAIT_LEADER_CVS_ESCHER_UA',	'MODIFIER_CVS_ESCHER_UA_REGIONAL_GOLD'			);
		
INSERT INTO	TraitModifiers
		(TraitType,						ModifierId	)		
SELECT	'TRAIT_LEADER_CVS_ESCHER_UA',	 'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType
FROM	Terrains WHERE Mountain = 1;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_ESCHER_UA_TERRAIN_ADJ',		'COLLECTION_PLAYER_CITIES',		'EFFECT_TERRAIN_ADJACENCY'						),
		('MODTYPE_CVS_ESCHER_UA_REGIONAL_YIELD',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_EXTRA_REGIONAL_YIELD'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId,				RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_ESCHER_UA_REGIONAL_PRODUCTION',	'MODTYPE_CVS_ESCHER_UA_REGIONAL_YIELD',		'REQSET_CVS_ESCHER_UA_IS_INDUSTRIAL',	0,			0			),
		('MODIFIER_CVS_ESCHER_UA_REGIONAL_GOLD',		'MODTYPE_CVS_ESCHER_UA_REGIONAL_YIELD',		'REQSET_CVS_ESCHER_UA_IS_INDUSTRIAL',	0,			0			);
		
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,							SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType,	'MODTYPE_CVS_ESCHER_UA_TERRAIN_ADJ',	NULL
FROM	Terrains WHERE Mountain = 1;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments	
        (ModifierId,									Name,			Value				)
VALUES	('MODIFIER_CVS_ESCHER_UA_REGIONAL_PRODUCTION',	'Amount',		2					),
		('MODIFIER_CVS_ESCHER_UA_REGIONAL_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'	),
		('MODIFIER_CVS_ESCHER_UA_REGIONAL_GOLD',		'Amount',		4					),
		('MODIFIER_CVS_ESCHER_UA_REGIONAL_GOLD',		'YieldType',	'YIELD_GOLD'		);

-- INDUSTRIAL ZONES

INSERT INTO ModifierArguments	
        (ModifierId,											Name,			Value	)
SELECT  'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType,	'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'
FROM    Terrains WHERE Mountain = 1;

INSERT INTO ModifierArguments	
        (ModifierId,									Name,			Value	)
SELECT  'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType,	'TerrainType',	TerrainType
FROM    Terrains WHERE Mountain = 1;

INSERT INTO ModifierArguments	
        (ModifierId,									Name,			Value	)
SELECT  'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType,	'YieldType',	'YIELD_PRODUCTION'
FROM    Terrains WHERE Mountain = 1;

INSERT INTO ModifierArguments	
        (ModifierId,									Name,			Value	)
SELECT  'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType,	'Amount',		1
FROM    Terrains WHERE Mountain = 1;

INSERT INTO ModifierArguments	
        (ModifierId,									Name,			Value	)
SELECT  'MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_'||TerrainType,	'Description',	'LOC_MODIFIER_CVS_ESCHER_UA_INDUSTRIAL_ADJ_MOUNTAIN'
FROM    Terrains WHERE Mountain = 1;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_ESCHER_UA_IS_INDUSTRIAL',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_ESCHER_UA_IS_INDUSTRIAL',	'REQ_CVS_ESCHER_UA_IS_INDUSTRIAL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType							)
VALUES	('REQ_CVS_ESCHER_UA_IS_INDUSTRIAL',	'REQUIREMENT_DISTRICT_TYPE_MATCHES'		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,				Value						)
VALUES	('REQ_CVS_ESCHER_UA_IS_INDUSTRIAL',	'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'	);