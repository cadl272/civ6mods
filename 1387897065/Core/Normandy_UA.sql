/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_NORMANDY_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_NORMANDY_UA_OCCUPATION_PENALTIES',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_NORMANDY_UA_BUILD_CHARGE',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_NORMANDY_UA_GRANT_UNIT',				'KIND_MODIFIER'	),
		('MODTYPE_CVS_NORMANDY_UA_GRANT_UNIT_CAPTURED',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_CVS_NORMANDY_UA',	'LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_NORMANDY',	'TRAIT_CIVILIZATION_CVS_NORMANDY_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,									ModifierId										)
VALUES	('TRAIT_CIVILIZATION_CVS_NORMANDY_UA',		'MODIFIER_CVS_NORMANDY_UA_OCCUPATION_PENALTIES'	),
		('TRAIT_CIVILIZATION_CVS_NORMANDY_UA',		'MODIFIER_CVS_NORMANDY_UA_BUILD_CHARGES'		),
		('TRAIT_CIVILIZATION_CVS_NORMANDY_UA',		'MODIFIER_CVS_NORMANDY_UA_CITY_ENGINEER'		),
		('TRAIT_CIVILIZATION_CVS_NORMANDY_UA',		'MODIFIER_CVS_NORMANDY_UA_ENCAMPMENT_ENGINEER'	);
		
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,							EffectType										)
VALUES	('MODTYPE_CVS_NORMANDY_UA_OCCUPATION_PENALTIES',	'COLLECTION_OWNER',						'EFFECT_ADJUST_PLAYER_NO_OCCUPATION_PENALTIES'	),
		('MODTYPE_CVS_NORMANDY_UA_BUILD_CHARGE',			'COLLECTION_PLAYER_UNITS',				'EFFECT_ADJUST_UNIT_BUILD_CHARGES'				),
		('MODTYPE_CVS_NORMANDY_UA_GRANT_UNIT',				'COLLECTION_OWNER',						'EFFECT_ADJUST_PLAYER_DISTRICT_CREATE_UNIT'		),
		('MODTYPE_CVS_NORMANDY_UA_GRANT_UNIT_CAPTURED',		'COLLECTION_PLAYER_CAPTURED_CITIES',	'EFFECT_GRANT_UNIT_IN_CITY'						);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId,						RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_NORMANDY_UA_OCCUPATION_PENALTIES',	'MODTYPE_CVS_NORMANDY_UA_OCCUPATION_PENALTIES',	NULL,											0,			0			),
		('MODIFIER_CVS_NORMANDY_UA_BUILD_CHARGES',			'MODTYPE_CVS_NORMANDY_UA_BUILD_CHARGE',			'REQSET_CVS_NORMANDY_UA_IS_MILITARY_ENGINEER',	0,			0			),
		('MODIFIER_CVS_NORMANDY_UA_CITY_ENGINEER',			'MODTYPE_CVS_NORMANDY_UA_GRANT_UNIT_CAPTURED',	'REQSET_CVS_NORMANDY_UA_HAS_TECH',				0,			1			),
		('MODIFIER_CVS_NORMANDY_UA_ENCAMPMENT_ENGINEER',	'MODTYPE_CVS_NORMANDY_UA_GRANT_UNIT',			'REQSET_CVS_NORMANDY_UA_HAS_TECH',				0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value						)
VALUES	('MODIFIER_CVS_NORMANDY_UA_OCCUPATION_PENALTIES',	'NoPenalties',			1							),
		('MODIFIER_CVS_NORMANDY_UA_BUILD_CHARGES',			'Amount',				1							),
		('MODIFIER_CVS_NORMANDY_UA_CITY_ENGINEER',			'UnitType',				'UNIT_MILITARY_ENGINEER'	),
		('MODIFIER_CVS_NORMANDY_UA_CITY_ENGINEER',			'Amount',				1							),
		('MODIFIER_CVS_NORMANDY_UA_CITY_ENGINEER',			'AllowUniqueOverride',	0							),
		('MODIFIER_CVS_NORMANDY_UA_ENCAMPMENT_ENGINEER',	'UnitType',				'UNIT_MILITARY_ENGINEER'	),
		('MODIFIER_CVS_NORMANDY_UA_ENCAMPMENT_ENGINEER',	'DistrictType',			'DISTRICT_ENCAMPMENT'		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId								)
VALUES	('REQSET_CVS_NORMANDY_UA_IS_MILITARY_ENGINEER',		'REQ_CVS_NORMANDY_UA_IS_MILITARY_ENGINEER'	),
		('REQSET_CVS_NORMANDY_UA_HAS_TECH',					'REQ_CVS_NORMANDY_UA_HAS_TECH'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('REQSET_CVS_NORMANDY_UA_IS_MILITARY_ENGINEER',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_NORMANDY_UA_HAS_TECH',					'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType,						Inverse	)
VALUES	('REQ_CVS_NORMANDY_UA_IS_MILITARY_ENGINEER',	'REQUIREMENT_UNIT_TYPE_MATCHES',		0		),
		('REQ_CVS_NORMANDY_UA_HAS_TECH',				'REQUIREMENT_PLAYER_HAS_TECHNOLOGY',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,									Name,				Value						)
VALUES	('REQ_CVS_NORMANDY_UA_IS_MILITARY_ENGINEER',	'UnitType',			'UNIT_MILITARY_ENGINEER'	),
		('REQ_CVS_NORMANDY_UA_HAS_TECH',				'TechnologyType',	'TECH_MILITARY_ENGINEERING'	);
