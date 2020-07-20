--==========================================================================================================================
-- BUILDINGS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('BUILDING_SUK_PILLAR_TOMB',		'KIND_BUILDING');		
--------------------------------------------------------------------------------------------------------------------------
-- Buildings
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Buildings	
		(BuildingType,				Name,									Description,								PrereqCivic, PrereqDistrict, PurchaseYield, Cost, 		AdvisorType, Maintenance, CitizenSlots,  TraitType)
SELECT  'BUILDING_SUK_PILLAR_TOMB',	'LOC_BUILDING_SUK_PILLAR_TOMB_NAME',	'LOC_BUILDING_SUK_PILLAR_TOMB_DESCRIPTION',	PrereqCivic, PrereqDistrict, PurchaseYield, ROUND(Cost*0.66), 	AdvisorType, Maintenance, CitizenSlots,  'TRAIT_CIVILIZATION_BUILDING_SUK_PILLAR_TOMB'		
FROM Buildings WHERE BuildingType = 'BUILDING_MONUMENT';
-----------------------------------------------------------------------------------
-- BuildingReplaces
-----------------------------------------------------------------------------------
INSERT INTO BuildingReplaces
			(CivUniqueBuildingType,					ReplacesBuildingType)
VALUES		('BUILDING_SUK_PILLAR_TOMB',			'BUILDING_MONUMENT');
-----------------------------------------------------------------------------------
-- BuildingPrereqs
-----------------------------------------------------------------------------------
INSERT INTO BuildingPrereqs
			(Building,					PrereqBuilding)
SELECT		'BUILDING_SUK_PILLAR_TOMB',	PrereqBuilding
FROM BuildingPrereqs WHERE Building = 'BUILDING_MONUMENT';
-----------------------------------------------------------------------------------
-- Unit_BuildingPrereqs
-----------------------------------------------------------------------------------
INSERT INTO Unit_BuildingPrereqs
			(Unit,	PrereqBuilding)
SELECT		Unit,	'BUILDING_SUK_PILLAR_TOMB'
FROM Unit_BuildingPrereqs WHERE PrereqBuilding = 'BUILDING_MONUMENT';
-----------------------------------------------------------------------------------
-- Building_YieldChanges
-----------------------------------------------------------------------------------	
INSERT INTO Building_YieldChanges	
		(BuildingType,					YieldType,		YieldChange)
SELECT	'BUILDING_SUK_PILLAR_TOMB',		YieldType, 		YieldChange
FROM Building_YieldChanges WHERE BuildingType = 'BUILDING_MONUMENT';
--------------------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
			(BuildingType,							ModifierId)
SELECT		'BUILDING_SUK_PILLAR_TOMB',				ModifierId
FROM BuildingModifiers WHERE BuildingType = 'BUILDING_MONUMENT';
--==========================================================================================================================
-- +1 [ICON_Gold] Gold per turn in this city each time a [ICON_GreatPerson] Great Person is expended within one tile. (Capped at +10)
--==========================================================================================================================	
-- Modifiers
----------------------------------------------------------------------------------------------------------------------------
	-- Modifiers
	-------------------------------------	
		INSERT INTO Modifiers	
		(
			ModifierId,
			ModifierType,
			OwnerRequirementSetId,
			SubjectRequirementSetId
		)
		VALUES	
		(
			'BUILDING_SUK_PILLAR_TOMB_GOLD',
			'MODIFIER_BUILDING_YIELD_CHANGE',
			NULL,
			NULL
		);
	-------------------------------------	
	-- ModifierArguments		
	-------------------------------------		
		INSERT INTO ModifierArguments		
				(ModifierId,							Name,				Value)
		VALUES	('BUILDING_SUK_PILLAR_TOMB_GOLD',		'BuildingType',		'BUILDING_SUK_PILLAR_TOMB'),
				('BUILDING_SUK_PILLAR_TOMB_GOLD',		'YieldType',		'YIELD_GOLD'),
				('BUILDING_SUK_PILLAR_TOMB_GOLD',		'Amount',			1);
--==========================================================================================================================
--==========================================================================================================================