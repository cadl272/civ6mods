/*
	UA
	Credits: Chrisy15, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind				)
VALUES	('TRAIT_CIVILIZATION_CVS_AKKAD_UA',			'KIND_TRAIT'		),
		('MODTYPE_CVS_AKKAD_UA_TRADE_STRATEGIC',	'KIND_MODIFIER'		);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description											)
VALUES	('TRAIT_CIVILIZATION_CVS_AKKAD_UA',	'LOC_TRAIT_CIVILIZATION_CVS_AKKAD_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_AKKAD_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,			TraitType							)
VALUES	('CIVILIZATION_CVS_AKKAD',	'TRAIT_CIVILIZATION_CVS_AKKAD_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,							ModifierId								)
VALUES	('TRAIT_CIVILIZATION_CVS_AKKAD_UA',	'MODIFIER_CVS_AKKAD_UA_TRADE_STRATEGIC'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType																					)
VALUES	('MODTYPE_CVS_AKKAD_UA_TRADE_STRATEGIC',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_RESOURCE_FOR_INTERNATIONAL'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId,	RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_AKKAD_UA_TRADE_STRATEGIC',	'MODTYPE_CVS_AKKAD_UA_TRADE_STRATEGIC',		NULL,						0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,			Value	)
VALUES	('MODIFIER_CVS_AKKAD_UA_TRADE_STRATEGIC',	'Amount',		1		),
		('MODIFIER_CVS_AKKAD_UA_TRADE_STRATEGIC',	'YieldType',	'YIELD_PRODUCTION');