/*
	Agenda
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_CVS_WILLIAM',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description								)
VALUES 	('AGENDA_CVS_WILLIAM',	'LOC_AGENDA_CVS_WILLIAM_NAME',	'LOC_AGENDA_CVS_WILLIAM_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,							Description								)
VALUES	('TRAIT_AGENDA_CVS_WILLIAM',	'LOC_AGENDA_CVS_WILLIAM_NAME',	'LOC_AGENDA_CVS_WILLIAM_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_CVS_WILLIAM',	'TRAIT_AGENDA_CVS_WILLIAM'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,					AgendaType				)
VALUES 	('LEADER_CVS_WILLIAM_ENGLAND',	'AGENDA_CVS_WILLIAM'	);

INSERT INTO HistoricalAgendas
		(LeaderType,					AgendaType				)
SELECT	'LEADER_CVS_WILLIAM_NORMANDY',	'AGENDA_CVS_WILLIAM'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('CVS_NORMANDY'));

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_CVS_WILLIAM',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_CVS_WILLIAM',	'AGENDA_MONEY_GRUBBER'	),
		('AGENDA_CVS_WILLIAM',	'AGENDA_EXPLOITATIVE'	),
		('AGENDA_CVS_WILLIAM',	'AGENDA_NATURALIST'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_CVS_WILLIAM',	'AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY'	),
		('TRAIT_AGENDA_CVS_WILLIAM',	'AGENDA_MODIFIER_CVS_WILLIAM_HAPPY'		);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_WILLIAM_UNHAPPY'	),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_CVS_WILLIAM_HAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	

INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text								)
VALUES	('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value												)
VALUES	('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',			'InitialValue',					-5													),
		('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',			'IncrementValue',				-1													),
		('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',			'IncrementTurns',				-10													),
		('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',			'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CVS_WILLIAM_REASON_ANY'	),
		('AGENDA_MODIFIER_CVS_WILLIAM_UNHAPPY',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_WILLIAM_UNHAPPY'			),
	
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',			'InitialValue',					5													),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',			'IncrementValue',				1													),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',			'IncrementTurns',				10													),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',			'MaxValue',						12													),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',			'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_WILLIAM_REASON_ANY'		),
		('AGENDA_MODIFIER_CVS_WILLIAM_HAPPY',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_WILLIAM_HAPPY'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_CVS_WILLIAM_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_WILLIAM_HAPPY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId						)
VALUES	('REQSET_CVS_WILLIAM_UNHAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_WILLIAM_UNHAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_WILLIAM_UNHAPPY',		'REQUIRES_HAS_LOW_STANDING_ARMY'	),
		('REQSET_CVS_WILLIAM_HAPPY',		'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_CVS_WILLIAM_HAPPY',		'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_CVS_WILLIAM_HAPPY',		'REQUIRES_HAS_HIGH_INCOME'			),
		('REQSET_CVS_WILLIAM_HAPPY',		'REQUIRES_HAS_HIGH_HAPPINESS'		);