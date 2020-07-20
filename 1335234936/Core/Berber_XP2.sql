/*
	XP2
	Authors: SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,									Kind			)
VALUES	('MODTYPE_CVS_BERBER_UA_ENEMY_DAMAGE',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_BERBER_UA_UNIT_IMMUNITY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

UPDATE	Traits
SET		Description = 'LOC_TRAIT_CIVILIZATION_CVS_BERBER_UA_XP2_DESCRIPTION'
WHERE	TraitType = 'TRAIT_CIVILIZATION_CVS_BERBER_UA';

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

DELETE FROM TraitModifiers
WHERE ModifierId = 'MODIFIER_CVS_BERBER_UA_TRADER_VISIBILITY';

/**
INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId									)
VALUES	('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_GRADIENT_IMMUNE'	),
		('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_HABOOB_IMMUNE'		),
		('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_GRADIENT_DAMAGE'	),
		('TRAIT_CIVILIZATION_CVS_BERBER_UA',	'MODIFIER_CVS_BERBER_UA_HABOOB_IMMUNE'		);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,		EffectType														)
VALUES	('MODTYPE_CVS_BERBER_UA_ENEMY_DAMAGE',	'COLLECTION_OWNER',	'EFFECT_ADJUST_RANDOM_EVENT_MODIFIED_DAMAGE_OPPOSING_PLAYER'	),
		('MODTYPE_CVS_BERBER_UA_UNIT_IMMUNITY',	'COLLECTION_OWNER',	'EFFECT_ADJUST_RANDOM_EVENT_NO_UNIT_DAMAGE'						);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_BERBER_UA_GRADIENT_IMMUNE',	'MODTYPE_CVS_BERBER_UA_UNIT_IMMUNITY',	NULL					),
		('MODIFIER_CVS_BERBER_UA_HABOOB_IMMUNE',	'MODTYPE_CVS_BERBER_UA_UNIT_IMMUNITY',	NULL					),
		('MODIFIER_CVS_BERBER_UA_GRADIENT_DAMAGE',	'MODTYPE_CVS_BERBER_UA_ENEMY_DAMAGE',	NULL					),
		('MODIFIER_CVS_BERBER_UA_HABOOB_DAMAGE',	'MODTYPE_CVS_BERBER_UA_ENEMY_DAMAGE',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,				Value								)
VALUES	('MODIFIER_CVS_BERBER_UA_GRADIENT_IMMUNE',	'RandomEventType',	'RANDOM_EVENT_DUST_STORM_GRADIENT'	),
		('MODIFIER_CVS_BERBER_UA_GRADIENT_IMMUNE',	'NoDamage',			1									),
		('MODIFIER_CVS_BERBER_UA_HABOOB_IMMUNE',	'RandomEventType',	'RANDOM_EVENT_DUST_STORM_HABOOB'	),
		('MODIFIER_CVS_BERBER_UA_HABOOB_IMMUNE',	'NoDamage',			1									),
		('MODIFIER_CVS_BERBER_UA_GRADIENT_DAMAGE',	'RandomEventType',	'RANDOM_EVENT_DUST_STORM_GRADIENT'	),
		('MODIFIER_CVS_BERBER_UA_GRADIENT_DAMAGE',	'Amount',			100									),
		('MODIFIER_CVS_BERBER_UA_HABOOB_DAMAGE',	'RandomEventType',	'RANDOM_EVENT_DUST_STORM_HABOOB'	),
		('MODIFIER_CVS_BERBER_UA_HABOOB_DAMAGE',	'Amount',			100									);
**/
-----------------------------------------------
-- Improvements_XP2
-----------------------------------------------

INSERT INTO Improvements_XP2
		(ImprovementType,					DisasterResistant				)
VALUES	('IMPROVEMENT_CVS_BERBER_UI',		1	);