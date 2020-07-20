/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI',	'KIND_TRAIT'	),
		('DISTRICT_CVS_SWITZERLAND_UI',						'KIND_DISTRICT'	),
		('MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,											Name									)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI',	'LOC_DISTRICT_CVS_SWITZERLAND_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,											CivilizationType				)
VALUES	('TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI',	'CIVILIZATION_CVS_SWITZERLAND'	);

-----------------------------------------------
-- Districts
-----------------------------------------------

INSERT INTO Districts	(
		DistrictType,
		Name,
		Description,
		TraitType,
		PrereqCivic,
		Cost,
		RequiresPlacement,
		RequiresPopulation,
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		Appeal,
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
		)
SELECT	'DISTRICT_CVS_SWITZERLAND_UI', -- DistrictType
		'LOC_DISTRICT_CVS_SWITZERLAND_UI_NAME', -- Name
		'LOC_DISTRICT_CVS_SWITZERLAND_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_SWITZERLAND_UI', -- TraitType
		'CIVIC_EARLY_EMPIRE', -- PrereqCivic
		Cost * 0.5,
		RequiresPlacement,
		0, -- RequiresPopulation
		NoAdjacentCity,
		ZOC,
		HitPoints,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,
		PlunderType,
		PlunderAmount,
		CostProgressionModel,
		CostProgressionParam1,
		Aqueduct,
		NoAdjacentCity,
		1, -- Appeal
		Housing,
		Entertainment,
		OnePerCity,
		Maintenance,
		TravelTime,
		CityStrengthModifier,
		MilitaryDomain,
		AdvisorType,
		InternalOnly
FROM	Districts
WHERE	DistrictType = 'DISTRICT_COMMERCIAL_HUB';

-----------------------------------------------
-- MutuallyExclusiveDistricts
-----------------------------------------------

INSERT INTO MutuallyExclusiveDistricts
		(District,						MutuallyExclusiveDistrict		)
VALUES	('DISTRICT_CVS_SWITZERLAND_UI',	'DISTRICT_GOVERNMENT'			),
		('DISTRICT_GOVERNMENT',			'DISTRICT_CVS_SWITZERLAND_UI'	);

-----------------------------------------------
-- District_TradeRouteYields
-----------------------------------------------

INSERT INTO District_TradeRouteYields
		(DistrictType,					YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	)
SELECT	'DISTRICT_CVS_SWITZERLAND_UI',	YieldType,		YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination	
FROM	District_TradeRouteYields
WHERE	DistrictType = 'DISTRICT_GOVERNMENT';

-----------------------------------------------
-- District_CitizenYieldChanges
-----------------------------------------------

INSERT INTO District_CitizenYieldChanges
		(DistrictType,					YieldType,	YieldChange	)
SELECT	'DISTRICT_CVS_SWITZERLAND_UI',	YieldType,	YieldChange
FROM	District_CitizenYieldChanges
WHERE	DistrictType = 'DISTRICT_GOVERNMENT';

-----------------------------------------------
-- District_Adjacencies
-----------------------------------------------

INSERT INTO District_Adjacencies
		(DistrictType,					YieldChangeId						)
VALUES	('DISTRICT_THEATER',			'ADJ_CVS_SWITZERLAND_CULTURE'		),
		('DISTRICT_HOLY_SITE',			'ADJ_CVS_SWITZERLAND_FAITH'			),
		('DISTRICT_COMMERCIAL_HUB',		'ADJ_CVS_SWITZERLAND_GOLD'			),
		('DISTRICT_HARBOR',				'ADJ_CVS_SWITZERLAND_GOLD'			),
		('DISTRICT_INDUSTRIAL_ZONE',	'ADJ_CVS_SWITZERLAND_PRODUCTION'	),
		('DISTRICT_CAMPUS',				'ADJ_CVS_SWITZERLAND_SCIENCE'		);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges
		(ID,								Description,							YieldType,			YieldChange,	TilesRequired,	AdjacentDistrict				)
VALUES	('ADJ_CVS_SWITZERLAND_CULTURE',		'LOC_ADJ_CVS_SWITZERLAND_CULTURE',		'YIELD_CULTURE',	1,				1,				'DISTRICT_CVS_SWITZERLAND_UI'	),
		('ADJ_CVS_SWITZERLAND_FAITH',		'LOC_ADJ_CVS_SWITZERLAND_FAITH',		'YIELD_FAITH',		1,				1,				'DISTRICT_CVS_SWITZERLAND_UI'	),
		('ADJ_CVS_SWITZERLAND_GOLD',		'LOC_ADJ_CVS_SWITZERLAND_GOLD',			'YIELD_GOLD',		1,				1,				'DISTRICT_CVS_SWITZERLAND_UI'	),
		('ADJ_CVS_SWITZERLAND_PRODUCTION',	'LOC_ADJ_CVS_SWITZERLAND_PRODUCTION',	'YIELD_PRODUCTION',	1,				1,				'DISTRICT_CVS_SWITZERLAND_UI'	),
		('ADJ_CVS_SWITZERLAND_SCIENCE',		'LOC_ADJ_CVS_SWITZERLAND_SCIENCE',		'YIELD_SCIENCE',	1,				1,				'DISTRICT_CVS_SWITZERLAND_UI'	),
		('ADJ_CVS_SWITZERLAND_FOOD',		'LOC_ADJ_CVS_SWITZERLAND_FOOD',			'YIELD_FOOD',		1,				1,				'DISTRICT_CVS_SWITZERLAND_UI'	);

-----------------------------------------------
-- TraitModifiers
-- Instead of DistrictModifiers because this needs to be routed via City-States
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('MINOR_CIV_SCIENTIFIC_TRAIT',	'MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE'	),
		('MINOR_CIV_CULTURAL_TRAIT',	'MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE'	),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION'	),
		('MINOR_CIV_TRADE_TRAIT',		'MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD'		),
		('MINOR_CIV_RELIGIOUS_TRAIT',	'MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH'		);
/*
-----------------------------------------------
-- DistrictModifiers
-----------------------------------------------

INSERT INTO	DistrictModifiers
		(DistrictType,					ModifierId										)
VALUES	('DISTRICT_CVS_SWITZERLAND_UI',	'MODIFIER_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE'	);
*/
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType									)
VALUES	('MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'COLLECTION_ALL_PLAYERS',		'EFFECT_ATTACH_MODIFIER'					),
		('MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_YIELD_CHANGE'		),
		('MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'COLLECTION_OWNER',				'EFFECT_ADJUST_INFLUENCE_POINTS_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId										)
VALUES	('MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE',			'MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE_MOD',		'MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT'		),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE',			'MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE_MOD',		'MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT'		),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION',		'MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION_MOD',	'MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT'	),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD',				'MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH',			'MODTYPE_CVS_SWITZERLAND_UI_ATTACH_PLAYERS',	'REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH_MOD',		'MODTYPE_CVS_SWITZERLAND_UI_DISTRICT_YIELD',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT'			),
		
		('MODIFIER_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'MODTYPE_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	NULL														);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,			Value												)
