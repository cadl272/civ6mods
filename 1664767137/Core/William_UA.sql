/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,									Kind			)
VALUES	('TRAIT_LEADER_CVS_WILLIAM_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_WILLIAM_UA_ALWAYS_LOYAL',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_WILLIAM_UA',	'LOC_TRAIT_LEADER_CVS_WILLIAM_UA_NAME',	'LOC_TRAIT_LEADER_CVS_WILLIAM_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,					TraitType						)
VALUES	('LEADER_CVS_WILLIAM_ENGLAND',	'TRAIT_LEADER_CVS_WILLIAM_UA'	);

INSERT INTO	LeaderTraits
		(LeaderType,					TraitType	)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'TRAIT_LEADER_CVS_WILLIAM_UA'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_LEADER_CVS_WILLIAM_UA',	'MODIFIER_CVS_WILLIAM_UA_ALWAYS_LOYAL'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,				EffectType							)
VALUES	('MODTYPE_CVS_WILLIAM_UA_ALWAYS_LOYAL',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_ALWAYS_LOYAL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_WILLIAM_UA_ALWAYS_LOYAL',	'MODTYPE_CVS_WILLIAM_UA_ALWAYS_LOYAL',	'REQSET_CVS_WILLIAM_UA_HAS_GOVERNOR'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,			Value	)
VALUES	('MODIFIER_CVS_WILLIAM_UA_ALWAYS_LOYAL',	'AlwaysLoyal',	1		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_WILLIAM_UA_HAS_GOVERNOR',	'REQ_CVS_WILLIAM_UA_HAS_GOVERNOR'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_WILLIAM_UA_HAS_GOVERNOR',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,								Inverse	)
VALUES	('REQ_CVS_WILLIAM_UA_HAS_GOVERNOR',		'REQUIREMENT_CITY_HAS_GOVERNOR_WITH_X_TITLES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value					)
VALUES	('REQ_CVS_WILLIAM_UA_HAS_GOVERNOR',			'Amount',		3						),
		('REQ_CVS_WILLIAM_UA_HAS_GOVERNOR',			'Established',	1						);
