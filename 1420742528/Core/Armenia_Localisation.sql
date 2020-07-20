/*
	Localisation
	Authors: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("en_US", "LOC_CIVILIZATION_CVS_ARMENIA_NAME",			"Armenia"			),
	("en_US", "LOC_CIVILIZATION_CVS_ARMENIA_DESCRIPTION",	"Armenian Empire"	),
	("en_US", "LOC_CIVILIZATION_CVS_ARMENIA_ADJECTIVE",  	"Armenian"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_ARMENIA_UA_NAME",  "Stone Curtain"	),
	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_ARMENIA_UA_DESCRIPTION",	
	"Alliance points accumulate 25% faster. Cities receive +2 [ICON_RANGED] Ranged Strength and +2 [ICON_STRENGTH] Outer Defense Strength for each Mountain within the city's borders."	),

-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US", "LOC_DISTRICT_CVS_ARMENIA_UI_NAME",	"Vank"	),
	("en_US", "LOC_DISTRICT_CVS_ARMENIA_UI_DESCRIPTION",	
	"A Holy Site district unique to Armenia. Provides +1 [ICON_GREATENGINEER] Great Engineer points per turn and Builders may construct Quarries on flat land without the required resources in this City. Must be built on Hills."	),

	-- COMPATIBILITY
	("en_US", "LOC_CVS_ARMENIA_UI_STONE_CIRCLES_DESCRIPTION",  "+2 [ICON_FAITH] Faith from quarried resources"	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US", "LOC_UNIT_CVS_ARMENIA_UU_NAME",	"Ayrudzi"	),
	("en_US", "LOC_UNIT_CVS_ARMENIA_UU_DESCRIPTION",	  
	"A light cavalry unit unique to Armenia. Replaces Horseman. May move after attacking if [ICON_MOVEMENT] Movement points remain, and earns [ICON_GREATGENERAL] Great General points upon earning a [ICON_PROMOTION] Promotion. May be purchased with [ICON_FAITH] Faith."),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	("en_US",	"LOC_NAMED_RIVER_AKHURIAN",		"Akhurian River"	),
	("en_US",	"LOC_NAMED_RIVER_VOROTAN",		"Vorotan River"		),
	("en_US",	"LOC_NAMED_RIVER_HRAZDAN",		"Hrazdan River"		),

-----------------------------------------------
-- Volcanoes
-----------------------------------------------

	("en_US",	"LOC_NAMED_VOLCANO_ARAGATS",	"Mount Aragats"		),
	("en_US",	"LOC_NAMED_VOLCANO_PORAK",		"Porak"				),
	("en_US",	"LOC_NAMED_VOLCANO_DAR_ALAGES",	"Dar-Alages"		),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("en_US", "LOC_CITY_NAME_TIGRANAKERT",  "Tigranakert"),
	("en_US", "LOC_CITY_NAME_ARTASHAT",  "Artashat"), -- Already exists @ Persia
	("en_US", "LOC_CITY_NAME_VAGHARSHAPAT",  "Vagharshapat"),
	("en_US", "LOC_CITY_NAME_GYUMRI",  "Gyumri"),
	("en_US", "LOC_CITY_NAME_YEREVAN",  "Yerevan"), -- Already exists @ City-State
	("en_US", "LOC_CITY_NAME_YERVANDASHAT",  "Yervandashat"),
	("en_US", "LOC_CITY_NAME_ARMAVIR",  "Armavir"),
	("en_US", "LOC_CITY_NAME_SOPHENE",  "Sophene"),
	("en_US", "LOC_CITY_NAME_VAN",  "Van"),
	("en_US", "LOC_CITY_NAME_ARARAT",  "Ararat"),
	("en_US", "LOC_CITY_NAME_DVIN",  "Dvin"),
	("en_US", "LOC_CITY_NAME_MANZIKERT",  "Manzikert"),
	("en_US", "LOC_CITY_NAME_MOXOENE",  "Moxoene"),
	("en_US", "LOC_CITY_NAME_VANADZOR",  "Vanadzor"),
	("en_US", "LOC_CITY_NAME_SAMOSATA",  "Samosata"),
	("en_US", "LOC_CITY_NAME_BAGARAN",  "Bagaran"),
	("en_US", "LOC_CITY_NAME_EDESSA",  "Edessa"),
	("en_US", "LOC_CITY_NAME_SHIRAKAVAN",  "Shirakavan"),
	("en_US", "LOC_CITY_NAME_KARS",  "Kars"),
	("en_US", "LOC_CITY_NAME_KAPAN",  "Kapan"),
	("en_US", "LOC_CITY_NAME_ANI",  "Ani"),
	("en_US", "LOC_CITY_NAME_ABOVYAN",  "Abovyan"),
	("en_US", "LOC_CITY_NAME_IJEVAN",  "Ijevan"),
	("en_US", "LOC_CITY_NAME_GORIS",  "Goris"),
	("en_US", "LOC_CITY_NAME_BAGHABERD",  "Baghaberd"),
	("en_US", "LOC_CITY_NAME_ARTIK",  "Artik"),
	("en_US", "LOC_CITY_NAME_BITLIS",  "Bitlis"),
	("en_US", "LOC_CITY_NAME_SASUNIK",  "Sasunik"),
	("en_US", "LOC_CITY_NAME_PARTAV",  "Partav"),
	("en_US", "LOC_CITY_NAME_HRAZDAN",  "Hrazdan"),
	("en_US", "LOC_CITY_NAME_ARTAHAN",  "Artahan"),
	("en_US", "LOC_CITY_NAME_SISIAN",  "Sisian"),
	("en_US", "LOC_CITY_NAME_ERZURUM",  "Erzurum"),
	("en_US", "LOC_CITY_NAME_ARSAMOSATA",  "Arsamosata"),
	("en_US", "LOC_CITY_NAME_ZAREHAVAN",  "Zarehavan"),
	("en_US", "LOC_CITY_NAME_GAVAR",  "Gavar"),
	("en_US", "LOC_CITY_NAME_NAXCIVAN",  "Naxcivan"),
	("en_US", "LOC_CITY_NAME_ALASHKERT",  "Alashkert"),
	("en_US", "LOC_CITY_NAME_SHUSHA",  "Shusha"),
	("en_US", "LOC_CITY_NAME_STEPANAKERT",  "Stepanakert"),
	("en_US", "LOC_CITY_NAME_TIRAKATAR",  "Tirakatar"),
	("en_US", "LOC_CITY_NAME_DILIJAN",  "Dilijan"),
	("en_US", "LOC_CITY_NAME_ZARISHAT",  "Zarishat"),
	("en_US", "LOC_CITY_NAME_MAKU",  "Maku"),
	("en_US", "LOC_CITY_NAME_ADAMAKERT",  "Adamakert"),
	("en_US", "LOC_CITY_NAME_SIVAS",  "Sivas"),
	("en_US", "LOC_CITY_NAME_SASSOUN",  "Sassoun"),
	("en_US", "LOC_CITY_NAME_APARAN",  "Aparan"),
	("en_US", "LOC_CITY_NAME_VARDENIS",  "Vardenis"),

-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_1",		"Toros"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_2",		"Khajag"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_3",		"Hayk"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_4",		"Grigor"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_5",		"Vardan"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_6",		"Ari"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_7",		"Davit"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_8",		"Bagrat"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_9",		"Avedis"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_MALE_10",		"Zhirayr"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_1",	"Aghavni"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_2",	"Sirvard"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_3",	"Lusine"	),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_4",	"Kohar"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_5",	"Hurik"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_6",	"Gadar"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_7",	"Siran"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_8",	"Arax"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_9",	"Anush"		),
	("en_US", "LOC_CITIZEN_CVS_ARMENIA_FEMALE_10",	"Ani"		),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("en_US", "LOC_CIVINFO_CVS_ARMENIA_LOCATION",	"Caucasus"	),
	("en_US", "LOC_CIVINFO_CVS_ARMENIA_SIZE",		"c.29,800 km²"	),
	("en_US", "LOC_CIVINFO_CVS_ARMENIA_POPULATION",	"2.9 million"	),
	("en_US", "LOC_CIVINFO_CVS_ARMENIA_CAPITAL",		"Yerevan"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ARMENIA_CHAPTER_HISTORY_PARA_1",	
	"The ancient Kingdom of Armenia was an independent monarchy from 331 BC to AD 428. When the kingdom was the most powerful it was also called the Armenian Empire. After the fall of the Achaemenid Empire, the former Satrapy of Armenia was divided in about 120 clan territories. After the destruction of the Seleucid Empire, a Helenistic Greek successor state of Alexander the Great's short-lived empire, a Helenistic Armenian state was founded in 190 BC by Artaxias I. At its height, from 95 to 66 BC, Armenia extended its rule through areas of the Caucasus and the area that is now eastern Turkey, Syria and Lebanon. Armenia was one of the weakest states in the Roman East. It was under the Roman sphere of influence in 66 BC."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ARMENIA_CHAPTER_HISTORY_PARA_2",	
	"Armenia reached its greatest size and influence under King Tigranes II. It went from the Mediterranean Sea northeast to the Kura River. The Artaxiads were overthrown by the Romans in AD 12. This started a period of civil war. After AD 54, the kingdom was ruled by the Arsacid Dynasty. In AD 387, Armenia was divided into Byzantine Armenia in the west and Persian Armenia in the east. Persian Armenia remained under the rule of Arsacid client kings until AD 428."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ARMENIA_CHAPTER_HISTORY_PARA_3",	
	"The Arsacid Dynasty ruled the Kingdom of Armenia from 54 to 428. They used to be a branch of the Parthian Arsacids but became a distinctly Armenian dynasty later on. Arsacid Kings reigned intermittently throughout the chaotic years after the fall of the Artaxiad Dynasty until 62 when Tiridates I of Armenia secured Arsacid rule in Armenia. An independent line of Kings was established by Vologases II of Armenia in 180. Two of the most notable events under Arsacid rule in Armenian history were the conversion of Armenia to Christianity by St. Gregory the Illuminator in 301 and the creation of the Armenian alphabet by Mesrop Mashtots in 405."),
		
	("en_US", "LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_ARMENIA_UI_CHAPTER_HISTORY_PARA_1",	
	"The earliest Christian accounts of the introduction of Christianity into Armenia date from the 1st century. The Church teaches that it was first preached by two Apostles of Jesus, St. Thaddeus and St. Bartholomew. The Armenian Apostolic Church claims to been in existence since the days of the apostles and therefore would be one of the oldest denominations of Christianity. Armenia was the first country to adopt Christianity as its official religion, when St. Gregory the Illuminator converted Tiridates III (the King of Armenia) and members of his court, traditionally dated to 301. The Church teaches that St. Gregory was imprisoned by Tiridates in an underground pit, called Khor Virab, for 13 years, after which he healed the King of an incurable disease, whereupon Tiridates accepted Christianity."),
	("en_US", "LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_ARMENIA_UI_CHAPTER_HISTORY_PARA_2",	
	"Armenian architecture, as it originates in an earthquake-prone region, tends to be built with this hazard in mind. Armenian buildings tend to be rather low-slung and thick-walled in design. Armenia has abundant resources of stone, and relatively few forests, so stone was nearly always used throughout for large buildings. Small buildings and most residential buildings were normally constructed of lighter materials, and hardly any early examples survive, as at the abandoned medieval capital of Ani."),
	("en_US", "LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_ARMENIA_UI_CHAPTER_HISTORY_PARA_3",	
	"The stone used in buildings is typically quarried all at the same location, in order to give the structure a uniform color. In cases where different color stone are used, they are often intentionally contrasted in a striped or checkerboard pattern. Powder made out of ground stone of the same type was often applied along the joints of the tuff slabs to give buildings a seamless look. Unlike the Romans or Syrians who were building at the same time, Armenians never used wood or brick when building large structures."),
	("en_US", "LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_ARMENIA_UI_CHAPTER_HISTORY_PARA_4",	
	"Armenian architecture employs a form of concrete to produce sturdy buildings. It is a mixture of lime mortar, broken tuff, and rocks around which forms a core against which thin slabs of tuff are arranged in brickwork fashion. As the wet mortar mixture dries it forms a strong concrete-like mass sealed together with the tuff around it and, due to tuff's properties, it becomes harder with time. Initially, almost no core was used in the construction of churches, stone blocks were simply sealed together, but as architects saw how those with mortar cores withstood tremors, the size of the core expanded. Frescos of marble or another stone were often affixed to the side of these buildings, usually at a later date."),

	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_ARMENIA_UU_CHAPTER_HISTORY_PARA_1",  
	"Azatavrear cavalry was the elite guard of Armenian kings. Later, in medieval Azatavrear cavalry was collected from nobles, known as Ayrudzi (man and horse, horseman). During peace time Armenian cavalry was divided into number of small groups which took the role of guarding the King and his family as well as Armenian lords. Other duties of the Armenian cavalry was patrolling Armenian borders under the command of Armenian general (sparapet). The group of Armenian cavalry whose main task was to facilitate the protection of the Armenian king and his family in the ancient period consisted from 6,000 heavy armored horsemen, and in medieval period, 3,000 light armored horsemen. In war time the number of Azatavrear reached from 10,000 up to 20,000 horsemen. Beside Azatavrear cavalry there was Armenian light cavalry, which mainly consisted from horse archers."),

-----------------------------------------------
-- Mod Support | Rule with Faith
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_ARMENIA_DESCRIPTION_JFD_CIVILIZATION",					"Armenian Empire"			),
	("en_US",	"LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_ARMENIA",							"T’agavory"					),
	("en_US",	"LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_ARMENIA_FEMININE",					"T’agavory"					),

	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_ARMENIA",							"Glkhavory"					),
	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_ARMENIA_FEMININE",				"Generaly"					),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ARMENIA",							"Zinvorakan"				),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ARMENIA_FEMININE",					"Zinvorakan"				),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_ARMENIA",							"Yerets"					),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_ARMENIA_FEMININE",					"Yerets’ut’yun"				),

	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_ARMENIA",						"Zinvorakan"				),
	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_ARMENIA_FEMININE",				"Zinvorakan"				),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_ARMENIA",						"Khosnak"					),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_ARMENIA_FEMININE",				"Khosnak"					),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_ARMENIA",				"Yntrvats"					),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_ARMENIA_FEMININE",		"Yntrvats"					),

	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ARMENIA",							"K’artughar"				),
	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ARMENIA_FEMININE",				"K’artughar"				),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ARMENIA",							"T’agavory"					),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ARMENIA_FEMININE",				"T’aguhin"					),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_ARMENIA",				"Nakhagah"					),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_ARMENIA_FEMININE",		"Nakhagah"					);

	