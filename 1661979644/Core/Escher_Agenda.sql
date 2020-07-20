/*
	Agenda
	Credits: Digihuman, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,						Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ESCHER',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description							)
VALUES 	('AGENDA_CVS_ESCHER',	'LOC_AGENDA_CVS_ESCHER_NAME',	'LOC_AGENDA_CVS_ESCHER_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,					Name,							Description							)
VALUES	('TRAIT_AGENDA_CVS_ESCHER',	'LOC_AGENDA_CVS_ESCHER_NAME',	'LOC_AGENDA_CVS_ESCHER_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_ESCHER',	'TRAIT_AGENDA_CVS_ESCHER'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType			)
VALUES 	('LEADER_CVS_ESCHER',	'AGENDA_CVS_ESCHER'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_ESCHER',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_CVS_ESCHER',	'AGENDA_DARWINIST'		),
		('AGENDA_CVS_ESCHER',	'AGENDA_NUKE_LOVER'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_ESCHER',	'AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ESCHER',	'AGENDA_MODIFIER_CVS_ESCHER_HAPPY'		);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									SubjectRequirementSetId		)
VALUES	('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ESCHER_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ESCHER_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ESCHER_HAPPY'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_ESCHER_HAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'InitialValue',					-7													),
		('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'ReductionTurns',				7													),
		('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'ReductionValue',				-1													),
		('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ESCHER_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ESCHER_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ESCHER_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_ESCHER_HAPPY',	'InitialValue',					7													),
		('AGENDA_MODIFIER_CVS_ESCHER_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ESCHER_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ESCHER_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ESCHER_HAPPY'				);	

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_CVS_ESCHER_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_ESCHER_UNHAPPY',	'REQUIRES_MET_30_TURNS_AGO'			),
		('REQSET_CVS_ESCHER_UNHAPPY',	'REQUIRES_HAS_LOW_INDUSTRY'			),
		('REQSET_CVS_ESCHER_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_ESCHER_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_ESCHER_HAPPY',		'REQUIRES_HAS_HIGH_INCOME'			),
		('REQSET_CVS_ESCHER_HAPPY',		'REQUIRES_HAS_HIGH_INDUSTRY'		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_ESCHER_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ESCHER_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);
		

