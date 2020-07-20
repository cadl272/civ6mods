--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	
		(CivilizationType,					Portrait,							PortraitBackground,				LeaderType,					LeaderName,							 LeaderIcon,					LeaderAbilityName,								LeaderAbilityDescription,							LeaderAbilityIcon,				CivilizationName,						CivilizationIcon,						CivilizationAbilityName,								CivilizationAbilityDescription,								CivilizationAbilityIcon)
VALUES	('CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB_NEUTRAL',		'LEADER_DEFAULT_BACKGROUND',	'LEADER_SUK_ZARAYAQOB',		'LOC_LEADER_SUK_ZARAYAQOB_NAME',	 'ICON_LEADER_SUK_ZARAYAQOB',	'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_NAME',		'LOC_TRAIT_LEADER_SUK_DEBRE_MITMAQ_DESCRIPTION',	'ICON_LEADER_SUK_ZARAYAQOB',	'LOC_CIVILIZATION_SUK_ETHIOPIA_NAME',	'ICON_CIVILIZATION_SUK_ETHIOPIA',		'LOC_TRAIT_CIVILIZATION_SUK_SOLOMONIC_DYNASTY_NAME',	'LOC_TRAIT_CIVILIZATION_SUK_SOLOMONIC_DYNASTY_DESCRIPTION',	'ICON_CIVILIZATION_SUK_ETHIOPIA');
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,					LeaderType,				Type,								Icon,									Name,									 	Description,									  	SortIndex)
VALUES	('CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB',	'BUILDING_SUK_ROCK_HEWN_CHURCH',	'ICON_BUILDING_SUK_ROCK_HEWN_CHURCH',	'LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_NAME',	'LOC_BUILDING_SUK_ROCK_HEWN_CHURCH_DESCRIPTION',	20),
		('CIVILIZATION_SUK_ETHIOPIA',		'LEADER_SUK_ZARAYAQOB',	'UNIT_SUK_SHOTELAI',				'ICON_UNIT_SUK_SHOTELAI',				'LOC_UNIT_SUK_SHOTELAI_NAME',				'LOC_UNIT_SUK_SHOTELAI_DESCRIPTION',				10);
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
	Players.CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND Players.LeaderType = 'LEADER_SUK_ZARAYAQOB' AND Players.Domain = 'Players:StandardPlayers'
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
	PlayerItems.CivilizationType = 'CIVILIZATION_SUK_ETHIOPIA' AND PlayerItems.LeaderType = 'LEADER_SUK_ZARAYAQOB' AND PlayerItems.Domain = 'Players:StandardPlayers'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0);
--==========================================================================================================================
--==========================================================================================================================