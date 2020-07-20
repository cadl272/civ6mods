/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UA_FREE_TECH',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UA_FREE_CIVIC',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UA_ATTACH_MODIFIER',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UA_ADJUST_FLANK',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UA_ADJUST_SUPPORT',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description											)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',	'LOC_TRAIT_CIVILIZATION_CVS_ROMANIA_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_ROMANIA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'TRAIT_CIVILIZATION_CVS_ROMANIA_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId										)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',	'MODIFIER_CVS_ROMANIA_UA_BARRACKS_PRODUCTION'	),
		('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',	'MODIFIER_CVS_ROMANIA_UA_STABLE_PRODUCTION'		),
		('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',	'MODIFIER_CVS_ROMANIA_UA_ARMORY_PRODUCTION'		),
		('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',	'MODIFIER_CVS_ROMANIA_UA_FORTAREATA_PRODUCTION'	),
		('TRAIT_CIVILIZATION_CVS_ROMANIA_UA',	'MODIFIER_CVS_ROMANIA_UA_ACADEMY_PRODUCTION'	);

-----------------------------------------------
-- EmergencyBuffs
-----------------------------------------------

INSERT INTO	EmergencyBuffs (EmergencyType, ModifierId)
SELECT DISTINCT
		EmergencyType,
		'MODIFIER_CVS_ROMANIA_UA_FLANK_BONUS_ATTACH'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyBuffs (EmergencyType, ModifierId)
SELECT DISTINCT
		EmergencyType,
		'MODIFIER_CVS_ROMANIA_UA_SUPPORT_BONUS_ATTACH'
FROM	EmergencyAlliances;

-----------------------------------------------
-- EmergencyRewards
-----------------------------------------------

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		1,
		'MODIFIER_CVS_ROMANIA_UA_MEMBER_REWARD_TECH'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		1,
		'MODIFIER_CVS_ROMANIA_UA_MEMBER_REWARD_CIVIC'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		0,
		'MODIFIER_CVS_ROMANIA_UA_TARGET_REWARD_TECH'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		0,
		'MODIFIER_CVS_ROMANIA_UA_TARGET_REWARD_CIVIC'