VALUES	('MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE',			'ModifierId',	'MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE_MOD'		),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE_MOD',		'YieldType',	'YIELD_SCIENCE'										),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE_MOD',		'Amount',		1													),

		('MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE',			'ModifierId',	'MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE_MOD'		),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE_MOD',		'YieldType',	'YIELD_CULTURE'										),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_CULTURE_MOD',		'Amount',		1													),
		
		('MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION',		'ModifierId',	'MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION_MOD'		),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION_MOD',	'YieldType',	'YIELD_PRODUCTION'									),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_PRODUCTION_MOD',	'Amount',		1													),

		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD',				'ModifierId',	'MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'YieldType',	'YIELD_GOLD'										),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_GOLD_MOD',			'Amount',		1													),

		('MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH',			'ModifierId',	'MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH_MOD'			),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH_MOD',		'YieldType',	'YIELD_FAITH'										),
		('MODIFIER_CVS_SWITZERLAND_UI_CS_FAITH_MOD',		'Amount',		1													),
		
		('MODIFIER_CVS_SWITZERLAND_UI_ADJUST_INFLUENCE',	'Amount',		1													);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
		(ModifierId,									Context,	Text																	)
VALUES	('MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE_MOD',	'Preview',	'+{1_Amount} {LOC_MODIFIER_CVS_SWITZERLAND_UI_CS_SCIENCE_DESCRIPTION}'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,											RequirementId											)
VALUES	('REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN',		'REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SWITZERLAND'			),
		('REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN',		'REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SUZERAIN'				),
		('REQSET_CVS_SWITZERLAND_UI_PLAYER_IS_SWITZERLAND'	,		'REQ_CVS_SWITZERLAND_UI_PLAYER_IS_ESCHER'				),

		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT'		),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT'				),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT'		),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT'				),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT',	'REQ_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT',	'REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT'				),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT'			),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT'				),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT'		),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT',		'REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT'				);

INSERT INTO RequirementSetRequirements
        (RequirementSetId,											RequirementId	)
SELECT	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT_MET',	'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType
FROM	Districts WHERE DistrictType = 'DISTRICT_CAMPUS';

