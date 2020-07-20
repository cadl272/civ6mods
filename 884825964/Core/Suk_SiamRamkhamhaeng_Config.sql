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
VALUES	(
			'CIVILIZATION_SUK_SIAM',			
			'LEADER_SUK_RAMKHAMHAENG_NEUTRAL',		
			'LEADER_HOJO_BACKGROUND',

			'LEADER_SUK_RAMKHAMHAENG',		
			'LOC_LEADER_SUK_RAMKHAMHAENG_NAME',	 
			'ICON_LEADER_SUK_RAMKHAMHAENG',	
			'LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_NAME',		
			'LOC_TRAIT_LEADER_SUK_THE_THAI_ALPHABET_DESCRIPTION',	
			'ICON_LEADER_SUK_RAMKHAMHAENG',

			'LOC_CIVILIZATION_SUK_SIAM_NAME',		
			'ICON_CIVILIZATION_SUK_SIAM',			
			'LOC_TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA_NAME',		
			'LOC_TRAIT_CIVILIZATION_SUK_SRI_AYUTTHAYA_DESCRIPTION',		
			'ICON_CIVILIZATION_SUK_SIAM'
		);
-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	
		(CivilizationType,					LeaderType,					Type,								Icon,									Name,									 	Description,									  	SortIndex)
VALUES	('CIVILIZATION_SUK_SIAM',			'LEADER_SUK_RAMKHAMHAENG',	'UNIT_SUK_SIAM_CHANGSUEK',			'ICON_UNIT_SUK_SIAM_CHANGSUEK',			'LOC_UNIT_SUK_SIAM_CHANGSUEK_NAME',			'LOC_UNIT_SUK_SIAM_CHANGSUEK_DESCRIPTION',			10),
		('CIVILIZATION_SUK_SIAM',			'LEADER_SUK_RAMKHAMHAENG',	'DISTRICT_SUK_FLOATINGMARKET',		'ICON_DISTRICT_SUK_FLOATINGMARKET',		'LOC_DISTRICT_SUK_FLOATINGMARKET_NAME',		'LOC_DISTRICT_SUK_FLOATINGMARKET_DESCRIPTION',		20);
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
	Players.CivilizationType = 'CIVILIZATION_SUK_SIAM' AND Players.LeaderType = 'LEADER_SUK_RAMKHAMHAENG' AND Players.Domain = 'Players:StandardPlayers'
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
	PlayerItems.CivilizationType = 'CIVILIZATION_SUK_SIAM' AND PlayerItems.LeaderType = 'LEADER_SUK_RAMKHAMHAENG' AND PlayerItems.Domain = 'Players:StandardPlayers'
	AND RulesetDomainOverrides.ParameterId = 'PlayerLeader' AND RulesetDomainOverrides.Ruleset IN (SELECT RuleSetType FROM RuleSets WHERE IsScenario = 0);

UPDATE PlayerItems
SET Description = 'LOC_DISTRICT_SUK_FLOATINGMARKET_EXPANSION_2_DESCRIPTION'
WHERE Type = 'DISTRICT_SUK_FLOATINGMARKET' AND Domain != 'Players:StandardPlayers';

UPDATE PlayerItems
SET Description = 'LOC_DISTRICT_SUK_FLOATINGMARKET_EXPANSION_1_DESCRIPTION'
WHERE Type = 'DISTRICT_SUK_FLOATINGMARKET' AND Domain == 'Players:Expansion1_Players';
--==========================================================================================================================
-- TSL
--==========================================================================================================================
INSERT INTO MapLeaders	
		(LeaderType,					Map)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		'../../Assets/Maps/EarthMaps/TSLEarthStandard.Civ6Map'),
		('LEADER_SUK_RAMKHAMHAENG',		'{4873eb62-8ccc-4574-b784-dda455e74e68}Maps/EarthMaps/TSLEarthStandard_XP2.Civ6Map'),

		('LEADER_SUK_RAMKHAMHAENG',		'{1F367231-A040-4793-BDBB-088816853683}Maps/TSLEastAsiaStandard.Civ6Map'),
		('LEADER_SUK_RAMKHAMHAENG',		'{1F367231-A040-4793-BDBB-088816853683}Maps/TSLEastAsiaStandard_XP2.Civ6Map');

INSERT INTO MapStartPositions	
		(Type,							Plot,		Map)
VALUES	('LEADER_SUK_RAMKHAMHAENG',		2919,		'../../Assets/Maps/EarthMaps/TSLEarthStandard.Civ6Map'),
		('LEADER_SUK_RAMKHAMHAENG',		2919,		'{4873eb62-8ccc-4574-b784-dda455e74e68}Maps/EarthMaps/TSLEarthStandard_XP2.Civ6Map'),

		('LEADER_SUK_RAMKHAMHAENG',		2466,		'{1F367231-A040-4793-BDBB-088816853683}Maps/TSLEastAsiaStandard.Civ6Map'),
		('LEADER_SUK_RAMKHAMHAENG',		2466,		'{1F367231-A040-4793-BDBB-088816853683}Maps/TSLEastAsiaStandard_XP2.Civ6Map');
--==========================================================================================================================
--==========================================================================================================================