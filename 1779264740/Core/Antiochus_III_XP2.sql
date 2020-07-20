/*
	XP2
	Authors: ChimpanG
*/

-----------------------------------------------
-- Traits
-----------------------------------------------

UPDATE	Traits
SET		Description = 'LOC_TRAIT_LEADER_CVS_ANTIOCHUS_III_UA_XP2_DESCRIPTION'
WHERE	TraitType = 'TRAIT_LEADER_CVS_ANTIOCHUS_III_UA';

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('MODTYPE_CVS_ANTIOCHUS_III_UA_GRIEVANCE_DECAY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,								ModifierId										)
VALUES	('TRAIT_LEADER_CVS_ANTIOCHUS_III_UA',	'MODIFIER_CVS_ANTIOCHUS_III_UA_GRIEVANCE_DECAY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,		EffectType								)
VALUES	('MODTYPE_CVS_ANTIOCHUS_III_UA_GRIEVANCE_DECAY',	'COLLECTION_OWNER',	'EFFECT_ADJUST_PLAYER_GRIEVANCE_DECAY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType									)
VALUES	('MODIFIER_CVS_ANTIOCHUS_III_UA_GRIEVANCE_DECAY',	'MODTYPE_CVS_ANTIOCHUS_III_UA_GRIEVANCE_DECAY'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,		Value	)
VALUES	('MODIFIER_CVS_ANTIOCHUS_III_UA_GRIEVANCE_DECAY',	'Amount',	-50		);