--==========================================================================================================================
-- Boran / Config
--==========================================================================================================================
-----------------------------------------------		
-- Players Vanilla
-----------------------------------------------
INSERT INTO Players	(
		CivilizationType,
		PortraitBackground,
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
VALUES	('CIVILIZATION_CVS_SASANIAN', -- CivilizationType
		'LEADER_CVS_BORAN_BACKGROUND', -- PortraitBackground
		'LEADER_CVS_BORAN', -- LeaderType
		'LOC_LEADER_CVS_BORAN_NAME', -- LeaderName
		'ICON_LEADER_CVS_BORAN', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_BORAN_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_BORAN_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_BORAN', -- LeaderAbilityIcon
		'LOC_CIVILIZATION_CVS_SASANIAN_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SASANIAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SASANIAN_UA_NAME', --CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SASANIAN_UA_DESCRIPTION', --CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SASANIAN'); -- CivilizationAbilityIcon
-----------------------------------------------		
-- PlayerItems Vanilla
-----------------------------------------------
INSERT INTO PlayerItems	(
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'UNIT_CVS_ASWAR',
		'ICON_UNIT_CVS_ASWAR',
		'LOC_UNIT_CVS_ASWAR_NAME',
		'LOC_UNIT_CVS_ASWAR_DESCRIPTION',
		10);

INSERT INTO PlayerItems	(
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'DISTRICT_CVS_HUNTINGPARK',
		'ICON_DISTRICT_CVS_HUNTINGPARK',
		'LOC_DISTRICT_CVS_HUNTINGPARK_NAME',
		'LOC_DISTRICT_CVS_HUNTINGPARK_DESCRIPTION',
		20);

INSERT INTO PlayerItems	(
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'IMPROVEMENT_CVS_DIZ',
		'ICON_IMPROVEMENT_CVS_DIZ',
		'LOC_IMPROVEMENT_CVS_DIZ_NAME',
		'LOC_IMPROVEMENT_CVS_DIZ_DESCRIPTION',
		30);

-----------------------------------------------		
-- Players Expansion
-----------------------------------------------
INSERT INTO Players	(
		Domain,
		CivilizationType,
		PortraitBackground,
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
VALUES	('Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_SASANIAN', -- CivilizationType
		'LEADER_CVS_BORAN_BACKGROUND', -- PortraitBackground
		'LEADER_CVS_BORAN', -- LeaderType
		'LOC_LEADER_CVS_BORAN_NAME', -- LeaderName
		'ICON_LEADER_CVS_BORAN', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_BORAN_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_BORAN_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_BORAN', -- LeaderAbilityIcon
		'LOC_CIVILIZATION_CVS_SASANIAN_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SASANIAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SASANIAN_UA_EXPAC1_NAME', --CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SASANIAN_UA_EXPAC1_DESCRIPTION', --CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SASANIAN'); -- CivilizationAbilityIcon
-----------------------------------------------		
-- PlayerItems Expansion
-----------------------------------------------
INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion1_Players',
		'CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'UNIT_CVS_ASWAR',
		'ICON_UNIT_CVS_ASWAR',
		'LOC_UNIT_CVS_ASWAR_NAME',
		'LOC_UNIT_CVS_ASWAR_DESCRIPTION',
		10);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion1_Players',
		'CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'DISTRICT_CVS_HUNTINGPARK',
		'ICON_DISTRICT_CVS_HUNTINGPARK',
		'LOC_DISTRICT_CVS_HUNTINGPARK_NAME',
		'LOC_DISTRICT_CVS_HUNTINGPARK_DESCRIPTION',
		20);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion1_Players',
		'CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'IMPROVEMENT_CVS_DIZ',
		'ICON_IMPROVEMENT_CVS_DIZ',
		'LOC_IMPROVEMENT_CVS_DIZ_NAME',
		'LOC_IMPROVEMENT_CVS_DIZ_DESCRIPTION',
		30);
-----------------------------------------------		
-- Players Expansion2
-----------------------------------------------
INSERT INTO Players	(
		Domain,
		CivilizationType,
		PortraitBackground,
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
VALUES	('Players:Expansion2_Players', -- Domain
		'CIVILIZATION_CVS_SASANIAN', -- CivilizationType
		'LEADER_CVS_BORAN_BACKGROUND', -- PortraitBackground
		'LEADER_CVS_BORAN', -- LeaderType
		'LOC_LEADER_CVS_BORAN_NAME', -- LeaderName
		'ICON_LEADER_CVS_BORAN', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_BORAN_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_BORAN_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_BORAN', -- LeaderAbilityIcon
		'LOC_CIVILIZATION_CVS_SASANIAN_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_SASANIAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_SASANIAN_UA_EXPAC2_NAME', --CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_SASANIAN_UA_EXPAC2_DESCRIPTION', --CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_SASANIAN'); -- CivilizationAbilityIcon
-----------------------------------------------		
-- PlayerItems Expansion2
-----------------------------------------------
INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion2_Players',
		'CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'UNIT_CVS_ASWAR',
		'ICON_UNIT_CVS_ASWAR',
		'LOC_UNIT_CVS_ASWAR_NAME',
		'LOC_UNIT_CVS_ASWAR_DESCRIPTION',
		10);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion2_Players',
		'CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'DISTRICT_CVS_HUNTINGPARK',
		'ICON_DISTRICT_CVS_HUNTINGPARK',
		'LOC_DISTRICT_CVS_HUNTINGPARK_NAME',
		'LOC_DISTRICT_CVS_HUNTINGPARK_DESCRIPTION',
		20);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion2_Players',
		'CIVILIZATION_CVS_SASANIAN',
		'LEADER_CVS_BORAN',
		'IMPROVEMENT_CVS_DIZ',
		'ICON_IMPROVEMENT_CVS_DIZ',
		'LOC_IMPROVEMENT_CVS_DIZ_NAME',
		'LOC_IMPROVEMENT_CVS_DIZ_DESCRIPTION',
		30);