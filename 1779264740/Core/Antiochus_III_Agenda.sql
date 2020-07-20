/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,								Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ANTIOCHUS_III',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,					Name,									Description									)
VALUES 	('AGENDA_CVS_ANTIOCHUS_III',	'LOC_AGENDA_CVS_ANTIOCHUS_III_NAME',	'LOC_AGENDA_CVS_ANTIOCHUS_III_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,					AgendaType					)
VALUES 	('LEADER_CVS_ANTIOCHUS_III',	'AGENDA_CVS_ANTIOCHUS_III'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,						AgendaTwo						)
VALUES 	('AGENDA_CVS_ANTIOCHUS_III',	'AGENDA_CITY_STATE_PROTECTOR'	),
		('AGENDA_CVS_ANTIOCHUS_III',	'AGENDA_CITY_STATE_ALLY'		),
		('AGENDA_CVS_ANTIOCHUS_III',	'AGENDA_PARANOID'				),
		('AGENDA_CVS_ANTIOCHUS_III',	'AGENDA_STANDING_ARMY'			);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,							Name,									Description									)
VALUES	('TRAIT_AGENDA_CVS_ANTIOCHUS_III',	'LOC_AGENDA_CVS_ANTIOCHUS_III_NAME',	'LOC_AGENDA_CVS_ANTIOCHUS_III_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,					TraitType							)
VALUES 	('AGENDA_CVS_ANTIOCHUS_III',	'TRAIT_AGENDA_CVS_ANTIOCHUS_III'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,							ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_ANTIOCHUS_III',	'AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ANTIOCHUS_III',	'AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,									ModifierType,									SubjectRequirementSetId				)
VALUES	('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ANTIOCHUS_III_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ANTIOCHUS_III_HAPPY'	);
		
-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	

INSERT INTO ModifierStrings
		(ModifierId,									Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'InitialValue',					-7														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'ReductionTurns',				10														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'ReductionValue',				-1														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'MessageThrottle',				20														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ANTIOCHUS_III_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ANTIOCHUS_III_UNHAPPY'			),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'InitialValue',					7														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'ReductionTurns',				10														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'ReductionValue',				1														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'MessageThrottle',				20														),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ANTIOCHUS_III_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ANTIOCHUS_III_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ANTIOCHUS_III_HAPPY'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_ANTIOCHUS_III_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ANTIOCHUS_III_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_ANTIOCHUS_III_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_ANTIOCHUS_III_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_ANTIOCHUS_III_UNHAPPY',	'REQUIRES_HAS_HIGH_STANDING_ARMY'	),
		('REQSET_CVS_ANTIOCHUS_III_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_ANTIOCHUS_III_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_ANTIOCHUS_III_HAPPY',		'REQUIRES_NOT_COMPETING_MINORS'		);