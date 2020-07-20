/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_KALANGITAN',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_KALANGITAN',	'LOC_AGENDA_CVS_KALANGITAN_NAME',	'LOC_AGENDA_CVS_KALANGITAN_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_KALANGITAN',	'AGENDA_CVS_KALANGITAN'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo			)
VALUES 	('AGENDA_CVS_KALANGITAN',	'AGENDA_DARWINIST'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_KALANGITAN',	'LOC_AGENDA_CVS_KALANGITAN_NAME',	'LOC_AGENDA_CVS_KALANGITAN_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_KALANGITAN',	'TRAIT_AGENDA_CVS_KALANGITAN'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_KALANGITAN',	'AGENDA_MODIFIER_CVS_KALANGITAN_HAPPY'		),
		('TRAIT_AGENDA_CVS_KALANGITAN',	'AGENDA_MODIFIER_CVS_KALANGITAN_UNHAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId				)
VALUES	('AGENDA_MODIFIER_CVS_KALANGITAN_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_KALANGITAN_HAPPY'		),
		('AGENDA_MODIFIER_CVS_KALANGITAN_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_KALANGITAN_UNHAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,									Context,		Text								)
VALUES	('AGENDA_MODIFIER_CVS_KALANGITAN_UNHAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_KALANGITAN_HAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_KALANGITAN_UNHAPPY',	'InitialValue',					-7														),
		('AGENDA_MODIFIER_CVS_KALANGITAN_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_KALANGITAN_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_KALANGITAN_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_KALANGITAN_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_KALANGITAN_HAPPY',	'InitialValue',					12														),
		('AGENDA_MODIFIER_CVS_KALANGITAN_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_KALANGITAN_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_KALANGITAN_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_KALANGITAN_HAPPY'				);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId						)
VALUES	('REQSET_CVS_KALANGITAN_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_KALANGITAN_UNHAPPY',	'REQUIRES_PLAYERS_HAVE_MET'			),
		('REQSET_CVS_KALANGITAN_UNHAPPY',	'REQUIRES_ATTACKED_CONTINENT'		),
		('REQSET_CVS_KALANGITAN_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_KALANGITAN_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_KALANGITAN_HAPPY',		'REQUIRES_PLAYER_DECLARED_FRIEND'	),
		('REQSET_CVS_KALANGITAN_HAPPY',		'REQUIRES_PLAYER_AT_PEACE'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_KALANGITAN_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_KALANGITAN_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);
		

