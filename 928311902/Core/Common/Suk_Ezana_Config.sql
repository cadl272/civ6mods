--==========================================================================================================================
-- CONFIG DATA: NO DLC
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
				'LEADER_SUK_EZANA_NEUTRAL',
				'LEADER_DEFAULT_BACKGROUND',

				'LEADER_SUK_EZANA',
				'LOC_LEADER_SUK_EZANA_NAME',
				'ICON_LEADER_SUK_EZANA',
				'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_NAME',
				'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DESCRIPTION',
				'ICON_LEADER_SUK_EZANA',

				CivilizationType,
				CivilizationName,
				CivilizationIcon,
				CivilizationAbilityName,
				CivilizationAbilityDescription,
				CivilizationAbilityIcon,

				Domain
		FROM Players WHERE CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND LeaderType = 'LEADER_SUK_ZARAYAQOB';
	-------------------------------------
	-- PlayerItems
	-------------------------------------
		INSERT INTO PlayerItems
				(CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex, Domain)
		SELECT	CivilizationType,			'LEADER_SUK_EZANA',		Type, Icon, Name, Description, SortIndex, Domain
		FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND LeaderType = 'LEADER_SUK_ZARAYAQOB';
		-------------------------------------
		-- Hawelti
		-------------------------------------
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
			SELECT DISTINCT
					CivilizationType,
					'LEADER_SUK_EZANA',

					'IMPROVEMENT_SUK_STELE',
					'ICON_IMPROVEMENT_SUK_STELE',
					'LOC_IMPROVEMENT_SUK_STELE_NAME',
					CASE
						WHEN Domain = 'Players:Expansion2_Players' THEN 'LOC_IMPROVEMENT_SUK_STELE_XP2_DESCRIPTION'
						ELSE 'LOC_IMPROVEMENT_SUK_STELE_DESCRIPTION'
					END,

					30,
					Domain
			FROM Players WHERE CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND LeaderType = 'LEADER_SUK_EZANA';
--==========================================================================================================================
-- CONFIG DATA: DLC
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
				'LEADER_SUK_EZANA_NEUTRAL',
				'LEADER_DEFAULT_BACKGROUND',

				'LEADER_SUK_EZANA_DLC',
				'LOC_LEADER_SUK_EZANA_NAME',
				'ICON_LEADER_SUK_EZANA_DLC',
				'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_NAME',
				'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_XP1_DESCRIPTION',
				'ICON_LEADER_SUK_EZANA_DLC',

				CivilizationType,
				CivilizationName,
				CivilizationIcon,
				CivilizationAbilityName,
				CivilizationAbilityDescription,
				CivilizationAbilityIcon,

				Domain
		FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA' AND LeaderType = 'LEADER_MENELIK';
		-------------------------------------
		-- Without XP1 the UA gives TR from the Holy Site instead
		-- Change text to reflect that.
		-------------------------------------
			UPDATE Players
				SET LeaderAbilityDescription = 'LOC_TRAIT_LEADER_SUK_AKSUMITE_COINAGE_DLC_DESCRIPTION'
					WHERE LeaderType = 'LEADER_SUK_EZANA_DLC'
					AND Domain IN ('Players:StandardPlayers');
	-------------------------------------
	-- PlayerItems
	-------------------------------------
		INSERT INTO PlayerItems
				(CivilizationType,			LeaderType,					Type, Icon, Name, Description, SortIndex, Domain)
		SELECT	CivilizationType,			'LEADER_SUK_EZANA_DLC',		Type, Icon, Name, Description, SortIndex, Domain
		FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA' AND LeaderType = 'LEADER_MENELIK';
		-------------------------------------
		-- Hawelti
		-------------------------------------
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
			SELECT DISTINCT
					CivilizationType,
					LeaderType,

					'IMPROVEMENT_SUK_STELE',
					'ICON_IMPROVEMENT_SUK_STELE',
					'LOC_IMPROVEMENT_SUK_STELE_NAME',
					CASE
						WHEN Domain = 'Players:Expansion2_Players' THEN 'LOC_IMPROVEMENT_SUK_STELE_DLC_XP2_DESCRIPTION'
						ELSE 'LOC_IMPROVEMENT_SUK_STELE_DLC_DESCRIPTION'
					END,

					30,
					Domain
			FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA' AND LeaderType = 'LEADER_SUK_EZANA_DLC';
--==========================================================================================================================
-- GAME MODES
--==========================================================================================================================
	-- GAMEMODE_SUK_ETHIOPIAREWORK
	------------------------------------------------------------------------------------------------------------------------
		-- Suk_GameMode_ReplacesItem
		--------------------------------------------------------------------------
			INSERT INTO Suk_GameMode_ReplacesItem
				(
					GameModeType,

					CivilizationType,
					LeaderType,
					Domain,

					Deleting,

					Type,
					Icon,
					Name,
					Description,
					SortIndex,

					Priority
				)
			SELECT DISTINCT
					GameModeType,

					CivilizationType,
					'LEADER_SUK_EZANA_DLC',
					Domain,

					Deleting,

					Type,
					Icon,
					Name,
					Description,
					SortIndex,

					Priority
			FROM Suk_GameMode_ReplacesItem WHERE GameModeType IN ('GAMEMODE_SUK_ETHIOPIAREWORK', 'GAMEMODE_SUK_ETHIOPIAREWORK_DISABLED');
--==========================================================================================================================
--==========================================================================================================================