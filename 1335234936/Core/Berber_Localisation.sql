/*
	Localisation
	Authors: SeelingCat
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_BERBER_NAME",			"Berbers"		),
	("en_US",	"LOC_CIVILIZATION_CVS_BERBER_DESCRIPTION",	"Berber Empire"	),
	("en_US",	"LOC_CIVILIZATION_CVS_BERBER_ADJECTIVE",  	"Berber"		),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_BERBER_UA_NAME",			"Tamazgha"	),
	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_BERBER_UA_DESCRIPTION",		"Specialty districts receive major adjacency bonuses from Oases. Foreign [ICON_TRADEROUTE] Trade Routes that pass through Berber cities generate +3 [ICON_GOLD] Gold and +2 [ICON_PRODUCTION] Production in those cities. Trader units are invisible unless adjacent to an enemy unit."	),
	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_BERBER_UA_XP2_DESCRIPTION",	"Specialty districts receive major adjacency bonuses from Oases. Foreign [ICON_TRADEROUTE] Trade Routes that pass through Berber cities generate +3 [ICON_GOLD] Gold and +2 [ICON_PRODUCTION] Production in those cities. Trader units are invisible unless adjacent to an enemy unit. Units are immune to Dust Storms and enemy units take 100% extra damage from Dust Storms in Berber territory."	),

	("en_US",	"LOC_MODIFIER_CVS_BERBER_UA_DISTRICT_CAMPUS",			"+{1_num} [ICON_SCIENCE] Science from the adjacent {1_Num : plural 1?Oasis; other?Oases;}."	),
	("en_US",	"LOC_MODIFIER_CVS_BERBER_UA_DISTRICT_THEATER",			"+{1_num} [ICON_CULTURE] Culture from the adjacent {1_Num : plural 1?Oasis; other?Oases;}."	),
	("en_US",	"LOC_MODIFIER_CVS_BERBER_UA_DISTRICT_HOLY_SITE",		"+{1_num} [ICON_FAITH] Faith from the adjacent {1_Num : plural 1?Oasis; other?Oases;}."	),
	("en_US",	"LOC_MODIFIER_CVS_BERBER_UA_DISTRICT_INDUSTRIAL_ZONE",	"+{1_num} [ICON_PRODUCTION] Production from the adjacent {1_Num : plural 1?Oasis; other?Oases;}."	),
	("en_US",	"LOC_MODIFIER_CVS_BERBER_UA_DISTRICT_COMMERCIAL_HUB",	"+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 1?Oasis; other?Oases;}."	),
	("en_US",	"LOC_MODIFIER_CVS_BERBER_UA_DISTRICT_HARBOR",			"+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 1?Oasis; other?Oases;}."	),

-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US",	"LOC_IMPROVEMENT_CVS_BERBER_UI_NAME",			"Foggara"	),
	("en_US",	"LOC_IMPROVEMENT_CVS_BERBER_UI_DESCRIPTION",	"Unlocks the builder ability to construct a Foggara, an improvement unique to Berbers.[NEWLINE][NEWLINE]Yields +1 [ICON_FOOD] Food, with additional [ICON_Food] Food for every two adjacent Foggara, and each adjacent Mountain or Hills tile. Flat terrain adjacent to a Foggara yields +1 [ICON_FOOD] Food. Must be built on flat desert terrain and in a line with other Foggara. Immune to damage from Droughts and Dust Storms."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US",	"LOC_UNIT_CVS_BERBER_UU_NAME",			"Arer Warrior"	),
	("en_US",	"LOC_UNIT_CVS_BERBER_UU_DESCRIPTION",	"An anti-cavalry unit unique to Berbers. Replaces the Pikeman. Unlocked at Military Training. Weaker that the Pikeman it replaces, but is cheaper to produce and receives additional [ICON_STRENGTH] Combat Strength when defending, doubled when in friendly territory."	),

	("en_US",	"LOC_MODIFIER_CVS_BERBER_UU_DEFENDING",				"+{1_Amount} Combat when defending"	),
	("en_US",	"LOC_MODIFIER_CVS_BERBER_UU_DEFENDING_FRIENDLY",	"+{1_Amount} Combat in friendly territory"	),

-----------------------------------------------
-- Mountains
-----------------------------------------------

	("en_US",	"LOC_NAMED_MOUNTAIN_RIF",		 "The Rif"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_AURES",		 "Aurès Mountains"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_HIGH_ATLAS",	 "High Atlas"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_LESSER_ATLAS",	 "Lesser Atlas"	),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	("en_US",	"LOC_NAMED_RIVER_OUED_SAOURA",		"Oued Saoura"		),
	("en_US",	"LOC_NAMED_RIVER_DJEDI",			"Djedi River"		),
	("en_US",	"LOC_NAMED_RIVER_CHELIF",			"Chelif River"			),
	("en_US",	"LOC_NAMED_RIVER_BOU_REGREG",		"Bou Regreg"		),
	("en_US",	"LOC_NAMED_RIVER_SOUS",		"Sous River"	),
	("en_US",	"LOC_NAMED_RIVER_DRAA",		"Draa River"		),

-----------------------------------------------
-- Deserts
-----------------------------------------------

	("en_US",	"LOC_NAMED_DESERT_TENERE",		"Ténéré"	),
	("en_US",	"LOC_NAMED_DESERT_GRAND_ERG_OCC",		"Grand Erg Occidental"	),
	("en_US",	"LOC_NAMED_DESERT_GRAND_ERG_ORI",		"Grand Erg Oriental"	),

-----------------------------------------------
-- Volcanoes
-----------------------------------------------

	("en_US",	"LOC_NAMED_VOLCANO_ATAKOR",	"Atakor"	),
	("en_US",	"LOC_NAMED_VOLCANO_HARUJ",	"Haruj"	),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("en_US", "LOC_CITY_NAME_TLEMCEN", "Tlemcen"),
	("en_US", "LOC_CITY_NAME_FEZ", "Fez"), -- Already exists @ Fez
	("en_US", "LOC_CITY_NAME_TOUGGOURT", "Touggourt"),
	("en_US", "LOC_CITY_NAME_GHARDAIA", "Ghardaia"),
	("en_US", "LOC_CITY_NAME_BEJAIA", "Bejaia"),
	("en_US", "LOC_CITY_NAME_TETOUAN", "Tetouan"),
	("en_US", "LOC_CITY_NAME_ANNABA", "Annaba"),
	("en_US", "LOC_CITY_NAME_BISKRA", "Biskra"),
	("en_US", "LOC_CITY_NAME_GERMA", "Germa"),
	("en_US", "LOC_CITY_NAME_CHERCHELL", "Cherchell"),
	("en_US", "LOC_CITY_NAME_OUARZAZATE", "Ouarzazate"),
	("en_US", "LOC_CITY_NAME_GHADAMES", "Ghadames"),
	("en_US", "LOC_CITY_NAME_SETIF", "Setif"),
	("en_US", "LOC_CITY_NAME_MISURATA", "Misurata"),
	("en_US", "LOC_CITY_NAME_SALE", "Sale"),
	("en_US", "LOC_CITY_NAME_TAMANRASSET", "Tamanrasset"),
	("en_US", "LOC_CITY_NAME_LAGHOUAT", "Laghouat"),
	("en_US", "LOC_CITY_NAME_AGADEZ", "Agadez"),
	("en_US", "LOC_CITY_NAME_ESSOUK", "Essouk"),
	("en_US", "LOC_CITY_NAME_AGADIR", "Agadir"),
	("en_US", "LOC_CITY_NAME_TINMEL", "Tinmel"),
	("en_US", "LOC_CITY_NAME_BATNA", "Batna"),
	("en_US", "LOC_CITY_NAME_TEBESSA", "Tebessa"),
	("en_US", "LOC_CITY_NAME_DJERBA", "Djerba"),
	("en_US", "LOC_CITY_NAME_KHENCHELA", "Khenchela"),
	("en_US", "LOC_CITY_NAME_CIRTA", "Cirta"),
	("en_US", "LOC_CITY_NAME_TAGHZUT", "Tagzhut"),
	("en_US", "LOC_CITY_NAME_MARRAKESH", "Marrakesh"),
	("en_US", "LOC_CITY_NAME_ALGIERS", "Algiers"),
	("en_US", "LOC_CITY_NAME_TUNIS", "Tunis"),
	("en_US", "LOC_CITY_NAME_TRIPOLI_OF_THE_WEST", "Tripoli"),
	("en_US", "LOC_CITY_NAME_TIZI_OUZOU", "Tizi Ouzou"),
	("en_US", "LOC_CITY_NAME_KAIROUAN", "Kairouan"),
	("en_US", "LOC_CITY_NAME_OUARGLA", "Ouargla"),
	-- ("en_US", "LOC_CITY_NAME_ORAN", "Oran"), -- Already exists @ Spain
	("en_US", "LOC_CITY_NAME_SIJILMASA", "Sijilmasa"),
	("en_US", "LOC_CITY_NAME_BLIDA", "Blida"),
	("en_US", "LOC_CITY_NAME_AIT_BENHADDOU", "Ait Benhaddou"),
	("en_US", "LOC_CITY_NAME_TATAOUINE", "Tataouine"),
	("en_US", "LOC_CITY_NAME_ZUWARAH", "Zuwarah"),
	("en_US", "LOC_CITY_NAME_TENES", "Tenes"),
	("en_US", "LOC_CITY_NAME_MEDEA", "Medea"),
	("en_US", "LOC_CITY_NAME_GHAT", "Ghat"),
	("en_US", "LOC_CITY_NAME_TIARET", "Tiaret"),
	("en_US", "LOC_CITY_NAME_UBARI", "Ubari"),
	("en_US", "LOC_CITY_NAME_MEKNES", "Meknes"),
	("en_US", "LOC_CITY_NAME_TIMGAD", "Timgad"),
	("en_US", "LOC_CITY_NAME_GAFSA", "Gafsa"),
	("en_US", "LOC_CITY_NAME_LARACHE", "Larache"),
	("en_US", "LOC_CITY_NAME_ABALESSA", "Abalessa"),
	("en_US", "LOC_CITY_NAME_OUJDA", "Oujda"),
	("en_US", "LOC_CITY_NAME_ALTAVA", "Altava"),
	("en_US", "LOC_CITY_NAME_MOGADOR", "Mogador"),
	("en_US", "LOC_CITY_NAME_FIGUIG", "Figuig"),
	("en_US", "LOC_CITY_NAME_MASCARA", "Mascara"),
	("en_US", "LOC_CITY_NAME_DJANET", "Djanet"),
	("en_US", "LOC_CITY_NAME_TOZEUR", "Tozeur"),
	("en_US", "LOC_CITY_NAME_JIJEL", "Jijel"),
	("en_US", "LOC_CITY_NAME_ARAOUANE", "Araouane"),
	("en_US", "LOC_CITY_NAME_THAGASTE", "Thagaste"),
	("en_US", "LOC_CITY_NAME_TAMENTIT", "Tamentit"),
	("en_US", "LOC_CITY_NAME_CEUTA", "Ceuta"),
	("en_US", "LOC_CITY_NAME_MELILLA", "Melilla"),
	("en_US", "LOC_CITY_NAME_TANGIER", "Tangier"),
	("en_US", "LOC_CITY_NAME_CASABLANCA", "Casablanca"),
	("en_US", "LOC_CITY_NAME_TAGHAZA", "Taghaza"),
	("en_US", "LOC_CITY_NAME_AUZIA", "Auzia"),
	("en_US", "LOC_CITY_NAME_DOUIRET", "Douiret"),
	("en_US", "LOC_CITY_NAME_CHENINI", "Chenini"),
	("en_US", "LOC_CITY_NAME_SAFI", "Safi"),
	("en_US", "LOC_CITY_NAME_LAMBAESIS", "Lambaesis"),
	("en_US", "LOC_CITY_NAME_SIGA", "Siga"),
	("en_US", "LOC_CITY_NAME_THELEPTE", "Thelepte"),
	("en_US", "LOC_CITY_NAME_RAS_KEBDANA", "Ras Kebdana"),
	
-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_1",		"Cicnaw"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_2",		"Yugerten"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_3",		"Yuba"			),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_4",		"Gildu"			),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_5",		"Tirines"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_6",		"Afulay"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_7",		"ibn Battuta"	),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_8",		"Gaya"			),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_9",		"Vermina"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_MALE_10",		"Takfarin"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_1",		"Tajeddigt"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_2",		"Lalla Fadma"	),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_3",		"Tawes"			),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_4",		"Taderfit"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_5",		"Tagwizult"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_6",		"Tantawilt"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_7",		"Hindi"			),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_8",		"Takama"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_9",		"Tadla"			),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_10",		"Tafrara"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_11",		"Tinert"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_12",		"Tahenkat"		),
	("en_US",	"LOC_CITIZEN_CVS_BERBER_FEMALE_13",		"Tamerwelt"		),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("en_US",	"LOC_CIVINFO_CVS_BERBER_LOCATION",		"Northwest Africa"	),
	("en_US",	"LOC_CIVINFO_CVS_BERBER_SIZE",			"7,876,000 km²"		),
	("en_US",	"LOC_CIVINFO_CVS_BERBER_POPULATION",	"c. 25-70 million"	),
	("en_US",	"LOC_CIVINFO_CVS_BERBER_CAPITAL",		"Various, including Khenchela, Altava and Fez"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_1",		
	"The Berbers are a group of peoples indigenous to North Africa. The lands of the Berbers, known as Tamazgha, stretches from the Atlantic coast of Africa in the west to Egypt in the east, and though the different groups of Berbers may have differing customs – from the Kaybles to the Tuareg, the Shilha to the Siwi – they share a linguistic connection; today, roughly 25 to 30 million people speak one of the many Berber languages. The Berbers, who refer to themselves as the Imazighen (meaning ‘free people’), have defended their lands against invaders for millennia, from the Romans, to the Arabs, to the French. Though the culture of the Berber people has intermingled with that of their neighbors, their language and traditions remain alive and well today, particularly in Morocco and the Algerian Hautes Plaines."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_2",		
	"The Berbers are believed to have inhabited the Maghreb region since at least 10,000 BCE, as evidenced by rock art and other artifacts from the prehistoric age. In the ancient and classical worlds, the Berbers were known as Mazices or Libyans. The Ancient Egyptian frequently interacted with the Libyans of the Western Desert, some of whom were employed by Ramesses the Great in his armies, and we know of more than a few Pharaohs of Egypt who were of Libyan/Berber backgrounds, including Shoshenq I and his uncle, Osorkon the Elder, who came from a Berber tribe known as the Meshwesh."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_3",	
	"There were said to be three tribal divisions for the Berbers in classical antiquity: the Mauri of modern-day Morocco (the origin of the name of the modern-day country of Mauritania), the Numidians in Algeria, and the Gaetulians in Algeria and Tunisia. The Mauri and Numidians were sedentary, with significant population centers, whereas the Gaetulians were more pastoral. The first outside group to arrive in the lands of the Berbers were the Phoenicians, who set up cities along the North African coast, the most significant of which was Carthage, future enemy of the Romans. These outposts were largely commercial in nature, acting as trading hubs, and Phoenician and Berber culture intermingled in urban areas like Volubilis, Theveste, Lixus, and Saldae. As Phoenician settlements grew, and their control of the land expanded, however, the Berbers began to resist them. But the fates of the Phoenicians (and later, the Carthaginians) and the Berbers were intertwined, and they found themselves to be uneasy yet necessary allies."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_4",	
	"One of the first independent Berber kingdoms in the Maghreb was the Kingdom of Numidia, founded by Masinissa in 202 BCE. Masinissa was a skilled general who allied his tribe, the Massylii, first with Carthage and then later with Rome. He ruled Numidia for 54 years and was known to the Greek historian Polybius as ‘the best man of all the kings of our time’ for both his military prowess and his role in transforming Numidia’s agricultural development. Carthage and Rome both sought the Numidians as allies in part because of the renowned Numidian Calvary, said by Livy to be ‘by far the best horsemen in Africa’ and famous for their quick speed, expert horsemanship, and devastating tactics in battle. Numidia would go on to be a sometimes-province, sometimes-client state of the ascendant Roman Empire."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_5",	
	"The seventh century brought a new force into the region. Arabs, bringing their language and the nascent religion of Islam with them, began to expand west across North Africa. Prior to the introduction of Islam, the lands of the Berbers were home primarily to Jews, Christians, and followers of local animist faiths. The first Arabian military expedition into the Maghreb occurred between 642 and 669. After this expedition, the Umayyad Caliphate redoubled its efforts to secure the southern coast of the Mediterranean, and, in 670, the Umayyad general Uqba ibn Nafi established the town of Kairouan in Tunisia as a forward base against the Berbers, establishing the province of Ifriqiya."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_6",	
	"The subsequent decades would be violent ones as the Berbers resisted the Arabian invaders. One prominent Berber resistance leader of this era was Caecilius, the ruler of the Kingdom of Altava. Caecilius allied with the Byzantine Empire to combat the armies of Uqba ibn Nafi, ambushing him as he returned to Kairouan. The defeat of Uqba ibn Nafi, along with a civil war in core of the Umayyad Empire, delayed further Arabian attempts to expand their influence in the Maghreb for several years. They did return however, in greater numbers, and Caecilius was defeated and killed at the Battle of Mamma in 690. Without Caecilius’s leadership, the region was soon overrun, but the resistance would continue."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_7",	
	"As leader of the Berber resistance, Caecilius was succeeded by the warrior queen Dihya, known to the Arabs as al-Kahina, meaning soothsayer. Her opponents believed she was a sorceress and had the gift of prophecy, which allowed her to overcome the invaders. She ruled as Queen of the Berbers over a state that stretched from the Aures Mountains to the oasis of Ghadames and through a combination of military successes and scorched-earth tactics kept the Arabs at bay. She was ultimately defeated, however, in 705, but her memory lived on as a powerful symbol of the independent Berber spirit, with her legacy receiving a resurgence in the twentieth century among feminist and Berber activist authors and thinkers"),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_8",	
	"After the conquest of the Maghreb, the Arab elite levied harsh taxes upon their Berber subjects and, in some cases, enslaved them, causing alienation that could not be assuaged even by the largescale adoption of Islam by the Berbers. In fact, religion played an important role in the tensions that came to a head in 739 with the Great Berber Revolt, as radical Kharijite and Ibadi activists spurred the Berbers to rebel. The Great Berber Revolt was ultimately a success, allowing the Berbers to wrest control of much of modern-day Algeria and Morocco from the Umayyads and resulted in the creation of several small Berber states across the region. Over the succeeding centuries, several Berber dynasties rose and fell, including the Rustaminds of central Algeria, the Zirids of Ifriqiya, the Almoravids of Morocco, the Hafsids in Tunis, and the Zianids who ruled from Tlemcen. Berber control even expanded into Europe, with the Almoravid dynasty seizing control of Al-Andalus in the 11th century."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_9",	
	"The Berber kingdoms maintained their independence for several centuries after the Revolt. Some of the coastal regions came under loose Ottoman control, starting in 1517 when Oruç Reis, brother of the famous corsair Hayreddin Barbarossa and himself running his privateering operations from Algiers, requested Ottoman protection from the Spanish, who controlled several cities along the Barbary coast. The Ottomans would later extend their control to include Tripoli and its surrounds in 1551 and Tunisia in 1574. Ottoman control over their nominal vassals would wane, however, over the subsequent centuries, and by the time of the Barbary Wars in the early nineteenth century, the Regency of Algiers, Eyalet of Tripolitania, and Beylik of Tunis were practically independent."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_10",	
	"This was not to last however, as the French moved in shortly after the Barbary Wars. French Algeria was established in 1830, French Tunisia in 1881, and French Morocco in 1912. Even the southern regions of Tamazgha, the home of the Tuareg, were controlled by the French; French Sudan (modern-day Mali) was created in 1880, the colony of Mauritania in 1903, Upper Volta (nowadays Burkina Faso) in 1919, and the colony of Niger in 1922. The Berbers continued to resist, however. The Ahaggar Tuareg of southern Algeria put up some of the fiercest resistance of the early twentieth century under the guidance of Moussa ag Amastan, as did the Tuareg of the Air Mountains in northern Niger, led by Ag Mohammed Wau Teguidda Kaocen, architect of the eponymous 1916 Kaocen Revolt. Nonetheless, some Berbers fought alongside the French in the World Wars, most notably the Moroccan Gourmiers, who served in Italy and France in the final years of World War 2 and in Indochina after the war."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_11",	
	"As a whole, however, the Berber people continued to agitate for independence, and most of the French holdings in north and west Africa received their independence in the 1950s with the dissolution of French West Africa and the French Protectorates of Morocco and Tunisia. In the next decade, despite French attempts to administer Algeria has a core part of metropolitan France, it too broke free following the seven-year Algerian War of Independence."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_BERBER_CHAPTER_HISTORY_PARA_12",	
	"Although the Berbers today are largely free of foreign domination, they still struggle to maintain their language, customs, and traditions in their increasingly Arabized post-colonial countries. Berberism, a political-cultural movement centered on a shared sense of Berber community, emerged in the late colonial era but has only grown in the latter half of the twentieth century, continuing the Berber’s fight for self-determination. This has sometimes led to conflict, as was the case in 2012, when Tuareg militants in Mali rebelled and declared the independent state of Azawad, or when Berbers in Libya were key in the fight to depose Muammar Gaddafi in 2011. As it has been for thousands of years, the Berbers shall continue to fight for what is theirs – an unsurprising future for such a resilient culture."),
	
	("en_US",	"LOC_PEDIA_IMPROVEMENTS_PAGE_IMRPOVEMENT_CVS_BERBER_UI_CHAPTER_HISTORY_PARA_1",	
	"A foggara is an irrigation system akin to the Persian qanat. Foggaras consist of a series of wells dug into a hillside with the shafts connected by a sloping channel. The channel exits the hill at its base, bringing water from within the hill, where the water table is higher, to low-lying lands nearby, thereby allowing for agricultural production in harsh desert conditions."),
	("en_US",	"LOC_PEDIA_IMPROVEMENTS_PAGE_IMRPOVEMENT_CVS_BERBER_UI_CHAPTER_HISTORY_PARA_2",	
	"Foggaras were built all across North Africa, from Morocco to Egypt. Though they are expensive and time consuming to build, they are remarkably resilient to both natural disasters and intentional manmade destruction, require very little upkeep to maintain, and are impressively efficient, with very little water lost to evaporation. Historically, much of the population of North Africa outside oasis and river towns depended on foggaras for their water, and, as such, they were highly valued pieces of communal infrastructure."),

	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_BERBER_UU_CHAPTER_HISTORY_PARA_1",  	
	"An arer, also known as an arar, ayar, or agher, is a type of shield used by the Tuareg, a Berber ethnic confederation who live in the southern Sahara. These shields are approximately 1.5 meters tall and were most often made from oryx (antelope) hide, although occasionally they were made from the hides of other animals like the giraffe or the addax. The skins were tanned in milk, which gave the shields incredible strength. They were said to be impervious to iron, whether it was from spear, sword, or javelin. The shields were also decorated with inscriptions and metal studs, which were thought to offer spiritual protection to its bearer in addition to its physical defensive properties."	),
	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_BERBER_UU_CHAPTER_HISTORY_PARA_2",  	
	"In addition to the arer, Tuareg warriors utilized numerous outher weapons of war, including the aller (a spear) and the tarda (a javelin). Upper-class soldiers, members of the aristocratic warrier class known as the Ihaggaren, also wielded a sword called the takuba as well. Many also dressed in the traditional Tuareg garment known as the Tagelmust, which is a type of head covering that also covers the face. This article of clothing, and other Tuareg garments, were often died a distinctive blue-indigo color, which sometimes stained the skin, earning the Tuareg the nickname, 'The Blue People.'"	),

-----------------------------------------------
-- Mod Support (Rule with Faith)
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_BERBER_DESCRIPTION_JFD_CIVILIZATION",					"Berber Empire"				),
	("en_US",	"LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_BERBER",						"Amenkad"					),
	("en_US",	"LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_BERBER_FEMININE",				"Tamenkadt"					),

	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_BERBER",						"Amghar"					),
	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_BERBER_FEMININE",				"Tamghart"					),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_BERBER",							"Baba"						),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_BERBER_FEMININE",				"Yemma"						),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_BERBER",							"Amghiwan"					),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_BERBER_FEMININE",				"Tamghiwant"				),

	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_BERBER",						"Amalway"					),
	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_BERBER_FEMININE",			"Tamalwayt"					),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_BERBER",						"Ahaggar"					),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_BERBER_FEMININE",			"Tahaggart"					),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_BERBER",			"Anesmigel"					),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_BERBER_FEMININE",	"Tanesmigelt"				),

	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_BERBER",						"Amalway"					),
	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_BERBER_FEMININE",				"Tamalwayt"					),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_BERBER",						"Agellid"					),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_BERBER_FEMININE",				"Tamenokalt"				),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_BERBER",				"Aselway"					),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_BERBER_FEMININE",	"Amalway"					);
