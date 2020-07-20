/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_WILLIAM_UU',				'KIND_TRAIT'	),
		('UNIT_CVS_WILLIAM_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_WILLIAM_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_WILLIAM_UU_ATTACH_CITIES',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_WILLIAM_UU_ATTACH_UNITS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_WILLIAM_UU_COMBAT_STRENGTH',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_WILLIAM_UU_COMBAT_XP',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_WILLIAM_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_WILLIAM_UU',			'CLASS_CVS_WILLIAM_UU'		),
		('ABILITY_CVS_WILLIAM_UU',		'CLASS_CVS_WILLIAM_UU'		);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_WILLIAM_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,						Name							)
VALUES	('TRAIT_LEADER_CVS_WILLIAM_UU',	'LOC_UNIT_CVS_WILLIAM_UU_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(LeaderType,					TraitType						)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'TRAIT_LEADER_CVS_WILLIAM_UU'	);

INSERT INTO	LeaderTraits
		(LeaderType,					TraitType	)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'TRAIT_LEADER_CVS_WILLIAM_UU'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

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
		PrereqCivic,
		StrategicResource
		)
SELECT	'UNIT_CVS_WILLIAM_UU',	-- UnitType
		'LOC_UNIT_CVS_WILLIAM_UU_NAME',	-- Name
		'LOC_UNIT_CVS_WILLIAM_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_WILLIAM_UU', -- TraitType
		BaseMoves,
		Cost + 50, -- Cost
		PurchaseYield,
		AdvisorType,
		44, -- Combat
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		'TECH_REPLACEABLE_PARTS', -- MandatoryObsoleteTech
		'CIVIC_FEUDALISM', -- PrereqCivic
		NULL -- StrategicResource
FROM	Units
WHERE	UnitType = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_WILLIAM_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_WILLIAM_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SWORDSMAN';

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description									)
VALUES	('ABILITY_CVS_WILLIAM_UU',		'LOC_ABILITY_CVS_WILLIAM_UU_NAME',		'LOC_ABILITY_CVS_WILLIAM_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId							)
VALUES	('ABILITY_CVS_WILLIAM_UU',		'MODIFIER_CVS_WILLIAM_UU_COMBAT_XP'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------
		
INSERT INTO TraitModifiers
		(TraitType,							ModifierId								)
VALUES	('TRAIT_LEADER_CVS_WILLIAM_UU',		'MODIFIER_CVS_WILLIAM_UU_ATTACH_CITIES'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,						EffectType									)
VALUES	('MODTYPE_CVS_WILLIAM_UU_ATTACH_CITIES',	'COLLECTION_PLAYER_CITIES',			'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_WILLIAM_UU_ATTACH_UNITS',		'COLLECTION_CITY_TRAINED_UNITS',	'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_WILLIAM_UU_COMBAT_STRENGTH',	'COLLECTION_UNIT_COMBAT',			'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	),
		('MODTYPE_CVS_WILLIAM_UU_COMBAT_XP',		'COLLECTION_OWNER',					'EFFECT_ADJUST_UNIT_EXPERIENCE_MODIFIER'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_WILLIAM_UU_ATTACH_CITIES',	'MODTYPE_CVS_WILLIAM_UU_ATTACH_CITIES',		'REQSET_CVS_WILLIAM_UU_LOYAL_CITY'	),
		('MODIFIER_CVS_WILLIAM_UU_ATTACH_UNITS',	'MODTYPE_CVS_WILLIAM_UU_ATTACH_UNITS',		'REQSET_CVS_WILLIAM_UU_IS_UNIQUE'	),
		('MODIFIER_CVS_WILLIAM_UU_COMBAT_STRENGTH',	'MODTYPE_CVS_WILLIAM_UU_COMBAT_STRENGTH',	NULL								),
		('MODIFIER_CVS_WILLIAM_UU_COMBAT_XP',		'MODTYPE_CVS_WILLIAM_UU_COMBAT_XP',			NULL								);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,								Name,			Value										)
VALUES	('MODIFIER_CVS_WILLIAM_UU_ATTACH_CITIES',	'ModifierId',	'MODIFIER_CVS_WILLIAM_UU_ATTACH_UNITS'		),
		('MODIFIER_CVS_WILLIAM_UU_ATTACH_UNITS',	'ModifierId',	'MODIFIER_CVS_WILLIAM_UU_COMBAT_STRENGTH'	),
		('MODIFIER_CVS_WILLIAM_UU_COMBAT_STRENGTH',	'Amount',		5											),
		('MODIFIER_CVS_WILLIAM_UU_COMBAT_XP',		'Amount',		50											);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,								Context,	Text														)
VALUES  ('MODIFIER_CVS_WILLIAM_UU_COMBAT_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_WILLIAM_UU_COMBAT_STRENGTH_DESCRIPTION'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId					)
VALUES	('REQSET_CVS_WILLIAM_UU_LOYAL_CITY',	'REQ_CVS_WILLIAM_UU_LOYAL_CITY'	),
		('REQSET_CVS_WILLIAM_UU_IS_UNIQUE',		'REQ_CVS_WILLIAM_UU_IS_UNIQUE'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_WILLIAM_UU_LOYAL_CITY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_WILLIAM_UU_IS_UNIQUE',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,						Inverse	)
VALUES	('REQ_CVS_WILLIAM_UU_LOYAL_CITY',	'REQUIREMENT_CITY_HAS_FULL_LOYALTY',	0		),
		('REQ_CVS_WILLIAM_UU_IS_UNIQUE',	'REQUIREMENT_UNIT_TYPE_MATCHES',		0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_WILLIAM_UU_IS_UNIQUE',	'UnitType',		'UNIT_CVS_WILLIAM_UU'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,			GameDataType,			Texture							)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',	'MOMENT_DATA_UNIT',		'UNIT_CVS_WILLIAM_UU',	'MOMENT_LEADER_CVS_WILLIAM_UU'	);