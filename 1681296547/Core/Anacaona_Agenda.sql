/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_ANACAONA',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description								)
VALUES 	('AGENDA_CVS_ANACAONA',	'LOC_AGENDA_CVS_ANACAONA_NAME',	'LOC_AGENDA_CVS_ANACAONA_DESCRIPTION'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType				)
VALUES 	('LEADER_CVS_ANACAONA',	'AGENDA_CVS_ANACAONA'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo					)
VALUES 	('AGENDA_CVS_ANACAONA',	'AGENDA_CITY_STATE_ALLY'	),
		('AGENDA_CVS_ANACAONA',	'AGENDA_DARWINIST'			);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,							Description								)
VALUES	('TRAIT_AGENDA_CVS_ANACAONA',	'LOC_AGENDA_CVS_ANACAONA_NAME',	'LOC_AGENDA_CVS_ANACAONA_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_ANACAONA',	'TRAIT_AGENDA_CVS_ANACAONA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_ANACAONA',	'AGENDA_MODIFIER_CVS_ANACAONA_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_ANACAONA',	'AGENDA_MODIFIER_CVS_ANACAONA_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_ANACAONA_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ANACAONA_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_ANACAONA_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_ANACAONA_HAPPY'		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_ANACAONA_UNHAPPY',	'InitialValue',					-7													),
		('AGENDA_MODIFIER_CVS_ANACAONA_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_ANACAONA_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_ANACAONA_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ANACAONA_UNHAPPY'			),
		('AGENDA_MODIFIER_CVS_ANACAONA_HAPPY',		'InitialValue',					12													),
		('AGENDA_MODIFIER_CVS_ANACAONA_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_ANACAONA_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_ANACAONA_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_ANACAONA_HAPPY'				);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_ANACAONA_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_ANACAONA_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId							)
VALUES	('REQSET_CVS_ANACAONA_UNHAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_ANACAONA_UNHAPPY',		'REQUIRES_PLAYERS_HAVE_MET'				),
		('REQSET_CVS_ANACAONA_UNHAPPY',		'REQ_CVS_ANACAONA_ATTACKED_CITY_STATE'	),
		('REQSET_CVS_ANACAONA_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'			),
		('REQSET_CVS_ANACAONA_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'				),
		('REQSET_CVS_ANACAONA_HAPPY',		'REQ_CVS_ANACAONA_PEACEFUL_CONTINENT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_ANACAONA_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_ANACAONA_HAPPY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType									)
VALUES	('REQ_CVS_ANACAONA_ATTACKED_CITY_STATE',	'REQUIREMENT_PLAYER_CONQUERING_ALLYING_MINORS'	),
		('REQ_CVS_ANACAONA_PEACEFUL_CONTINENT',		'REQUIREMENT_PLAYER_PEACEFUL_ON_CONTINENT'		);