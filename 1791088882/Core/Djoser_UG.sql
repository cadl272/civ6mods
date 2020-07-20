/*
	UG
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind						)
VALUES	('TRAIT_LEADER_CVS_DJOSER_UG',						'KIND_TRAIT'				),
		('GOVERNOR_CVS_IMHOTEP',							'KIND_GOVERNOR'				),
		('GOVERNOR_PROMOTION_CVS_TJATI',					'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA',				'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA',		'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS',	'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR',			'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'KIND_GOVERNOR_PROMOTION'	),
		('MODTYPE_CVS_IMHOTEP_FEATURE_APPEAL',				'KIND_MODIFIER'				);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						InternalOnly	)
VALUES	('TRAIT_LEADER_CVS_DJOSER_UG',	1				);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_DJOSER',	'TRAIT_LEADER_CVS_DJOSER_UG'	);

-----------------------------------------------
-- Governors
-----------------------------------------------

INSERT INTO	Governors (
		GovernorType,
		Name,
		Title,
		ShortTitle,
		Description,
		TraitType,
		IdentityPressure,
		TransitionStrength,
		PortraitImage,
		PortraitImageSelected
		)
VALUES	(
		'GOVERNOR_CVS_IMHOTEP', -- GovernorType
		'LOC_GOVERNOR_CVS_IMHOTEP_NAME', -- Name
		'LOC_GOVERNOR_CVS_IMHOTEP_TITLE', -- Title
		'LOC_GOVERNOR_CVS_IMHOTEP_SHORT_TITLE', -- ShortTitle
		'LOC_GOVERNOR_CVS_IMHOTEP_DESCRIPTION', -- Description,
		'TRAIT_LEADER_CVS_DJOSER_UG', -- TraitType
		8, -- IdentityPressure
		100, -- TransitionStrength
		'GovernorNormal_CVS_Imhotep', -- PortraitImage
		'GovernorSelected_CVS_Imhotep' -- PortraitImageSelected
		);

-----------------------------------------------
-- GovernorPromotionSets
-----------------------------------------------

INSERT INTO GovernorPromotionSets	
		(GovernorType,				GovernorPromotion								)
VALUES	('GOVERNOR_CVS_IMHOTEP',	'GOVERNOR_PROMOTION_CVS_TJATI'					),
		('GOVERNOR_CVS_IMHOTEP',	'GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA'			),
		('GOVERNOR_CVS_IMHOTEP',	'GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA'		),
		('GOVERNOR_CVS_IMHOTEP',	'GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS'	),
		('GOVERNOR_CVS_IMHOTEP',	'GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR'			),
		('GOVERNOR_CVS_IMHOTEP',	'GOVERNOR_PROMOTION_CVS_IRY_PAT'				);		

-----------------------------------------------
-- GovernorPromotions
-----------------------------------------------

INSERT INTO GovernorPromotions	
		(GovernorPromotionType,								Level,	Column,	BaseAbility,	Name,														Description														)
VALUES	('GOVERNOR_PROMOTION_CVS_TJATI',					0,		1,		1,				'LOC_GOVERNOR_PROMOTION_CVS_TJATI_NAME',					'LOC_GOVERNOR_PROMOTION_CVS_TJATI_DESCRIPTION'					),
		('GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA',				1,		0,		0,				'LOC_GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA_NAME',				'LOC_GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA_DESCRIPTION'			),
		('GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA',		1,		2,		0,				'LOC_GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA_NAME',		'LOC_GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA_DESCRIPTION'		),
		('GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR',			2,		0,		0,				'LOC_GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR_NAME',			'LOC_GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR_DESCRIPTION'			),
		('GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS',	2,		2,		0,				'LOC_GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS_NAME',	'LOC_GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS_DESCRIPTION'	),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					3,		1,		0,				'LOC_GOVERNOR_PROMOTION_CVS_IRY_PAT_NAME',					'LOC_GOVERNOR_PROMOTION_CVS_IRY_PAT_DESCRIPTION'				);
		
-----------------------------------------------
-- GovernorPromotionPrereqs
-----------------------------------------------

INSERT INTO GovernorPromotionPrereqs	
		(GovernorPromotionType,								PrereqGovernorPromotion							)
VALUES	('GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA',				'GOVERNOR_PROMOTION_CVS_TJATI'					),
		('GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA',		'GOVERNOR_PROMOTION_CVS_TJATI'					),
		('GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS',	'GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA'		),
		('GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR',			'GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA'			),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS'	),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR'			);

-----------------------------------------------
-- GovernorPromotionModifiers
-----------------------------------------------

INSERT INTO	GovernorPromotionModifiers
		(GovernorPromotionType,								ModifierId									)
VALUES	('GOVERNOR_PROMOTION_CVS_TJATI',					'MODIFIER_CVS_IMHOTEP_POPULATION_PRODUCTION'),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'MODIFIER_CVS_IMHOTEP_FLOOD_DESERT_APPEAL'	),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'MODIFIER_CVS_IMHOTEP_FLOOD_GRASS_APPEAL'	),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'MODIFIER_CVS_IMHOTEP_FLOOD_PLAINS_APPEAL'	),
		('GOVERNOR_PROMOTION_CVS_IRY_PAT',					'MODIFIER_CVS_IMHOTEP_CULTURE_APPEAL'		);

INSERT INTO	GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT	'GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA',
		'MODIFIER_CVS_IMHOTEP_TRADE_PRODUCTION_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT	'GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA',
		'MODIFIER_CVS_IMHOTEP_TRADE_FAITH_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT	'GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA',
		'MODIFIER_CVS_IMHOTEP_TRADE_FOOD_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT	'GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA',
		'MODIFIER_CVS_IMHOTEP_TRADE_GOLD_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT	'GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS',
		'MODIFIER_CVS_IMHOTEP_ENGINEER_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT	'GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR',
		'MODIFIER_CVS_IMHOTEP_AMENITIES_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,		EffectType								)
VALUES	('MODTYPE_CVS_IMHOTEP_FEATURE_APPEAL',	'COLLECTION_OWNER',	'EFFECT_ADJUST_FEATURE_APPEAL_MODIFIER'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,												OwnerRequirementSetId,			SubjectRequirementSetId,				RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_IMHOTEP_POPULATION_PRODUCTION',	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	NULL,							NULL,									0,			0			),
		('MODIFIER_CVS_IMHOTEP_FLOOD_DESERT_APPEAL',	'MODTYPE_CVS_IMHOTEP_FEATURE_APPEAL',						NULL,							NULL,									0,			0			),
		('MODIFIER_CVS_IMHOTEP_FLOOD_GRASS_APPEAL',		'MODTYPE_CVS_IMHOTEP_FEATURE_APPEAL',						NULL,							NULL,									0,			0			),
		('MODIFIER_CVS_IMHOTEP_FLOOD_PLAINS_APPEAL',	'MODTYPE_CVS_IMHOTEP_FEATURE_APPEAL',						NULL,							NULL,									0,			0			),
		('MODIFIER_CVS_IMHOTEP_CULTURE_APPEAL',			'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',				NULL,							'REQSET_CVS_IMHOTEP_IS_BREATHTAKING',	0,			0			);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_IMHOTEP_ENGINEER_'||BuildingType,
		'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',
		'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_IMHOTEP_AMENITIES_'||BuildingType,
		'MODIFIER_SINGLE_CITY_ADJUST_AMENITIES_FROM_GOVERNORS',
		'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_PRODUCTION_'||BuildingType,
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',
		'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FAITH_'||BuildingType,
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',
		'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FOOD_'||BuildingType,
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',
		'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_GOLD_'||BuildingType,
		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',
		'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value							)
VALUES	('MODIFIER_CVS_IMHOTEP_POPULATION_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'				),
		('MODIFIER_CVS_IMHOTEP_POPULATION_PRODUCTION',	'Amount',		0.5								),
		('MODIFIER_CVS_IMHOTEP_FLOOD_DESERT_APPEAL',	'FeatureType',	'FEATURE_FLOODPLAINS'			),
		('MODIFIER_CVS_IMHOTEP_FLOOD_DESERT_APPEAL',	'Amount',		1								),
		('MODIFIER_CVS_IMHOTEP_FLOOD_GRASS_APPEAL',		'FeatureType',	'FEATURE_FLOODPLAINS_GRASSLAND'	),
		('MODIFIER_CVS_IMHOTEP_FLOOD_GRASS_APPEAL',		'Amount',		1								),
		('MODIFIER_CVS_IMHOTEP_FLOOD_PLAINS_APPEAL',	'FeatureType',	'FEATURE_FLOODPLAINS_PLAINS'	),
		('MODIFIER_CVS_IMHOTEP_FLOOD_PLAINS_APPEAL',	'Amount',		1								),
		('MODIFIER_CVS_IMHOTEP_CULTURE_APPEAL',			'YieldType',	'YIELD_CULTURE'					),
		('MODIFIER_CVS_IMHOTEP_CULTURE_APPEAL',			'Amount',		1								);

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_ENGINEER_'||BuildingType,
		'GreatPersonClassType',
		'GREAT_PERSON_CLASS_ENGINEER'
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_ENGINEER_'||BuildingType,
		'Amount',
		2
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_AMENITIES_'||BuildingType,
		'Amount',
		1
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_PRODUCTION_'||BuildingType,
		'YieldType',
		'YIELD_PRODUCTION'
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_PRODUCTION_'||BuildingType,
		'Amount',
		0.5
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_PRODUCTION_'||BuildingType,
		'Domestic',
		1
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FAITH_'||BuildingType,
		'YieldType',
		'YIELD_FAITH'
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FAITH_'||BuildingType,
		'Amount',
		1
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FAITH_'||BuildingType,
		'Domestic',
		1
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FOOD_'||BuildingType,
		'YieldType',
		'YIELD_FOOD'
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_FOOD_'||BuildingType,
		'Amount',
		1
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_GOLD_'||BuildingType,
		'YieldType',
		'YIELD_GOLD'
FROM	Buildings WHERE IsWonder = 1;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_IMHOTEP_TRADE_GOLD_'||BuildingType,
		'Amount',
		1
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_IMHOTEP_IS_BREATHTAKING',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType,
		'REQUIREMENTSET_TEST_ALL'
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_IMHOTEP_IS_BREATHTAKING',	'REQ_CVS_IMHOTEP_IS_BREATHTAKING'	);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_IMHOTEP_CITY_HAS_'||BuildingType,
		'REQ_CVS_IMHOTEP_CITY_HAS_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,						Inverse	)
VALUES	('REQ_CVS_IMHOTEP_IS_BREATHTAKING',	'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN',	0		);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CVS_IMHOTEP_CITY_HAS_'||BuildingType,
		'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,				Value	)
VALUES	('REQ_CVS_IMHOTEP_IS_BREATHTAKING',	'MinimumAppeal',	4		);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT	'REQ_CVS_IMHOTEP_CITY_HAS_'||BuildingType,
		'BuildingType',
		BuildingType
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,			MomentDataType,				GameDataType,			Texture							)
VALUES	('MOMENT_ILLUSTRATION_GOVERNOR',	'MOMENT_DATA_GOVERNOR',		'GOVERNOR_CVS_IMHOTEP',	'MOMENT_GOVERNOR_CVS_IMHOTEP'	);