FROM	EmergencyAlliances;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_BUILDING_YIELD_CHANGE'			),
		('MODTYPE_CVS_ROMANIA_UA_FREE_CIVIC',			'COLLECTION_EMERGENCY_PLAYERS',	'EFFECT_GRANT_PLAYER_RANDOM_CIVIC'				),	
		('MODTYPE_CVS_ROMANIA_UA_FREE_TECH',			'COLLECTION_EMERGENCY_PLAYERS',	'EFFECT_GRANT_PLAYER_RANDOM_TECHNOLOGY'			),
		('MODTYPE_CVS_ROMANIA_UA_ATTACH_MODIFIER',		'COLLECTION_EMERGENCY_PLAYERS',	'EFFECT_ATTACH_MODIFIER'						),
		('MODTYPE_CVS_ROMANIA_UA_ADJUST_FLANK',			'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_FLANKING_BONUS_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UA_ADJUST_SUPPORT',		'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_SUPPORT_BONUS_MODIFIER'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									OwnerRequirementSetId,				SubjectRequirementSetId,			RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_ROMANIA_UA_BARRACKS_PRODUCTION',		'MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'REQSET_CVS_ROMANIA_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_STABLE_PRODUCTION',		'MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'REQSET_CVS_ROMANIA_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_ARMORY_PRODUCTION',		'MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'REQSET_CVS_ROMANIA_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_FORTAREATA_PRODUCTION',	'MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'REQSET_CVS_ROMANIA_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_ACADEMY_PRODUCTION',		'MODTYPE_CVS_ROMANIA_UA_BUILDING_PRODUCTION',	'REQSET_CVS_ROMANIA_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_MEMBER_REWARD_TECH',		'MODTYPE_CVS_ROMANIA_UA_FREE_TECH',				NULL,								'REQSET_CVS_ROMANIA_UA_IS_MEMBER',	1,			1			),
		('MODIFIER_CVS_ROMANIA_UA_MEMBER_REWARD_CIVIC',		'MODTYPE_CVS_ROMANIA_UA_FREE_CIVIC',			NULL,								'REQSET_CVS_ROMANIA_UA_IS_MEMBER',	1,			1			),
		('MODIFIER_CVS_ROMANIA_UA_TARGET_REWARD_TECH',		'MODTYPE_CVS_ROMANIA_UA_FREE_TECH',				NULL,								'REQSET_CVS_ROMANIA_UA_IS_TARGET',	1,			1			),
		('MODIFIER_CVS_ROMANIA_UA_TARGET_REWARD_CIVIC',		'MODTYPE_CVS_ROMANIA_UA_FREE_CIVIC',			NULL,								'REQSET_CVS_ROMANIA_UA_IS_TARGET',	1,			1			),
		('MODIFIER_CVS_ROMANIA_UA_FLANK_BONUS_ATTACH',		'MODTYPE_CVS_ROMANIA_UA_ATTACH_MODIFIER',		NULL,								'REQSET_CVS_PLAYER_IS_ROMANIAN',	0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_FLANK_BONUS',				'MODTYPE_CVS_ROMANIA_UA_ADJUST_FLANK',			NULL,								NULL,								0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_SUPPORT_BONUS_ATTACH',	'MODTYPE_CVS_ROMANIA_UA_ATTACH_MODIFIER',		NULL,								'REQSET_CVS_PLAYER_IS_ROMANIAN',	0,			0			),
		('MODIFIER_CVS_ROMANIA_UA_SUPPORT_BONUS',			'MODTYPE_CVS_ROMANIA_UA_ADJUST_SUPPORT',		NULL,								NULL,								0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,							Value									)
VALUES	('MODIFIER_CVS_ROMANIA_UA_BARRACKS_PRODUCTION',			'BuildingType',					'BUILDING_BARRACKS'						),
		('MODIFIER_CVS_ROMANIA_UA_BARRACKS_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_CVS_ROMANIA_UA_BARRACKS_PRODUCTION',			'Amount',						1										),
		('MODIFIER_CVS_ROMANIA_UA_STABLE_PRODUCTION',			'BuildingType',					'BUILDING_STABLE'						),
		('MODIFIER_CVS_ROMANIA_UA_STABLE_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_CVS_ROMANIA_UA_STABLE_PRODUCTION',			'Amount',						1										),
		('MODIFIER_CVS_ROMANIA_UA_ARMORY_PRODUCTION',			'BuildingType',					'BUILDING_ARMORY'						),
		('MODIFIER_CVS_ROMANIA_UA_ARMORY_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_CVS_ROMANIA_UA_ARMORY_PRODUCTION',			'Amount',						2										),
		('MODIFIER_CVS_ROMANIA_UA_FORTAREATA_PRODUCTION',		'BuildingType',					'BUILDING_CVS_ROMANIA_UI'				),
		('MODIFIER_CVS_ROMANIA_UA_FORTAREATA_PRODUCTION',		'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_CVS_ROMANIA_UA_FORTAREATA_PRODUCTION',		'Amount',						2										),
		('MODIFIER_CVS_ROMANIA_UA_ACADEMY_PRODUCTION',			'BuildingType',					'BUILDING_MILITARY_ACADEMY'				),
		('MODIFIER_CVS_ROMANIA_UA_ACADEMY_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_CVS_ROMANIA_UA_ACADEMY_PRODUCTION',			'Amount',						3										),
		('MODIFIER_CVS_ROMANIA_UA_MEMBER_REWARD_TECH',			'Amount',						1										),
		('MODIFIER_CVS_ROMANIA_UA_MEMBER_REWARD_CIVIC',			'Amount',						1										),
		('MODIFIER_CVS_ROMANIA_UA_TARGET_REWARD_TECH',			'Amount',						1										),
		('MODIFIER_CVS_ROMANIA_UA_TARGET_REWARD_CIVIC',			'Amount',						1										),
		('MODIFIER_CVS_ROMANIA_UA_FLANK_BONUS_ATTACH',			'ModifierId',					'MODIFIER_CVS_ROMANIA_UA_FLANK_BONUS'	),
		('MODIFIER_CVS_ROMANIA_UA_FLANK_BONUS',					'Percent',						100										),
		('MODIFIER_CVS_ROMANIA_UA_SUPPORT_BONUS_ATTACH',		'ModifierId',					'MODIFIER_CVS_ROMANIA_UA_SUPPORT_BONUS'	),
		('MODIFIER_CVS_ROMANIA_UA_SUPPORT_BONUS',				'Percent',						100										);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_ROMANIA_UA_AT_WAR',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ROMANIA_UA_IS_MEMBER',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ROMANIA_UA_IS_TARGET',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_ROMANIA_UA_AT_WAR',	'REQ_CVS_ROMANIA_UA_AT_WAR'		),
		('REQSET_CVS_ROMANIA_UA_IS_MEMBER',	'REQ_CVS_ROMANIA_UA_IS_MEMBER'	),
		('REQSET_CVS_ROMANIA_UA_IS_MEMBER',	'REQ_CVS_PLAYER_IS_ROMANIAN'	), -- Set in Civilization.sql
		('REQSET_CVS_ROMANIA_UA_IS_TARGET',	'REQ_CVS_ROMANIA_UA_IS_TARGET'	),
		('REQSET_CVS_ROMANIA_UA_IS_TARGET',	'REQ_CVS_PLAYER_IS_ROMANIAN'	); -- Set in Civilization.sql

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,									Inverse	)
VALUES	('REQ_CVS_ROMANIA_UA_AT_WAR',		'REQUIREMENT_PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS',	1		),
		('REQ_CVS_ROMANIA_UA_IS_MEMBER',	'REQUIREMENT_PLAYER_IS_EMERGENCY_TARGET',			1		),
		('REQ_CVS_ROMANIA_UA_IS_TARGET',	'REQUIREMENT_PLAYER_IS_EMERGENCY_TARGET',			0		);