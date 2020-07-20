/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_JOSE_RIZAL',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,				Name,								Description								)
VALUES 	('AGENDA_CVS_JOSE_RIZAL',	'LOC_AGENDA_CVS_JOSE_RIZAL_NAME',	'LOC_AGENDA_CVS_JOSE_RIZAL_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType				)
VALUES 	('LEADER_CVS_JOSE_RIZAL',	'AGENDA_CVS_JOSE_RIZAL'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo				)
VALUES 	('AGENDA_CVS_JOSE_RIZAL',	'AGENDA_FUN_LOVING'		),
		('AGENDA_CVS_JOSE_RIZAL',	'AGENDA_CULTURED'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,								Description								)
VALUES	('TRAIT_AGENDA_CVS_JOSE_RIZAL',	'LOC_AGENDA_CVS_JOSE_RIZAL_NAME',	'LOC_AGENDA_CVS_JOSE_RIZAL_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,				TraitType						)
VALUES 	('AGENDA_CVS_JOSE_RIZAL',	'TRAIT_AGENDA_CVS_JOSE_RIZAL'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId									)
VALUES	('TRAIT_AGENDA_CVS_JOSE_RIZAL',	'AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_JOSE_RIZAL',	'AGENDA_MODIFIER_CVS_JOSE_RIZAL_HAPPY'		);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_JOSE_RIZAL_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_HAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_JOSE_RIZAL_HAPPY'	);
		
-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,									Context,		Text								)
VALUES	('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_HAPPY',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value													)
VALUES	('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',	'InitialValue',					-12														),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',	'ReductionTurns',				12														),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',	'ReductionValue',				-1														),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_JOSE_RIZAL_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY'				),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_HAPPY',	'InitialValue',					7														),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_HAPPY',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_JOSE_RIZAL_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_JOSE_RIZAL_HAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_JOSE_RIZAL_HAPPY'				);	

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType							)
VALUES	('REQ_CVS_JOSE_RIZAL_ATTACKED_CONTINENT',	'REQUIREMENT_PLAYER_ATTACKED_CONTINENT'	);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId							)
VALUES	('REQSET_CVS_JOSE_RIZAL_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_JOSE_RIZAL_UNHAPPY',	'REQUIRES_PLAYERS_HAVE_MET'				),
		('REQSET_CVS_JOSE_RIZAL_UNHAPPY',	'REQ_CVS_JOSE_RIZAL_ATTACKED_CONTINENT'	),
		('REQSET_CVS_JOSE_RIZAL_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_JOSE_RIZAL_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'				),
		('REQSET_CVS_JOSE_RIZAL_HAPPY',		'REQUIRES_HAS_HIGH_CULTURE'				),
		('REQSET_CVS_JOSE_RIZAL_HAPPY',		'REQUIRES_HAS_HIGH_HAPPINESS'			);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_JOSE_RIZAL_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_JOSE_RIZAL_HAPPY',		'REQUIREMENTSET_TEST_ALL'	);