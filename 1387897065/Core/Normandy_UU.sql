/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind				)
VALUES	('TRAIT_CIVILIZATION_CVS_NORMANDY_UU',		'KIND_TRAIT'		),
		('UNIT_CVS_NORMANDY_UU',					'KIND_UNIT'			),
		('ABILITY_CVS_NORMANDY_UU',					'KIND_ABILITY'		),
		('MODTYPE_CVS_NORMANDY_UU_GRANT_PROMOTION',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_NORMANDY_UU_DAMAGE_STRENGTH',	'KIND_MODIFIER'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_NORMANDY_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_CVS_NORMANDY_UU',	'CLASS_CVS_NORMANDY_UU'	),
		('ABILITY_CVS_NORMANDY_UU',	'CLASS_CVS_NORMANDY_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_NORMANDY_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_KNIGHT';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_NORMANDY_UU',	'LOC_UNIT_CVS_NORMANDY_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_NORMANDY',	'TRAIT_CIVILIZATION_CVS_NORMANDY_UU'	);

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
SELECT	'UNIT_CVS_NORMANDY_UU',	-- UnitType
		'LOC_UNIT_CVS_NORMANDY_UU_NAME',	-- Name
		'LOC_UNIT_CVS_NORMANDY_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_NORMANDY_UU', -- TraitType
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
FROM	Units
WHERE	UnitType = 'UNIT_KNIGHT';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_NORMANDY_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_KNIGHT';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_NORMANDY_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_KNIGHT';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_NORMANDY_UU',	'UNIT_KNIGHT'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_CVS_NORMANDY_UU',	'LOC_ABILITY_CVS_NORMANDY_UU_NAME',	'LOC_ABILITY_CVS_NORMANDY_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId									)
VALUES	('ABILITY_CVS_NORMANDY_UU',	'MODIFIER_CVS_NORMANDY_UU_DAMAGE_STRENGTH'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,									ModifierId									)
VALUES	('TRAIT_CIVILIZATION_CVS_NORMANDY_UU',		'MODIFIER_CVS_NORMANDY_UU_GRANT_PROMOTION'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_NORMANDY_UU_GRANT_PROMOTION',		'COLLECTION_PLAYER_UNITS',	'EFFECT_GRANT_PROMOTION'					),
		('MODTYPE_CVS_NORMANDY_UU_DAMAGE_STRENGTH',		'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_NO_REDUCTION_DAMAGE'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId,			Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_NORMANDY_UU_GRANT_PROMOTION',	'MODTYPE_CVS_NORMANDY_UU_GRANT_PROMOTION',	'REQSET_CVS_NORMANDY_UU_IS_UU',		1,			0		),
		('MODIFIER_CVS_NORMANDY_UU_DAMAGE_STRENGTH',	'MODTYPE_CVS_NORMANDY_UU_DAMAGE_STRENGTH',	NULL,								0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,									Name,				Value				)
VALUES	('MODIFIER_CVS_NORMANDY_UU_GRANT_PROMOTION',	'PromotionType',	'PROMOTION_CHARGE'	),
		('MODIFIER_CVS_NORMANDY_UU_DAMAGE_STRENGTH',	'NoReduction',		1					);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId				)
VALUES	('REQSET_CVS_NORMANDY_UU_IS_UU',	'REQ_CVS_NORMANDY_UU_IS_UU'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_NORMANDY_UU_IS_UU',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType,					Inverse	)
VALUES	('REQ_CVS_NORMANDY_UU_IS_UU',	'REQUIREMENT_UNIT_TYPE_MATCHES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value					)
VALUES	('REQ_CVS_NORMANDY_UU_IS_UU',	'UnitType',		'UNIT_CVS_NORMANDY_UU'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,			GameDataType,			Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',		'UNIT_CVS_NORMANDY_UU',	'MOMENT_CIVILIZATION_CVS_NORMANDY_UU'	);