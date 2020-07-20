/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_NORMANDY', -- CivilizationType
		'LOC_CIVILIZATION_CVS_NORMANDY_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_NORMANDY', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_NORMANDY', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ROLLO', -- LeaderType
		'LOC_LEADER_CVS_ROLLO_NAME', -- LeaderName
		'ICON_LEADER_CVS_ROLLO', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ROLLO_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ROLLO_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ROLLO' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 			Type, 							Icon, 								Name, 									Description, 									SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',		'UNIT_CVS_NORMANDY_UU',			'ICON_UNIT_CVS_NORMANDY_UU',		'LOC_UNIT_CVS_NORMANDY_UU_NAME',		'LOC_UNIT_CVS_NORMANDY_UU_DESCRIPTION',			10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_NORMANDY',	'LEADER_CVS_ROLLO',		'IMPROVEMENT_CVS_NORMANDY_UI',	'ICON_IMPROVEMENT_CVS_NORMANDY_UI',	'LOC_IMPROVEMENT_CVS_NORMANDY_UI_NAME', 'LOC_IMPROVEMENT_CVS_NORMANDY_UI_DESCRIPTION',	20			);