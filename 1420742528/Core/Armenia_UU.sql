/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_ARMENIA_UU',			'KIND_TRAIT'	),
		('UNIT_CVS_ARMENIA_UU',							'KIND_UNIT'		),
		('ABILITY_CVS_ARMENIA_UU',						'KIND_ABILITY'	),
		('MODTYPE_CVS_ARMENIA_UU_ATTACK_MOVE',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_ARMENIA_UU_PURCHASE_FAITH',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_ARMENIA_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_ARMENIA_UU',		'CLASS_CVS_ARMENIA_UU'	),
		('ABILITY_CVS_ARMENIA_UU',	'CLASS_CVS_ARMENIA_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_ARMENIA_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_HORSEMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_ARMENIA_UU',	'LOC_UNIT_CVS_ARMENIA_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_CVS_ARMENIA',	'TRAIT_CIVILIZATION_CVS_ARMENIA_UU'	);

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
SELECT	'UNIT_CVS_ARMENIA_UU',	-- UnitType
		'LOC_UNIT_CVS_ARMENIA_UU_NAME',	-- Name
		'LOC_UNIT_CVS_ARMENIA_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_ARMENIA_UU', -- TraitType
		BaseMoves,
		Cost + 20, -- Cost
		PurchaseYield,
		AdvisorType,
		Combat + 5, -- Combat
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
WHERE	UnitType = 'UNIT_HORSEMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_ARMENIA_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_HORSEMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_ARMENIA_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_HORSEMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_CVS_ARMENIA_UU',	'UNIT_HORSEMAN'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_CVS_ARMENIA_UU',	'LOC_ABILITY_CVS_ARMENIA_UU_NAME',	'LOC_ABILITY_CVS_ARMENIA_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId								)
VALUES	('ABILITY_CVS_ARMENIA_UU',	'MODIFIER_CVS_ARMENIA_UU_ATTACK_MOVE'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------
		
INSERT INTO TraitModifiers
		(TraitType,								ModifierId									)
VALUES	('TRAIT_CIVILIZATION_CVS_ARMENIA_UU',	'MODIFIER_CVS_ARMENIA_UU_PURCHASE_FAITH'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType								)
VALUES	('MODTYPE_CVS_ARMENIA_UU_ATTACK_MOVE',		'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_ATTACK_AND_MOVE'	),
		('MODTYPE_CVS_ARMENIA_UU_PURCHASE_FAITH',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ENABLE_UNIT_FAITH_PURCHASE'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_ARMENIA_UU_ATTACK_MOVE',		'MODTYPE_CVS_ARMENIA_UU_ATTACK_MOVE',		NULL					),
		('MODIFIER_CVS_ARMENIA_UU_PURCHASE_FAITH',	'MODTYPE_CVS_ARMENIA_UU_PURCHASE_FAITH',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,		Value					)
VALUES	('MODIFIER_CVS_ARMENIA_UU_ATTACK_MOVE',		'CanMove',	1						),
		('MODIFIER_CVS_ARMENIA_UU_PURCHASE_FAITH',	'Tag',		'CLASS_CVS_ARMENIA_UU'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,			GameDataType,			Texture							)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',		'UNIT_CVS_ARMENIA_UU',	'MOMENT_UNIT_CVS_ARMENIA_UU'	);