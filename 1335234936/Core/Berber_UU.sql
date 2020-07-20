/*
	UU
	Authors: SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_BERBER_UU',		'KIND_TRAIT'	),
		('UNIT_CVS_BERBER_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_BERBER_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_BERBER_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,					Vocabulary		)
VALUES	('CLASS_CVS_BERBER_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_BERBER_UU',		'CLASS_CVS_BERBER_UU'	),
		('ABILITY_CVS_BERBER_UU',	'CLASS_CVS_BERBER_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_BERBER_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_PIKEMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_BERBER_UU',	'LOC_UNIT_CVS_BERBER_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType							)
VALUES	('CIVILIZATION_CVS_BERBER',	'TRAIT_CIVILIZATION_CVS_BERBER_UU'	);

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
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_BERBER_UU',	-- UnitType
		'LOC_UNIT_CVS_BERBER_UU_NAME',	-- Name
		'LOC_UNIT_CVS_BERBER_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_BERBER_UU', -- TraitType
		BaseMoves,
		Cost * 0.8, -- Cost
		PurchaseYield,
		AdvisorType,
		Combat - 7, -- Combat
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		null,
		'CIVIC_MILITARY_TRAINING' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_PIKEMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_BERBER_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_PIKEMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_BERBER_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_PIKEMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_CVS_BERBER_UU',	'UNIT_PIKEMAN'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description								)
VALUES	('ABILITY_CVS_BERBER_UU',	'LOC_ABILITY_CVS_BERBER_UU_NAME',	'LOC_ABILITY_CVS_BERBER_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId									)
VALUES	('ABILITY_CVS_BERBER_UU',	'MODIFIER_CVS_BERBER_UU_DEFENDING'			),
		('ABILITY_CVS_BERBER_UU',	'MODIFIER_CVS_BERBER_UU_DEFENDING_FRIENDLY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_BERBER_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId,	SubjectRequirementSetId,					Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_BERBER_UU_DEFENDING',			'MODTYPE_CVS_BERBER_UU_ADJUST_STRENGTH',	NULL,					'REQSET_CVS_BERBER_UU_DEFENDING',			0,			0		),
		('MODIFIER_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'MODTYPE_CVS_BERBER_UU_ADJUST_STRENGTH',	NULL,					'REQSET_CVS_BERBER_UU_DEFENDING_FRIENDLY',	0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,									Name,		Value	)
VALUES	('MODIFIER_CVS_BERBER_UU_DEFENDING',			'Amount',	7		),
		('MODIFIER_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'Amount',	5		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,									Context,	Text											)
VALUES  ('MODIFIER_CVS_BERBER_UU_DEFENDING',			'Preview',	'LOC_MODIFIER_CVS_BERBER_UU_DEFENDING'			),
		('MODIFIER_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'Preview',	'LOC_MODIFIER_CVS_BERBER_UU_DEFENDING_FRIENDLY'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_BERBER_UU_DEFENDING',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_BERBER_UU_DEFENDING',			'REQ_CVS_BERBER_UU_DEFENDING'			),
		('REQSET_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'REQ_CVS_BERBER_UU_DEFENDING'			),
		('REQSET_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'REQ_CVS_BERBER_UU_DEFENDING_FRIENDLY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,						Inverse	)
VALUES	('REQ_CVS_BERBER_UU_DEFENDING',				'REQUIREMENT_PLAYER_IS_ATTACKING',		1		),
		('REQ_CVS_BERBER_UU_DEFENDING_FRIENDLY',	'REQUIREMENT_UNIT_IN_OWNER_TERRITORY',	0		);
