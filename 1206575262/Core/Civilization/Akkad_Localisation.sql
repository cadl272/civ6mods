/*
	Localisation
	Credits: Chrisy15, ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag,	Language,	Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("LOC_CIVILIZATION_CVS_AKKAD_NAME",			"en_US",	"Akkad"				),
	("LOC_CIVILIZATION_CVS_AKKAD_DESCRIPTION",  "en_US",	"Akkadian Empire"	),
	("LOC_CIVILIZATION_CVS_AKKAD_ADJECTIVE",  	"en_US",	"Akkadian"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("LOC_TRAIT_CIVILIZATION_CVS_AKKAD_UA_NAME",  "en_US",	"First Empire"		),
	("LOC_TRAIT_CIVILIZATION_CVS_AKKAD_UA_DESCRIPTION",	"en_US",	 
	"International [ICON_TradeRoute] Trade Routes receive +1 [ICON_Production] Production for every Strategic Resource in their destination City, and [ICON_Production] Production from Plots with Strategic Resources worked by conquered Cities is split equally between all founded Cities."	), 
	
-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_AKKAD_UU_NAME",	"en_US",	"Nas Qasti"	),
	("LOC_UNIT_CVS_AKKAD_UU_DESCRIPTION",	"en_US",	  
	"A Ranged Unit unique to Akkad. Costs more than the Archer, which it replaces, but receives higher [ICON_Strength] Ranged Strength and generates [ICON_Science] Science when trained. Increases the [ICON_Strength] Combat Strength of adjacent Melee Units."),

	("LOC_MODIFIER_CVS_AKKAD_UU_ADJ_COMBAT_STRENGTH_DESCRIPTION",	"en_US",	"+{1_Amount} Combat Strength when adjacent to Nas Qasti"	),
	
-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_DISTRICT_CVS_AKKAD_UI_NAME",	"en_US",	"Sapitu"),
	("LOC_DISTRICT_CVS_AKKAD_UI_DESCRIPTION",	"en_US",	
	"A city district unique to Akkad. Provides +1 [ICON_Amenities] Amenity and constructs a Road between this City and the Capital where possible. Building Production is increased by +25% in founded Cities and Unit Production is increased by +25% in conquered Cities."),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("LOC_CITY_NAME_SC_AKKAD", "en_US", "Akkad"),
	-- ("LOC_CITY_NAME_KISH", "en_US", "Kish"), -- Already exists @ Sumeria
	-- ("LOC_CITY_NAME_ERIDU", "en_US", "Eridu"), -- Already exists @ Sumeria
	("LOC_CITY_NAME_SC_BAD_TIBIRA", "en_US", "Bad-Tibira"),
	-- ("LOC_CITY_NAME_URUK", "en_US", "Uruk"), -- Already exists @ Sumeria
	-- ("LOC_CITY_NAME_NIPPUR", "en_US", "Nippur"), -- Already exists @ Sumeria
	-- ("LOC_CITY_NAME_UR", "en_US", "Ur"), -- Already exists @ Sumeria
	--("LOC_CITY_NAME_SUSA", "en_US", "Susa"), -- Already exists @ Persia
	("LOC_CITY_NAME_SC_HAMOUKAR", "en_US", "Hamoukar"),
	-- ("LOC_CITY_NAME_DILBAT", "en_US", "Dilbat"), -- Already exists @ Sumeria
	-- ("LOC_CITY_NAME_KISURRA", "en_US", "Kisurra"), -- Already exists @ Sumeria
	("LOC_CITY_NAME_SC_ASSUR", "en_US", "Assur"),
	-- ("LOC_CITY_NAME_LAGASH", "en_US", "Lagash"), -- Already exists @ Sumeria
	("LOC_CITY_NAME_SC_NINEVEH", "en_US", "Nineveh"),
	("LOC_CITY_NAME_SC_ESHNUNNA", "en_US", "Eshnunna"),
	("LOC_CITY_NAME_SC_ARBELA", "en_US", "Arbela"),
	("LOC_CITY_NAME_SC_GASUR", "en_US", "Gasur"),
	("LOC_CITY_NAME_SC_NAGAR", "en_US", "Nagar"),
	-- ("LOC_CITY_NAME_ADAB", "en_US", "Adab"), -- Already exists @ Sumeria
	("LOC_CITY_NAME_SC_ARRAPKHA", "en_US", "Arrapkha"),
	("LOC_CITY_NAME_SC_KAHAT", "en_US", "Kahat"),
	("LOC_CITY_NAME_SC_SHUBAT_ENLIL", "en_US", "Shubat-Enlil"),
	("LOC_CITY_NAME_SC_ANSHAN", "en_US", "Anshan"),
	("LOC_CITY_NAME_SC_MARI", "en_US", "Mari"),
	("LOC_CITY_NAME_SC_SHADUPPUM", "en_US", "Shaduppum"),
	-- ("LOC_CITY_NAME_UMMA", "en_US", "Umma"), -- Already exists @ Sumeria
	-- ("LOC_CITY_NAME_AKSHAK", "en_US", "Akshak"), -- Already exists @ Sumeria
	("LOC_CITY_NAME_SC_NEREBTUM", "en_US", "Nerebtum"),
	("LOC_CITY_NAME_SC_NABADA", "en_US", "Nabada"),
	("LOC_CITY_NAME_SC_MASHKAN_SHAPIR", "en_US", "Mashkan-Shapir"),
	("LOC_CITY_NAME_SC_URKESH", "en_US", "Urkesh"),
	("LOC_CITY_NAME_SC_URUM", "en_US", "Urum"),
	-- ("LOC_CITY_NAME_MARAD", "en_US", "Marad"), -- Already exists @ Sumeria
	("LOC_CITY_NAME_SC_CHAGAR_BAZAR", "en_US", "Chagar Bazar"),
	("LOC_CITY_NAME_SC_ARBID", "en_US", "Arbid"),
	
-----------------------------------------------
-- Citizens
-----------------------------------------------

	("LOC_CITIZEN_CVS_AKKAD_MALE_1",		"en_US",	"Alad"		),
	("LOC_CITIZEN_CVS_AKKAD_MALE_2",		"en_US",	"Dari"		),
	("LOC_CITIZEN_CVS_AKKAD_MALE_3",		"en_US",	"Izila"		),
	("LOC_CITIZEN_CVS_AKKAD_MALE_4",		"en_US",	"Kuliaana"	),
	("LOC_CITIZEN_CVS_AKKAD_MALE_5",		"en_US",	"Ludari"	),
	("LOC_CITIZEN_CVS_AKKAD_MALE_6",		"en_US",	"Lusili"	),
	("LOC_CITIZEN_CVS_AKKAD_MALE_7",		"en_US",	"Meania"	),
	("LOC_CITIZEN_CVS_AKKAD_MALE_8",		"en_US",	"Sheshkala"	),
	("LOC_CITIZEN_CVS_AKKAD_MALE_9",		"en_US",	"Sisig"		),
	("LOC_CITIZEN_CVS_AKKAD_MALE_10",		"en_US",	"Zimu"		),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_1",		"en_US",	"Amarezen"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_2",		"en_US",	"Anusan"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_3",		"en_US",	"Aradegi"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_4",		"en_US",	"Bauninsheg"),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_5",		"en_US",	"Garanda"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_6",		"en_US",	"Gemekala"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_7",		"en_US",	"Nigbau"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_8",		"en_US",	"Ninna"		),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_9",		"en_US",	"Nintuda"	),
	("LOC_CITIZEN_CVS_AKKAD_FEMALE_10",		"en_US",	"Sherzi"	),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("LOC_CIVINFO_CVS_AKKAD_LOCATION",		"en_US",	"Mesopotamia"		),
	("LOC_CIVINFO_CVS_AKKAD_SIZE",			"en_US",	"Impossible to say"	),
	("LOC_CIVINFO_CVS_AKKAD_POPULATION",	"en_US",	"~1 to 1.5 million (est.)"	),
	("LOC_CIVINFO_CVS_AKKAD_CAPITAL",		"en_US",	"Akkad"				),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_AKKAD_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"The Akkadian Empire was the first ancient Semitic-speaking empire of Mesopotamia, centered in the city of Akkad and its surrounding region, also called Akkad in ancient Mesopotamia in the Bible. The empire united Akkadian and Sumerian speakers under one rule. The Akkadian Empire exercised influence across Mesopotamia, the Levant, and Anatolia, sending military expeditions as far south as Dilmun and Magan (modern Bahrain and Oman) in the Arabian Peninsula."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_AKKAD_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"During the 3rd millennium BC, there developed a very intimate cultural symbiosis between the Sumerians and the Akkadians, which included widespread bilingualism. Akkadian gradually replaced Sumerian as a spoken language somewhere between the 3rd and the 2nd millennia BC (the exact dating being a matter of debate)."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_AKKAD_CHAPTER_HISTORY_PARA_3",	"en_US",
	"The Akkadian Empire reached its political peak between the 24th and 22nd centuries BC, following the conquests by its founder Sargon of Akkad. Under Sargon and his successors, the Akkadian language was briefly imposed on neighboring conquered states such as Elam and Gutium. Akkad is sometimes regarded as the first empire in history, though the meaning of this term is not precise, and there are earlier Sumerian claimants."),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_AKKAD_UU_CHAPTER_HISTORY_PARA_1",  "en_US",	
	"The Akkadian army employed an old weapon, the bow and arrow, in a new way by forming large bodies of archers. In fact, one scholar said that the Akkadian bow and arrow overcame the Sumerian lance and shield. Thus large, well-trained bodies of archers were able to nullify the chariots’ potential with a rain of missiles that killed both men and animals and could further cause greater damage to massed, semi-trained infantry whose morale would have begun to deteriorate as casualties mounted."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_AKKAD_UU_CHAPTER_HISTORY_PARA_2",  "en_US",	
	"The Akkadian army was professional—highly trained and organized—with no use for the untrained, poorly armed skirmishers. Finally, southern Mesopotamia was a land crisscrossed by canals and rivers where boats were the only way to effectively move an army. Thus Sargon must have had marine units or some type of naval transports."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_AKKAD_UU_CHAPTER_HISTORY_PARA_3",  "en_US",	
	"Some of the changes in the infantry and chariot tactics may have been in the works before Sargon came into power, but he infused the professionalism that gave these troops their edge, and the archer units were definitely an Akkadian development. Sargon had an extremely large personal guard for he wrote that 5,400 men eat bread daily before him, and these may have served as the core troops he needed for developing the larger army when he expanded beyond traditional Mesopotamia."),

	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_AKKAD_UI_CHAPTER_HISTORY_PARA_1",	"en_US",
	"The great achievement of the Akkadian empire was how long it lasted, surviving Sargon by multiple generations. Key to this was avoiding secession from the empire, especially during succession. The Akkadians dealt with this by placing governors in charge of their conquered cities, in order to improve their control over them. Governors would come in two kinds: Akkadians, or locals. When dealing with Sumerian cities, the Akkadians would place an Akkadian in control of the city: this would theoretically improve its loyalty to the emperor, because they are of the same ethnicity."),
	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_AKKAD_UI_CHAPTER_HISTORY_PARA_2",	"en_US",
	"When dealing with further afield conquests, local rulers were often vassalised: this reduced the risk of revolt, since it would reduce the degree of change which the population in the area would be subjected to. Another approach was to build royal palaces throughout the empire, to exert the influence of the emperor himself. However, all of these measures were sometimes not enough, as revolts were frequent and had to be put down by force."),
	("LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_AKKAD_UI_CHAPTER_HISTORY_PARA_3",	"en_US",
	"The job of the governor was to govern. Conquered cities were expected to provide a levy to the army, and the governor would've been responsible for providing this. The governor would've also been responsible for managing the city, as if it was his own - so long as he acted in his overlord's best interests, of course...");