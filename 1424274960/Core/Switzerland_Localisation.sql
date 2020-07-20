/*
	Localisation
	Credits: WeeklyMeat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("en_US", "LOC_CIVILIZATION_CVS_SWITZERLAND_NAME",			"Switzerland"	),
	("en_US", "LOC_CIVILIZATION_CVS_SWITZERLAND_DESCRIPTION",	"Swiss Empire"	),
	("en_US", "LOC_CIVILIZATION_CVS_SWITZERLAND_ADJECTIVE",  	"Swiss"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_NAME",  	"Chronicon Helveticum"	),
	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_DESCRIPTION",	
	"Receive a free [ICON_ENVOY] Envoy upon promoting a [ICON_GOVERNOR] Governor, and +1 [ICON_GREATPERSON] Great Person points from Specialty Districts in Cities with an established [ICON_GOVERNOR] Governor that has at least 3 [ICON_PROMOTION] Promotions. Triggering an [ICON_CIVICBOOSTED] Inspiration grants +1 Era Score."	),
	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_XP2_DESCRIPTION",	
	"Receive +1 [ICON_FAVOR] Diplomatic Favor from allied City-States and a free [ICON_ENVOY] Envoy upon promoting a [ICON_GOVERNOR] Governor. Triggering an [ICON_CIVICBOOSTED] Inspiration grants +1 Era Score."	),

-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US", "LOC_BUILDING_CVS_SWITZERLAND_UI_NAME",		"Kantonsparlament"	),
	("en_US", "LOC_BUILDING_CVS_SWITZERLAND_UI_DESCRIPTION",		
	"A Bank replacement unique to Switzerland. Provides 3 [ICON_GOLD] Gold and an additional +1 [ICON_GOLD] Gold for each allied City-State. +1 [ICON_INFLUENCEPERTURN] Influence per turn when there is an established [ICON_GOVERNOR] Governor in the city."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US", "LOC_UNIT_CVS_SWITZERLAND_UU_NAME",		"Reisläufer"	),
	("en_US", "LOC_UNIT_CVS_SWITZERLAND_UU_DESCRIPTION",		  
	"An anti-cavalry unit unique to Switzerland with a set of special [ICON_PROMOTION] Promotions that may be selected at random. Does not incur [ICON_GOLD] Maintenance and starts with a free [ICON_PROMOTION] Promotion choice."),

	("en_US", "LOC_PROMOTION_CLASS_CVS_SWITZERLAND_UU_NAME",		"Swiss Mercenary"	),

	-- Promotions
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_HALBERDIER_NAME",				"Halberdier"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_HALBERDIER_DESCRIPTION",		"+5 [ICON_Strength] Combat Strength when attacking."	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_HALBERDIER_CHAPTER_HISTORY_PARA_1",
	"With its many mountains, the Swiss could easily defend choke-points and strategic positions to keep out their enemies. They employed the halberd - a short-staffed pole-arm with a blade as well as a pike - to much effect, and devastated Austrian armies with it. The heavily armed halberdiers were a serious threat to any army, infantry as well as cavalry."	),

	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_NAME",				"Pike Square"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_DESCRIPTION",		"+5 [ICON_Strength] Combat Strength when defending."	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_CHAPTER_HISTORY_PARA_1",
	"The pike square, or 'Gevierthaufen', was a military tactic developed by the Swiss Confederacy during the 15th century and used to devastating effect at the Battle of Nancy in 1477. The pike square came to dominate European battlefields and influenced the development of tactics well into the 17th century."	),

	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_VANGUARD_NAME",				"Vanguard"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_VANGUARD_DESCRIPTION",		"+5 [ICON_Strength] Combat Strength when attacking wounded units."	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_VANGUARD_CHAPTER_HISTORY_PARA_1",
	"The vanguard is the leading part of an advancing military formation. The term originates with the medieval French avant-garde, i.e. 'the advance guard'. The vanguard would lead the line of march and would deploy first on the field of battle, seeking out the enemy and securing ground in advance of the main force."	),

	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_WEDGE_NAME",			"Wedge"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_WEDGE_DESCRIPTION",		"May force retreat upon enemy units."	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_WEDGE_CHAPTER_HISTORY_PARA_1",
	"The wedge formation began as a successful military strategy in ancient times when infantry units would move forward to smash through an enemy's lines. In the Middle Ages, the tactic was especially effective against defensive shield wall formations when defenders would link their shields together to form an all-but impenetrable barrier. Infantry could use their momentum in wedge formation to drive open small sections in the shield wall to expose the defenders to flank attacks."	),
	
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_NAME",			"Helvetii Doctrine"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_DESCRIPTION",		"May move after attacking."	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_CHAPTER_HISTORY_PARA_1",
	"The key to victory, the Swiss believed, was to advance, regardless of cost or obstacles. It was such a doctrine, and such bravery, that achieved success over the Burgundians in the 1470's and allowed the Swiss to dominate every battle for the next 50 years."	),
	
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_COLUMNS_NAME",				"Columns"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_COLUMNS_DESCRIPTION",		"Double flanking bonus."	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_COLUMNS_CHAPTER_HISTORY_PARA_1",
	"The Swiss formed up into dense columns, up to eight thousand men strong, for an attack. Each column was composed of pikemen, carrying their pikes at shoulder height as they advanced, with halberdiers and double-handed swordsmen in the center. The column was usually covered by a skirmish cloud of handgunners and crossbowmen and these sought to distract the enemy’s artillery and protect the column from enemy missiles."	),
	
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_NAME",				"Cantonal Banners"	),
	("en_US", "LOC_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_DESCRIPTION",		"Ignore terrain penalties on Hills"	),
	("en_US", "LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_CHAPTER_HISTORY_PARA_1",
	"In the 15th Century, the Swiss relied on shock tactics, seeking to deliver an abrupt and brutal assault to win their battles. Fighting as pikemen and halberdiers, the Swiss of the 15th Century used their iconic 10-foot pikes in an offensive capacity. Each pikeman carried a short sword and dagger but wore comparitively little armor. Such light equipment contrasted with that of their enemies and ensured the Swiss could advance at speed to take up the honor of defending the catonal banners in the center of any Swiss formation."	),

	("en_US", "LOC_MODIFIER_CVS_SWITZERLAND_VANGUARD_ATTACK_STRENGTH_DESCRIPTION",		"+{1_Amount} vs. wounded units."	),
	("en_US", "LOC_MODIFIER_CVS_SWITZERLAND_HALBERDIER_ATTACK_STRENGTH_DESCRIPTION",		"+{1_Amount} when Attacking."	),
	("en_US", "LOC_MODIFIER_CVS_SWITZERLAND_PIKE_SQUARE_DEFEND_STRENGTH_DESCRIPTION",	"+{1_Amount} when Defending."	),
	("en_US", "LOC_MODIFIER_CVS_SWITZERLAND_VANGUARD_VS_MELEE_DESCRIPTION",				"+{1_Amount} vs. Melee units."	),


-----------------------------------------------
-- Mountains
-----------------------------------------------

	("en_US",	"LOC_NAMED_MOUNTAIN_RATIKON",			"Rätikon"			),
	("en_US",	"LOC_NAMED_MOUNTAIN_RHAETIAN_ALPS",		"Rhaetian Alps"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_LEPONTINE_ALPS",	"Lepontine Alps"	),
	("en_US",	"LOC_NAMED_MOUNTAIN_GRAIAN_ALPS",		"Graian Alps"		),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	("en_US",	"LOC_NAMED_RIVER_AARE",			"Aare River"		),
	("en_US",	"LOC_NAMED_RIVER_REUSS",		"Reuss River"		),
	("en_US",	"LOC_NAMED_RIVER_LINTH",		"Linth River"		),
	("en_US",	"LOC_NAMED_RIVER_LINMAT",		"Linmat River"		),
	("en_US",	"LOC_NAMED_RIVER_SAANE",		"Saane River"		),
	("en_US",	"LOC_NAMED_RIVER_THUR",			"Thur River"		),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("en_US", "LOC_CITY_NAME_BERN",  "Bern"),
	("en_US", "LOC_CITY_NAME_ZURICH",  "Zürich"),
	("en_US", "LOC_CITY_NAME_GENEVA",  "Geneva"), -- Already exists @ City-State
	("en_US", "LOC_CITY_NAME_LUCERNE",  "Lucerne"),
	("en_US", "LOC_CITY_NAME_BASEL",  "Basel"),
	("en_US", "LOC_CITY_NAME_ALTDORF",  "Altdorf"),
	("en_US", "LOC_CITY_NAME_SCHWYZ",  "Schwyz"),
	("en_US", "LOC_CITY_NAME_LAUSANNE",  "Lausanne"),
	("en_US", "LOC_CITY_NAME_NEUCHATEL",  "Neuchâtel"),
	("en_US", "LOC_CITY_NAME_ST_GALLEN",  "St. Gallen"),
	("en_US", "LOC_CITY_NAME_SARNEN",  "Sarnen"),
	("en_US", "LOC_CITY_NAME_STANS",  "Stans"),
	("en_US", "LOC_CITY_NAME_GLARUS",  "Glarus"),
	("en_US", "LOC_CITY_NAME_ZUG",  "Zug"),
	("en_US", "LOC_CITY_NAME_FRIBOURG",  "Fribourg"),
	("en_US", "LOC_CITY_NAME_SOLOTHURN",  "Solothurn"),
	("en_US", "LOC_CITY_NAME_LIESTAL",  "Liestal"),
	("en_US", "LOC_CITY_NAME_SCHAFFHAUSEN",  "Schaffhausen"),
	("en_US", "LOC_CITY_NAME_HERISAU",  "Herisau"),
	("en_US", "LOC_CITY_NAME_APPENZELL",  "Appenzell"),
	("en_US", "LOC_CITY_NAME_CHUR",  "Chur"),
	("en_US", "LOC_CITY_NAME_AARAU",  "Aarau"),
	("en_US", "LOC_CITY_NAME_FRAUENFELD",  "Frauenfeld"),
	("en_US", "LOC_CITY_NAME_BELLINZONA",  "Bellinzona"),
	("en_US", "LOC_CITY_NAME_SION",  "Sion"),
	("en_US", "LOC_CITY_NAME_DELEMONT",  "Delémont"),
	("en_US", "LOC_CITY_NAME_WINTERTHUR",  "Winterthur"),
	("en_US", "LOC_CITY_NAME_LUGANO",  "Lugano"),
	("en_US", "LOC_CITY_NAME_BIEL",  "Biel"),
	("en_US", "LOC_CITY_NAME_THUN",  "Thun"),
	("en_US", "LOC_CITY_NAME_KONIZ",  "Köniz"),
	("en_US", "LOC_CITY_NAME_LA_CHAUX_DE_FONDS",  "La Chaux-de-Fonds"),
	("en_US", "LOC_CITY_NAME_VERNIER",  "Vernier"),
	("en_US", "LOC_CITY_NAME_USTER",  "Uster"),
	("en_US", "LOC_CITY_NAME_LANCY",  "Lancy"),
	("en_US", "LOC_CITY_NAME_EMMEN",  "Emmen"),
	("en_US", "LOC_CITY_NAME_YVERDON_LES_BAINS",  "Yverdon-les-Bains"),
	("en_US", "LOC_CITY_NAME_DUBENDORF",  "Dübendorf"),
	("en_US", "LOC_CITY_NAME_KRIENS",  "Kriens"),
	("en_US", "LOC_CITY_NAME_DIETIKON",  "Dietikon"),
	("en_US", "LOC_CITY_NAME_RAPPERSWIL_JONA",  "Rapperswil-Jona"),
	("en_US", "LOC_CITY_NAME_MONTREUX",  "Montreux"),
	("en_US", "LOC_CITY_NAME_FRAUENFELD",  "Frauenfeld"),
	("en_US", "LOC_CITY_NAME_WETZIKON",  "Wetzikon"),
	("en_US", "LOC_CITY_NAME_BAAR",  "Baar"),
	("en_US", "LOC_CITY_NAME_MEYRIN",  "Meyrin"),
	("en_US", "LOC_CITY_NAME_GRUYERES",  "Gruyères"),
	("en_US", "LOC_CITY_NAME_BULLE",  "Bulle"),
	("en_US", "LOC_CITY_NAME_LA_TOUR_DE_TREME",  "La Tour-de-Trême"),
	("en_US", "LOC_CITY_NAME_CAROUGE",  "Carouge"),

-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_1",			"Adolphe"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_2",			"Paolo"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_3",			"Hans"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_4",			"Bruno"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_5",			"Mathias"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_6",			"Gardi"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_7",			"Ernst"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_8",			"Domenico"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_9",			"Viktor"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_MALE_10",			"Oskar"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_1",		"Mirka"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_2",		"Rita"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_3",		"Pipilotti"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_4",		"Venus"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_5",		"Ursula"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_6",		"Maria"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_7",		"Sandra"	),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_8",		"Anand"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_9",		"Toni"		),
	("en_US", "LOC_CITIZEN_CVS_SWITZERLAND_FEMALE_10",		"Isabelle"	),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("en_US", "LOC_CIVINFO_CVS_SWITZERLAND_LOCATION",		"Europe"	),
	("en_US", "LOC_CIVINFO_CVS_SWITZERLAND_SIZE",			"c.41,285 km²"	),
	("en_US", "LOC_CIVINFO_CVS_SWITZERLAND_POPULATION",		"8.372 million"	),
	("en_US", "LOC_CIVINFO_CVS_SWITZERLAND_CAPITAL",		"Bern"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_1",		
	"The Chronicon Helveticum is one of the oldest accounts of the early history of the Swiss Confederation. It plays an important part in the historiography of Switzerland, since it contains copies of roughly 50 documents which have not survived in any other form. In terms of content, there is particular interest in representing the long-established independence of the Swiss population, the struggle between empire and papacy, the crusades, and a large number of other issues concerning Swiss cities, dioceses and monasteries."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_2",		
	"Switzerland’s history is one of a medieval defensive league formed during a time and in an area lacking imperial authority. The different cantons (traditionally called Orte in German) were to a large extent independent states that remained united through the shared defense of liberty, which was understood as the protection of imperial privileges and franchises."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_3",	
	"Unlike similar confederations like the Hanseatic and Swabian leagues, and despite endemic internal strife after the Reformation in the 16th century, the Swiss Confederation survived the formation of (princely) modern states without adapting to it. With Venice, Genoa, and the Netherlands, the confederation formed the republican exception in Europe, and it developed political structures less as a unified nation than on the level of the 13 cantons that the Swiss Confederation comprised."),
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_4",	
	"A product of the European balance of power and, after 1499, attacked only once in 1798, Switzerland has enjoyed peace for most of its existence and was spared from two world wars in the 20th century when the gradually developed concept of “armed neutrality” was respected by its neighbours. Economic prosperity largely followed as Switzerland adapted to the Industrial Revolution and the growth of international finance markets. It stands today as one of the wealthiest nations in the world."),
		
	("en_US", "LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_SWITZERLAND_UI_CHAPTER_HISTORY_PARA_1",	
	"The Swiss Confederation is divided into 26 cantons, each of which has its own constitution and assembly in the form of a Cantonal Parlament, or 'Kantonsparlament' in German. The cantons exercise broad authority, possessing all powers not specifically given to the federal government."),
	("en_US", "LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_SWITZERLAND_UI_CHAPTER_HISTORY_PARA_2",	
	"The Swiss Confederation consists of some 3,000 communes, which are responsible for public utilities and roads and, like the cantons, are largely autonomous. From the multiplicity of small communal republics stem a special quality to each and, paradoxically, a basis of national unity, for each citizen treasures and supports the freedom of the commune, a shared conviction that unites a citizen with the rest of the population in a way that transcends differences of language and of party."),
	
	("en_US", "LOC_PEDIA_PROJECTS_PAGE_PROJECT_CVS_SWITZERLAND_UP_CHAPTER_HISTORY_PARA_1",	
	"The Cantonal Council is adopted by a number of cantonal legislatures in Switzerland whereby elections take place and members are entrusted with the legislative procedures of those areas which do not fall within the competence of the federal government, or are not exercised by it. In addition to legislation, its duties include supervision of administration, government and the judiciary, as well as decisions on taxes, levies and credits, the cantonal budget and the state accounts."),

	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SWITZERLAND_UU_CHAPTER_HISTORY_PARA_1",  	
	"Swiss mercenaries (Reisläufer) were notable for their service in foreign armies, especially the armies of the Kings of France, throughout the Early Modern period of European history, from the Later Middle Ages into the Age of the European Enlightenment. Their service as mercenaries was at its peak during the Renaissance, when their proven battlefield capabilities made them sought-after mercenary troops. There followed a period of decline, as technological and organizational advances counteracted the Swiss' advantages. Switzerland's military isolationism largely put an end to organized mercenary activity; the principal remnant of the practice is the Pontifical Swiss Guard at the Vatican."),

-----------------------------------------------
-- Mod Support | Rule with Faith
-----------------------------------------------


	("en_US",	"LOC_CIVILIZATION_CVS_SWITZERLAND_DESCRIPTION_JFD_CIVILIZATION",					"Swiss Confederation"	),

	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_SWITZERLAND",							"Druhtinaz"		),
	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Druhtinaz"		),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_SWITZERLAND",							"Commander"		),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",					"Commander"		),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_SWITZERLAND",							"Burgermeister"	),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",					"Burgermeister"	),

	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_SWITZERLAND",						"Fürst"			),
	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Fürst"			),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_SWITZERLAND",						"Speaker"		),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Speaker"		),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND",				"Graf"			),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",		"Graf"			),

	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SWITZERLAND",							"Reprezentant"	),
	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Reprezentant"	),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SWITZERLAND",							"King"			),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Queen"			),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND",				"President"		),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",		"President"		);