/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,									Kind				)
VALUES	('TRAIT_CIVILIZATION_CVS_TAINO_UU',		'KIND_TRAIT'		),
		('UNIT_CVS_TAINO_UU',					'KIND_UNIT'			),
		('ABILITY_CVS_TAINO_UU',				'KIND_ABILITY'		),
		('MODTYPE_CVS_TAINO_UU_GRANT_YIELD',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_TAINO_UU_DISABLE_UNIT',	'KIND_MODIFIER'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,					Vocabulary		)
VALUES	('CLASS_CVS_TAINO_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_TAINO_UU',		'CLASS_CVS_TAINO_UU'	),
		('ABILITY_CVS_TAINO_UU',	'CLASS_CVS_TAINO_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_TAINO_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_WARRIOR';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_TAINO_UU',	'LOC_UNIT_CVS_TAINO_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType							)
VALUES	('CIVILIZATION_CVS_TAINO',	'TRAIT_CIVILIZATION_CVS_TAINO_UU'	);

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
SELECT	'UNIT_CVS_TAINO_UU',	-- UnitType
		'LOC_UNIT_CVS_TAINO_UU_NAME',	-- Name
		'LOC_UNIT_CVS_TAINO_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_TAINO_UU', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat, -- Combat
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		'PROMOTION_CLASS_RECON', -- PromotionClass
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_WARRIOR';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_TAINO_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_WARRIOR';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_TAINO_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_WARRIOR';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_CVS_TAINO_UU',	'UNIT_WARRIOR'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description								)
VALUES	('ABILITY_CVS_TAINO_UU',	'LOC_ABILITY_CVS_TAINO_UU_NAME',	'LOC_ABILITY_CVS_TAINO_UU_DESCRIPTION'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,							ModifierId								)
VALUES	('TRAIT_CIVILIZATION_CVS_TAINO_UU',	'MODIFIER_CVS_TAINO_UU_DISABLE_SCOUT'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId							)
VALUES	('ABILITY_CVS_TAINO_UU',	'MODIFIER_CVS_TAINO_UU_POST_FAITH'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_TAINO_UU_GRANT_YIELD',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_UNIT_POST_COMBAT_YIELD'		),
		('MODTYPE_CVS_TAINO_UU_DISABLE_UNIT',	'COLLECTION_OWNER',			'EFFECT_ADJUST_PLAYER_UNIT_BUILD_DISABLED'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,							SubjectRequirementSetId,	Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_TAINO_UU_POST_FAITH',	'MODTYPE_CVS_TAINO_UU_GRANT_YIELD',		NULL,						0,			0		),
		('MODIFIER_CVS_TAINO_UU_DISABLE_SCOUT',	'MODTYPE_CVS_TAINO_UU_DISABLE_UNIT',	NULL,						0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,							Name,						Value			)
VALUES	('MODIFIER_CVS_TAINO_UU_POST_FAITH',	'YieldType',				'YIELD_FAITH'	),
		('MODIFIER_CVS_TAINO_UU_POST_FAITH',	'PercentDefeatedStrength',	50				),
		('MODIFIER_CVS_TAINO_UU_DISABLE_SCOUT',	'UnitType',					'UNIT_SCOUT'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,		GameDataType,			Texture							)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',	'UNIT_CVS_TAINO_UU',	'Moment_UniqueUnit_CVS_Macana'	);