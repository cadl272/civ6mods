/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- New Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS CVS_Seleucid_Dummies
	(
	CivilizationType		TEXT		NOT NULL,
	TraitType				TEXT		DEFAULT NULL,
	UnitType				TEXT		DEFAULT NULL,
	BuildingType			TEXT		DEFAULT NULL	
	);

INSERT INTO CVS_Seleucid_Dummies (CivilizationType, TraitType, UnitType, BuildingType)
SELECT DISTINCT
	CivilizationType AS CivilizationType,
    Units.TraitType AS TraitType,
    UnitType AS UnitType,
    'BUILDING_CVS_ANTIOCHUS_III_UA_'||UnitType AS BuildingType
FROM Units
	LEFT JOIN CivilizationTraits
	ON CivilizationTraits.TraitType = Units.TraitType
WHERE Units.TraitType IS NOT NULL
AND CivilizationType IS NOT NULL
AND CivilizationType IS NOT 'CIVILIZATION_BARBARIAN'
AND CivilizationType IS NOT 'CIVILIZATION_CVS_SELEUCID';

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_CVS_ANTIOCHUS_III_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_ANTIOCHUS_III_UA_ATTACH_PLAYERS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ANTIOCHUS_III_UA_VALID_UNIT',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ANTIOCHUS_III_UA_IMPORT_RESOURCE',	'KIND_MODIFIER'	);
		
INSERT INTO Types (Type, Kind)
SELECT	BuildingType, 'KIND_BUILDING'
FROM	CVS_Seleucid_Dummies;

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings
		(BuildingType,	Name,										Description,										PrereqDistrict,			Cost,	MustPurchase,	EnabledByReligion,	InternalOnly)
SELECT	BuildingType,	'LOC_BUILDING_CVS_ANTIOCHUS_III_UA_NAME',	'LOC_BUILDING_CVS_ANTIOCHUS_III_UA_DESCRIPTION',	'DISTRICT_CITY_CENTER',	1,		1,				1,					1			
FROM	CVS_Seleucid_Dummies;

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	BuildingType,
		'MODIFIER_CVS_ANTIOCHUS_III_UA_VALID_'||UnitType
FROM	CVS_Seleucid_Dummies;

-----------------------------------------------
-- CivilopediaPageExcludes
-----------------------------------------------

INSERT INTO CivilopediaPageExcludes (SectionId, PageId)
SELECT	'BUILDINGS',
		BuildingType
FROM	CVS_Seleucid_Dummies;

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,								Name,											Description											)
VALUES	('TRAIT_LEADER_CVS_ANTIOCHUS_III_UA',	'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,					TraitType							)
VALUES	('LEADER_CVS_ANTIOCHUS_III',	'TRAIT_LEADER_CVS_ANTIOCHUS_III_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

-- Routing via the City-States themselves
INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'MINOR_CIV_DEFAULT_TRAIT',
		'MODIFIER_CVS_ANTIOCHUS_III_UA_ATTACH_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';		

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_ANTIOCHUS_III_UA_ATTACH_PLAYERS',		'COLLECTION_ALL_PLAYERS',	'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_ANTIOCHUS_III_UA_VALID_UNIT',			'COLLECTION_OWNER',			'EFFECT_ADJUST_PLAYER_VALID_UNIT_BUILD'		), -- << This is the part you're looking for
		('MODTYPE_CVS_ANTIOCHUS_III_UA_IMPORT_RESOURCE',	'COLLECTION_OWNER',			'EFFECT_ADJUST_PLAYER_FREE_RESOURCE_IMPORT'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_VALID_'||UnitType,
		'MODTYPE_CVS_ANTIOCHUS_III_UA_VALID_UNIT'
FROM	CVS_Seleucid_Dummies;

INSERT INTO	Modifiers (ModifierId, ModifierType, OwnerRequirementSetId,	SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_ATTACH_'||ResourceType,
		'MODTYPE_CVS_ANTIOCHUS_III_UA_ATTACH_PLAYERS',
		'REQSET_CVS_ANTIOCHUS_III_UA_CS_HAS_'||ResourceType, -- Check that the owner (City-State) has the resource
		'REQSET_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType -- Check that the subject (Antiochus) does not have the resource
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_IMPORT_'||ResourceType,
		'MODTYPE_CVS_ANTIOCHUS_III_UA_IMPORT_RESOURCE'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_VALID_'||UnitType,
		'UnitType',
		UnitType
FROM	CVS_Seleucid_Dummies;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_ATTACH_'||ResourceType,
		'ModifierId',
		'MODIFIER_CVS_ANTIOCHUS_III_UA_IMPORT_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_IMPORT_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_ANTIOCHUS_III_UA_IMPORT_'||ResourceType,
		'Amount',
		1
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_ANTIOCHUS_III_UA_CS_HAS_'||ResourceType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_ANTIOCHUS_III_UA_CS_HAS_'||ResourceType,
		'REQ_CVS_ANTIOCHUS_III_UA_CS_HAS_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType,
		'REQ_CVS_ANTIOCHUS_III_UA_IS_SUZERAIN'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType,
		'REQ_CVS_LEADER_IS_ANTIOCHUS_III' -- This requirement is set within the Leader file
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType,
		'REQ_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType						)
VALUES	('REQ_CVS_ANTIOCHUS_III_UA_IS_SUZERAIN',	'REQUIREMENT_PLAYER_IS_SUZERAIN'	);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CVS_ANTIOCHUS_III_UA_CS_HAS_'||ResourceType,
		'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO Requirements (RequirementId, RequirementType, Inverse)
SELECT	'REQ_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType,
		'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',
		1
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';	

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CVS_ANTIOCHUS_III_UA_CS_HAS_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CVS_ANTIOCHUS_III_UA_HAS_NO_'||ResourceType,
		'ResourceType',
		ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

