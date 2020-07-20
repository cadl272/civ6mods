--==========================================================================================================================
-- Boran / Dynamic Modifiers
--==========================================================================================================================
-----------------------------------------------		
-- Types
-----------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('DYNMOD_CVS_DIZ_GRANT_ABILITY',			'KIND_MODIFIER'), -- Diz
		('DYNMOD_CVS_DIZ_ZOC',						'KIND_MODIFIER'); -- Diz
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,								CollectionType,						EffectType)
VALUES	-- Grant Ability
		('DYNMOD_CVS_DIZ_GRANT_ABILITY',			'COLLECTION_OWNER',					'EFFECT_GRANT_ABILITY'),
		-- Exert ZOC
		('DYNMOD_CVS_DIZ_ZOC',						'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_EXERT_ZOC');