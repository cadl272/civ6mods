/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind					)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UU',			'KIND_TRAIT'			),
		('UNIT_CVS_SWITZERLAND_UU',							'KIND_UNIT'				),
		('ABILITY_CVS_SWITZERLAND_UU',						'KIND_ABILITY'			),
		('PROMOTION_CLASS_CVS_SWITZERLAND_UU',				'KIND_PROMOTION_CLASS'	),
		('PROMOTION_CVS_SWITZERLAND_HALBERDIER',			'KIND_PROMOTION'		),
		('PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE',			'KIND_PROMOTION'		),
		('PROMOTION_CVS_SWITZERLAND_VANGUARD',				'KIND_PROMOTION'		),
		('PROMOTION_CVS_SWITZERLAND_WEDGE',					'KIND_PROMOTION'		),
		('PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE',		'KIND_PROMOTION'		),
		('PROMOTION_CVS_SWITZERLAND_COLUMNS',				'KIND_PROMOTION'		),
		('PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS',		'KIND_PROMOTION'		),
		('MODTYPE_CVS_SWITZERLAND_UU_ADJUST_STRENGTH',		'KIND_MODIFIER'			),
		('MODTYPE_CVS_SWITZERLAND_UU_FORCE_RETREAT',		'KIND_MODIFIER'			),
		('MODTYPE_CVS_SWITZERLAND_UU_ATTACK_MOVE',			'KIND_MODIFIER'			),
		('MODTYPE_CVS_SWITZERLAND_UU_ADJUST_FLANK',			'KIND_MODIFIER'			),
		('MODTYPE_CVS_SWITZERLAND_UU_IGNORE_HILLS',			'KIND_MODIFIER'			);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_CVS_SWITZERLAND_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_SWITZERLAND_UU',		'CLASS_CVS_SWITZERLAND_UU'	),
		('ABILITY_CVS_SWITZERLAND_UU',	'CLASS_CVS_SWITZERLAND_UU'	);
		
INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_SWITZERLAND_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_PIKEMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,									Name								)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UU',	'LOC_UNIT_CVS_SWITZERLAND_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,					TraitType								)
VALUES	('CIVILIZATION_CVS_SWITZERLAND',	'TRAIT_CIVILIZATION_CVS_SWITZERLAND_UU'	);

-----------------------------------------------
-- UnitPromotionClasses
-----------------------------------------------

INSERT INTO UnitPromotionClasses
		(PromotionClassType,					Name											)
VALUES	('PROMOTION_CLASS_CVS_SWITZERLAND_UU',	'LOC_PROMOTION_CLASS_CVS_SWITZERLAND_UU_NAME'	);

-----------------------------------------------
-- UnitPromotions
-----------------------------------------------

INSERT INTO UnitPromotions
		(UnitPromotionType,								Name,													Description,													Level,	PromotionClass							)
VALUES	('PROMOTION_CVS_SWITZERLAND_HALBERDIER',		'LOC_PROMOTION_CVS_SWITZERLAND_HALBERDIER_NAME',		'LOC_PROMOTION_CVS_SWITZERLAND_HALBERDIER_DESCRIPTION',			1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	),
		('PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE',		'LOC_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_NAME',		'LOC_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_DESCRIPTION',		1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	),
		('PROMOTION_CVS_SWITZERLAND_VANGUARD',			'LOC_PROMOTION_CVS_SWITZERLAND_VANGUARD_NAME',			'LOC_PROMOTION_CVS_SWITZERLAND_VANGUARD_DESCRIPTION',			1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	),
		('PROMOTION_CVS_SWITZERLAND_WEDGE',				'LOC_PROMOTION_CVS_SWITZERLAND_WEDGE_NAME',				'LOC_PROMOTION_CVS_SWITZERLAND_WEDGE_DESCRIPTION',				1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	),
		('PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE',	'LOC_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_NAME',	'LOC_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_DESCRIPTION',	1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	),
		('PROMOTION_CVS_SWITZERLAND_COLUMNS',			'LOC_PROMOTION_CVS_SWITZERLAND_COLUMNS_NAME',			'LOC_PROMOTION_CVS_SWITZERLAND_COLUMNS_DESCRIPTION',			1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	),
		('PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS',	'LOC_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_NAME',	'LOC_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_DESCRIPTION',	1,		'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	);

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
		MustPurchase,
		PurchaseYield,
		InitialLevel,
		NumRandomChoices,
		StrategicResource
		)
