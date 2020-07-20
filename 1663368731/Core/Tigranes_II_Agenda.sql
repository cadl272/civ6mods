/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,									Kind			)
VALUES  ('TRAIT_AGENDA_CVS_TIGRANES_II',		'KIND_TRAIT'	),
		('MODTYPE_CVS_TIGRANES_II_OPPORTUNIST',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description									)
VALUES 	('AGENDA_CVS_TIGRANES_II',	'LOC_AGENDA_CVS_TIGRANES_II_NAME',	'LOC_AGENDA_CVS_TIGRANES_II_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,							Name,								Description									)
VALUES	('TRAIT_AGENDA_CVS_TIGRANES_II',	'LOC_AGENDA_CVS_TIGRANES_II_NAME',	'LOC_AGENDA_CVS_TIGRANES_II_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_TIGRANES_II',	'TRAIT_AGENDA_CVS_TIGRANES_II'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType					)
VALUES 	('LEADER_CVS_TIGRANES_II',	'AGENDA_CVS_TIGRANES_II'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo				)
VALUES 	('AGENDA_CVS_TIGRANES_II',	'AGENDA_STANDING_ARMY'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,							ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_TIGRANES_II',	'AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY'		),
		('TRAIT_AGENDA_CVS_TIGRANES_II',	'AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,					EffectType								)
VALUES	('MODTYPE_CVS_TIGRANES_II_OPPORTUNIST',	'COLLECTION_MAJOR_PLAYERS',		'EFFECT_DIPLOMACY_AGENDA_OPPORTUNIST'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									OwnerRequirementSetId,		SubjectRequirementSetId					)
VALUES	('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'MODTYPE_CVS_TIGRANES_II_OPPORTUNIST',			'ON_TURN_STARTED',			'REQSET_AGENDA_CVS_TIGRANES_II_HAPPY'	),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	NULL,						'REQSET_AGENDA_CVS_TIGRANES_II_UNHAPPY'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	

INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'RecentSurpriseWarBonus',		15														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'SurpriseWarDegradeTurns',		3														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'EachSurpriseWarBonus',			1														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'NeverSurpriseWarPenalty',		0														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY',	'StatementKey',					'AGENDA_MODIFIER_CVS_TIGRANES_II_HAPPY'					),

		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'InitialValue',					-7														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'ReductionTurns',				7														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'ReductionValue',				-1														),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_TIGRANES_II_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_TIGRANES_II_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_TIGRANES_II_UNHAPPY'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType			)
VALUES	('REQSET_AGENDA_CVS_TIGRANES_II_UNHAPPY',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_AGENDA_CVS_TIGRANES_II_HAPPY',				'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId						)
VALUES	('REQSET_AGENDA_CVS_TIGRANES_II_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_AGENDA_CVS_TIGRANES_II_UNHAPPY',	'REQUIRES_HAS_LOW_STANDING_ARMY'	),
		('REQSET_AGENDA_CVS_TIGRANES_II_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_AGENDA_CVS_TIGRANES_II_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_AGENDA_CVS_TIGRANES_II_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			);



