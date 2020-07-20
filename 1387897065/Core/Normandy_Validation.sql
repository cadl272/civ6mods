/*
	Validation
	Authors: ChimpanG
*/

-----------------------------------------------
-- Schema
-----------------------------------------------

CREATE TABLE IF NOT EXISTS ModValidation (Version TEXT DEFAULT NULL);

REPLACE INTO ModValidation
		(Version		)
VALUES	('CVS_NORMANDY'	);