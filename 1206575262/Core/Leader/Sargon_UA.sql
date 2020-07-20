/*
	UA
	Credits: Chrisy15, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_SARGON_UA',					'KIND_TRAIT'	),
		('MODTYPE_CVS_SARGON_UA_CITY_PRODUCTION',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_SARGON_UA_DISTRICT_PRODUCTION',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_SARGON_UA_CITY_AMENITIES',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_SARGON_UA',	'LOC_TRAIT_LEADER_CVS_SARGON_UA_NAME',	'LOC_TRAIT_LEADER_CVS_SARGON_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_SARGON',	'TRAIT_LEADER_CVS_SARGON_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId										)	
VALUES	('TRAIT_LEADER_CVS_SARGON_UA',	'MODIFIER_CVS_SARGON_UA_CITY_PRODUCTION'		),
		('TRAIT_LEADER_CVS_SARGON_UA',	'MODIFIER_CVS_SARGON_UA_DISTRICT_PRODUCTION'	),
		('TRAIT_LEADER_CVS_SARGON_UA',	'MODIFIER_CVS_SARGON_UA_CITY_AMENITIES'			);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_SARGON_UA_CITY_PRODUCTION',		'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_CITY_YIELD_MODIFIER'				),
		('MODTYPE_CVS_SARGON_UA_DISTRICT_PRODUCTION',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_DISTRICT_PRODUCTION'				),
		('MODTYPE_CVS_SARGON_UA_CITY_AMENITIES',		'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_EXTRA_ENTERTAINMENT'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId,					RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_SARGON_UA_CITY_PRODUCTION',		'MODTYPE_CVS_SARGON_UA_CITY_PRODUCTION',		'REQSET_CVS_SARGON_UA_HOME_CONTINENT',		0,			0			),
		('MODIFIER_CVS_SARGON_UA_DISTRICT_PRODUCTION',	'MODTYPE_CVS_SARGON_UA_DISTRICT_PRODUCTION',	'REQSET_CVS_SARGON_UA_HAS_GARRISON',		0,			0			),
		('MODIFIER_CVS_SARGON_UA_CITY_AMENITIES',		'MODTYPE_CVS_SARGON_UA_CITY_AMENITIES',			'REQSET_CVS_SARGON_UA_FOREIGN_CONTINENT',	0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value					)
VALUES	('MODIFIER_CVS_SARGON_UA_CITY_PRODUCTION',		'Amount',		25						),
		('MODIFIER_CVS_SARGON_UA_DISTRICT_PRODUCTION',	'DistrictType',	'DISTRICT_CVS_AKKAD_UI'	),
		('MODIFIER_CVS_SARGON_UA_DISTRICT_PRODUCTION',	'Amount',		50						),
		('MODIFIER_CVS_SARGON_UA_CITY_AMENITIES',		'Amount',		1						);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_SARGON_UA_HOME_CONTINENT',		'REQ_CVS_SARGON_UA_HOME_CONTINENT'		),
		('REQSET_CVS_SARGON_UA_HOME_CONTINENT',		'REQ_CVS_SARGON_UA_CITY_HAS_UI'			),
		('REQSET_CVS_SARGON_UA_FOREIGN_CONTINENT',	'REQ_CVS_SARGON_UA_FOREIGN_CONTINENT'	),
		('REQSET_CVS_SARGON_UA_FOREIGN_CONTINENT',	'REQ_CVS_SARGON_UA_CITY_HAS_UI'			),
		('REQSET_CVS_SARGON_UA_FOREIGN_CONTINENT',	'REQ_CVS_SARGON_UA_CITY_IS_CITY_CENTER'	),
		('REQSET_CVS_SARGON_UA_HAS_GARRISON',		'REQ_CVS_SARGON_UA_CITY_HAS_GARRISON'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_SARGON_UA_HOME_CONTINENT',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SARGON_UA_FOREIGN_CONTINENT',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_SARGON_UA_HAS_GARRISON',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,								Inverse	)
VALUES	('REQ_CVS_SARGON_UA_CITY_HAS_UI',			'REQUIREMENT_CITY_HAS_DISTRICT',				0		),
		('REQ_CVS_SARGON_UA_CITY_IS_CITY_CENTER',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',			0		),
		('REQ_CVS_SARGON_UA_FOREIGN_CONTINENT',		'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT',	1		),
		('REQ_CVS_SARGON_UA_HOME_CONTINENT',		'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT',	0		),
		('REQ_CVS_SARGON_UA_CITY_HAS_GARRISON',		'REQUIREMENT_CITY_HAS_GARRISON_UNIT',			0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value						)
VALUES	('REQ_CVS_SARGON_UA_CITY_HAS_UI',			'DistrictType',		'DISTRICT_CVS_AKKAD_UI'		),
		('REQ_CVS_SARGON_UA_CITY_IS_CITY_CENTER',	'DistrictType',		'DISTRICT_CITY_CENTER'		);
		

