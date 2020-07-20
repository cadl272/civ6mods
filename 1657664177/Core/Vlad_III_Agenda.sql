/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_VLAD_III',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description								)
VALUES 	('AGENDA_CVS_VLAD_III',	'LOC_AGENDA_CVS_VLAD_III_NAME',	'LOC_AGENDA_CVS_VLAD_III_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,							Description								)
VALUES	('TRAIT_AGENDA_CVS_VLAD_III',	'LOC_AGENDA_CVS_VLAD_III_NAME',	'LOC_AGENDA_CVS_VLAD_III_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_VLAD_III',	'TRAIT_AGENDA_CVS_VLAD_III'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType				)
VALUES 	('LEADER_CVS_VLAD_III',	'AGENDA_CVS_VLAD_III'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_VLAD_III',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_CVS_VLAD_III',	'AGENDA_DARWINIST'		),
		('AGENDA_CVS_VLAD_III',	'AGENDA_PILLAGER'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_VLAD_III',	'AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_VLAD_III',	'AGENDA_MODIFIER_CVS_VLAD_III_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_VLAD_III_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_VLAD_III_HAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'InitialValue',					-5													),
		('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'IncrementValue',				-1													),
		('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'IncrementTurns',				-10													),
		('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'MaxValue',						-25													),
		('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_VLAD_III_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_VLAD_III_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_VLAD_III_UNHAPPY'			),
	
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'InitialValue',					5													),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'IncrementValue',				1													),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'IncrementTurns',				10													),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'MaxValue',						12													),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_VLAD_III_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_VLAD_III_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_VLAD_III_HAPPY'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_VLAD_III_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_VLAD_III_HAPPY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_CVS_VLAD_III_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_VLAD_III_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_VLAD_III_UNHAPPY',	'REQUIRES_HAS_LOW_STANDING_ARMY'	),
		('REQSET_CVS_VLAD_III_UNHAPPY',	'REQUIRES_NEIGHBOR_CIVS'			),
		('REQSET_CVS_VLAD_III_HAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_VLAD_III_HAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_VLAD_III_HAPPY',	'REQUIRES_HAS_HIGH_PILLAGE'			);
