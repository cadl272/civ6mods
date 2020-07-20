--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
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
			CivilizationAbilityIcon
		)
VALUES
		(
			'CIVILIZATION_SUK_GAUL',
			'LEADER_SUK_VERCINGETORIX_NEUTRAL',
			'LEADER_SUK_VERCINGETORIX_BACKGROUND',

			'LEADER_SUK_VERCINGETORIX',
			'LOC_LEADER_SUK_VERCINGETORIX_NAME',
			'ICON_LEADER_SUK_VERCINGETORIX',

			'LOC_TRAIT_LEADER_SUK_GALLIC_WAR_NAME',
			'LOC_TRAIT_LEADER_SUK_GALLIC_WAR_DESCRIPTION',
			'ICON_LEADER_SUK_VERCINGETORIX',

			'LOC_CIVILIZATION_SUK_GAUL_NAME',
			'ICON_CIVILIZATION_SUK_GAUL',
			'LOC_TRAIT_CIVILIZATION_SUK_TORCS_AND_CARNYXES_NAME',
			'LOC_TRAIT_CIVILIZATION_SUK_TORCS_AND_CARNYXES_DESCRIPTION',
			'ICON_CIVILIZATION_SUK_GAUL'
		);
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,				LeaderType,					Type,								Icon,								Name,									 Description,									  	SortIndex)
VALUES	('CIVILIZATION_SUK_GAUL',		'LEADER_SUK_VERCINGETORIX',	'IMPROVEMENT_SUK_DUNON',			'ICON_IMPROVEMENT_SUK_DUNON',		'LOC_IMPROVEMENT_SUK_DUNON_NAME',		'LOC_IMPROVEMENT_SUK_DUNON_DESCRIPTION',			20),
		('CIVILIZATION_SUK_GAUL',		'LEADER_SUK_VERCINGETORIX',	'UNIT_SUK_OATHSWORN',				'ICON_UNIT_SUK_OATHSWORN',			'LOC_UNIT_SUK_OATHSWORN_NAME',			'LOC_UNIT_SUK_OATHSWORN_DESCRIPTION',				10);
--==========================================================================================================================
-- Rise and Fall
--==========================================================================================================================
-- Players
-------------------------------------
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
			Players.CivilizationType,					
			Players.Portrait,								
			Players.PortraitBackground,				

			Players.LeaderType,						
			Players.LeaderName,							
			Players.LeaderIcon,						
			Players.LeaderAbilityName,									
			Players.LeaderAbilityDescription,								
			Players.LeaderAbilityIcon,				

			Players.CivilizationName,						
			Players.CivilizationIcon,						
			Players.CivilizationAbilityName,								
			Players.CivilizationAbilityDescription,								
			Players.CivilizationAbilityIcon,

			RulesetDomainOverrides.Domain
FROM Players, RulesetDomainOverrides WHERE 
	Players.CivilizationType = 'CIVILIZATION_SUK_GAUL' AND Players.LeaderType = 'LEADER_SUK_VERCINGETORIX' AND Players.Domain = 'Players:StandardPlayers'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0);
-------------------------------------
-- PlayerItems
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
SELECT	
			PlayerItems.CivilizationType,
			PlayerItems.LeaderType,
			PlayerItems.Type,
			PlayerItems.Icon,
			PlayerItems.Name,	
			PlayerItems.Description,
			PlayerItems.SortIndex,

			RulesetDomainOverrides.Domain
FROM PlayerItems, RulesetDomainOverrides WHERE
	PlayerItems.CivilizationType = 'CIVILIZATION_SUK_GAUL' AND PlayerItems.LeaderType = 'LEADER_SUK_VERCINGETORIX' AND PlayerItems.Domain = 'Players:StandardPlayers'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0);
--==========================================================================================================================
--==========================================================================================================================