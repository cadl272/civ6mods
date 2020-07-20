/*
	Config
	Authors: ChimpanG
*/
-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	-- GATHERING STORM
		(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_ARMENIA', -- CivilizationType
		'LOC_CIVILIZATION_CVS_ARMENIA_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_ARMENIA', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_ARMENIA_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_ARMENIA_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_ARMENIA', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_TIGRANES_II', -- LeaderType
		'LOC_LEADER_CVS_TIGRANES_II_NAME', -- LeaderName
		'ICON_LEADER_CVS_TIGRANES_II', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_TIGRANES_II_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_TIGRANES_II' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems (Rise and Fall)
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 			LeaderType, 				Type, 						Icon, 								Name, 									Description, 								SortIndex	)
VALUES	-- GATHERING STORM
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'UNIT_CVS_ARMENIA_UU',		'ICON_UNIT_CVS_ARMENIA_UU',			'LOC_UNIT_CVS_ARMENIA_UU_NAME',			'LOC_UNIT_CVS_ARMENIA_UU_DESCRIPTION',		10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_ARMENIA',	'LEADER_CVS_TIGRANES_II',	'DISTRICT_CVS_ARMENIA_UI',	'ICON_DISTRICT_CVS_ARMENIA_UI',		'LOC_DISTRICT_CVS_ARMENIA_UI_NAME',		'LOC_DISTRICT_CVS_ARMENIA_UI_DESCRIPTION',	20			);