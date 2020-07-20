/*
	Config
	Authors: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, Portrait, PortraitBackground)
VALUES	(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_TAINO', -- CivilizationType
		'LOC_CIVILIZATION_CVS_TAINO_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_TAINO', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_TAINO_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_TAINO_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_TAINO', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_ANACAONA', -- LeaderType
		'LOC_LEADER_CVS_ANACAONA_NAME', -- LeaderName
		'ICON_LEADER_CVS_ANACAONA', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_ANACAONA_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_ANACAONA_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_ANACAONA', -- LeaderAbilityIcon
		'LEADER_CVS_ANACAONA_NEUTRAL', -- Portrait
		'LEADER_CVS_ANACAONA_BACKGROUND' -- PortraitBackground
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 			LeaderType, 			Type, 							Icon, 								Name, 									Description, 									SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_CVS_TAINO',	'LEADER_CVS_ANACAONA',	'UNIT_CVS_TAINO_UU',			'ICON_UNIT_CVS_TAINO_UU',			'LOC_UNIT_CVS_TAINO_UU_NAME',			'LOC_UNIT_CVS_TAINO_UU_DESCRIPTION',			10			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_TAINO',	'LEADER_CVS_ANACAONA', 	'DISTRICT_CVS_TAINO_UI',		'ICON_DISTRICT_CVS_TAINO_UI',		'LOC_DISTRICT_CVS_TAINO_UI_NAME',		'LOC_DISTRICT_CVS_TAINO_UI_DESCRIPTION',	 	20			),
		('Players:Expansion2_Players',	'CIVILIZATION_CVS_TAINO',	'LEADER_CVS_ANACAONA',	'IMPROVEMENT_CVS_ANACAONA_UI',	'ICON_IMPROVEMENT_CVS_ANACAONA_UI',	'LOC_IMPROVEMENT_CVS_ANACAONA_UI_NAME',	'LOC_IMPROVEMENT_CVS_ANACAONA_UI_DESCRIPTION',	30			);