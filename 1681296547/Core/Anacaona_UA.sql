/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,									Kind			)
VALUES	('TRAIT_LEADER_CVS_ANACAONA_UA',		'KIND_TRAIT'	),
		('MODTYPE_CVS_ANACAONA_UA_FAITH_GPP',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_ANACAONA_UA_FAITH_ENVOY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_ANACAONA_UA',	'LOC_TRAIT_LEADER_CVS_ANACAONA_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ANACAONA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_ANACAONA',	'TRAIT_LEADER_CVS_ANACAONA_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId								)	
VALUES	('TRAIT_LEADER_CVS_ANACAONA_UA',	'MODIFIER_CVS_ANACAONA_UA_FAITH_GPP'	),
		('TRAIT_LEADER_CVS_ANACAONA_UA',	'MODIFIER_CVS_ANACAONA_UA_FAITH_ENVOY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,			EffectType														)
VALUES	('MODTYPE_CVS_ANACAONA_UA_FAITH_GPP',		'COLLECTION_OWNER',		'EFFECT_ADJUST_GREAT_PERSON_PATRONAGE_DISCOUNT_PERCENT'			),
		('MODTYPE_CVS_ANACAONA_UA_FAITH_ENVOY',		'COLLECTION_OWNER',		'EFFECT_ADJUST_PLAYER_YIELD_CHANGE_PER_USED_INFLUENCE_TOKEN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId		)
VALUES	('MODIFIER_CVS_ANACAONA_UA_FAITH_GPP',		'MODTYPE_CVS_ANACAONA_UA_FAITH_GPP',		NULL						),
		('MODIFIER_CVS_ANACAONA_UA_FAITH_ENVOY',	'MODTYPE_CVS_ANACAONA_UA_FAITH_ENVOY',		NULL						);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,			Value			)
VALUES	('MODIFIER_CVS_ANACAONA_UA_FAITH_GPP',		'YieldType',	'YIELD_FAITH'	),
		('MODIFIER_CVS_ANACAONA_UA_FAITH_GPP',		'Amount',		25				),
		('MODIFIER_CVS_ANACAONA_UA_FAITH_ENVOY',	'YieldType',	'YIELD_FAITH'	),
		('MODIFIER_CVS_ANACAONA_UA_FAITH_ENVOY',	'Amount',		1				);
