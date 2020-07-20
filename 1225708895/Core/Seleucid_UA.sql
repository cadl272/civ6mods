/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_SELEUCID_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_SELEUCID_UA_ATTACH_MODIFIER',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SELEUCID_UA_BUILDING_PRODUCTION',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SELEUCID_UA_DISTRICT_PRODUCTION',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_CVS_SELEUCID_UA',	'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'TRAIT_CIVILIZATION_CVS_SELEUCID_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId	)
SELECT	'TRAIT_CIVILIZATION_CVS_SELEUCID_UA',	'MODIFIER_CVS_SELEUCID_UA_ATTACH_MODIFIER_'||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId	)
SELECT	'TRAIT_CIVILIZATION_CVS_SELEUCID_UA',	'MODIFIER_CVS_SELEUCID_UA_ATTACH_MODIFIER_'||DistrictType
FROM	Districts;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,						EffectType							)
VALUES	('MODTYPE_CVS_SELEUCID_UA_ATTACH_MODIFIER',		'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ATTACH_MODIFIER'			),
		('MODTYPE_CVS_SELEUCID_UA_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_BUILDING_PRODUCTION'	),
		('MODTYPE_CVS_SELEUCID_UA_DISTRICT_PRODUCTION',	'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_DISTRICT_PRODUCTION'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_ATTACH_MODIFIER_'||BuildingType,	'MODTYPE_CVS_SELEUCID_UA_ATTACH_MODIFIER',		'REQSET_CVS_SELEUCID_UA_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_'||BuildingType,		'MODTYPE_CVS_SELEUCID_UA_BUILDING_PRODUCTION',	NULL
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO Modifiers
		(ModifierId,												ModifierType,								SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_ATTACH_MODIFIER_'||DistrictType,	'MODTYPE_CVS_SELEUCID_UA_ATTACH_MODIFIER',	'REQSET_CVS_SELEUCID_UA_HAS_'||DistrictType
FROM	Districts;

INSERT INTO Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_'||DistrictType,		'MODTYPE_CVS_SELEUCID_UA_DISTRICT_PRODUCTION',	NULL
FROM	Districts;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_ATTACH_MODIFIER_'||BuildingType,	'ModifierId',	'MODIFIER_CVS_SELEUCID_UA_'||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO ModifierArguments
		(ModifierId,								Name,		Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_'||BuildingType,	'Amount',	35	
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_ATTACH_MODIFIER_'||DistrictType,	'ModifierId',	'MODIFIER_CVS_SELEUCID_UA_'||DistrictType
FROM	Districts;

INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_'||DistrictType,	'DistrictType',	DistrictType
FROM	Districts;

INSERT INTO ModifierArguments
		(ModifierId,								Name,		Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UA_'||DistrictType,	'Amount',	35	
FROM	Districts;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_SELEUCID_UA_IS_CAPITAL',	'REQ_CVS_SELEUCID_UA_IS_CAPITAL'	);

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCID_UA_HAS_'||BuildingType,	'REQ_CVS_SELEUCID_UA_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCID_UA_HAS_'||DistrictType,	'REQ_CVS_SELEUCID_UA_HAS_'||DistrictType
FROM	Districts;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCID_UA_IS_CAPITAL',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType	)
SELECT	'REQSET_CVS_SELEUCID_UA_HAS_'||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;		

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType	)
SELECT	'REQSET_CVS_SELEUCID_UA_HAS_'||DistrictType,	'REQUIREMENTSET_TEST_ALL'
FROM	Districts;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType							)
VALUES	('REQ_CVS_SELEUCID_UA_IS_CAPITAL',		'REQUIREMENT_COLLECTION_COUNT_ATLEAST'	);

INSERT INTO Requirements
		(RequirementId,								RequirementType					)
SELECT	'REQ_CVS_SELEUCID_UA_HAS_'||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;		

INSERT INTO Requirements
		(RequirementId,								RequirementType					)
SELECT	'REQ_CVS_SELEUCID_UA_HAS_'||DistrictType,	'REQUIREMENT_CITY_HAS_DISTRICT'
FROM	Districts;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value								)
VALUES	('REQ_CVS_SELEUCID_UA_IS_CAPITAL',		'CollectionType',	'COLLECTION_PLAYER_CAPITAL_CITY'	),
		('REQ_CVS_SELEUCID_UA_IS_CAPITAL',		'Count',			1									);

INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value	)
SELECT	'REQ_CVS_SELEUCID_UA_HAS_'||BuildingType,	'BuildingType',		BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL;	
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value	)
SELECT	'REQ_CVS_SELEUCID_UA_HAS_'||DistrictType,	'DistrictType',		DistrictType
FROM	Districts;