INSERT INTO RequirementSetRequirements
        (RequirementSetId,											RequirementId	)
SELECT	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT_MET',	'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType
FROM	Districts WHERE DistrictType = 'DISTRICT_THEATER';

INSERT INTO RequirementSetRequirements
        (RequirementSetId,												RequirementId	)
SELECT	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT_MET',	'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType
FROM	Districts WHERE DistrictType = 'DISTRICT_INDUSTRIAL_ZONE';

INSERT INTO RequirementSetRequirements
        (RequirementSetId,											RequirementId	)
SELECT	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT_MET',		'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType
FROM	Districts WHERE DistrictType = 'DISTRICT_COMMERCIAL_HUB' OR DistrictType = 'DISTRICT_HARBOR';

INSERT INTO RequirementSetRequirements
        (RequirementSetId,											RequirementId	)
SELECT	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT_MET',	'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType
FROM	Districts WHERE DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,												RequirementSetType			)
VALUES	('REQSET_CVS_SWITZERLAND_UI_IS_SUZERAIN',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UI_PLAYER_IS_SWITZERLAND',				'REQUIREMENTSET_TEST_ANY'	),

		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT',			'REQUIREMENTSET_TEST_ALL'	),
		
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT_MET',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT_MET',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT_MET',	'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT_MET',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT_MET',		'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,											RequirementType										)
VALUES	('REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SWITZERLAND',		'REQUIREMENT_REQUIREMENTSET_IS_MET'					),
		('REQ_CVS_SWITZERLAND_UI_PLAYER_IS_ESCHER',				'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'			),
		('REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SUZERAIN',			'REQUIREMENT_PLAYER_IS_SUZERAIN'					),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'	),

		('REQ_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT',	'REQUIREMENT_REQUIREMENTSET_IS_MET'					),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT',	'REQUIREMENT_REQUIREMENTSET_IS_MET'					),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT',	'REQUIREMENT_REQUIREMENTSET_IS_MET'					),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT',		'REQUIREMENT_REQUIREMENTSET_IS_MET'					),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT',		'REQUIREMENT_REQUIREMENTSET_IS_MET'					);

INSERT INTO Requirements
		(RequirementId,									RequirementType	)
SELECT	'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType,		'REQUIREMENT_DISTRICT_TYPE_MATCHES'
FROM	Districts
WHERE	DistrictType = 'DISTRICT_CAMPUS'
OR		DistrictType = 'DISTRICT_THEATER'
OR		DistrictType = 'DISTRICT_INDUSTRIAL_ZONE'
OR		DistrictType = 'DISTRICT_COMMERCIAL_HUB'
OR		DistrictType = 'DISTRICT_HARBOR'
OR		DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value															)
VALUES	('REQ_CVS_SWITZERLAND_UI_PLAYER_IS_SWITZERLAND',		'RequirementSetId', 'REQSET_CVS_SWITZERLAND_UI_PLAYER_IS_SWITZERLAND'				),
		('REQ_CVS_SWITZERLAND_UI_PLAYER_IS_ESCHER',				'LeaderType',		'LEADER_CVS_ESCHER'												),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT',			'DistrictType',		'DISTRICT_CVS_SWITZERLAND_UI'									),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT',			'MinRange',			1																),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_DISTRICT',			'MaxRange',			1																),

		('REQ_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT',	'RequirementSetId',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_SCIENCE_DISTRICT_MET'		),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT',	'RequirementSetId',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_CULTURE_DISTRICT_MET'		),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT',	'RequirementSetId',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_PRODUCTION_DISTRICT_MET'	),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT',		'RequirementSetId',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_GOLD_DISTRICT_MET'			),
		('REQ_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT',		'RequirementSetId',	'REQSET_CVS_SWITZERLAND_UI_ADJACENT_FAITH_DISTRICT_MET'			);

INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value	)
SELECT	'REQ_CVS_SWITZERLAND_UI_IS_'||DistrictType,		'DistrictType',	DistrictType
FROM	Districts
WHERE	DistrictType = 'DISTRICT_CAMPUS'
OR		DistrictType = 'DISTRICT_THEATER'
OR		DistrictType = 'DISTRICT_INDUSTRIAL_ZONE'
OR		DistrictType = 'DISTRICT_COMMERCIAL_HUB'
OR		DistrictType = 'DISTRICT_HARBOR'
OR		DistrictType = 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture										)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT',		'MOMENT_DATA_DISTRICT',		'DISTRICT_CVS_SWITZERLAND_UI',	'MOMENT_DISTRICT_CVS_SWITZERLAND_UI.dds'	);