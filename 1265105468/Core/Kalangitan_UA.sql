/*
	UA
	Authors: ChimpanG

	NOTE: I'm gonna comment the shit outta this file. Lots of moving parts.
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_CVS_KALANGITAN_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_KALANGITAN_UA_ATTACH_PLAYERS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_KALANGITAN_UA_IMPORT_RESOURCE',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description,										InternalOnly	)
VALUES	('TRAIT_LEADER_CVS_KALANGITAN_UA',	'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_NAME',	'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_DESCRIPTION',	0				);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_KALANGITAN',	'TRAIT_LEADER_CVS_KALANGITAN_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

-- We're going to route the amenities bonus via the allies themselves
INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT DISTINCT
		'TRAIT_LEADER_MAJOR_CIV', -- Applies to all major leaders
		'MODIFIER_CVS_KALANGITAN_UA_ATTACH_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	

-- The building production bonus starts here
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT DISTINCT
		'TRAIT_LEADER_CVS_KALANGITAN_UA',
		'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_KALANGITAN_UA_ATTACH_PLAYERS',		'COLLECTION_ALL_PLAYERS',	'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_KALANGITAN_UA_IMPORT_RESOURCE',		'COLLECTION_OWNER',			'EFFECT_ADJUST_PLAYER_FREE_RESOURCE_IMPORT'	),
		('MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_BUILDING_PRODUCTION'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

-- From TraitModifiers, the bonus includes both owner and subject reqsets
INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId,	SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_KALANGITAN_UA_ATTACH_'||ResourceType,
		'MODTYPE_CVS_KALANGITAN_UA_ATTACH_PLAYERS', -- first we attach to Kalangitan
		'REQSET_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType, -- Check that the owner (ally) has the resource
		'REQSET_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType -- Check that the subject (player) does not have the resource
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-- This modifier kicks in after we've attached it to Kalangitan (see above)
INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT DISTINCT
		'MODIFIER_CVS_KALANGITAN_UA_IMPORT_'||ResourceType,
		'MODTYPE_CVS_KALANGITAN_UA_IMPORT_RESOURCE'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-- Gotta separate the select statements otherwise we're going to be stacking the production bonus for every district (eg: adjacent campus would provide production toward amphitheaters otherwise)
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_CAMPUS'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_CAMPUS';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_COMMERCIAL_HUB'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_HOLY_SITE'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_THEATER'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_THEATER';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_INDUSTRIAL_ZONE'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_HARBOR'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HARBOR';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_ENCAMPMENT'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENCAMPMENT';

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_ENTERTAINMENT_COMPLEX'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENTERTAINMENT_COMPLEX';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

-- Attaching the Amenity bonus to Kalangitan here
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_ATTACH_'||ResourceType,
		'ModifierId',
		'MODIFIER_CVS_KALANGITAN_UA_IMPORT_'||ResourceType -- This is the modifier (below)
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_IMPORT_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_IMPORT_'||ResourceType,
		'Amount',
		1
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-- Production bonus
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,
		'BuildingType',
		BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX');

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,
		'Amount',
		50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict IN ('DISTRICT_CAMPUS', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

-- Check if the ally owns the resource
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-- Make sure Kalangitan doesn't have the resource
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	

-- Production bonus. Make sure the district is adjacent.
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

-- Ally checks start here
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType,
		'REQ_CVS_LEADER_NOT_KALANGITAN' -- This requirement is set within the Leader file
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType,
		'REQ_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType -- check for resource
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	
-- and ends here

-- Player checks start here
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType,
		'REQ_CVS_KALANGITAN_UA_IS_ALLY' -- check that Kalangitan is ally
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType,
		'REQ_CVS_LEADER_IS_KALANGITAN' -- This requirement is set within the Leader file. Check that the leader is Kalangitan.
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType,
		'REQ_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType -- Check that Kalangitan does not have the resource
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';
-- and ends here

-- Production bonus
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,
		'REQ_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType		)
VALUES	('REQ_CVS_KALANGITAN_UA_IS_ALLY',	'REQUIREMENT_ALLY'	); -- self explanatory

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType, -- ally has resource
		'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO Requirements (RequirementId, RequirementType, Inverse)
SELECT	'REQ_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType, -- Kalangitan doesn't have resource
		'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',
		1
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	

-- Production bonus.
INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,
		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CVS_KALANGITAN_UA_ALLY_HAS_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CVS_KALANGITAN_UA_HAS_NO_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,
		'DistrictType',
		DistrictType
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');