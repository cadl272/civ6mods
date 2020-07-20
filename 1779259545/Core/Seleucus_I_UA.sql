/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_SELEUCUS_I_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_SELEUCUS_I_UA_ADJUST_AMENITIES',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SELEUCUS_I_UA_GP_CHARGE',			'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description											)
VALUES	('TRAIT_LEADER_CVS_SELEUCUS_I_UA',	'LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_NAME',	'LOC_TRAIT_LEADER_CVS_SELEUCUS_I_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_SELEUCUS_I',	'TRAIT_LEADER_CVS_SELEUCUS_I_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId								)
VALUES	('TRAIT_LEADER_CVS_SELEUCUS_I_UA',	'MODIFIER_CVS_SELEUCUS_I_UA_GP_CHARGE'	);

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId	)
SELECT	'TRAIT_LEADER_CVS_SELEUCUS_I_UA',	'MODIFIER_CVS_SELEUCUS_I_UA_AMENITIES_'||BuildingType
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_SELEUCUS_I_UA_ADJUST_AMENITIES',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_EXTRA_ENTERTAINMENT'	),
		('MODTYPE_CVS_SELEUCUS_I_UA_GP_CHARGE',			'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_GREAT_PERSON_CHARGES'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId						)
VALUES	('MODIFIER_CVS_SELEUCUS_I_UA_GP_CHARGE',	'MODTYPE_CVS_SELEUCUS_I_UA_GP_CHARGE',	'REQSET_CVS_SELEUCUS_I_UA_IS_GREAT_GENERAL'	);

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,									SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_SELEUCUS_I_UA_AMENITIES_'||BuildingType,	'MODTYPE_CVS_SELEUCUS_I_UA_ADJUST_AMENITIES',	'REQSET_CVS_SELEUCUS_I_UA_HAS_'||BuildingType
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_SELEUCUS_I_UA_GP_CHARGE',	'Amount',	1		);

INSERT INTO	ModifierArguments
		(ModifierId,											Name,		Value	)
SELECT	'MODIFIER_CVS_SELEUCUS_I_UA_AMENITIES_'||BuildingType,	'Amount',	1
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId								)
VALUES	('REQSET_CVS_SELEUCUS_I_UA_IS_GREAT_GENERAL',	'REQ_CVS_SELEUCUS_I_UA_IS_GREAT_GENERAL'	);

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCUS_I_UA_HAS_'||BuildingType,	'REQ_CVS_SELEUCUS_I_UA_IS_ENCAMPMENT'
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";	

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_SELEUCUS_I_UA_HAS_'||BuildingType,	'REQ_CVS_SELEUCUS_I_UA_HAS_'||BuildingType
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";	

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCUS_I_UA_IS_GREAT_GENERAL',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType	)
SELECT	'REQSET_CVS_SELEUCUS_I_UA_HAS_'||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType							)
VALUES	('REQ_CVS_SELEUCUS_I_UA_IS_GREAT_GENERAL',	'REQUIREMENT_GREAT_PERSON_TYPE_MATCHES'	),
		('REQ_CVS_SELEUCUS_I_UA_IS_ENCAMPMENT',		'REQUIREMENT_DISTRICT_TYPE_MATCHES'		);

INSERT INTO Requirements
		(RequirementId,								RequirementType	)
SELECT	'REQ_CVS_SELEUCUS_I_UA_HAS_'||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value							)
VALUES	('REQ_CVS_SELEUCUS_I_UA_IS_GREAT_GENERAL',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'	),
		('REQ_CVS_SELEUCUS_I_UA_IS_ENCAMPMENT',		'DistrictType',			'DISTRICT_ENCAMPMENT'			);

INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value	)
SELECT	'REQ_CVS_SELEUCUS_I_UA_HAS_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings
WHERE	PrereqDistrict = "DISTRICT_ENCAMPMENT";

-----------------------------------------------
-- GreatPerson
-- Gotta move Sun Tzu to GW because he cannot have an additional charge. Replacing him.
-----------------------------------------------

UPDATE	GreatPersonIndividuals
SET		GreatPersonClassType = 'GREAT_PERSON_CLASS_WRITER'
WHERE	GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_SUN_TZU';

INSERT INTO Types
		(Type,										Kind							)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS',		'KIND_GREAT_PERSON_INDIVIDUAL'	),
		('MODTYPE_CVS_SCIPIO_AFRICANUS_ACTIVE',		'KIND_MODIFIER'					);

INSERT INTO GreatPersonIndividuals (
		GreatPersonIndividualType,
		Name,
		GreatPersonClassType,
		EraType,
		Gender,
		ActionCharges,
		ActionRequiresNoMilitaryUnit,
		ActionNameTextOverride,
		ActionEffectTileHighlighting,
		AreaHighlightRadius
		)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS', -- GreatPersonIndividualType
		'LOC_GREAT_PERSON_INDIVIDUAL_CVS_SCIPIO_AFRICANUS_NAME', -- Name
		'GREAT_PERSON_CLASS_GENERAL', -- GreatPersonClassType
		'ERA_CLASSICAL', -- EraType
		'M', -- Gender
		1, -- ActionCharges
		0, -- ActionRequiresNoMilitaryUnit
		'LOC_GREATPERSON_ACTION_NAME_RETIRE', -- ActionNameTextOverride,
		1, -- ActionEffectTileHighlighting
		2 -- AreaHighlightRadius
		);

INSERT INTO GreatPersonIndividualBirthModifiers
		(GreatPersonIndividualType,				ModifierId											)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS',	'GREATPERSON_COMBAT_STRENGTH_AOE_CLASSICAL_LAND'	),
		('GREATPERSON_CVS_SCIPIO_AFRICANUS',	'GREATPERSON_MOVEMENT_AOE_CLASSICAL_LAND'			);

INSERT INTO GreatPersonIndividualActionModifiers
		(GreatPersonIndividualType,				ModifierId,									AttachmentTargetType										)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS',	'GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,		EffectType							)
VALUES	('MODTYPE_CVS_SCIPIO_AFRICANUS_ACTIVE',	'COLLECTION_OWNER',	'EFFECT_GRANT_UNIT_WITH_EXPERIENCE'	);

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,							RunOnce,	Permanent	)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE',	'MODTYPE_CVS_SCIPIO_AFRICANUS_ACTIVE',	1,			1			);

INSERT INTO	ModifierArguments
		(ModifierId,								Name,			Value			)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE',	'UnitType',		'UNIT_CATAPULT'	),
		('GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE',	'Experience',	0				);

INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text											)
VALUES	('GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE',	'Summary',	'LOC_GREATPERSON_CVS_SCIPIO_AFRICANUS_ACTIVE'	);