-- MOD_DEBUGGING
-- Author: thecrazyscotsman
-- DateCreated: 1/22/2018 3:55:16 PM
--------------------------------------------------------------
CREATE TABLE IF NOT EXISTS THECRAZYSCOTSMAN_DEBUGGING 
	(
	Document TEXT default null,
	Marker TEXT default null,
	Pass BOOLEAN default 0
	);	