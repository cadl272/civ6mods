/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	-- RISE AND FALL
		(
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_SWITZERLAND', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SWITZERLAND_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SWITZERLAND', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SWITZERLAND', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ESCHER', -- LeaderType
		'LOC_LEADER_CVS_ESCHER_NAME', -- LeaderName
		'ICON_LEADER_CVS_ESCHER', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ESCHER_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ESCHER_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ESCHER' -- LeaderAbilityIcon
		),

		-- GATHERING STORM
		(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_SWITZERLAND', -- CivilizationType
		'LOC_CIVILIZATION_CVS_SWITZERLAND_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SWITZERLAND', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_XP2_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SWITZERLAND', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ESCHER', -- LeaderType
		'LOC_LEADER_CVS_ESCHER_NAME', -- LeaderName
		'ICON_LEADER_CVS_ESCHER', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ESCHER_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ESCHER_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ESCHER' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 			Type, 							Icon, 								Name, 									Description, 									SortIndex	)
VALUES	-- RISE AND FALL
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_SWITZERLAND',	'LEADER_CVS_ESCHER',	'UNIT_CVS_SWITZERLAND_UU',		'ICON_UNIT_CVS_SWITZERLAND_UU',		'LOC_UNIT_CVS_SWITZERLAND_UU_NAME',		'LOC_UNIT_CVS_SWITZERLAND_UU_DESCRIPTION',		10			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_SWITZERLAND',	'LEADER_CVS_ESCHER',	'BUILDING_CVS_SWITZERLAND_UI',	'ICON_BUILDING_CVS_SWITZERLAND_UI',	'LOC_BUILDING_CVS_SWITZERLAND_UI_NAME', 'LOC_BUILDING_CVS_SWITZERLAND_UI_DESCRIPTION',	20			),
		-- GATHERING STORM
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_SWITZERLAND',	'LEADER_CVS_ESCHER',	'UNIT_CVS_SWITZERLAND_UU',		'ICON_UNIT_CVS_SWITZERLAND_UU',		'LOC_UNIT_CVS_SWITZERLAND_UU_NAME',		'LOC_UNIT_CVS_SWITZERLAND_UU_DESCRIPTION',		10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_SWITZERLAND',	'LEADER_CVS_ESCHER',	'BUILDING_CVS_SWITZERLAND_UI',	'ICON_BUILDING_CVS_SWITZERLAND_UI',	'LOC_BUILDING_CVS_SWITZERLAND_UI_NAME', 'LOC_BUILDING_CVS_SWITZERLAND_UI_DESCRIPTION',	20			);