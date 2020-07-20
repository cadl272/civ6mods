--==========================================================================================================================
-- Kawad I / Rise & Fall
--==========================================================================================================================
UPDATE Traits
SET Description = 'LOC_TRAIT_LEADER_CVS_KAWAD_I_TTBAM_EXPAC1_DESCRIPTION'
WHERE TraitType = 'TRAIT_LEADER_CVS_KAWAD_I_TTBAM';

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_CVS_KAWAD_I_TTBAM', 'CVS_TTBAM_SPYING_ERA_SCORE');
-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES ('CVS_TTBAM_SPYING_ERA_SCORE', 'MODIFIER_PLAYER_ADJUST_PLAYER_ERA_SCORE_PER_SPY_SUCCESSFUL_MISSION');
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('CVS_TTBAM_SPYING_ERA_SCORE', 'Amount', 1);