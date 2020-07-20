/*
	Localisation
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_SELEUCID_NAME",			"Seleucid"			),
	("en_US",	"LOC_CIVILIZATION_CVS_SELEUCID_DESCRIPTION",	"Seleucid Empire"	),
	("en_US",	"LOC_CIVILIZATION_CVS_SELEUCID_ADJECTIVE",  	"Seleucid"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_NAME",			"Katoikia"	),
	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_SELEUCID_UA_DESCRIPTION",	"Receive +35% [ICON_PRODUCTION] Production towards districts and buildings if they already exist in the [ICON_CAPITAL] Capital."	),
	
-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US",	"LOC_UNIT_CVS_SELEUCID_UU_NAME",		"Argyraspides"	),
	("en_US",	"LOC_UNIT_CVS_SELEUCID_UU_DESCRIPTION",		  
	"An anti-cavalry unit unique to Seleucid. Available earlier than the Pikeman it replaces, and does not suffer combat penalties against Melee units. Provides adjacent Cavalry units additional [ICON_STRENGTH] Combat Strength when attacking, and adjacent Anti-Cavalry units additional [ICON_STRENGTH] Combat Strength when defending."),

	("en_US",	"LOC_MODIFIER_CVS_SELEUCID_UU_ANTI_MELEE_DESCRIPTION",  "+{1_Amount} Combat vs. Melee units"		),
	("en_US",	"LOC_MODIFIER_CVS_SELEUCID_UU_CAV_DESCRIPTION",			"+{1_Amount} from adjacent Argyraspides"	),
	("en_US",	"LOC_MODIFIER_CVS_SELEUCID_UU_ANTICAV_DESCRIPTION",  	"+{1_Amount} from adjacent Argyraspides"	),

-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US",	"LOC_DISTRICT_CVS_SELEUCID_UI_NAME",		"Agora"	),
	("en_US",	"LOC_DISTRICT_CVS_SELEUCID_UI_DESCRIPTION",		
	"A Commercial Hub replacement unique to Seleucid. +1 [ICON_GREATGENERAL] Great General points per turn. Receives +1 [ICON_GOLD] Gold from adjacent Farms and Pastures. Provides +1 [ICON_FOOD] Food for each building constructed within it on domestic [ICON_TRADEROUTE] Trade Routes to this city, and +1 [ICON_PRODUCTION] Production on international [ICON_TRADEROUTE] Trade Routes from this city."	),

	("en_US",	"ADJ_CVS_SELEUCID_UI_FARM_GOLD",		"+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 1?Farm; other?Farms;}."		),
	("en_US",	"ADJ_CVS_SELEUCID_UI_PASTURE_GOLD",		"+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 1?Pasture; other?Pastures;}."	),

-----------------------------------------------
-- Deserts
-----------------------------------------------

	("en_US",	"LOC_NAMED_DESERT_DASHT_E_KAVIR",	"Dasht-e Kavir"		),
	("en_US",	"LOC_NAMED_DESERT_DASHT_E_LUT",		"Dasht-e Lut"		),
	("en_US",	"LOC_NAMED_DESERT_MARANJAB",		"Maranjab"			),
	("en_US",	"LOC_NAMED_DESERT_SYRIAN",			"Syrian"			),

-----------------------------------------------
-- Mountains
-----------------------------------------------

	("en_US",	"LOC_NAMED_MOUNTAIN_SULAIMAN",		"Sulaiman Mountains"	),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	("en_US",	"LOC_NAMED_RIVER_ARVAND_RUD",		"Arvand Rud"	),
	("en_US",	"LOC_NAMED_RIVER_OXUS",				"Oxus River"	),

-----------------------------------------------
-- Lakes
-----------------------------------------------

	("en_US",	"LOC_NAMED_LAKE_SAWA",				"Lake Sawa"			),
	("en_US",	"LOC_NAMED_LAKE_ZREBAR",			"Zrebar Lake"		),
	("en_US",	"LOC_NAMED_LAKE_SHORABIL",			"Shorabil Lake"		),
	("en_US",	"LOC_NAMED_LAKE_ALENDAN",			"Alendan Lake"		),
	("en_US",	"LOC_NAMED_LAKE_KEEYOW",			"Keeyow Lake"		),
	("en_US",	"LOC_NAMED_LAKE_OVAN",				"Ovan Lake"			),

-----------------------------------------------
-- Seas
-----------------------------------------------

	("en_US",	"LOC_NAMED_SEA_STRAIT_OF_HORMUZ",	"Strait of Hormuz"	),
	("en_US",	"LOC_NAMED_SEA_CILICIAN_SEA",		"Cilician Sea"		),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("en_US",	"LOC_CITY_NAME_SELEUKIA",  "Seleukia"),
	("en_US",	"LOC_CITY_NAME_ANTIOCH",  "Antioch"), -- Already exists @ Antioch
	("en_US",	"LOC_CITY_NAME_CTESIPHON",  "Ctesiphon"),
	("en_US",	"LOC_CITY_NAME_SUSA",  "Susa"), -- Already exists @ Persia
	("en_US",	"LOC_CITY_NAME_SARDIS",  "Sardis"),
	("en_US",	"LOC_CITY_NAME_APAMEA",  "Apamea"),
	("en_US",	"LOC_CITY_NAME_REY",  "Rey"),
	("en_US",	"LOC_CITY_NAME_HARRAN",  "Harran"),
	("en_US",	"LOC_CITY_NAME_DURA_EUROPOS",  "Dura-Europos"),
	("en_US",	"LOC_CITY_NAME_URFA",  "Urfa"),
	("en_US",	"LOC_CITY_NAME_ZEUGMA",  "Zeugma"),
	("en_US",	"LOC_CITY_NAME_HERAT",  "Herat"),
	("en_US",	"LOC_CITY_NAME_MERV",  "Merv"),
	("en_US",	"LOC_CITY_NAME_SAMARKAND",  "Samarkand"),
	("en_US",	"LOC_CITY_NAME_CARCHEMISH",  "Carchemish"),
	("en_US",	"LOC_CITY_NAME_PERSEPOLIS",  "Persepolis"),
	("en_US",	"LOC_CITY_NAME_BAKTRA",  "Baktra"),
	("en_US",	"LOC_CITY_NAME_NAHAVAND",  "Nahavand"),
	("en_US",	"LOC_CITY_NAME_CHARAX_SPASINOU",  "Charax Spasinou"),
	("en_US",	"LOC_CITY_NAME_SELEUCIA_PIERIA",  "Seleucia Pieria"),
	("en_US",	"LOC_CITY_NAME_ISFAHAN",  "Isfahan"),
	("en_US",	"LOC_CITY_NAME_HEKATOMPYLOS",  "Hekatompylos"),
	("en_US",	"LOC_CITY_NAME_NUSAYBIN",  "Nusaybin"),
	("en_US",	"LOC_CITY_NAME_SATTAGU",  "Sattagū"),
	("en_US",	"LOC_CITY_NAME_SARI",  "Sari"),
	("en_US",	"LOC_CITY_NAME_TUSHPA",  "Tushpa"), -- Already exists @ Persia
	("en_US",	"LOC_CITY_NAME_TARSUS",  "Tarsus"), -- Already exists @ Persia
	("en_US",	"LOC_CITY_NAME_ALEPPO",  "Aleppo"), -- Already exists @ Arabia
	("en_US",	"LOC_CITY_NAME_PALMYRA",  "Palmyra"), -- Already exists @ Rome
	("en_US",	"LOC_CITY_NAME_DAMASCUS",  "Damascus"), -- Already exists @ Arabia
	("en_US",	"LOC_CITY_NAME_ASSUR",  "Assur"),
	("en_US",	"LOC_CITY_NAME_HARMOZEIA",  "Harmozeia"),
	("en_US",	"LOC_CITY_NAME_ARBELA",  "Arbela"),
	("en_US",	"LOC_CITY_NAME_ARTEMITA",  "Artemita"),
	("en_US",	"LOC_CITY_NAME_KIRKUK",  "Kirkuk"),
	("en_US",	"LOC_CITY_NAME_ECBATANA",  "Ecbatana"),
	("en_US",	"LOC_CITY_NAME_BISOTUN",  "Bisotun"),
	("en_US",	"LOC_CITY_NAME_URUK",  "Uruk"), -- Already exists @ Sumeria
	("en_US",	"LOC_CITY_NAME_HATRA",  "Hatra"),
	("en_US",	"LOC_CITY_NAME_BAALBEK",  "Baalbek"),
	("en_US",	"LOC_CITY_NAME_NINEVEH",  "Nineveh"),
	("en_US",	"LOC_CITY_NAME_BALKH",  "Balkh"),
	("en_US",	"LOC_CITY_NAME_LATAKIA",  "Latakia"),

-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_1",			"Zaleukos"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_2",			"Deinokrates"	),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_3",			"Epopeos"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_4",			"Diktys"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_5",			"Demaratos"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_6",			"Temenos"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_7",			"Obelos"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_8",			"Korax"			),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_9",			"Idas"			),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_MALE_10",			"Thaddaios"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_1",		"Theonoe"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_2",		"Panakea"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_3",		"Laodamia"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_4",		"Eurymede"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_5",		"Iolanthe"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_6",		"Nyx"			),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_7",		"Enarete"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_8",		"Okypete"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_9",		"Elpinike"		),
	("en_US",	"LOC_CITIZEN_CVS_SELEUCID_FEMALE_10",		"Eunoe"			),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("en_US",	"LOC_CIVINFO_CVS_SELEUCID_LOCATION",		"West Asia"				),
	("en_US",	"LOC_CIVINFO_CVS_SELEUCID_SIZE",			"~3.9 million km²"		),
	("en_US",	"LOC_CIVINFO_CVS_SELEUCID_POPULATION",		"~30 million (est.)"	),
	("en_US",	"LOC_CIVINFO_CVS_SELEUCID_CAPITAL",			"Seleukia (305-240 BCE), Antioch (240-63 BCE)"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_1",		
	"The Seleucid Empire was the Persian kingdom of the Macedonian dynasty of the Seleucids, whose rule began with the collapse of Alexander's empire and faded away between Roman and Parthian growth of power in the 1st century BCE."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_2",		
	"The Seleucid Empire began when Seleucus I, one of Alexander the Great's former favorite companions, was given the satrapy of Babylon in the second division of the empire in 321 BCE. He first ruled it briefly until 315 BCE, when he was forced to flee to Egypt under pressure of Antigonos. There he prepared his revenge with the help of Ptolemy, and succeeded to retake Babylon after the battle of Gaza in 305 BCE. He also inherited the Asian part of Antigonos' vast empire after its final fall at the battle of Ipsos in 301 BCE. Having secured Antigonos' kingdom's eastern part, Seleucus managed to reconquer most of Alexander's empire, defeating Lysimachos and Demetrios. He was, however, murdered in 281 BCE on the eve of his success by the man he supported on the Egyptian throne, Ptolemy Keraunos."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_3",	
	"After the death of Seleucus, things became worse for his successors. During the successive reigns of Antiochos I, Antiochos II, Seleucus II and Seleucus III, the empire struggled, due to rebellions of Bythinia, Pergammum, Bactria and Parthia, and the first indecisive Syrian wars against the Ptolemies. Internal struggles began during this time, which continued until the empire's end. The Seleucids also had to fight the Galatians who devastated Anatolia, and also against rebellious elements at all levels."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_4",	
	"It is this disorganized and problematic empire that the eighteen year-old Antiochos III inherited in 223 BCE. Over the next 25 years he subdued most of the rebellious states in a great tour de force: He made his anabasis (difficult retreat) in the east successfully fighting Parthians and Bactrians, made a profitable treaty with the Indian ruler Sophagasenos and confirmed his superiority on rebellious subjects. He also made an expedition against the Gerrhaeans of the East Arabian coast in 204 BCE and defeated the Ptolemies twice which allowed him to take control of the highly valued Koile Syria near 198 BCE."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_5",	
	"Regrettably, he also led a war against Rome in the wake of his expansion in Anatolia, and despite the wise advice of the Carthaginian Hannibal Barca, which he decided not to follow, he was defeated at the Battle of Magnesia ad Sipylum in 190 BCE. The consequences of the disastrous peace treaty which followed led the kingdom into ruin, and Antiochos III died in 187 BCE during a campaign in the East."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_6",	
	"Antiochos III's death marked the end of the Seleucid Empire as a great power. The kingdom fell once more into dynastic struggles, and the eastern provinces were gradually lost due to rebellions and Parthian expansion. Much worse was the Roman interference in the Empire, largely influencing the dynastic quarrels and foreign policy, such as in 168 BCE when the Romans forced Antiochos IV to withdraw from the only successful Seleucid campaign in Egypt. The wild intrigues which characterized the last decades of the Seleucid Empire were ended by the invasion of the Armenian king Tigranes II in 83 BCE. Even if after Tigranes some rulers of Syria claimed to be Seleucid kings, they were no more than Roman vassals."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SELEUCID_CHAPTER_HISTORY_PARA_7",	
	"The Seleucid legacy in Asia was strong, because Hellenism was established in Asia during two centuries of Seleucid rule. The method of dating years in Asia, for example, was called the Seleucid Era, beginning at the return of Seleucus I to Babylon in 311 BCE, which was continued to be used as late as the 6th century CE. In fact, the Seleucid legacy lasted throughout Roman, Parthian and Sassanid dominion until the Arabian invasions of the 7th century CE introduced Islam."),

	("en_US",	"LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_SELEUCID_UI_CHAPTER_HISTORY_PARA_1",	
	"Meaning 'gathering place', the agora was at the heart of Hellenic cities, acting as the commercial, artistic, political and spiritual center of city life. As early as the 10th century BC, these open spaces were used as the assembly ground for armies, and for the citizens to hear the decisions of their courts and proclamations of their kings. The space eventually included market stalls, gatherings for games, and the public platforms for democracy and public speaking. In Athens, the agora was situated to the northwest of the Acropolis on the Panathenaic Way, and featured fountains and temples dedicated to Zeus, Apollo and Hephaestus, shrines and altars to other gods, and the Strategeion. This last building was dedicated to the cult of Strategos and was where the ten Strategoi, or Athenian generals, would discuss politics and military policy."),
	("en_US",	"LOC_PEDIA_DISTRICTS_PAGE_DISTRICT_CVS_SELEUCID_UI_CHAPTER_HISTORY_PARA_2",	
	"Khora was the territory of the Ancient Hellenic polis outside the city proper. The term has been used to refer to a clearing that gives place to being, or dwelling. Intra-regional and inter-regional trade in bulk commodities was difficult because of the high cost of land transport and the uniformity of production over large areas, such as Mesopotamia, even when the great rivers could facilitate the movement of goods. As a result, trade and industry in the Seleucid empire tended to be localised, with cities and towns being supplied mainly with foodstuffs from the surrounding countryside providing tribute, or taxes, with products of grain, industry (principally textiles and metalwork) and services in exchange."),

	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SELEUCID_UU_CHAPTER_HISTORY_PARA_1",  	
	"The Seleucid army was the army of the Seleucid Empire, one of the numerous Hellenistic states that emerged after the death of Alexander the Great. As with the other major Hellenistic armies, the Seleucid army fought primarily in the Greco-Macedonian style, with its main body being the phalanx. The phalanx was a large, dense formation of men armed with small shields and a long pike called the sarissa. This form of fighting had been developed by the Macedonian army in the reign of Philip II of Macedon and his son Alexander the Great. Alongside the phalanx, the Seleucid armies used a great deal of native and mercenary troops to supplement their Greek forces, which were limited due to the distance from the Seleucid rulers' Macedonian homeland."),
	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SELEUCID_UU_CHAPTER_HISTORY_PARA_2",  	
	"The distance from Greece put a strain on the Seleucid military system, as it was primarily based around the recruitment of Greeks as the key segment of the army. In order to increase the population of Greeks in their kingdom, the Seleucid rulers created military settlements. There were two main periods in the establishment of settlements, firstly under Seleucus I Nicator and Antiochus I Soter and then under Antiochus IV Epiphanes. The military settlers were given land, varying in size according to rank and arm of service. They were settled in 'colonies of an urban character, which at some point could acquire the status of a polis. Unlike the Ptolemaic military settlers, who were known as Kleruchoi, the Seleucid settlers were called Katoikoi. The settlers would maintain the land as their own and in return they would serve in the Seleucid army when called. The majority of settlements were concentrated in Lydia, northern Syria, the upper Euphrates and Media. The Greeks were dominant in Lydia, Phrygia and Syria. For example, Antiochus III brought Greeks from Euboea, Crete and Aetolia and settled them in Antioch."),
	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SELEUCID_UU_CHAPTER_HISTORY_PARA_3",  	
	"These settlers would be used to form the Seleucid phalanx and cavalry units, with picked men put into the kingdom's guards regiments. The rest of the Seleucid army would consist of a large number of native and mercenary troops, who would serve as light auxiliary troops. However, by the time of the Daphne Parade in 166 BC, the large amount of ethnic contingents were missing from the army of Antiochus IV. This was most likely due to the army reform that was undertaken by Antiochus IV. In his reign, Antiochus IV had built 15 new cities and their association with the increased phalanx... at Daphne is too obvious to be ignored."),
	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SELEUCID_UU_CHAPTER_HISTORY_PARA_4",  	
	"The principle guard infantry of the Seleucid army was the 'Silver-Shields', or Argyraspides. They were a permanently embodied guard unit, which was formed from the sons of military settlers. They were armed in the Macedonian manner with a sarissa and fought in the phalanx formation, much like the other Hellenistic armies of the time. The Argyraspides were probably a corps of about 10,000 men who were picked from the entire kingdom to serve in this unit. The whole kingdom may mean 'regions like Syria and Mesopotamia, which were the nucleus of the Seleucid Kingdom, there was a greater density of Greek soldiers'."),

-----------------------------------------------
-- Mod Support | RwF
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_SELEUCID_DESCRIPTION_JFD_CIVILIZATION",	"Seleucid Civilization"		),

	("en_US",	"LOC_CHIEFDOM_TITLE_CVS_SELEUCID",								"Chief"			),
	("en_US",	"LOC_CHIEFDOM_TITLE_CVS_SELEUCID_FEMININE",						"Chief"			),
	("en_US",	"LOC_HORDE_TITLE_CVS_SELEUCID",									"Polemarch"		),
	("en_US",	"LOC_HORDE_TITLE_CVS_SELEUCID_FEMININE",						"Polemarch"		),
	("en_US",	"LOC_POLIS_TITLE_CVS_SELEUCID",									"Politarch"		),
	("en_US",	"LOC_POLIS_TITLE_CVS_SELEUCID_FEMININE",						"Politarch"		),

	("en_US",	"LOC_AUTOCRACY_TITLE_CVS_SELEUCID",								"Archon"		),
	("en_US",	"LOC_AUTOCRACY_TITLE_CVS_SELEUCID_FEMININE",					"Archontissa"	),
	("en_US",	"LOC_OLIGARCHY_TITLE_CVS_SELEUCID",								"Ephor"			),
	("en_US",	"LOC_OLIGARCHY_TITLE_CVS_SELEUCID_FEMININE",					"Ephorissa"		),
	("en_US",	"LOC_CLASSICAL_DEMOCRACY_TITLE_CVS_SELEUCID",					"Speaker"		),
	("en_US",	"LOC_CLASSICAL_DEMOCRACY_TITLE_CVS_SELEUCID_FEMININE",			"Speaker"		),

	("en_US",	"LOC_REPUBLIC_TITLE_CVS_SELEUCID",								"Magistros"		),
	("en_US",	"LOC_REPUBLIC_TITLE_CVS_SELEUCID_FEMININE",						"Magistrissa"	),
	("en_US",	"LOC_MONARCHY_TITLE_CVS_SELEUCID",								"Basileus"		),
	("en_US",	"LOC_MONARCHY_TITLE_CVS_SELEUCID_FEMININE",						"Basileia"		),
	("en_US",	"LOC_LIBERAL_DEMOCRACY_TITLE_CVS_SELEUCID",						"Logothete"		),
	("en_US",	"LOC_LIBERAL_DEMOCRACY_TITLE_CVS_SELEUCID_FEMININE",			"Logothete"		);