/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind				)
VALUES	('TRAIT_CIVILIZATION_CVS_SELEUCID_UU',		'KIND_TRAIT'		),
		('UNIT_CVS_SELEUCID_UU',					'KIND_UNIT'			),
		('ABILITY_CVS_SELEUCID_UU',					'KIND_ABILITY'		),
		('ABILITY_CVS_SELEUCID_UU_CAV',				'KIND_ABILITY'		),
		('ABILITY_CVS_SELEUCID_UU_ANTICAV',			'KIND_ABILITY'		),
		('MODTYPE_CVS_SELEUCID_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_SELEUCID_UU_ATTACH_MODIFIER',	'KIND_MODIFIER'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,								Vocabulary		)
VALUES	('CLASS_CVS_SELEUCID_UU',			'ABILITY_CLASS'	),
		('CLASS_CVS_SELEUCID_UU_CAV',		'ABILITY_CLASS'	),
		('CLASS_CVS_SELEUCID_UU_ANTICAV',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,								Tag								)
VALUES	('UNIT_CVS_SELEUCID_UU',			'CLASS_CVS_SELEUCID_UU'			),
		('UNIT_CVS_SELEUCID_UU',			'CLASS_CVS_SELEUCID_UU_ANTICAV'	),
		('ABILITY_CVS_SELEUCID_UU',			'CLASS_CVS_SELEUCID_UU'			),
		('ABILITY_CVS_SELEUCID_UU_CAV',		'CLASS_CVS_SELEUCID_UU_CAV'		),
		('ABILITY_CVS_SELEUCID_UU_ANTICAV',	'CLASS_CVS_SELEUCID_UU_ANTICAV'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_SELEUCID_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_PIKEMAN';

INSERT INTO TypeTags (Type,		Tag)
SELECT 	UnitType,	'CLASS_CVS_SELEUCID_UU_CAV'
FROM 	Units
WHERE	PromotionClass IN ('PROMOTION_CLASS_LIGHT_CAVALRY', 'PROMOTION_CLASS_HEAVY_CAVALRY');

INSERT INTO TypeTags (Type,		Tag)
SELECT 	UnitType,	'CLASS_CVS_SELEUCID_UU_ANTICAV'
FROM 	Units
WHERE	PromotionClass = 'PROMOTION_CLASS_ANTI_CAVALRY';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_CVS_SELEUCID_UU',	'LOC_UNIT_CVS_SELEUCID_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_SELEUCID',	'TRAIT_CIVILIZATION_CVS_SELEUCID_UU'	);

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
SELECT	'UNIT_CVS_SELEUCID_UU',	-- UnitType
		'LOC_UNIT_CVS_SELEUCID_UU_NAME',	-- Name
		'LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_SELEUCID_UU', -- TraitType
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
		NULL, -- PrereqTech
		'CIVIC_MILITARY_TRAINING' -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_PIKEMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_SELEUCID_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_PIKEMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_SELEUCID_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_PIKEMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_SELEUCID_UU',	'UNIT_PIKEMAN'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,								Description									)
VALUES	('ABILITY_CVS_SELEUCID_UU',			'LOC_ABILITY_CVS_SELEUCID_UU_NAME',	'LOC_ABILITY_CVS_SELEUCID_UU_DESCRIPTION'	),
		('ABILITY_CVS_SELEUCID_UU_CAV',		'LOC_ABILITY_CVS_SELEUCID_UU_NAME',	'LOC_ABILITY_CVS_SELEUCID_UU_DESCRIPTION'	),
		('ABILITY_CVS_SELEUCID_UU_ANTICAV',	'LOC_ABILITY_CVS_SELEUCID_UU_NAME',	'LOC_ABILITY_CVS_SELEUCID_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId								)
VALUES	('ABILITY_CVS_SELEUCID_UU',			'MODIFIER_CVS_SELEUCID_UU_ANTI_MELEE'	),
		('ABILITY_CVS_SELEUCID_UU_CAV',		'MODIFIER_CVS_SELEUCID_UU_CAV'			),
		('ABILITY_CVS_SELEUCID_UU_ANTICAV',	'MODIFIER_CVS_SELEUCID_UU_ANTICAV'		);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_SELEUCID_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	),
		('MODTYPE_CVS_SELEUCID_UU_ATTACH_MODIFIER',	'COLLECTION_PLAYER_UNITS',	'EFFECT_ATTACH_MODIFIER'					);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_SELEUCID_UU_ANTI_MELEE',		'MODTYPE_CVS_SELEUCID_UU_ADJUST_STRENGTH',	'REQSET_CVS_SELEUCID_UU_ANTI_MELEE'		),
		('MODIFIER_CVS_SELEUCID_UU_CAV',			'MODTYPE_CVS_SELEUCID_UU_ADJUST_STRENGTH',	'REQSET_CVS_SELEUCID_UU_ADJ_CAV'		),
		('MODIFIER_CVS_SELEUCID_UU_ANTICAV',		'MODTYPE_CVS_SELEUCID_UU_ADJUST_STRENGTH',	'REQSET_CVS_SELEUCID_UU_ADJ_ANTICAV'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,							Name,		Value	)
SELECT	'MODIFIER_CVS_SELEUCID_UU_ANTI_MELEE',	'Amount',	Value
FROM	ModifierArguments
WHERE	ModifierId = 'ANTI_SPEAR';

INSERT INTO	ModifierArguments		
		(ModifierId,							Name,		Value	)
VALUES	('MODIFIER_CVS_SELEUCID_UU_CAV',		'Amount',	5		),
		('MODIFIER_CVS_SELEUCID_UU_ANTICAV',	'Amount',	5		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,								Context,	Text													)
VALUES  ('MODIFIER_CVS_SELEUCID_UU_ANTI_MELEE',		'Preview',	'LOC_MODIFIER_CVS_SELEUCID_UU_ANTI_MELEE_DESCRIPTION'	),
		('MODIFIER_CVS_SELEUCID_UU_CAV',			'Preview',	'LOC_MODIFIER_CVS_SELEUCID_UU_CAV_DESCRIPTION'			),
		('MODIFIER_CVS_SELEUCID_UU_ANTICAV',		'Preview',	'LOC_MODIFIER_CVS_SELEUCID_UU_ANTICAV_DESCRIPTION'		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_SELEUCID_UU_ANTI_MELEE',	'REQ_CVS_SELEUCID_UU_ANTI_MELEE'	),
		('REQSET_CVS_SELEUCID_UU_ADJ_CAV',		'REQ_CVS_SELEUCID_UU_ADJACENT'		),
		('REQSET_CVS_SELEUCID_UU_ADJ_CAV',		'REQ_CVS_SELEUCID_UU_ATTACKING'		),
		('REQSET_CVS_SELEUCID_UU_ADJ_ANTICAV',	'REQ_CVS_SELEUCID_UU_ADJACENT'		),
		('REQSET_CVS_SELEUCID_UU_ADJ_ANTICAV',	'REQ_CVS_SELEUCID_UU_DEFENDING'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_SELEUCID_UU_ANTI_MELEE',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SELEUCID_UU_ADJ_CAV',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SELEUCID_UU_ADJ_ANTICAV',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,										Inverse	)
VALUES	('REQ_CVS_SELEUCID_UU_ANTI_MELEE',	'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES',	0		),
		('REQ_CVS_SELEUCID_UU_ADJACENT',	'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES',	0		),
		('REQ_CVS_SELEUCID_UU_ATTACKING',	'REQUIREMENT_PLAYER_IS_ATTACKING',						0		),
		('REQ_CVS_SELEUCID_UU_DEFENDING',	'REQUIREMENT_PLAYER_IS_ATTACKING',						1		);
		
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,					Value					)
VALUES	('REQ_CVS_SELEUCID_UU_ANTI_MELEE',	'UnitPromotionClass',	'PROMOTION_CLASS_MELEE'	),
		('REQ_CVS_SELEUCID_UU_ADJACENT',	'UnitType',				'UNIT_CVS_SELEUCID_UU'	),
		('REQ_CVS_SELEUCID_UU_ADJACENT',	'MinRange',				1						),
		('REQ_CVS_SELEUCID_UU_ADJACENT',	'MaxRange',				1						);