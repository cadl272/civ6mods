/*
	Mod Support Historical Religions
	Credits: Chrisy15, ChimpanG
*/

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,			ReligionType)
SELECT	'LEADER_CVS_ENHEDUANNA',		ReligionType
FROM FavoredReligions WHERE LeaderType = 'LEADER_GILGAMESH';

CREATE TRIGGER IF NOT EXISTS C15_EnReligion
AFTER INSERT ON FavoredReligions
WHEN NEW.LeaderType = 'LEADER_GILGAMESH'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,			ReligionType)
	VALUES	('LEADER_CVS_ENHEDUANNA',	NEW.ReligionType);
END;
