/*
	XP1
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,												Kind			)
VALUES	('MODTYPE_CVS_PHILIPPINES_UI_TRADE_ROUTE_CAPACITY',	'KIND_MODIFIER'	);

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO	BuildingModifiers
		(BuildingType,					ModifierId										)
VALUES	('BUILDING_CVS_PHILIPPINES_UI',	'MODIFIER_CVS_PHILIPPINES_UI_TRADE_CAPACITY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,		EffectType								)
VALUES	('MODTYPE_CVS_PHILIPPINES_UI_TRADE_ROUTE_CAPACITY',	'COLLECTION_OWNER',	'EFFECT_ADJUST_TRADE_ROUTE_CAPACITY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,										OwnerRequirementSetId,	SubjectRequirementSetId	)
VALUES	('MODIFIER_CVS_PHILIPPINES_UI_TRADE_CAPACITY',	'MODTYPE_CVS_PHILIPPINES_UI_TRADE_ROUTE_CAPACITY',	NULL,					NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,		Value	)
VALUES	('MODIFIER_CVS_PHILIPPINES_UI_TRADE_CAPACITY',	'Amount',	1		);

-----------------------------------------------
-- MomentIllustrations
-- I can't be bothered to make these...
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,					Texture									)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_BUILDING',	'MOMENT_DATA_BUILDING',	'BUILDING_CVS_PHILIPPINES_UI',	'Moment_TradePostNewCiv'				),
		('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_CVS_PHILIPPINES_UU',		'Moment_UniqueUnit_England_Redcoats'	);