SELECT	'UNIT_CVS_SWITZERLAND_UU',	-- UnitType
		'LOC_UNIT_CVS_SWITZERLAND_UU_NAME',	-- Name
		'LOC_UNIT_CVS_SWITZERLAND_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_SWITZERLAND_UU', -- TraitType
		BaseMoves,
		Cost,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		'PROMOTION_CLASS_CVS_SWITZERLAND_UU', -- PromotionClass
		0, -- Maintenance
		MandatoryObsoleteTech,
		'CIVIC_MERCENARIES', -- PrereqCivic
		0, -- MustPurchase
		'YIELD_GOLD', -- PurchaseYield
		2, -- InitialLevel
		3, -- NumRandomChoices
		NULL -- StrategicResource
FROM	Units
WHERE	UnitType = 'UNIT_PIKEMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades
		(Unit,						UpgradeUnit		)
VALUES	('UNIT_CVS_SWITZERLAND_UU',	'UNIT_AT_CREW'	);

-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_SWITZERLAND_UU',	'UNIT_PIKEMAN'		);

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_SWITZERLAND_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_PIKEMAN';

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description										)
VALUES	('ABILITY_CVS_SWITZERLAND_UU',	'LOC_ABILITY_CVS_SWITZERLAND_UU_NAME',	'LOC_ABILITY_CVS_SWITZERLAND_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitPromotionModifiers
-----------------------------------------------

INSERT INTO	UnitPromotionModifiers
		(UnitPromotionType,								ModifierId										)
VALUES	('PROMOTION_CVS_SWITZERLAND_HALBERDIER',		'MODIFIER_CVS_SWITZERLAND_UU_ATTACK_STRENGTH'	),
		('PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE',		'MODIFIER_CVS_SWITZERLAND_UU_DEFEND_STRENGTH'	),
		('PROMOTION_CVS_SWITZERLAND_VANGUARD',			'MODIFIER_CVS_SWITZERLAND_UU_VS_WOUNDED'		),
		('PROMOTION_CVS_SWITZERLAND_WEDGE',				'MODIFIER_CVS_SWITZERLAND_UU_FORCE_RETREAT'		),
		('PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE',	'MODIFIER_CVS_SWITZERLAND_UU_ATTACK_MOVE'		),
		('PROMOTION_CVS_SWITZERLAND_COLUMNS',			'MODIFIER_CVS_SWITZERLAND_UU_ADJUST_FLANK'		),
		('PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS',	'MODIFIER_CVS_SWITZERLAND_UU_IGNORE_HILLS'		);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,				EffectType										)
