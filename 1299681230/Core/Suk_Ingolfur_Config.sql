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
			CivilizationAbilityIcon,

			Domain)

VALUES	(
			'CIVILIZATION_SUK_ICELAND',
			'LEADER_SUK_INGOLFUR_NEUTRAL',
			'LEADER_SUK_INGOLFUR_BACKGROUND',

			'LEADER_SUK_INGOLFUR',
			'LOC_LEADER_SUK_INGOLFUR_NAME',
			'ICON_LEADER_SUK_INGOLFUR',

			'LOC_TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS_NAME',
			'LOC_TRAIT_LEADER_SUK_BOOK_OF_SETTLEMENTS_DESCRIPTION',
			'ICON_LEADER_SUK_INGOLFUR',

			'LOC_CIVILIZATION_SUK_ICELAND_NAME',
			'ICON_CIVILIZATION_SUK_ICELAND',
			'LOC_TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS_NAME',
			'LOC_TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS_DESCRIPTION',
			'ICON_CIVILIZATION_SUK_ICELAND',

			'Players:Expansion1_Players');
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,				Domain,							LeaderType,				Type,								Icon,									Name,									 	Description,									  	SortIndex)
VALUES	('CIVILIZATION_SUK_ICELAND',	'Players:Expansion1_Players',	'LEADER_SUK_INGOLFUR',	'DISTRICT_SUK_TORFBAEIR',			'ICON_DISTRICT_SUK_TORFBAEIR',			'LOC_DISTRICT_SUK_TORFBAEIR_NAME',			'LOC_DISTRICT_SUK_TORFBAEIR_DESCRIPTION',			20),
		('CIVILIZATION_SUK_ICELAND',	'Players:Expansion1_Players',	'LEADER_SUK_INGOLFUR',	'UNIT_SUK_LAWSPEAKER',				'ICON_UNIT_SUK_LAWSPEAKER',				'LOC_UNIT_SUK_LAWSPEAKER_NAME',				'LOC_UNIT_SUK_LAWSPEAKER_DESCRIPTION',				10);
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
	Players.CivilizationType = 'CIVILIZATION_SUK_ICELAND' AND Players.LeaderType = 'LEADER_SUK_INGOLFUR' AND Players.Domain = 'Players:Expansion1_Players'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0) AND RulesetDomainOverrides.Domain != 'Players:Expansion1_Players';

UPDATE Players
SET CivilizationAbilityDescription = 'LOC_TRAIT_CIVILIZATION_SUK_SAGAS_OF_THE_ICELANDERS_DESCRIPTION_XP2'
WHERE LeaderType = 'LEADER_SUK_INGOLFUR' AND Domain == 'Players:Expansion2_Players';
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
	PlayerItems.CivilizationType = 'CIVILIZATION_SUK_ICELAND' AND PlayerItems.LeaderType = 'LEADER_SUK_INGOLFUR' AND PlayerItems.Domain = 'Players:Expansion1_Players'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0) AND RulesetDomainOverrides.Domain != 'Players:Expansion1_Players';

UPDATE PlayerItems
SET Description = 'LOC_DISTRICT_SUK_TORFBAEIR_XP2_DESCRIPTION'
WHERE Type = 'DISTRICT_SUK_TORFBAEIR' AND Domain != 'Players:Expansion1_Players';
--==========================================================================================================================
--==========================================================================================================================