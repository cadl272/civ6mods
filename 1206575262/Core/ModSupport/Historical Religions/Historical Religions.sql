/*
	Mod Support Historical Religions
	Credits: Chrisy15
*/

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------


INSERT INTO FavoredReligions
		(LeaderType,			ReligionType)
SELECT	'LEADER_CVS_SARGON',		ReligionType
FROM FavoredReligions WHERE LeaderType = 'LEADER_GILGAMESH';

CREATE TRIGGER C15_SargonReligion
AFTER INSERT ON FavoredReligions
WHEN NEW.LeaderType = 'LEADER_GILGAMESH'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,			ReligionType)
	VALUES	('LEADER_CVS_SARGON',	NEW.ReligionType);
END;
