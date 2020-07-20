-----------------------------------------------
-- PlayerColors
-----------------------------------------------
INSERT OR REPLACE INTO Colors
        (Type,                          Color)
VALUES  ('COLOR_CVS_DARIUS_PRIMARY',	'198,123,15,255'),
        ('COLOR_CVS_DARIUS_SECONDARY',	'255,188,89,255'),
        ('COLOR_SC_DARK_PERSIMMON',		'188,70,0,255'),
        ('COLOR_SC_LIGHT_CRANBERRY',	'224,73,81,255'),
        ('COLOR_SC_DARK_RED_VIOLET',	'166,0,104,255');

-----------------------------------------------
-- PlayerColors
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_CVS_DARIUS',
		'Unique',
        'COLOR_CVS_DARIUS_PRIMARY',
        'COLOR_CVS_DARIUS_SECONDARY',
		'COLOR_SC_DARK_PERSIMMON',
		'COLOR_STANDARD_AQUA_LT',
        'COLOR_SC_LIGHT_CRANBERRY',
        'COLOR_STANDARD_ORANGE_LT',
        'COLOR_SC_DARK_RED_VIOLET',
        'COLOR_STANDARD_ORANGE_LT'
		);
