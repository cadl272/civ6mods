/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Temporary View
-----------------------------------------------

CREATE VIEW IF NOT EXISTS v_PhilippinesUA AS
SELECT DISTINCT
          a.ImprovementType, a.YieldType, a.YieldChange, d.BonusYieldChange, d.PrereqTech, d.PrereqCivic, SUBSTR(a.YieldType, 7) AS YieldRef, SUBSTR(a.ImprovementType, 13) AS ImprovementRef, SUBSTR(d.PrereqTech, 6) AS TechRef, SUBSTR(d.PrereqCivic, 7) AS CivicRef
FROM      Improvement_YieldChanges AS a, Improvement_ValidResources AS b, Improvements AS c, Improvement_BonusYieldChanges AS d
WHERE     a.ImprovementType IN (SELECT b.ImprovementType WHERE b.ResourceType IN (SELECT e.ResourceType FROM Resources AS e WHERE e.ResourceClassType = 'RESOURCECLASS_LUXURY'))
AND       c.TraitType IS NULL
AND       d.YieldType = a.YieldType
AND       d.ImprovementType = a.ImprovementType;

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',		'KIND_TRAIT'	),
		('MODTYPE_CVS_PHILIPPINES_UA_TOURISM_TRADE',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_PHILIPPINES_UA_PLOT_YIELD',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,					TraitType								)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,									ModifierId										)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',	'MODIFIER_CVS_PHILIPPINES_UA_TRADE_TOURISM'		);

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT DISTINCT
		'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE'
FROM	v_PhilippinesUA
WHERE	YieldChange > 0;

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT DISTINCT
		'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef
FROM	v_PhilippinesUA
WHERE	BonusYieldChange > 0
AND		TechRef IS NOT NULL;

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT DISTINCT
		'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef
FROM	v_PhilippinesUA
WHERE	BonusYieldChange > 0
AND		CivicRef IS NOT NULL;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,						EffectType											)
VALUES	('MODTYPE_CVS_PHILIPPINES_UA_TOURISM_TRADE',	'COLLECTION_OWNER',					'EFFECT_ADJUST_PLAYER_TRADE_ROUTE_TOURISM_MODIFIER'	),
		('MODTYPE_CVS_PHILIPPINES_UA_PLOT_YIELD',		'COLLECTION_PLAYER_PLOT_YIELDS',	'EFFECT_ADJUST_PLOT_YIELD'							);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_PHILIPPINES_UA_TRADE_TOURISM',	'MODTYPE_CVS_PHILIPPINES_UA_TOURISM_TRADE',	NULL					);

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE',
		'MODTYPE_CVS_PHILIPPINES_UA_PLOT_YIELD',
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE'
FROM	v_PhilippinesUA
WHERE	YieldChange > 0;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'MODTYPE_CVS_PHILIPPINES_UA_PLOT_YIELD',
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'MODTYPE_CVS_PHILIPPINES_UA_PLOT_YIELD',
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,		Value	)
VALUES	('MODIFIER_CVS_PHILIPPINES_UA_TRADE_TOURISM',		'Amount',	25		);

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE',
		'YieldType',
		YieldType
FROM	v_PhilippinesUA
WHERE	YieldChange > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE',
		'Amount',
		YieldChange
FROM	v_PhilippinesUA
WHERE	YieldChange > 0;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'YieldType',
		YieldType
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'Amount',
		BonusYieldChange
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'YieldType',
		YieldType
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT DISTINCT
		'MODIFIER_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'Amount',
		BonusYieldChange
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType			)
VALUES	('REQSET_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQUIREMENTSET_TEST_ANY'	);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE',
		'REQUIREMENTSET_TEST_ALL'
FROM	v_PhilippinesUA;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'REQUIREMENTSET_TEST_ALL'
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'REQUIREMENTSET_TEST_ALL'
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId									)
VALUES	('REQSET_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY',		'REQ_CVS_PHILIPPINES_UA_ADJ_HAS_LUXURY'			),
		('REQSET_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY',		'REQ_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT'	),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_CAMPUS'				),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_THEATER'			),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_HOLY_SITE'			),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_COMMERCIAL_HUB'		),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_HARBOR'				),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_INDUSTRIAL_ZONE'	),
		('REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQ_CVS_PHILIPPINES_UA_ADJ_ENCAMPMENT'			);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE',
		'REQ_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY'
