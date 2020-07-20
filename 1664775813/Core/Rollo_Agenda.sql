/*
	Agenda
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,						Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ROLLO',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description							)
VALUES 	('AGENDA_CVS_ROLLO',	'LOC_AGENDA_CVS_ROLLO_NAME',	'LOC_AGENDA_CVS_ROLLO_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,					Name,							Description							)
VALUES	('TRAIT_AGENDA_CVS_ROLLO',	'LOC_AGENDA_CVS_ROLLO_NAME',	'LOC_AGENDA_CVS_ROLLO_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_ROLLO',	'TRAIT_AGENDA_CVS_ROLLO'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType			)
VALUES 	('LEADER_CVS_ROLLO',	'AGENDA_CVS_ROLLO'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_ROLLO',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_CVS_ROLLO',	'AGENDA_MONEY_GRUBBER'	),
		('AGENDA_CVS_ROLLO',	'AGENDA_EXPLOITATIVE'	),
		('AGENDA_CVS_ROLLO',	'AGENDA_NATURALIST'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,					ModifierId							)
VALUES	('TRAIT_AGENDA_CVS_ROLLO',	'AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ROLLO',	'AGENDA_MODIFIER_CVS_ROLLO_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									SubjectRequirementSetId		)
VALUES	('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ROLLO_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ROLLO_HAPPY'	);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'InitialValue',					-5													),
		('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'IncrementValue',				-1													),
		('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'IncrementTurns',				-10													),
		('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ROLLO_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ROLLO_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ROLLO_UNHAPPY'				),
	
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'InitialValue',					5													),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'IncrementValue',				1													),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'IncrementTurns',				10													),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'MaxValue',						12													),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ROLLO_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ROLLO_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ROLLO_HAPPY'				);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId							)
VALUES	('REQSET_CVS_ROLLO_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_ROLLO_UNHAPPY',	'REQUIRES_MET_30_TURNS_AGO'				),
		('REQSET_CVS_ROLLO_UNHAPPY',	'REQ_CVS_ROLLO_NOT_ON_NEW_CONTINENT'	),
		('REQSET_CVS_ROLLO_UNHAPPY',	'REQUIRES_SAME_HOME_CONTINENT'			),
		('REQSET_CVS_ROLLO_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_ROLLO_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'				),
		('REQSET_CVS_ROLLO_HAPPY',		'REQUIRES_SAME_HOME_CONTINENT'			),
		('REQSET_CVS_ROLLO_HAPPY',		'REQUIRES_ON_NEW_CONTINENT'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_ROLLO_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ROLLO_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,							Inverse	)
VALUES	('REQ_CVS_ROLLO_NOT_ON_NEW_CONTINENT',	'REQUIREMENT_PLAYER_ON_NON_HOME_CONTINENT',	1		);