/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind			)
VALUES	('TRAIT_LEADER_CVS_DJOSER_UA',	'KIND_TRAIT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,						Name,									Description										)
VALUES	('TRAIT_LEADER_CVS_DJOSER_UA',	'LOC_TRAIT_LEADER_CVS_DJOSER_UA_NAME',	'LOC_TRAIT_LEADER_CVS_DJOSER_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_DJOSER',	'TRAIT_LEADER_CVS_DJOSER_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'TRAIT_LEADER_CVS_DJOSER_UA',
		'MODIFIER_CVS_DJOSER_UA_BOMB_'||BuildingType
FROM	Buildings WHERE IsWonder = 1;

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------
/*
INSERT INTO	BuildingModifiers (BuildingType, ModifierId)
SELECT	BuildingType,
		'MODIFIER_CVS_DJOSER_UA_GOVERNOR_TITLE'
FROM	Buildings WHERE IsWonder = 1;
*/
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_CVS_DJOSER_UA_BOMB_'||BuildingType,
		'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER'
FROM	Buildings WHERE IsWonder = 1;	
/*
INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId,		RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_DJOSER_UA_GOVERNOR_TITLE',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',	'REQSET_CVS_PLAYER_IS_DJOSER',	0,			0			);
*/
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_DJOSER_UA_BOMB_'||BuildingType,
		'BuildingType',
		BuildingType
FROM	Buildings WHERE IsWonder = 1;
/*
INSERT INTO	ModifierArguments
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_DJOSER_UA_GOVERNOR_TITLE',	'Delta',	1		);
*/