/*
	Agenda
	Authors: SeelingCat, Sailor Cat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,						Kind			)
VALUES  ('TRAIT_AGENDA_CVS_DIHYA',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description							)
VALUES 	('AGENDA_CVS_DIHYA',	'LOC_AGENDA_CVS_DIHYA_NAME',	'LOC_AGENDA_CVS_DIHYA_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,					Name,							Description							)
VALUES	('TRAIT_AGENDA_CVS_DIHYA',	'LOC_AGENDA_CVS_DIHYA_NAME',	'LOC_AGENDA_CVS_DIHYA_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_DIHYA',	'TRAIT_AGENDA_CVS_DIHYA'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType			)
VALUES 	('LEADER_CVS_DIHYA',	'AGENDA_CVS_DIHYA'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_DIHYA',	'AGENDA_MONEY_GRUBBER'	),
		('AGENDA_CVS_DIHYA',	'AGENDA_FUN_LOVING'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId							)
VALUES	('TRAIT_AGENDA_CVS_DIHYA',	'AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_DIHYA',	'AGENDA_MODIFIER_CVS_DIHYA_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									SubjectRequirementSetId		)
VALUES	('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_DIHYA_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_DIHYA_HAPPY'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value											)
VALUES	('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'InitialValue',					-10												),
		('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'ReductionValue',				-1												),
		('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'ReductionTurns',				10												),
		('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_DIHYA_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_DIHYA_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_DIHYA_UNHAPPY'			),
	
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'InitialValue',					5												),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'IncrementValue',				1												),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'IncrementTurns',				10												),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'MaxValue',						12												),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_DIHYA_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_DIHYA_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_DIHYA_HAPPY'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_DIHYA_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_DIHYA_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_CVS_DIHYA_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_DIHYA_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_DIHYA_UNHAPPY',	'REQUIRES_ATTACKED_CONTINENT'		),
		('REQSET_CVS_DIHYA_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_DIHYA_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_DIHYA_HAPPY',		'REQUIRES_HAS_HIGH_INCOME'			),
		('REQSET_CVS_DIHYA_HAPPY',		'REQUIRES_HAS_HIGH_HAPPINESS'		);
