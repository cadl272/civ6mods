/*
	UA
	Authors: SeelingCat
*/

-----------------------------------------------
-- Temporary View
-----------------------------------------------

CREATE VIEW IF NOT EXISTS v_BerberUA (DistrictType, YieldType) AS
SELECT DISTINCT
		DistrictType, YieldType
FROM	District_TradeRouteYields
WHERE	(YieldChangeAsInternationalDestination = 1 OR YieldChangeAsInternationalDestination = 3)
AND		DistrictType IN
(
'DISTRICT_CAMPUS',
'DISTRICT_THEATER',
'DISTRICT_HOLY_SITE',
'DISTRICT_COMMERCIAL_HUB',
'DISTRICT_HARBOR',
'DISTRICT_INDUSTRIAL_ZONE',
'DISTRICT_HARBOR'
);

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_BERBER_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_BERBER_UA_FEATURE_ADJACENCY',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_BERBER_UA_TRADE_PASS_THROUGH',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_BERBER_UA_UNIT_VISIBILITY',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description											)
VALUES	('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'LOC_TRAIT_CIVILIZATION_CVS_BERBER_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_BERBER_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,			TraitType							)
VALUES	('CIVILIZATION_CVS_BERBER',	'TRAIT_CIVILIZATION_CVS_BERBER_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId									)
VALUES	('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_TRADE_GOLD'			),
		('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_TRADE_PRODUCTION'	),
		('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_TRADER_VISIBILITY'	);

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'TRAIT_CIVILIZATION_CVS_BERBER_UA',
		'MODIFIER_CVS_BERBER_UA_'||DistrictType
FROM	v_BerberUA;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType																)
VALUES	('MODTYPE_CVS_BERBER_UA_FEATURE_ADJACENCY',		'COLLECTION_PLAYER_CITIES',		'EFFECT_FEATURE_ADJACENCY'												),
		('MODTYPE_CVS_BERBER_UA_TRADE_PASS_THROUGH',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH'	),	
		('MODTYPE_CVS_BERBER_UA_UNIT_VISIBILITY',		'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_HIDDEN_VISIBILITY'									);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_BERBER_UA_TRADE_GOLD',			'MODTYPE_CVS_BERBER_UA_TRADE_PASS_THROUGH',		NULL									),
		('MODIFIER_CVS_BERBER_UA_TRADE_PRODUCTION',		'MODTYPE_CVS_BERBER_UA_TRADE_PASS_THROUGH',		NULL									),
		('MODIFIER_CVS_BERBER_UA_TRADER_VISIBILITY',	'MODTYPE_CVS_BERBER_UA_UNIT_VISIBILITY',		'REQSET_CVS_BERBER_UA_UNIT_IS_TRADER'	);

INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'MODTYPE_CVS_BERBER_UA_FEATURE_ADJACENCY'
FROM	v_BerberUA;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value				)
VALUES	('MODIFIER_CVS_BERBER_UA_TRADE_GOLD',			'YieldType',	'YIELD_GOLD'		),
		('MODIFIER_CVS_BERBER_UA_TRADE_GOLD',			'Amount',		3					),
		('MODIFIER_CVS_BERBER_UA_TRADE_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'	),
		('MODIFIER_CVS_BERBER_UA_TRADE_PRODUCTION',		'Amount',		2					),
		('MODIFIER_CVS_BERBER_UA_TRADER_VISIBILITY',	'Hidden',		1					);

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'DistrictType',
		DistrictType
FROM	v_BerberUA;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'FeatureType',
		'FEATURE_OASIS'
FROM	v_BerberUA;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'YieldType',
		YieldType
FROM	v_BerberUA;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'Amount',
		2
FROM	v_BerberUA;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'TilesRequired',
		1
FROM	v_BerberUA;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_BERBER_UA_'||DistrictType,
		'Description',
		'LOC_MODIFIER_CVS_BERBER_UA_'||DistrictType
FROM	v_BerberUA;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_BERBER_UA_UNIT_IS_TRADER',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId						)
VALUES	('REQSET_CVS_BERBER_UA_UNIT_IS_TRADER',		'REQ_CVS_BERBER_UA_UNIT_IS_TRADER'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,					Inverse	)
VALUES	('REQ_CVS_BERBER_UA_UNIT_IS_TRADER',	'REQUIREMENT_UNIT_TYPE_MATCHES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,		Value			)
VALUES	('REQ_CVS_BERBER_UA_UNIT_IS_TRADER',	'UnitType',	'UNIT_TRADER'	);

-----------------------------------------------
-- Drop View
-----------------------------------------------

-- DROP VIEW IF EXISTS v_BerberUA;
