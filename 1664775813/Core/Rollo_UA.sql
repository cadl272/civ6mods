/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_ROLLO_UA',				'KIND_TRAIT'	),
		('ABILITY_CVS_ROLLO_UA',					'KIND_ABILITY'	),
		('MODTYPE_CVS_ROLLO_UA_ESCORT_MOBILITY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description									)
VALUES	('TRAIT_LEADER_CVS_ROLLO_UA',	'LOC_TRAIT_LEADER_CVS_ROLLO_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ROLLO_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType					)
VALUES	('LEADER_CVS_ROLLO',	'TRAIT_LEADER_CVS_ROLLO_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_LEADER_CVS_ROLLO_UA',	'MODIFIER_CVS_ROLLO_UA_ESCORT_MOBILITY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,					EffectType								)
VALUES	('MODTYPE_CVS_ROLLO_UA_ESCORT_MOBILITY',	'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_ESCORT_MOBILITY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId,			RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_ROLLO_UA_ESCORT_MOBILITY',	'MODTYPE_CVS_ROLLO_UA_ESCORT_MOBILITY',		'REQSET_CVS_ROLLO_UA_IS_NAVAL',		0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,				Value	)
VALUES	('MODIFIER_CVS_ROLLO_UA_ESCORT_MOBILITY',	'EscortMobility',	1		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId				)
VALUES	('REQSET_CVS_ROLLO_UA_IS_NAVAL',	'REQ_CVS_ROLLO_UA_IS_NAVAL'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_ROLLO_UA_IS_NAVAL',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,								Inverse	)
VALUES	('REQ_CVS_ROLLO_UA_IS_NAVAL',			'REQUIREMENT_UNIT_DOMAIN_MATCHES',				0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value			)
VALUES	('REQ_CVS_ROLLO_UA_IS_NAVAL',	'UnitDomain',	'DOMAIN_SEA'	);