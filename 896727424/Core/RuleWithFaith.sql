--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Leader_Titles 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 											default null,
	GovernmentType											text 													default null,
	LeaderTitle												text													default null,
	PolicyType  											text 		 											default null,
	UseFeminine												boolean													default 0,
	TitleIsFullName											boolean													default 0);	
	
INSERT INTO Leader_Titles
		(LeaderType, 				GovernmentType, LeaderTitle, PolicyType)
SELECT	'LEADER_SUK_KHOSROW_I', 	GovernmentType, LeaderTitle, PolicyType
FROM Leader_Titles WHERE LeaderType = 'LEADER_CYRUS';

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_KHOSROW_I' AND GovernmentType IS NOT null
AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);

DELETE FROM Leader_Titles 
WHERE LeaderType = 'LEADER_SUK_KHOSROW_I' AND PolicyType IS NOT null
AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
--==========================================================================================================================
--==========================================================================================================================