FROM	v_PhilippinesUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_BASE',
		'REQ_CVS_PHILIPPINES_UA_HAS_'||ImprovementRef
FROM	v_PhilippinesUA;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'REQ_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY'
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'REQ_CVS_PHILIPPINES_UA_HAS_'||ImprovementRef
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||TechRef,
		'REQ_CVS_PHILIPPINES_UA_HAS_'||TechRef
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'REQ_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY'
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'REQ_CVS_PHILIPPINES_UA_HAS_'||ImprovementRef
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT DISTINCT
		'REQSET_CVS_PHILIPPINES_UA_'||ImprovementRef||'_'||YieldRef||'_'||CivicRef,
		'REQ_CVS_PHILIPPINES_UA_HAS_'||CivicRef
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,										RequirementType,									Inverse	)
VALUES	('REQ_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY',		'REQUIREMENT_REQUIREMENTSET_IS_MET',				0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_HAS_LUXURY',			'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',		0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'REQUIREMENT_REQUIREMENTSET_IS_MET',				0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_CAMPUS',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_THEATER',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_HOLY_SITE',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_COMMERCIAL_HUB',		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_HARBOR',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_INDUSTRIAL_ZONE',		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		),
		('REQ_CVS_PHILIPPINES_UA_ADJ_ENCAMPMENT',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',	0		);

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT DISTINCT
		'REQ_CVS_PHILIPPINES_UA_HAS_'||ImprovementRef,
		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'
FROM	v_PhilippinesUA;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT DISTINCT
		'REQ_CVS_PHILIPPINES_UA_HAS_'||TechRef,
		'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT DISTINCT
		'REQ_CVS_PHILIPPINES_UA_HAS_'||CivicRef,
		'REQUIREMENT_PLAYER_HAS_CIVIC'
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,										Name,					Value												)
VALUES	('REQ_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY',		'RequirementSetId',		'REQSET_CVS_PHILIPPINES_UA_HAS_LUXURY_SPECIALTY'	),
		('REQ_CVS_PHILIPPINES_UA_ADJ_HAS_LUXURY',			'ResourceClassType',	'RESOURCECLASS_LUXURY'								),
		('REQ_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT',	'RequirementSetId',		'REQSET_CVS_PHILIPPINES_UA_ADJ_SPECIALTY_DISTRICT'	),
		('REQ_CVS_PHILIPPINES_UA_ADJ_CAMPUS',				'DistrictType',			'DISTRICT_CAMPUS'									),
		('REQ_CVS_PHILIPPINES_UA_ADJ_THEATER',				'DistrictType',			'DISTRICT_THEATER'									),
		('REQ_CVS_PHILIPPINES_UA_ADJ_HOLY_SITE',			'DistrictType',			'DISTRICT_HOLY_SITE'								),
		('REQ_CVS_PHILIPPINES_UA_ADJ_COMMERCIAL_HUB',		'DistrictType',			'DISTRICT_COMMERCIAL_HUB'							),
		('REQ_CVS_PHILIPPINES_UA_ADJ_HARBOR',				'DistrictType',			'DISTRICT_HARBOR'									),
		('REQ_CVS_PHILIPPINES_UA_ADJ_INDUSTRIAL_ZONE',		'DistrictType',			'DISTRICT_INDUSTRIAL_ZONE'							),
		('REQ_CVS_PHILIPPINES_UA_ADJ_ENCAMPMENT',			'DistrictType',			'DISTRICT_ENCAMPMENT'								);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT DISTINCT
		'REQ_CVS_PHILIPPINES_UA_HAS_'||ImprovementRef,
		'ImprovementType',
		ImprovementType
FROM	v_PhilippinesUA;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT DISTINCT
		'REQ_CVS_PHILIPPINES_UA_HAS_'||TechRef,
		'TechnologyType',
		PrereqTech
FROM	v_PhilippinesUA
WHERE	TechRef IS NOT NULL;

INSERT INTO RequirementArguments (RequirementId, Name, Value)
SELECT DISTINCT
		'REQ_CVS_PHILIPPINES_UA_HAS_'||CivicRef,
		'CivicType',
		PrereqCivic
FROM	v_PhilippinesUA
WHERE	CivicRef IS NOT NULL;

-----------------------------------------------
-- Drop View
-----------------------------------------------

DROP VIEW IF EXISTS v_PhilippinesUA;