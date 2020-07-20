/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types (Type, Kind)
SELECT	'MODTYPE_CVS_SWITZERLAND_UA_ATTACH_PLAYERS', 'KIND_MODIFIER'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO	Types (Type, Kind)
SELECT	'MODTYPE_CVS_SWITZERLAND_UA_ADJUST_FAVOR', 'KIND_MODIFIER'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- Traits
-----------------------------------------------

UPDATE	Traits
SET		Description = 'LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_XP2_DESCRIPTION'
WHERE	TraitType = 'TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA'
AND EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));
		
-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

DELETE FROM TraitModifiers
WHERE TraitType = 'TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA'
AND EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'MINOR_CIV_DEFAULT_TRAIT', 'MODIFIER_CVS_SWITZERLAND_UA_FAVOR_ATTACH'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers (ModifierType, CollectionType, EffectType)
SELECT	'MODTYPE_CVS_SWITZERLAND_UA_ATTACH_PLAYERS', 'COLLECTION_ALL_PLAYERS', 'EFFECT_ATTACH_MODIFIER'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO	DynamicModifiers (ModifierType, CollectionType, EffectType)
SELECT	'MODTYPE_CVS_SWITZERLAND_UA_ADJUST_FAVOR', 'COLLECTION_OWNER', 'EFFECT_ADJUST_PLAYER_EXTRA_FAVOR_PER_TURN'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
SELECT	'MODIFIER_CVS_SWITZERLAND_UA_FAVOR_ATTACH', 'MODTYPE_CVS_SWITZERLAND_UA_ATTACH_PLAYERS', 'REQSET_CVS_SWITZERLAND_UA_IS_SUZERAIN'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_CVS_SWITZERLAND_UA_FAVOR', 'MODTYPE_CVS_SWITZERLAND_UA_ADJUST_FAVOR'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_SWITZERLAND_UA_FAVOR_ATTACH', 'ModifierId', 'MODIFIER_CVS_SWITZERLAND_UA_FAVOR'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_SWITZERLAND_UA_FAVOR', 'Amount', 1
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
SELECT	'REQSET_CVS_SWITZERLAND_UA_IS_SUZERAIN', 'REQUIREMENTSET_TEST_ALL'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_SWITZERLAND_UA_IS_SUZERAIN', 'REQ_CVS_SWITZERLAND_UA_IS_SUZERAIN'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
SELECT	'REQSET_CVS_SWITZERLAND_UA_IS_SUZERAIN', 'REQ_CVS_PLAYER_IS_SWITZERLAND'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements (RequirementId, RequirementType)
SELECT	'REQ_CVS_SWITZERLAND_UA_IS_SUZERAIN', 'REQUIREMENT_PLAYER_IS_SUZERAIN'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP2'));