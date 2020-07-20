--=============================================
-- DARIUS / Agenda
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,						Kind)
VALUES	('TRAIT_AGENDA_CVS_DARIUS',	'KIND_TRAIT');

-----------------------------------------------	
-- Agendas
-----------------------------------------------	
INSERT INTO Agendas
		(AgendaType,			Name,								Description)
VALUES	('AGENDA_CVS_DARIUS',	'LOC_AGENDA_CVS_DARIUS_NAME',	'LOC_AGENDA_CVS_DARIUS_DESCRIPTION');

-----------------------------------------------	
-- Traits
-----------------------------------------------	
INSERT INTO Traits
		(TraitType,						Name,					Description)
VALUES	('TRAIT_AGENDA_CVS_DARIUS',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');

-----------------------------------------------	
-- AgendaTraits
-----------------------------------------------	
INSERT INTO AgendaTraits
		(AgendaType,					TraitType)
VALUES	('AGENDA_CVS_DARIUS',			'TRAIT_AGENDA_CVS_DARIUS');

-----------------------------------------------	
-- TraitModifiers
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_AGENDA_CVS_DARIUS',		'AGENDA_CVS_DARIUS_GOLDEN_AGE'),
		('TRAIT_AGENDA_CVS_DARIUS',		'AGENDA_CVS_DARIUS_GOLDEN_SHOWERS');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,									SubjectRequirementSetId)
VALUES	('AGENDA_CVS_DARIUS_GOLDEN_AGE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_HAS_GOLDEN_AGE_HAVE_MET'),
		('AGENDA_CVS_DARIUS_GOLDEN_SHOWERS',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_HAS_DARK_AGE_HAVE_MET');

-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value)
VALUES	('AGENDA_CVS_DARIUS_GOLDEN_AGE',		'InitialValue',					10),
		('AGENDA_CVS_DARIUS_GOLDEN_AGE',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_DARIUS_REASON_GOLDEN_AGE'),
		('AGENDA_CVS_DARIUS_GOLDEN_AGE',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_DARIUS_GOLDEN_AGE'),
		('AGENDA_CVS_DARIUS_GOLDEN_SHOWERS',	'InitialValue',					-10),
		('AGENDA_CVS_DARIUS_GOLDEN_SHOWERS',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CVS_DARIUS_REASON_GOLDEN_SHOWERS'),
		('AGENDA_CVS_DARIUS_GOLDEN_SHOWERS',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CVS_DARIUS_GOLDEN_SHOWERS');

-----------------------------------------------	
-- HistoricalAgendas
-----------------------------------------------	
INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType)
VALUES	('LEADER_CVS_DARIUS',	'AGENDA_CVS_DARIUS');

-----------------------------------------------	
-- ExclusiveAgendas
-----------------------------------------------	
INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo)
VALUES	('AGENDA_CVS_DARIUS',	'AGENDA_SYCOPHANT');

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,							Context,		Text)
VALUES	('AGENDA_CVS_DARIUS_GOLDEN_AGE',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_CVS_DARIUS_GOLDEN_SHOWERS',	'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');