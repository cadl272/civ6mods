/*
	Localisation
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("en_US", "LOC_CIVILIZATION_CVS_NORMANDY_NAME",			"Normandy"		),
	("en_US", "LOC_CIVILIZATION_CVS_NORMANDY_DESCRIPTION",	"Norman Empire"	),
	("en_US", "LOC_CIVILIZATION_CVS_NORMANDY_ADJECTIVE",  	"Norman"		),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_NAME",	"Expeditions of Conquest"	),
	("en_US", "LOC_TRAIT_CIVILIZATION_CVS_NORMANDY_UA_DESCRIPTION",	
	"Conquered Cities do not suffer occupation penalties, and Military Engineers receive +1 Build Charge. Conquering a City or constructing an Encampment provides a free Military Engineer after Military Engineering has been researched."	),
	
-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US", "LOC_IMPROVEMENT_CVS_NORMANDY_UI_NAME",	"Motte and Bailey"	),
	("en_US", "LOC_IMPROVEMENT_CVS_NORMANDY_UI_DESCRIPTION",
	"Unlocks the Military Engineer ability to construct the Motte and Bailey, unique to Normandy.[NEWLINE][NEWLINE]Provides the same defensive bonuses as the Fort. Yields +1 [ICON_Production] Production, +2 [ICON_Gold] Gold and +0.5 [ICON_Housing] Housing. Receives an additional +1 [ICON_Production] Production for each adjacent Pasture or Camp, +1 [ICON_Gold] Gold for each adjacent Farm, and +1 Loyalty when adjacent to an Encampment. May not be built in neutral territory or adjacent to another Motte and Bailey."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US", "LOC_UNIT_CVS_NORMANDY_UU_NAME",	"Man-at-Arms"	),
	("en_US", "LOC_UNIT_CVS_NORMANDY_UU_DESCRIPTION",	 
	"A heavy cavalry unit unique to Normandy. Starts with the Charge [ICON_Promotion] Promotion and fights at full strength when damaged."),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	("en_US", "LOC_NAMED_RIVER_ORNE",  "Orne"	),
	("en_US", "LOC_NAMED_RIVER_BRESLE",  "Bresle"	),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("en_US", "LOC_CITY_NAME_ROUEN",  "Rouen"), -- Already exists @ France
	("en_US", "LOC_CITY_NAME_CAEN",  "Caen"),
	("en_US", "LOC_CITY_NAME_EVREUX",  "Évreux"),
	("en_US", "LOC_CITY_NAME_ALENCON",  "Alençon"),
	("en_US", "LOC_CITY_NAME_LE_HAVRE",  "Le Havre"),
	("en_US", "LOC_CITY_NAME_CHERBOURG",  "Cherbourg"),
	("en_US", "LOC_CITY_NAME_DIEPPE",  "Dieppe"), -- Already exists @ France
	("en_US", "LOC_CITY_NAME_SAINT_LO",  "Saint-Lô"),
	("en_US", "LOC_CITY_NAME_BAYEUX",  "Bayeux"),
	("en_US", "LOC_CITY_NAME_AVRANCHES",  "Avranches"),
	("en_US", "LOC_CITY_NAME_FECAMP",  "Fécamp"),
	("en_US", "LOC_CITY_NAME_COUTANCES",  "Coutances"),
	("en_US", "LOC_CITY_NAME_BERNAY",  "Bernay"),
	("en_US", "LOC_CITY_NAME_ARGENTAN",  "Argentan"),
	("en_US", "LOC_CITY_NAME_EU",  "Eu"),
	("en_US", "LOC_CITY_NAME_AUMALE",  "Aumale"),
	("en_US", "LOC_CITY_NAME_EXMES",  "Exmes"),
	("en_US", "LOC_CITY_NAME_GISORS",  "Gisors"),
	("en_US", "LOC_CITY_NAME_FALAISE",  "Falaise"),
	("en_US", "LOC_CITY_NAME_LISIEUX",  "Lisieux"),
	("en_US", "LOC_CITY_NAME_LOUVIERS",  "Louviers"),
	("en_US", "LOC_CITY_NAME_SEES",  "Sées"),
	("en_US", "LOC_CITY_NAME_BRIONNE",  "Brionne"),
	("en_US", "LOC_CITY_NAME_JUMIEGES",  "Jumièges"),
	("en_US", "LOC_CITY_NAME_HONFLEUR",  "Honfleur"),
	("en_US", "LOC_CITY_NAME_ARQUES",  "Arques"),
	("en_US", "LOC_CITY_NAME_LILLEBONNE",  "Lillebonne"),
	("en_US", "LOC_CITY_NAME_GIVERNY",  "Giverny"),
	("en_US", "LOC_CITY_NAME_VALOGNES",  "Valognes"),
	("en_US", "LOC_CITY_NAME_BARFLEUR",  "Barfleur"),
	("en_US", "LOC_CITY_NAME_VERNON",  "Vernon"),
	("en_US", "LOC_CITY_NAME_IVRY_LA_BATAILLE",  "Ivry-la-Bataille"),
	("en_US", "LOC_CITY_NAME_MONT_SAINT_MICHE",  "Mont Saint Miché"),
	("en_US", "LOC_CITY_NAME_BEAUMONT",  "Beaumont"),
	("en_US", "LOC_CITY_NAME_BESSIN",  "Bessin"),
	("en_US", "LOC_CITY_NAME_VERNON",  "Vernon"),
	("en_US", "LOC_CITY_NAME_CABOURG",  "Cabourg"),
	("en_US", "LOC_CITY_NAME_BOLBEC",  "Bolbec"),
	("en_US", "LOC_CITY_NAME_DEAUVILLE",  "Deauville"),
	("en_US", "LOC_CITY_NAME_ELBEUF",  "Elbeuf"),
	("en_US", "LOC_CITY_NAME_YVETOT",  "Yvetot"),
	("en_US", "LOC_CITY_NAME_LE_GRAND_QUEVILLY",  "Le Grand-Quevilly"),
	("en_US", "LOC_CITY_NAME_MONT_SAINT_AIGNAN",  "Mont-Saint-Aignan"),
	("en_US", "LOC_CITY_NAME_SAINT_ETIENNE_DU_ROUVRAY",  "Saint-Étienne-du-Rouvray"),
	("en_US", "LOC_CITY_NAME_LE_PETIT_QUEVILLY",  "Le Petit-Quevilly"),

	("en_US", "LOC_CITY_NAME_ANTIOCH",  "Antioch"), -- Already exists @ Antioch
	("en_US", "LOC_CITY_NAME_CAPUA",  "Capua"),
	("en_US", "LOC_CITY_NAME_LATAKIA",  "Latakia"),
	("en_US", "LOC_CITY_NAME_MELFI",  "Melfi"),
	("en_US", "LOC_CITY_NAME_NAPLES",  "Naples"),
	("en_US", "LOC_CITY_NAME_PALERMO",  "Palermo"),
	("en_US", "LOC_CITY_NAME_SALERNO",  "Salerno"),
	("en_US", "LOC_CITY_NAME_TARANTO",  "Taranto"),
	
-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_1",		"Êdouard"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_2",		"Réné"			),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_3",		"Sosthène"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_4",		"Ugène"			),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_5",		"Tancrède"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_6",		"Elysée"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_7",		"Génotin"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_8",		"Zéphyr"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_9",		"Frédéris"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_MALE_10",		"Pèrrotîn"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_1",		"Aliénor"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_2",		"Célène"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_3",		"Chimâne"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_4",		"Isidore"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_5",		"Olivyi"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_6",		"Tchèrli"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_7",		"Delphin"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_8",		"Désirée"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_9",		"Olympe"		),
	("en_US", "LOC_CITIZEN_CVS_NORMANDY_FEMALE_10",		"Jeannot"		),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("en_US", "LOC_CIVINFO_CVS_NORMANDY_LOCATION",		"Western Europe"	),
	("en_US", "LOC_CIVINFO_CVS_NORMANDY_SIZE",			"29,906 km²"	),
	("en_US", "LOC_CIVINFO_CVS_NORMANDY_POPULATION",	"c. 3.3 million"	),
	("en_US", "LOC_CIVINFO_CVS_NORMANDY_CAPITAL",		"Rouen"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_1",		
	"The Normans were originally pagan Vikings from Denmark, Norway, and Iceland who began to make destructive plundering raids on European coastal settlements in the 8th century. During the later 9th century their raids on the northern and western coastlands of France grew in scale and frequency, and the Vikings had secured a permanent foothold on Frankish soil in the valley of the lower Seine River by about 900."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_2",		
	"A Viking named Rollo, who had already won a reputation as a great leader of Viking raiders in Scotland and Ireland, soon emerged as the outstanding personality among the new settlers. In 911, the Frankish king Charles III the Simple made the Treaty of St. Clair-sur-Epte with Rollo, ceding him the land around the mouth of the Seine and what is now the city of Rouen. Within a generation the Vikings, or Normans, as they came to be known, had extended their rule westward to the districts of Lower Normandy. From then on until the mid-11th century, the history of the Normans in Normandy was marked by a line of ruthless and forceful rulers calling themselves counts, or dukes, of Normandy and struggling to establish political hegemony over the indigenous Frankish population of the region."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_3",	
	"Despite their eventual conversion to Christianity, their adoption of the French language, and their abandonment of sea roving for Frankish cavalry warfare in the decades following their settlement in Normandy, the Normans retained many of the traits of their piratical Viking ancestors. They displayed an extreme restlessness and recklessness, a love of fighting accompanied by almost foolhardy courage, and a craftiness and cunning that went hand in hand with outrageous treachery. In their expansion into other parts of Europe, the Normans compiled a record of astonishingly daring exploits in which often a mere handful of men would vanquish an enemy many times as numerous. An unequalled capacity for rapid movement across land and sea, the use of brutal violence, a precocious sense of the use and value of money, are among the traits traditionally assigned to the Normans."),
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_4",	
	"From their settlements in Normandy the adventurous Normans embarked on several major expansionary campaigns in Europe. The most important of these was the invasion of England in 1066 by William, duke of Normandy, who became king of England upon the success of what is now known as the Norman Conquest. Early in the 11th century Norman adventurers also began a somewhat more prolonged and haphazard migration to southern Italy and Sicily, where they served the local nobility as mercenaries fighting the Arabs and the Byzantines. As more Normans arrived, they carved out small principalities for themselves from their former employers. Among the most remarkable of these Norman adventurers were the sons of Tancred de Hauteville, who established their rule over the southern Italian regions of Calabria and Puglia (Apulia) in the 1050s and over Sicily in the following decades. Their possessions were amalgamated by Roger II, a grandson of Tancred, in the early 12th century as the kingdom of Sicily, whose rulers retained a basically Norman character until the last decades of that century."),
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_5",	
	"Among the Norman traits regarded by their contemporaries as specially characteristic were their utterly unbridled character and their capacity for quick and fruitful imitation and adaptation. The former characteristic contributed to the production, by a process akin to natural selection, of lines of outstandingly able and ruthless rulers wherever a Norman state came into being. Many of the early Norman rulers of Normandy, England, and Sicily were among the most powerful and successful secular potentates of their age in western Europe in their ability to create political institutions that were both stable and enduring."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_6",	
	"The Normans’ capacity for imitation and adaptation was even more significant for the history of Europe. The Normans began as pagan destroyers bent upon plundering and slaughter. Forced to come to terms with the Carolingian and Capetian dynasties and to adopt French as their language and Christianity as their religion, they quickly became missionaries and proselytizers of the civilization that they had attacked and that had ultimately absorbed them. They quickly grasped the principles of Carolingian feudalism, and Normandy became in the 11th century one of the most highly feudalized states in western Europe."),
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_7",	
	"Just as the Normans became the typical exponents of Carolingian feudalism and of cavalry and castle warfare, so they also became in part the exponents and champions of religious orthodoxy. Under the patronage of the ducal house of Normandy, religious life in the province flourished, and a number of Norman monasteries became renowned centres of Benedictine life and learning. This was chiefly due to the encouragement given to non-Norman scholars and reformers to make their home in Normandy. The great religious and ecclesiastical revival that marks 11th-century Normandy found another expression in the popularity among the Normans of pilgrimages to Rome and to the Holy Land. This yearning for pilgrimages was one of the factors responsible for the Norman conquest of southern Italy. Many Norman nobles journeyed to the Mediterranean inspired by a naive mixture of religious devotion, a love of adventure, and a desire for fresh conquests. Surprisingly, though, the part played by the Normans in the early Crusades was relatively slight, consisting chiefly of the erection of the short-lived principality of Antioch by Norman nobles in the 12th century."),	
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_8",	
	"The Normans were quick to imitate whatever they saw, and this faculty of imitation is evident in all the different countries where the Normans settled. But Norman imitation was never slavish, and is certainly not the whole story of Norman achievement. A truer explanation of Norman success would be that they combined a boundless self-confidence with a marked capacity for adapting to their own purposes the institutions they found in newly won territories. Thus, in Puglia and Sicily their control was based on faith in their own military superiority, their strategic use of castles and harbours, and their importation of feudalism to govern the relations of the count or king with his more important subjects. In government, however, they adopted the highly advanced and largely literate techniques already developed by the Byzantine Greeks and the Muslims."),
	("en_US", "LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_NORMANDY_CHAPTER_HISTORY_PARA_9",	
	"In England the Normans similarly brought their own brand of feudalism and their own ideas of strong personal government and fiscal institutions. But there too they adopted many of the existing institutions and customs. Even at the end of Henry I’s reign (1135) in England the whole structure of royal government remained fundamentally Anglo-Saxon—monarchy, king’s council, royal seal and writing office, the shire system and the sheriffs, the twofold revenue system consisting of the produce of royal estates compounded into annual cash payments and a direct tax levied on the landowning class, all originated before the Norman Conquest. But under Norman direction, and with a number of Norman innovations such as the exchequer, the itinerant justices, and the sworn inquest, this system worked much more efficiently after 1066 than before, and, a fact of equal importance, England was made safe from foreign invasion. Norman influence on the church in England also worked powerfully in the direction of better organization and discipline. The role of the Normans in Europe in the 11th and 12th centuries may be summarized in saying that by their fierce energy and enterprise, they extended the practice of centralized authoritarian rule, feudalism, cavalry warfare, and religious reform."),
	
	("en_US", "LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_CVS_NORMANDY_UI_CHAPTER_HISTORY_PARA_1",	
	"The art of building castles was not a Norman invention, but the Normans became masters in the use of the simple yet enormously effective motte-and-bailey castle—a mound (motte) topped by a timber palisade and tower, surrounded by a ditched and palisaded enclosure (bailey). These little fortifications, which were complementary to the warfare conducted in open country by small units of cavalry, became the hallmark of Norman penetration and conquest."),

	("en_US", "LOC_PEDIA_UNITS_PAGE_UNIT_CVS_NORMANDY_UU_CHAPTER_HISTORY_PARA_1",  	
	"The Normans compiled a record of astonishingly daring exploits in which often a mere handful of men would vanquish an enemy many times as numerous. A large factor behind these feats were the Norman Knights, or mounted Men-at-Arms. Although the Normans were at first novices and imitators in the practice of fighting on horseback, they soon became masters of cavalry warfare as it was then practiced in continental Europe. Mounted on much the same breed of war horse as his Frankish, Angevin, or Breton opponent, wearing the heavy mail hauberk that was standard among the warriors of northwestern Europe, protected by a conical helmet and a kite-shaped shield, and armed with a long, broad-bladed sword and a slender lance, the Norman cavalryman proved on countless occasions that he could outfight and overwhelm the most powerful forces brought against him. To some extent, no doubt, this was due to the importance which the Norman knightly class attached to the training of young warriors. They eagerly adopted the carefully fostered cult of knighthood which had grown up in the old Carolingian empire in the 10th and 11th centuries. But Norman knights were also fierce and brutal soldiers who had received an arduous training that left little room for the feelings of humanity and mercy with which Christian teaching was later to endow the concept of chivalry."	),

-----------------------------------------------
-- Mod Support | Rule with Faith
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_SWITZERLAND_DESCRIPTION_JFD_CIVILIZATION",					"Norman Empire"	),

	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_SWITZERLAND",							"Bailli"		),
	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Bailli"		),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_SWITZERLAND",							"Commandant"	),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",					"Commandant"	),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_SWITZERLAND",							"Maître"		),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",					"Maître"		),

	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_SWITZERLAND",						"Signeu"		),
	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Signeu"		),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_SWITZERLAND",						"Sénateur"		),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Sénateur"		),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND",				"Senéca"		),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",		"Senéca"		),

	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SWITZERLAND",							"Secrétaire Général"	),
	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Secrétaire Général"	),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SWITZERLAND",							"Roué"			),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",				"Roué"			),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND",				"Président"		),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_SWITZERLAND_FEMININE",		"Président"		);