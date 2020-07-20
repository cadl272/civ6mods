/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',			'KIND_TRAIT'	),
		('UNIT_CVS_PHILIPPINES_UU',							'KIND_UNIT'		),
		('ABILITY_CVS_PHILIPPINES_UU',						'KIND_ABILITY'	),
		('MODTYPE_CVS_PHILIPPINES_UU_COMBAT_STRENGTH',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_PHILIPPINES_UU_UNIT_PRODUCTION',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_PHILIPPINES_UU_ATTACK_MOVE',			'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_CVS_PHILIPPINES_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_PHILIPPINES_UU',		'CLASS_CVS_PHILIPPINES_UU'	),
		('ABILITY_CVS_PHILIPPINES_UU',	'CLASS_CVS_PHILIPPINES_UU'	);

INSERT INTO TypeTags (Type, Tag)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',
		Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_INFANTRY'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

INSERT INTO TypeTags (Type, Tag)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',
		Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_RANGER'
AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,									Name								)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',	'LOC_UNIT_CVS_PHILIPPINES_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,					TraitType								)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_PHILIPPINES_UU',	-- UnitType
		'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',	-- Name
		'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU', -- TraitType
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		NULL, -- PrereqTech
		'CIVIC_NATIONALISM' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_INFANTRY'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_PHILIPPINES_UU',	-- UnitType
		'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',	-- Name
		'LOC_UNIT_CVS_PHILIPPINES_UU_XP1_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU', -- TraitType
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		NULL, -- PrereqTech
		'CIVIC_NATIONALISM' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_RANGER'
AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_INFANTRY'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_RANGER'
AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_INFANTRY'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_RANGER'
AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
SELECT	'UNIT_CVS_PHILIPPINES_UU',
		UnitType
FROM 	Units
WHERE 	UnitType = 'UNIT_INFANTRY'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
SELECT	'UNIT_CVS_PHILIPPINES_UU',
		UnitType
FROM 	Units
WHERE 	UnitType = 'UNIT_RANGER'
AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_RANGER');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description										)
VALUES	('ABILITY_CVS_PHILIPPINES_UU',	'LOC_ABILITY_CVS_PHILIPPINES_UU_NAME',	'LOC_ABILITY_CVS_PHILIPPINES_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------

INSERT INTO	UnitAbilityModifiers	
		(UnitAbilityType,				ModifierId										)
VALUES	('ABILITY_CVS_PHILIPPINES_UU',	'MODIFIER_CVS_PHILIPPINES_UU_FRIENDLY_COMBAT'	),
		('ABILITY_CVS_PHILIPPINES_UU',	'MODIFIER_CVS_PHILIPPINES_UU_ATTACK_MOVE'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,									ModifierId										)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',	'MODIFIER_CVS_PHILIPPINES_UU_WAR_PRODUCTION'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_PHILIPPINES_UU_COMBAT_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	),
		('MODTYPE_CVS_PHILIPPINES_UU_UNIT_PRODUCTION',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_UNIT_PRODUCTION'				),
		('MODTYPE_CVS_PHILIPPINES_UU_ATTACK_MOVE',		'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_ATTACK_AND_MOVE'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId							)
VALUES	('MODIFIER_CVS_PHILIPPINES_UU_FRIENDLY_COMBAT',		'MODTYPE_CVS_PHILIPPINES_UU_FRIENDLY_COMBAT',	'REQSET_CVS_PHILIPPINES_UU_DEFENDING_FRIENDLY'	),
		('MODIFIER_CVS_PHILIPPINES_UU_WAR_PRODUCTION',		'MODTYPE_CVS_PHILIPPINES_UU_UNIT_PRODUCTION',	'REQSET_CVS_PHILIPPINES_UU_AT_WAR'				),
		('MODIFIER_CVS_PHILIPPINES_UU_ATTACK_MOVE',			'MODTYPE_CVS_PHILIPPINES_UU_ATTACK_MOVE',		NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,										Name,		Value						)
VALUES	('MODIFIER_CVS_PHILIPPINES_UU_FRIENDLY_COMBAT',		'Amount',	10							),
		('MODIFIER_CVS_PHILIPPINES_UU_WAR_PRODUCTION',		'UnitType',	'UNIT_CVS_PHILIPPINES_UU'	),
		('MODIFIER_CVS_PHILIPPINES_UU_WAR_PRODUCTION',		'Amount',	100							),
		('MODIFIER_CVS_PHILIPPINES_UU_ATTACK_MOVE',			'CanMove',	1							);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,										Context,	Text												)
VALUES  ('MODIFIER_CVS_PHILIPPINES_UU_FRIENDLY_COMBAT',		'Preview',	'LOC_MODIFIER_CVS_PHILIPPINES_UU_FRIENDLY_COMBAT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('REQSET_CVS_PHILIPPINES_UU_DEFENDING_FRIENDLY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_PHILIPPINES_UU_AT_WAR',				'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId						)
VALUES	('REQSET_CVS_PHILIPPINES_UU_DEFENDING_FRIENDLY',	'REQ_CVS_PHILIPPINES_UU_FRIENDLY'	),
		('REQSET_CVS_PHILIPPINES_UU_DEFENDING_FRIENDLY',	'REQ_CVS_PHILIPPINES_UU_DEFENDING'	),
		('REQSET_CVS_PHILIPPINES_UU_AT_WAR',				'REQ_CVS_PHILIPPINES_UU_AT_WAR'		);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,									Inverse	)
VALUES	('REQ_CVS_PHILIPPINES_UU_FRIENDLY',		'REQUIREMENT_UNIT_IN_OWNER_TERRITORY',				0		),
		('REQ_CVS_PHILIPPINES_UU_DEFENDING',	'REQUIREMENT_PLAYER_IS_ATTACKING',					1		),
		('REQ_CVS_PHILIPPINES_UU_AT_WAR',		'REQUIREMENT_PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS',	1		);