--==========================================================================================================================
-- Kawad I / Vanilla Traits
--==========================================================================================================================
-----------------------------------------------
-- Types
-----------------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_LEADER_CVS_KAWAD_I_TTBAM',			'KIND_TRAIT'),
		('TRAIT_LEADER_CVS_KAWAD_I_AMARGAR',		'KIND_TRAIT'),
		('IMPROVEMENT_CVS_AMARGAR',					'KIND_IMPROVEMENT');
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,				TraitType)
VALUES	('LEADER_CVS_KAWAD_I',		'TRAIT_LEADER_CVS_KAWAD_I_TTBAM'),
		('LEADER_CVS_KAWAD_I',		'TRAIT_LEADER_CVS_KAWAD_I_AMARGAR');
-----------------------------------------------
-- WHAT DO PERSIAN RUGS GET IF YOU ROLL THEM TOO OFTEN? CARPET TUNNEL SYNDROME!
-----------------------------------------------			
-- Traits			
-----------------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,											Description)
VALUES	('TRAIT_LEADER_CVS_KAWAD_I_TTBAM',			'LOC_TRAIT_LEADER_CVS_KAWAD_I_TTBAM_NAME',		'LOC_TRAIT_LEADER_CVS_KAWAD_I_TTBAM_DESCRIPTION'),
		('TRAIT_LEADER_CVS_KAWAD_I_AMARGAR',		'LOC_IMPROVEMENT_CVS_AMARGAR_NAME',				null);
-----------------------------------------------		
-- TraitModifiers		
-----------------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_CVS_KAWAD_I_TTBAM',	'CVS_TTBAM_SPY_WITH_RELIGION'),
		('TRAIT_LEADER_CVS_KAWAD_I_TTBAM',	'CVS_TTBAM_007_WITH_RELIGION'),
		('TRAIT_LEADER_CVS_KAWAD_I_TTBAM',	'CVS_TTBAM_SPY_WITH_FAITH');
-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,							RunOnce,	Permanent,	OwnerRequirementSetId,						SubjectRequirementSetId)
VALUES	('CVS_TTBAM_SPY_WITH_RELIGION',			'DYNMOD_CVS_TTBAM_GRANT_SPY_SLOT',		1,			1,			null,										'CVS_TTBAM_REQUIRES_HAS_FOUNDED_RELIGION'),
		('CVS_TTBAM_007_WITH_RELIGION',			'DYNMOD_CVS_TTBAM_GRANT_SPY',			1,			1,			'CVS_TTBAM_REQUIRES_HAS_FOUNDED_RELIGION',	null),
		('CVS_TTBAM_SPY_WITH_FAITH',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',	0,	1,	null,										null);	
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	('CVS_TTBAM_SPY_WITH_RELIGION',			'Amount',		1),
		('CVS_TTBAM_007_WITH_RELIGION',			'UnitType',		'UNIT_SPY'),
		('CVS_TTBAM_007_WITH_RELIGION',			'Amount',		1),
		('CVS_TTBAM_SPY_WITH_FAITH',			'Tag',			'CLASS_SPY');
-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('CVS_TTBAM_REQUIRES_HAS_FOUNDED_RELIGION',		'REQUIREMENTSET_TEST_ALL');
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('CVS_TTBAM_REQUIRES_HAS_FOUNDED_RELIGION',		'CVS_TTBAM_CHECK_RELIGIOUS_NUT');
-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId, 								RequirementType,					Inverse)
VALUES	('CVS_TTBAM_CHECK_RELIGIOUS_NUT',				'REQUIREMENT_FOUNDED_NO_RELIGION',	1);