/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UU',		'KIND_TRAIT'	),
		('UNIT_CVS_ROMANIA_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_ROMANIA_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_ROMANIA_UU_ADJUST_XP',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_ROMANIA_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_ROMANIA_UU',		'CLASS_CVS_ROMANIA_UU'	),
		('ABILITY_CVS_ROMANIA_UU',	'CLASS_CVS_ROMANIA_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_ROMANIA_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SPEC_OPS';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UU',	'LOC_UNIT_CVS_ROMANIA_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_CVS_ROMANIA',	'TRAIT_CIVILIZATION_CVS_ROMANIA_UU'	);

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
SELECT	'UNIT_CVS_ROMANIA_UU',	-- UnitType
		'LOC_UNIT_CVS_ROMANIA_UU_NAME',	-- Name
		'LOC_UNIT_CVS_ROMANIA_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_ROMANIA_UU', -- TraitType
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
FROM	Units
WHERE	UnitType = 'UNIT_SPEC_OPS';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_ROMANIA_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SPEC_OPS';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_ROMANIA_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SPEC_OPS';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_CVS_ROMANIA_UU',	'UNIT_SPEC_OPS'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_CVS_ROMANIA_UU',	'LOC_ABILITY_CVS_ROMANIA_UU_NAME',	'LOC_ABILITY_CVS_ROMANIA_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId								)
VALUES	('ABILITY_CVS_ROMANIA_UU',	'MODIFIER_CVS_ROMANIA_UU_ADJUST_XP'		),
		('ABILITY_CVS_ROMANIA_UU',	'MODIFIER_CVS_ROMANIA_UU_HILLS_COMBAT'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_ROMANIA_UU_ADJUST_XP',		'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_EXPERIENCE_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								OwnerRequirementSetId,	SubjectRequirementSetId,				Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_ROMANIA_UU_ADJUST_XP',		'MODTYPE_CVS_ROMANIA_UU_ADJUST_XP',			NULL,					NULL,									0,			0		),
		('MODIFIER_CVS_ROMANIA_UU_HILLS_COMBAT',	'MODTYPE_CVS_ROMANIA_UU_ADJUST_STRENGTH',	NULL,					'REQSET_CVS_ROMANIA_UU_PLOT_IS_HILLS',	0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_ROMANIA_UU_ADJUST_XP',		'Amount',	50		),
		('MODIFIER_CVS_ROMANIA_UU_HILLS_COMBAT',	'Amount',	7		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,								Context,	Text										)
VALUES  ('MODIFIER_CVS_ROMANIA_UU_HILLS_COMBAT',	'Preview',	'LOC_MODIFIER_CVS_ROMANIA_UU_HILLS_COMBAT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_ROMANIA_UU_PLOT_IS_HILLS',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_ROMANIA_UU_PLOT_IS_HILLS',	'REQ_CVS_ROMANIA_UU_PLOT_IS_HILLS'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,				Inverse	)
VALUES	('REQ_CVS_ROMANIA_UU_PLOT_IS_HILLS',	'REQUIREMENT_PLOT_IS_HILLS',	0		);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,			GameDataType,			Texture					)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',		'UNIT_CVS_ROMANIA_UU',	'MOMENT_CVS_ROMANIA_UU'	);