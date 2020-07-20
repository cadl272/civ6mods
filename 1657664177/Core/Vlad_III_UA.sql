/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,								Kind			)
VALUES	('TRAIT_LEADER_CVS_VLAD_III_UA',	'KIND_TRAIT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_VLAD_III_UA',	'LOC_TRAIT_LEADER_CVS_VLAD_III_UA_NAME',	'LOC_TRAIT_LEADER_CVS_VLAD_III_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_VLAD_III',	'TRAIT_LEADER_CVS_VLAD_III_UA'	);