VALUES	('MODTYPE_CVS_SWITZERLAND_UU_ADJUST_STRENGTH',		'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'		),
		('MODTYPE_CVS_SWITZERLAND_UU_FORCE_RETREAT',		'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_FORCE_RETREAT'				),
		('MODTYPE_CVS_SWITZERLAND_UU_ATTACK_MOVE',			'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_ATTACK_AND_MOVE'			),
		('MODTYPE_CVS_SWITZERLAND_UU_ADJUST_FLANK',			'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_FLANKING_BONUS_MODIFIER'	),
		('MODTYPE_CVS_SWITZERLAND_UU_IGNORE_HILLS',			'COLLECTION_OWNER',			'EFFECT_ADJUST_UNIT_IGNORE_TERRAIN_COST'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId,						RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_SWITZERLAND_UU_ATTACK_STRENGTH',		'MODTYPE_CVS_SWITZERLAND_UU_ADJUST_STRENGTH',	'REQSET_CVS_SWITZERLAND_UU_IS_ATTACKING',		0,			0			),
		('MODIFIER_CVS_SWITZERLAND_UU_DEFEND_STRENGTH',		'MODTYPE_CVS_SWITZERLAND_UU_ADJUST_STRENGTH',	'REQSET_CVS_SWITZERLAND_UU_IS_DEFENDING',		0,			0			),
		('MODIFIER_CVS_SWITZERLAND_UU_VS_WOUNDED',			'MODTYPE_CVS_SWITZERLAND_UU_ADJUST_STRENGTH',	'REQSET_CVS_SWITZERLAND_UU_VS_WOUNDED',			0,			0			),
		('MODIFIER_CVS_SWITZERLAND_UU_FORCE_RETREAT',		'MODTYPE_CVS_SWITZERLAND_UU_FORCE_RETREAT',		NULL,											0,			0			),
		('MODIFIER_CVS_SWITZERLAND_UU_ATTACK_MOVE',			'MODTYPE_CVS_SWITZERLAND_UU_ATTACK_MOVE',		NULL,											0,			0			),
		('MODIFIER_CVS_SWITZERLAND_UU_ADJUST_FLANK',		'MODTYPE_CVS_SWITZERLAND_UU_ADJUST_FLANK',		NULL,											0,			0			),
		('MODIFIER_CVS_SWITZERLAND_UU_IGNORE_HILLS',		'MODTYPE_CVS_SWITZERLAND_UU_IGNORE_HILLS',		NULL,											0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,										Name,			Value	)
VALUES	('MODIFIER_CVS_SWITZERLAND_UU_ATTACK_STRENGTH',		'Amount',		5		),
		('MODIFIER_CVS_SWITZERLAND_UU_DEFEND_STRENGTH',		'Amount',		5		),
		('MODIFIER_CVS_SWITZERLAND_UU_VS_WOUNDED',			'Amount',		5		),	
		('MODIFIER_CVS_SWITZERLAND_UU_FORCE_RETREAT',		'ForceRetreat',	1		),
		('MODIFIER_CVS_SWITZERLAND_UU_ATTACK_MOVE',			'CanMove',		1		),
		('MODIFIER_CVS_SWITZERLAND_UU_ADJUST_FLANK',		'Percent',		100		),
		('MODIFIER_CVS_SWITZERLAND_UU_IGNORE_HILLS',		'Type',			'HILLS'	),
		('MODIFIER_CVS_SWITZERLAND_UU_IGNORE_HILLS',		'Ignore',		1		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO	ModifierStrings		
		(ModifierId,									Context,	Text															)
VALUES	('MODIFIER_CVS_SWITZERLAND_UU_ATTACK_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_SWITZERLAND_UU_ATTACK_STRENGTH_DESCRIPTION'	),
		('MODIFIER_CVS_SWITZERLAND_UU_DEFEND_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_SWITZERLAND_UU_DEFEND_STRENGTH_DESCRIPTION'	),
		('MODIFIER_CVS_SWITZERLAND_UU_VS_WOUNDED',		'Preview',	'LOC_MODIFIER_CVS_SWITZERLAND_UU_VS_WOUNDED_DESCRIPTION'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_SWITZERLAND_UU_IS_ATTACKING',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UU_IS_DEFENDING',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UU_VS_WOUNDED',		'REQUIREMENTSET_TEST_ALL'	);

-- Compatibility for anti-cav penalty vs melee

UPDATE	RequirementSets
SET		RequirementSetType = 'REQUIREMENTSET_TEST_ANY'
WHERE	RequirementSetId = 'ANTI_SPEAR_OPPONENT_REQUIREMENTS';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId							)
VALUES	('REQSET_CVS_SWITZERLAND_UU_IS_ATTACKING',		'REQ_CVS_SWITZERLAND_UU_IS_ATTACKING'	),
		('REQSET_CVS_SWITZERLAND_UU_IS_DEFENDING',		'REQ_CVS_SWITZERLAND_UU_IS_DEFENDING'	),
		('REQSET_CVS_SWITZERLAND_UU_VS_WOUNDED',		'REQ_CVS_SWITZERLAND_UU_VS_WOUNDED'		),
		-- Compatibility for anti-cav penalty vs melee
		('ANTI_SPEAR_OPPONENT_REQUIREMENTS',			'REQ_CVS_SWITZERLAND_UU_IS_ANTI_CAV'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,									RequirementType,										Inverse	)
VALUES	('REQ_CVS_SWITZERLAND_UU_IS_ATTACKING',			'REQUIREMENT_PLAYER_IS_ATTACKING',						0		),
		('REQ_CVS_SWITZERLAND_UU_IS_DEFENDING',			'REQUIREMENT_PLAYER_IS_ATTACKING',						1		),
		('REQ_CVS_SWITZERLAND_UU_VS_WOUNDED',			'REQUIREMENT_OPPONENT_IS_WOUNDED',						0		),
		-- Compatibility for anti-cav penalty vs melee
		('REQ_CVS_SWITZERLAND_UU_IS_ANTI_CAV',			'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value									)
VALUES	-- Compatibility for anti-cav penalty vs melee
		('REQ_CVS_SWITZERLAND_UU_IS_ANTI_CAV',		'UnitPromotionClass',	'PROMOTION_CLASS_CVS_SWITZERLAND_UU'	);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_CVS_SWITZERLAND_UU',	'MOMENT_UNIT_CVS_SWITZERLAND_UU.dds'	);
