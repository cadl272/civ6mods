/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_KUDARAT',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description								)
VALUES 	('AGENDA_CVS_KUDARAT',	'LOC_AGENDA_CVS_KUDARAT_NAME',	'LOC_AGENDA_CVS_KUDARAT_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType				)
VALUES 	('LEADER_CVS_KUDARAT',	'AGENDA_CVS_KUDARAT'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo			)
VALUES 	('AGENDA_CVS_KUDARAT',	'AGENDA_DEVOUT'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,							Description								)
VALUES	('TRAIT_AGENDA_CVS_KUDARAT',	'LOC_AGENDA_CVS_KUDARAT_NAME',	'LOC_AGENDA_CVS_KUDARAT_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_KUDARAT',	'TRAIT_AGENDA_CVS_KUDARAT'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_KUDARAT',	'AGENDA_MODIFIER_CVS_KUDARAT_HAPPY'		),
		('TRAIT_AGENDA_CVS_KUDARAT',	'AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_KUDARAT_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_KUDARAT_HAPPY'		),
		('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_KUDARAT_UNHAPPY'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',	'InitialValue',					-7													),
		('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',	'ReductionTurns',				7													),
		('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',	'ReductionValue',				-1													),
		('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_KUDARAT_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_KUDARAT_UNHAPPY'			),
		('AGENDA_MODIFIER_CVS_KUDARAT_HAPPY',	'InitialValue',					7													),
		('AGENDA_MODIFIER_CVS_KUDARAT_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_KUDARAT_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_KUDARAT_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_KUDARAT_HAPPY'				);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,		Text								)
VALUES	('AGENDA_MODIFIER_CVS_KUDARAT_UNHAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_KUDARAT_HAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_CVS_KUDARAT_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_KUDARAT_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_KUDARAT_UNHAPPY',	'REQUIRES_PLAYER_CITY_CONVERTED'	),
		('REQSET_CVS_KUDARAT_HAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_KUDARAT_HAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_KUDARAT_HAPPY',	'REQUIRES_SAME_RELIGION'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_KUDARAT_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_KUDARAT_HAPPY',	'REQUIREMENTSET_TEST_ALL'	);