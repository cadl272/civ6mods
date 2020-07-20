--==========================================================================================================================
-- Boran / Vanilla Traits
--==========================================================================================================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_LEADER_CVS_BORAN_UA',					'KIND_TRAIT'),
		('TRAIT_LEADER_IMPROVEMENT_CVS_DIZ',			'KIND_TRAIT'),
		('IMPROVEMENT_CVS_DIZ',							'KIND_IMPROVEMENT');
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,									TraitType)
VALUES	('LEADER_CVS_BORAN',							'TRAIT_LEADER_CVS_BORAN_UA');

INSERT INTO LeaderTraits
		(TraitType,										LeaderType)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_DIZ',			'LEADER_CVS_BORAN');
-----------------------------------------------			
-- Traits			
-----------------------------------------------				
INSERT INTO Traits				
		(TraitType,										Name,											Description)
VALUES	('TRAIT_LEADER_CVS_BORAN_UA',					'LOC_TRAIT_LEADER_CVS_BORAN_UA_NAME',		'LOC_TRAIT_LEADER_CVS_BORAN_UA_DESCRIPTION'),
		('TRAIT_LEADER_IMPROVEMENT_CVS_DIZ',			'LOC_IMPROVEMENT_CVS_DIZ_NAME',				null);


-----------------------------------------------		
-- TraitModifiers		
-----------------------------------------------			
INSERT INTO TraitModifiers
		(TraitType, ModifierId)
VALUES	('MINOR_CIV_DEFAULT_TRAIT', 'CVS_MINOR_CIV_BORAN_UA_RANGE'),
		('MINOR_CIV_DEFAULT_TRAIT', 'CVS_MINOR_CIV_BORAN_UA_GARRISON');
-----------------------------------------------
-- Modifiers
-----------------------------------------------
-- City-State Granted Defense
INSERT INTO Modifiers
		(ModifierId,							ModifierType,									SubjectRequirementSetId,		OwnerRequirementSetId)
VALUES  ('CVS_MINOR_CIV_BORAN_UA_RANGE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN',			NULL),
		('CVS_MINOR_CIV_BORAN_UA_RANGE_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_RANGED_STRIKE',	NULL,							'CVS_BORAN_UA_REQUIRES_IS_BORAN'),
		('CVS_MINOR_CIV_BORAN_UA_GARRISON',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',			'PLAYER_IS_SUZERAIN',			NULL),
		('CVS_MINOR_CIV_BORAN_UA_GARRISON_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_OUTER_DEFENSE',	NULL,							'CVS_BORAN_UA_REQUIRES_IS_BORAN');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
-- Levy Discount
INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	('CVS_MINOR_CIV_BORAN_UA_RANGE',		'ModifierId',	'CVS_MINOR_CIV_BORAN_UA_RANGE_MOD'),
		('CVS_MINOR_CIV_BORAN_UA_RANGE_MOD',	'Amount',		2),
		('CVS_MINOR_CIV_BORAN_UA_GARRISON',		'ModifierId',	'CVS_MINOR_CIV_BORAN_UA_GARRISON_MOD'),
		('CVS_MINOR_CIV_BORAN_UA_GARRISON_MOD',	'Amount',		2);
-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES ('CVS_BORAN_UA_REQUIRES_IS_BORAN', 'REQUIREMENTSET_TEST_ALL');
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES	('CVS_BORAN_UA_REQUIRES_IS_BORAN', 'CVS_BORAN_UA_CHECK_IS_BORAN');
-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES ('CVS_BORAN_UA_CHECK_IS_BORAN', 'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	0);
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES ('CVS_BORAN_UA_CHECK_IS_BORAN', 'LeaderType', 'LEADER_CVS_BORAN');