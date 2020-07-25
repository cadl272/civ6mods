--==========================================================================================================================
-- CONFIG DATA: BASE
--==========================================================================================================================
	-- Players
	-------------------------------------
		INSERT INTO Players
			(
				Portrait,
				PortraitBackground,

				LeaderType,
				LeaderName,
				LeaderIcon,

				LeaderAbilityName,
				LeaderAbilityDescription,
				LeaderAbilityIcon,

				CivilizationType,
				CivilizationName,
				CivilizationIcon,

				CivilizationAbilityName,
				CivilizationAbilityDescription,
				CivilizationAbilityIcon,

				Domain
			)
		SELECT

				'LEADER_SUK_ZARAYAQOB_NEUTRAL',
				'LEADER_DEFAULT_BACKGROUND',

				'LEADER_SUK_ZARAYAQOB',
				'LOC_LEADER_SUK_ZARAYAQOB_NAME',
				'ICON_LEADER_SUK_ZARAYAQOB',

				'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_NAME',
				'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_DESCRIPTION',
				'ICON_LEADER_SUK_ZARAYAQOB',

				'CIVILIZATION_SUK_ETHIOPIA',
				'LOC_CIVILIZATION_SUK_ETHIOPIA_NAME',
				'ICON_CIVILIZATION_SUK_ETHIOPIA',

				'LOC_TRAIT_CIVILIZATION_SUK_SOLOMONIC_DYNASTY_NAME',
				'LOC_TRAIT_CIVILIZATION_SUK_SOLOMONIC_DYNASTY_DESCRIPTION',
				'ICON_CIVILIZATION_SUK_ETHIOPIA',

				Domain

		FROM RulesetDomainOverrides WHERE
			Domain != 'Players:StandardPlayers'
			AND ParameterId = 'PlayerLeader'
			AND Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0)
			AND NOT EXISTS (SELECT * FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA' AND LeaderType = 'LEADER_MENELIK');
	--------------------------------------------------------------------------
	-- PlayerItems
	--------------------------------------------------------------------------
		WITH CTE(Type, Icon, Name, Description) AS
			(
				SELECT * FROM (VALUES
					('UNIT_SUK_SHOTELAI',				'ICON_UNIT_SUK_SHOTELAI',				'LOC_UNIT_SUK_SHOTELAI_NAME',				'LOC_UNIT_SUK_SHOTELAI_DESCRIPTION'),
					('BUILDING_SUK_ROCK_HEWN_CHURCH',	'ICON_BUILDING_SUK_ROCK_HEWN_CHURCH',	'LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_NAME',	'LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_DESCRIPTION')
				)
			)
		INSERT INTO PlayerItems
			(
				CivilizationType,
				LeaderType,

				Type,
				Icon,
				Name,
				Description,

				SortIndex,
				Domain
			)
		SELECT
				CivilizationType,
				LeaderType,

				Type,
				Icon,
				Name,
				Description,

				10,
				Domain
		FROM Players, CTE WHERE CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA';
--==========================================================================================================================
-- CONFIG DATA: DLC
--==========================================================================================================================
	-- Players
	--------------------------------------------------------------------------
		INSERT INTO Players
			(
				CivilizationType,
				Portrait,
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
				CivilizationAbilityIcon,

				Domain
			)
		SELECT

				'CIVILIZATION_ETHIOPIA',
				'LEADER_SUK_ZARAYAQOB_NEUTRAL',
				'LEADER_DEFAULT_BACKGROUND',

				'LEADER_SUK_ZARAYAQOB_DLC',
				'LOC_LEADER_SUK_ZARAYAQOB_NAME',
				'ICON_LEADER_SUK_ZARAYAQOB_DLC',
				'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_NAME',
				'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_DESCRIPTION',
				'ICON_LEADER_SUK_ZARAYAQOB_DLC',

				CivilizationName,
				CivilizationIcon,
				CivilizationAbilityName,
				CivilizationAbilityDescription,
				CivilizationAbilityIcon,

				Domain

		FROM Players WHERE
			Domain != 'Players:StandardPlayers'
			AND CivilizationType = 'CIVILIZATION_ETHIOPIA'
			AND LeaderType = 'LEADER_MENELIK';
	--------------------------------------------------------------------------
	-- PlayerItems
	--------------------------------------------------------------------------
		INSERT INTO PlayerItems
				(CivilizationType,			LeaderType,							Type, Icon, Name, Description, SortIndex, Domain)
		SELECT	'CIVILIZATION_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB_DLC',		Type, Icon, Name, Description, SortIndex, Domain
		FROM PlayerItems WHERE
			CivilizationType = 'CIVILIZATION_ETHIOPIA'
			AND LeaderType = 'LEADER_MENELIK'
			AND Domain IN (SELECT Domain FROM Players WHERE LeaderType = 'LEADER_SUK_ZARAYAQOB_DLC');
		--------------------------------------------------------------------------
		-- Add Shotelai
		--------------------------------------------------------------------------
		WITH CTE(Type, Icon, Name, Description) AS
			(
				SELECT * FROM (VALUES
					('UNIT_SUK_SHOTELAI',	'ICON_UNIT_SUK_SHOTELAI',	'LOC_UNIT_SUK_SHOTELAI_NAME',	'LOC_UNIT_SUK_SHOTELAI_DESCRIPTION')
				)
			)
		INSERT INTO PlayerItems
			(
				CivilizationType,
				LeaderType,

				Type,
				Icon,
				Name,
				Description,

				SortIndex,
				Domain
			)
		SELECT
				CivilizationType,
				LeaderType,

				Type,
				Icon,
				Name,
				Description,

				10,
				Domain
		FROM Players, CTE WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA'
		AND EXISTS (SELECT * FROM Players WHERE LeaderType = 'LEADER_GORGO' AND SortIndex = 10);
--==========================================================================================================================
-- GAME MODES
--==========================================================================================================================
	-- GAMEMODE_SUK_ETHIOPIAREWORK
	------------------------------------------------------------------------------------------------------------------------
		-- Parameters
		--------------------------------------------------------------------------
			INSERT INTO Parameters
				(
					ParameterId,
					Name,
					Description,
					Domain,
					DefaultValue,
					ConfigurationGroup,
					ConfigurationId,
					GroupId
				)
			SELECT
					'GameMode_Suk_EthiopiaRework',
					'LOC_GAMEMODE_SUK_ETHIOPIAREWORK_NAME',
					'LOC_GAMEMODE_SUK_ETHIOPIAREWORK_DESCRIPTION',
					'bool',
					0,
					'Game',
					'GAMEMODE_SUK_ETHIOPIAREWORK',
					'GameModes'
			WHERE EXISTS (SELECT * FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA');
		--------------------------------------------------------------------------
		-- ParameterCriteria
		--------------------------------------------------------------------------
			INSERT INTO ParameterCriteria
					(ParameterId,						ConfigurationGroup,		ConfigurationId,		Operator,		ConfigurationValue)
			VALUES	('GameMode_Suk_EthiopiaRework',		'Game',					'GAMEMODE_RANDOM',		'NotEquals',	'1');
		--------------------------------------------------------------------------
		-- ParameterDependencies
		--------------------------------------------------------------------------
			INSERT INTO ParameterDependencies
					(ParameterId,						ConfigurationGroup,		ConfigurationId,		Operator,		ConfigurationValue)
			VALUES	('GameMode_Suk_EthiopiaRework',		'Game',					'WORLD_BUILDER',		'NotEquals',	'1');
		--------------------------------------------------------------------------
		-- GameModeItems
		--------------------------------------------------------------------------
		INSERT INTO GameModeItems
			(
				GameModeType,
				Name,

				Icon,
				Portrait,
				Background,

				SortIndex
			)
		SELECT * FROM (VALUES
			(
				'GAMEMODE_SUK_ETHIOPIAREWORK',
				'LOC_GAMEMODE_SUK_ETHIOPIAREWORK_NAME',

				'ICON_GAMEMODE_SUK_ETHIOPIAREWORK',
				'GAMEMODE_SUK_ETHIOPIA_NEUTRAL',
				'GAMEMODE_SUK_ETHIOPIA_BACKGROUND',

				10
			)
		)
		WHERE EXISTS (SELECT * FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA');
	------------------------------------------------------------------------------------------------------------------------
	-- Replace Items
	------------------------------------------------------------------------------------------------------------------------
		-- Queries
		--------------------------------------------------------------------------
			INSERT INTO Queries
					(QueryId,							SQL)
			VALUES	('Suk_EthiopiaRework_Item',			"SELECT * FROM Suk_GameMode_ReplacesItem WHERE GameModeType IN ('GAMEMODE_SUK_ETHIOPIAREWORK', 'GAMEMODE_SUK_ETHIOPIAREWORK_MENELIK')"),
					('Suk_EthiopiaReworkOff_Item',		"SELECT * FROM Suk_GameMode_ReplacesItem WHERE GameModeType = 'GAMEMODE_SUK_ETHIOPIAREWORK_DISABLED'");
		--------------------------------------------------------------------------
		-- QueryCriteria
		--------------------------------------------------------------------------
			INSERT INTO QueryCriteria
					(QueryId,						ConfigurationGroup,		ConfigurationId,					Operator,		ConfigurationValue)
			VALUES	('Suk_EthiopiaRework_Item',		'Game',					'GAMEMODE_SUK_ETHIOPIAREWORK',		'Equals',		'1'),
					('Suk_EthiopiaReworkOff_Item',	'Game',					'GAMEMODE_SUK_ETHIOPIAREWORK',		'Equals',		'0');
		--------------------------------------------------------------------------
		-- Suk_GameMode_OverrideQueries
		--------------------------------------------------------------------------
			INSERT INTO Suk_GameMode_OverrideQueries
					(QueryId)
			VALUES	('Suk_EthiopiaRework_Item'),
					('Suk_EthiopiaReworkOff_Item');
		--------------------------------------------------------------------------
		-- Suk_GameMode_ReplacesItem
		--------------------------------------------------------------------------
			INSERT INTO Suk_GameMode_ReplacesItem
				(
					GameModeType,

					CivilizationType,
					LeaderType,
					Domain,

					Type,
					Description,

					Priority
				)
			SELECT
					'GAMEMODE_SUK_ETHIOPIAREWORK',

					CivilizationType,
					LeaderType,
					Domain,

					'CivilizationAbility',
					'LOC_TRAIT_CIVILIZATION_ETHIOPIA_DESCRIPTION_SUK_REWORK',

					10
			FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA';
		--------------------------------------------------------------------------
		-- Suk_GameMode_ReplacesItem
		--------------------------------------------------------------------------
			-- Remove Shotelai if the rework is inactive.
			--------------------------------------------------------------------------
				INSERT INTO Suk_GameMode_ReplacesItem
					(
						GameModeType,

						CivilizationType,
						LeaderType,
						Domain,

						Type,
						Deleting,

						Priority
					)
				SELECT
						'GAMEMODE_SUK_ETHIOPIAREWORK_DISABLED',

						CivilizationType,
						LeaderType,
						Domain,

						'UNIT_SUK_SHOTELAI',
						1,

						10
				FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA';
			--------------------------------------------------------------------------
			-- Remove Oromo Cavalry if the rework is active.
			--------------------------------------------------------------------------
				INSERT INTO Suk_GameMode_ReplacesItem
					(
						GameModeType,

						CivilizationType,
						LeaderType,
						Domain,

						Type,
						Deleting,

						Priority
					)
				SELECT
						'GAMEMODE_SUK_ETHIOPIAREWORK',

						CivilizationType,
						LeaderType,
						Domain,

						'UNIT_ETHIOPIAN_OROMO_CAVALRY',
						1,

						10
				FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA';
			--------------------------------------------------------------------------
			-- Restore it ONLY for Menelik II
			--------------------------------------------------------------------------
				INSERT INTO Suk_GameMode_ReplacesItem
					(
						GameModeType,

						CivilizationType,
						LeaderType,
						Domain,

						Type,
						Description,
						SortIndex,
						Deleting,

						Priority
					)
				SELECT
						'GAMEMODE_SUK_ETHIOPIAREWORK_MENELIK',

						CivilizationType,
						LeaderType,
						Domain,

						'UNIT_ETHIOPIAN_OROMO_CAVALRY',
						'LOC_UNIT_ETHIOPIAN_OROMO_CAVALRY_DESCRIPTION_SUK_REWORK',
						30,
						0,

						11
				FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA' AND LeaderType = 'LEADER_MENELIK';
--==========================================================================================================================
--==========================================================================================================================