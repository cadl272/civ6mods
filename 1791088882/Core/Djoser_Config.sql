/*
	Config
	Authors: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_EGYPT', -- CivilizationType
		'LOC_CIVILIZATION_EGYPT_NAME', -- CivilizationName
		'ICON_CIVILIZATION_EGYPT', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_ITERU_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_ITERU_EXPANSION2_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_EGYPT', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_DJOSER', -- LeaderType
		'LOC_LEADER_CVS_DJOSER_NAME', -- LeaderName
		'ICON_LEADER_CVS_DJOSER', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_DJOSER_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_DJOSER_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_DJOSER' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 		LeaderType, 			Type, 							Icon, 									Name, 										Description, 									SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'UNIT_EGYPTIAN_CHARIOT_ARCHER',	'ICON_UNIT_EGYPTIAN_CHARIOT_ARCHER',	'LOC_UNIT_EGYPTIAN_CHARIOT_ARCHER_NAME',	'LOC_UNIT_EGYPTIAN_CHARIOT_ARCHER_DESCRIPTION',	10			),
		('Players:Expansion2_Players',	'CIVILIZATION_EGYPT',	'LEADER_CVS_DJOSER',	'IMPROVEMENT_SPHINX',			'ICON_IMPROVEMENT_SPHINX',				'LOC_IMPROVEMENT_SPHINX_NAME',				'LOC_IMPROVEMENT_SPHINX_DESCRIPTION',			20			);
