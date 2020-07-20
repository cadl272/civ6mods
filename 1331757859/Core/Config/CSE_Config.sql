/*
	Config
	Authors: SeelingCat
*/

-- FAVOR FROM SUZERAINS

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
VALUES	(
		'CSE_Favor_Suzerain',
		'LOC_CSE_FAVOR_SUZERAIN_NAME',
		'LOC_CSE_FAVOR_SUZERAIN_DESC',
		'bool',
		1,
		'Game',
		'CSE_FAVOR_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		150);

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
VALUES	(
		'CSE_Favor_Suzerain',
		'Game',
		'RULESET',
		'Equals',
		'RULESET_EXPANSION_2'
		),
		(
		'CSE_Favor_Suzerain',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
		);

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
VALUES	(
		'CSE_FAVOR_OPTION',
		'LOC_CSE_FAVOR_SUZERAIN_NAME',
		'LOC_CSE_FAVOR_SUZERAIN_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CITYSTATE_INDUSTRIAL',
		NULL,
		NULL,
		NULL,
		10
		);

-- CITY STATES HAVE WALLS

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
VALUES	(
		'CSE_CityState_Walls',
		'LOC_CSE_WALLS_NAME',
		'LOC_CSE_WALLS_DESC',
		'bool',
		1,
		'Game',
		'CSE_WALLS_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		151);

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
VALUES	(
		'CSE_CityState_Walls',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
		);

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
VALUES	(
		'CSE_WALLS_OPTION',
		'LOC_CSE_WALLS_NAME',
		'LOC_CSE_WALLS_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CITYSTATE_MILITARISTIC',
		NULL,
		NULL,
		NULL,
		10
		);

-- CONSULAR CITY STATES

INSERT OR REPLACE INTO Parameters
		(ParameterId,
		Name,
		Description,
		Domain,
		DefaultValue,
		ConfigurationGroup,
		ConfigurationId,
		NameArrayConfigurationId,
		GroupId,
		SortIndex)
VALUES	(
		'CSE_Favor_Consular',
		'LOC_CSE_FAVOR_CONSULAR_NAME',
		'LOC_CSE_FAVOR_CONSULAR_DESC',
		'bool',
		1,
		'Game',
		'CSE_CONSULAR_OPTION',
		'GAMEMODES_ENABLED_NAMES',
		'GameModes',
		152);

INSERT OR REPLACE INTO ParameterDependencies
		(ParameterId,
		ConfigurationGroup,
		ConfigurationId,
		Operator,
		ConfigurationValue)
VALUES	(
		'CSE_Favor_Consular',
		'Game',
		'RULESET',
		'Equals',
		'RULESET_EXPANSION_2'
		),
		(
		'CSE_Favor_Suzerain',
		'Game',
		'WORLD_BUILDER',
		'NotEquals',
		1
		);

INSERT OR REPLACE INTO GameModeItems
		(GameModeType,
		Name,
		Description,
		Portrait,
		Background,
		Icon,
		UnitIcon,
		UnitDescription,
		UnitName,
		SortIndex)
VALUES	(
		'CSE_CONSULAR_OPTION',
		'LOC_CSE_FAVOR_CONSULAR_NAME',
		'LOC_CSE_FAVOR_CONSULAR_DESC',
		'LEADER_HOJO_BACKGROUND',
		'LEADER_HOJO_BACKGROUND',
		'ICON_CITYSTATE_CSE_CONSULAR',
		NULL,
		NULL,
		NULL,
		10
		);