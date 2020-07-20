/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types	
		(Type,									Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'KIND_TRAIT'	),
		('BUILDING_CVS_ROMANIA_UI',				'KIND_BUILDING'	),
		('MODTYPE_CVS_ROMANIA_UI_AUTO_THEME',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UI_GW_TOURISM',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_ROMANIA_UI_ADJUST_FAVOR',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,								Name								)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'LOC_BUILDING_CVS_ROMANIA_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,								CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'CIVILIZATION_CVS_ROMANIA'	);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
		)
SELECT	'BUILDING_CVS_ROMANIA_UI', -- BuildingType
		'LOC_BUILDING_CVS_ROMANIA_UI_NAME', -- Name
		'LOC_BUILDING_CVS_ROMANIA_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_ROMANIA_UI', -- TraitType
		'TECH_CASTLES', -- PrereqTech
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
FROM	Buildings
WHERE	BuildingType = 'BUILDING_ARMORY';
/*
-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,		ReplacesBuildingType	)
VALUES	('BUILDING_CVS_ROMANIA_UI',	'BUILDING_ARMORY'		);
*/
-----------------------------------------------
-- BuildingPrereqs
-----------------------------------------------
/*
INSERT INTO BuildingPrereqs (Building, PrereqBuilding)
SELECT	Building,
		'BUILDING_CVS_ROMANIA_UI'
FROM	BuildingPrereqs WHERE PrereqBuilding = 'BUILDING_ARMORY';
*/
INSERT INTO BuildingPrereqs (Building, PrereqBuilding)
SELECT	'BUILDING_CVS_ROMANIA_UI',
		PrereqBuilding
FROM	BuildingPrereqs WHERE Building = 'BUILDING_ARMORY';

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,			YieldChange	)
VALUES	('BUILDING_CVS_ROMANIA_UI',	'YIELD_PRODUCTION',	2			);

-----------------------------------------------
-- Building_GreatWorks
-----------------------------------------------

INSERT INTO Building_GreatWorks
		(BuildingType,				GreatWorkSlotType,		NumSlots,	ThemingSameObjectType,	ThemingYieldMultiplier,	ThemingTourismMultiplier,	NonUniquePersonYield,	NonUniquePersonTourism,	ThemingBonusDescription						)
VALUES	('BUILDING_CVS_ROMANIA_UI',	'GREATWORKSLOT_PALACE',	2,			1,						100,					100,						1,						1,						'LOC_BUILDING_CVS_ROMANIA_UI_THEMINGBONUS'	);

-----------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints
		(BuildingType,				GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_ROMANIA_UI',	GreatPersonClassType,	PointsPerTurn
FROM	Building_GreatPersonPoints
WHERE	BuildingType = "BUILDING_ARMORY";

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------
/*
INSERT INTO TraitModifiers
		(TraitType,								ModifierId								)
VALUES	('TRAIT_CIVILIZATION_CVS_ROMANIA_UI',	'MODIFIER_CVS_ROMANIA_UI_AUTO_THEME'	);
*/
-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO BuildingModifiers
		(BuildingType,				ModifierId							)
VALUES	('BUILDING_CVS_ROMANIA_UI', 'MODIFIER_CVS_ROMANIA_UI_ADD_FAVOR'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,			EffectType									)	
VALUES	('MODTYPE_CVS_ROMANIA_UI_AUTO_THEME',	'COLLECTION_OWNER',		'EFFECT_ADJUST_PLAYER_AUTO_THEMED_BUILDING'	),
		('MODTYPE_CVS_ROMANIA_UI_ADJUST_FAVOR',	'COLLECTION_OWNER',		'EFFECT_ADJUST_PLAYER_EXTRA_FAVOR_PER_TURN'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType							)
VALUES	('MODIFIER_CVS_ROMANIA_UI_AUTO_THEME',	'MODTYPE_CVS_ROMANIA_UI_AUTO_THEME'		),
		('MODIFIER_CVS_ROMANIA_UI_ADD_FAVOR',	'MODTYPE_CVS_ROMANIA_UI_ADJUST_FAVOR'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value						)
VALUES	('MODIFIER_CVS_ROMANIA_UI_AUTO_THEME',	'BuildingType',	'BUILDING_CVS_ROMANIA_UI'	),
		('MODIFIER_CVS_ROMANIA_UI_ADD_FAVOR',	'Amount',		1							);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture					)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_BUILDING',	'MOMENT_DATA_BUILDING',	'BUILDING_CVS_ROMANIA_UI',	'MOMENT_CVS_ROMANIA_UI'	);