/*
	Localisation
	Authors: ChimpanG, SeelingCat
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_ROMANIA_NAME",		"Romania"			),
	("en_US",	"LOC_CIVILIZATION_CVS_ROMANIA_DESCRIPTION",	"Romanian Empire"	),
	("en_US",	"LOC_CIVILIZATION_CVS_ROMANIA_ADJECTIVE",  	"Romanian"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_ROMANIA_UA_NAME",		"Deșteaptă-te Române"	),
	("en_US",	"LOC_TRAIT_CIVILIZATION_CVS_ROMANIA_UA_DESCRIPTION",	
	"Receive +100% Flanking and Support bonuses during an Emergency, and successful Emergencies award a free Technology and Civic. Base [ICON_PRODUCTION] Production yields of Encampment buildings are doubled when at war with another civilization."	),

-----------------------------------------------
-- UI
-----------------------------------------------

	("en_US",	"LOC_BUILDING_CVS_ROMANIA_UI_NAME",		"Fortăreață"	),
	("en_US",	"LOC_BUILDING_CVS_ROMANIA_UI_DESCRIPTION",
	"A standalone Encampment building unique to Romania. Unlocked with the Castles technology. +2 [ICON_PRODUCTION] Production and +1 [ICON_FAVOR] Diplomatic Favor per turn. Receives +2 Slots for any type of Great Work, which are themed when filled with Great Works of the same type."	),

	("en_US",	"LOC_BUILDING_CVS_ROMANIA_UI_THEMINGBONUS",		"Theming bonus doubling output when Fortăreață is full."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("en_US",	"LOC_UNIT_CVS_ROMANIA_UU_NAME",	"Vânători"	),
	("en_US",	"LOC_UNIT_CVS_ROMANIA_UU_DESCRIPTION",	 
	"A recon unit unique to Romania. Replaces Spec Ops. Receives additional [ICON_STRENGTH] Combat Strength on Hill terrain and +50% experience from combat."	),

	("en_US",	"LOC_MODIFIER_CVS_ROMANIA_UU_HILLS_COMBAT",  "+{1_Amount} Combat on Hills"	),

-----------------------------------------------
-- Mountains
-----------------------------------------------

	("en_US",	"LOC_NAMED_MOUNTAIN_ALMAJ",		 "Almăj Mountains"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_BIHOR",		 "Bihor Mountains"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_BUCEGI",	 "Bucegi Mountains"		),
	("en_US",	"LOC_NAMED_MOUNTAIN_FAGARAS",	 "Făgăraş Mountains"	),
	("en_US",	"LOC_NAMED_MOUNTAIN_GODEANU",	 "Godeanu Mountains"	),
	("en_US",	"LOC_NAMED_MOUNTAIN_RETEZAT",	 "Retezat Mountains"	),
	("en_US",	"LOC_NAMED_MOUNTAIN_VRANCEA",	 "Vrancea Mountains"	),
	("en_US",	"LOC_NAMED_MOUNTAIN_SUREANU",	 "Şureanu Mountains"	),
	("en_US",	"LOC_NAMED_MOUNTAIN_TARCU",		 "Ţarcu Mountains"		),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	("en_US",	"LOC_NAMED_RIVER_MURES",		"Mureș River"		),
	("en_US",	"LOC_NAMED_RIVER_PRUT",			"Prut River"		),
	("en_US",	"LOC_NAMED_RIVER_OLT",			"Olt River"			),
	("en_US",	"LOC_NAMED_RIVER_SIRET",		"Siret River"		),
	("en_US",	"LOC_NAMED_RIVER_IALOMITA",		"Ialomița River"	),
	("en_US",	"LOC_NAMED_RIVER_SOMES",		"Someș River"		),
	("en_US",	"LOC_NAMED_RIVER_ARGES",		"Argeș River"		),
	("en_US",	"LOC_NAMED_RIVER_JIU",			"Jiu River"			),
	("en_US",	"LOC_NAMED_RIVER_BUZAU",		"Buzău River"		),
	("en_US",	"LOC_NAMED_RIVER_DAMBOVITA",	"Dâmbovița River"	),

-----------------------------------------------
-- Volcanoes
-----------------------------------------------

	("en_US",	"LOC_NAMED_DESERT_OLTENIA",		"Oltenia Sahara"	),

-----------------------------------------------
-- Volcanoes
-----------------------------------------------

	("en_US",	"LOC_NAMED_VOLCANO_CIOMADUL",	"Ciomadul"			),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("en_US",	"LOC_CITY_NAME_BUCHAREST",  "Bucharest"),
	("en_US",	"LOC_CITY_NAME_IASI",  "Iași"),
	("en_US",	"LOC_CITY_NAME_SUCEAVA",  "Suceava"),
	("en_US",	"LOC_CITY_NAME_TARGOVISTE",  "Târgoviște"),
	("en_US",	"LOC_CITY_NAME_CONSTANTA",  "Constanța"),
	("en_US",	"LOC_CITY_NAME_CLUJ_NAPOCA",  "Cluj-Napoca"),
	("en_US",	"LOC_CITY_NAME_ARGES",  "Argeș"),
	("en_US",	"LOC_CITY_NAME_TIMISOARA",  "Timișoara"),
	("en_US",	"LOC_CITY_NAME_ALBA_IULIA",  "Alba Iulia"),
	("en_US",	"LOC_CITY_NAME_ORADEA",  "Oradea"),
	("en_US",	"LOC_CITY_NAME_CRAIOVA",  "Craiova"),
	("en_US",	"LOC_CITY_NAME_BRAILA",  "Brăila"),
	("en_US",	"LOC_CITY_NAME_GALATI",  "Galați"),
	("en_US",	"LOC_CITY_NAME_TIGHINA",  "Tighina"),
	("en_US",	"LOC_CITY_NAME_ARAD",  "Arad"),
	("en_US",	"LOC_CITY_NAME_TARGU_MURES",  "Târgu Mureș"),
	("en_US",	"LOC_CITY_NAME_BRASOV",  "Brașov"),
	("en_US",	"LOC_CITY_NAME_SATU_MARE",  "Satu Mare"),
	("en_US",	"LOC_CITY_NAME_SEVERIN",  "Severin"),
	("en_US",	"LOC_CITY_NAME_SIBIU",  "Sibiu"),
	("en_US",	"LOC_CITY_NAME_BISTRITA",  "Bistrița"),
	("en_US",	"LOC_CITY_NAME_DEVA",  "Deva"),
	("en_US",	"LOC_CITY_NAME_PLOESTI",  "Ploești"),
	("en_US",	"LOC_CITY_NAME_GIURGIU",  "Giurgiu"),
	("en_US",	"LOC_CITY_NAME_PITESTI",  "Pitești"),
	("en_US",	"LOC_CITY_NAME_SFANTU_GHEORGHE",  "Sfântu Gheorghe"),
	("en_US",	"LOC_CITY_NAME_TURDA",  "Turda"),
	("en_US",	"LOC_CITY_NAME_BAIA_MARE",  "Baia Mare"),
	("en_US",	"LOC_CITY_NAME_SLATINA",  "Slatina"),
	("en_US",	"LOC_CITY_NAME_CAMPULUNG",  "Câmpulung"),
	("en_US",	"LOC_CITY_NAME_BUZAU",  "Buzău"),
	("en_US",	"LOC_CITY_NAME_LUGOJ",  "Lugoj"),
	
-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_1",		"Atanase"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_2",		"Avram"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_3",		"Benedikte"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_4",		"Dumitru"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_5",		"Florin"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_6",		"Gheorghe"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_7",		"Mihas"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_8",		"Radut"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_9",		"Serghei"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_MALE_10",		"Zaharia"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_1",		"Antanasia"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_2",		"Daciana"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_3",		"Fiora"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_4",		"Ihrin"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_5",		"Ioana"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_6",		"Lerae"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_7",		"Maricara"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_8",		"Nicoleta"		),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_9",		"Odeta"			),
	("en_US",	"LOC_CITIZEN_CVS_ROMANIA_FEMALE_10",	"Yedda"			),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("en_US",	"LOC_CIVINFO_CVS_ROMANIA_LOCATION",		"Eastern Europe"	),
	("en_US",	"LOC_CIVINFO_CVS_ROMANIA_SIZE",			"238,397 km²"		),
	("en_US",	"LOC_CIVINFO_CVS_ROMANIA_POPULATION",	"c. 19.7 million"	),
	("en_US",	"LOC_CIVINFO_CVS_ROMANIA_CAPITAL",		"Bucharest"			),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_1",		
	"The name ‘Romania’ didn’t refer to Wallachia or Moldavia until 1859, and Transylvania remained part of the Astro-Hungarian empire until 1918. Yet, throughout its marked history, the people that reside in the region we call ‘Romania’ today are united by a common history of rising up to defend themselves."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_2",		
	"During the Antiquity Period, ancient Romania was inhabited by Thracian tribes. The Greeks called them the Getae, the Romans called them Dacians, but they were a single Geto-Dacian people.  From the 7th century BCE, the Greeks established trading colonies along the Black Sea at Callatis (Mangalia), Tomis (Constanţa) and Histria. In the 1st century BC, a strong Dacian state was established by King Burebista to counter the Roman threat. The last Dacian king, Decebal (r AD 87–106), consolidated this state but was unable to stave off attacks led by the Roman emperor Trajan in 101–2. Further attacks ensued in 105–6, leading to the Roman victory at the Dacian capital of Sarmizegetusa and the final Roman conquest of the region. Dacia thus became a province of the Roman Empire."),	
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_3",	
	"The Romans recorded their expansion north of the Danube on two famous monuments: Trajan’s Column in Rome, and the ‘Tropaeum Trajani’ at Adamclisi, on the site of their victory in Dobrogea. Most of present Romania, including the Transylvanian plateau, came under their rule. The slave-owning Romans brought with them a superior civilisation and mixed with the conquered tribes to form a Daco-Roman people speaking Latin. Faced with Goth attacks in AD 271, Emperor Aurelian (r 270–75) decided to withdraw the Roman legions south of the Danube after Rome had governed the region for just under 175 years."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_4",	
	"By the Middle Ages, waves of migrating peoples, including the Goths, Huns, Avars, Slavs, Bulgars and Magyars (Hungarians), swept across this territory, each leaving their mark on the local culture, language and gene pool. Romanians survived in village communities and gradually assimilated the Slavs and other peoples who settled there, but by the 10th century, a fragmented feudal system ruled by a military class appeared."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_5",	
	"From the 10th century the Magyars expanded into Transylvania, north and west of the Carpathian Mountains, and by the 13th century all of Transylvania was an autonomous principality under the Hungarian crown. Following devastating Tartar raids on Transylvania in 1241 and 1242, King Bela IV of Hungary persuaded German Saxons to settle in Transylvania with free land and tax incentives. He wanted to defend the crown’s southeastern flank. He also granted the Székelys – a Hungarian ethnic group who had earlier migrated to the region with the Magyars – autonomy in return for their military support."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_6",	
	"In the 14th century, Prince Basarab I (r 1310–52) united various political formations in the region south of the Carpathians to create the first Romanian principality – Wallachia, dubbed Ţara Românească (Romanian Land). Its indigenous peasantry became known as Vlachs."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_7",	
	"Peasants dominated the populations of these medieval principalities. In Wallachia and Moldavia peasants were subjugated as serfs to the landed aristocracy (boyars), a hereditary class. There were some free, land-owning peasants (moşneni) too. The two principalities were ruled by a prince who was also the military leader. Most noblemen were Hungarian; the peasants were Romanians. After a 1437 peasant uprising in Transylvania, Magyar nobles formed a political alliance with the Székely and Saxon leaders. This Union of the Three Nations would later become the constitutional basis for government in Transylvania in the 16th century, but they would need to resist a powerful enemy in the East to reach that point."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_8",	
	"Throughout the 14th and 15th centuries, Wallachia and Moldavia offered strong resistance to the Ottoman Empire’s northward expansion. Mircea cel Bătrân (Mircea the Old; r 1386–1418), Vlad Ţepeş (‘The Impaler’; r 1448, 1456–62, 1476), and Ştefan cel Mare (Stephen the Great; r 1457–1504) were legendary figures in this struggle. When the Turks conquered Hungary in the 16th century, Transylvania became a vassal of the Ottoman Empire, retaining its autonomy by paying tribute to the sultan. Catholicism and Protestantism were recognised as official state religions while the Orthodox faith of many Romanians remained an unofficial religion. Later, attempts were made to force them to convert to Catholicism."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_9",	
	"After the Ottoman victory in Transylvania, Wallachia and Moldavia also paid tribute to the Turks but maintained their autonomy. In 1600 Wallachia and Moldavia were briefly united with Transylvania under Mihai Viteazul (Michael the Brave; r 1593–1601) at Alba Iulia. In order to fight Ottoman rule, he joined forces in 1594 with the ruling princes of Moldavia and Transylvania against the Turks, attacking strongholds and massacring Turks. In 1595 the Turks called a truce with Viteazul."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_10",	
	"The Transylvanian prince, Andrew Báthory, subsequently turned against the Wallachian prince and, on 28 October 1599, Mihai Viteazul defeated and killed Báthory’s troops near Sibiu. Viteazul declared himself the new prince of Transylvania, then in spring 1600 invaded Moldavia, where he was also crowned prince. This first political union of the three Romanian principalities lasted for slightly more than a year: Viteazul was defeated by a joint Habsburg-Transylvanian noble army just months later and in August 1601 he was captured and beheaded."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_11",	
	"In 1683 the Turks were defeated at the gates of Vienna and in 1687 Transylvania came under Habsburg rule. The 18th century marked the start of Transylvanian Romanians’ fight for political emancipation. Romanian peasants constituted 60% of the population, yet continued to be excluded from political life. In 1784 three serfs called Horea, Cloşca and Crişan led a major uprising. It was quashed, and its leaders were crushed to death, but on 22 August 1785 the Habsburg emperor, Joseph II, abolished serfdom in Transylvania."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_12",	
	"The 17th century in Wallachia was marked by the lengthy reign of Constantin Brâncoveanu (r 1688-1714), a period of relative peace and prosperity characterised by a great cultural and artistic renaissance. In 1775 part of Moldavia’s northern territory – Bucovina – was annexed by Austria-Hungary. This was followed in 1812 by the loss of its eastern territory – Bessarabia (most of which is in present-day Moldova) – to Russia. After the Russo-Turkish War of 1828-9, Wallachia and Moldavia became Russian protectorates while remaining in the Ottoman Empire."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_13",	
	"In Transylvania the revolutionary spirit that gripped much of Europe in the years leading up to 1848 was entangled with the Wallachian revolution, which in Transylvania was led by Hungarian poet Sándor Petőfi. Hungarian revolutionaries sought an end to Habsburg domination of Hungary. Concurrently, Romanian revolutionaries demanded their political emancipation, equality and the abolition of serfdom, singing 'Deșteaptă-te române' meaning 'awaken, Romanian' - a message of liberty and patriotism that would go on to become the revolutionary national anthem of Romania."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_14",	
	"The Austrian authorities struck a deal with Transylvania’s Romanians, promising them national recognition in return for joining forces with them against the Hungarian revolutionaries in Transylvania. Thus, Transylvanian Romanians fought against and enacted revenge upon Transylvanian Hungarians for what was perceived as centuries of mistreatment. Russian intervention finally quashed the Hungarian revolutionaries, ending a revolution that had shocked all sides by its escalation to civil war."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_15",	
	"In its aftermath, the region fell under direct rule of Austria-Hungary from Budapest. Ruthless ‘Magyarisation’ followed: Hungarian was established as the official language and any Romanians who dared oppose the regime. By contrast Wallachia and Moldavia prospered. In 1859, with French support, Alexandru Ioan Cuza was elected to the thrones of Moldavia and Wallachia, creating a national state known as the United Romanian Principalities on 11 December 1861, and thus, in 1862, Romania was born."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_16",	
	"The reform-minded Cuza was forced to abdicate in 1866 by mutinous army officers, and his place was taken by the Prussian prince Carol I. With Russian assistance, Romania declared independence from the Ottoman Empire in 1877. After the 1877–8 War of Independence, Dobrogea became part of Romania. Under the consequent Treaty of San Stefano and the Congress of Berlin in 1878, Romanian independence was recognised. In 1881 it was declared a kingdom and on 22 May 1881 Carol I was crowned the first king of Romania."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_17",	
	"Through shrewd political manoeuvring, Romania greatly benefited from WWI. Despite Romania having formed a secret alliance with Austria-Hungary in 1883, it began WWI with neutrality. In 1916, the government under Ion Brătianu declared war on Austria-Hungary. Its objective was to seize Transylvania from Austria-Hungary."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_18",	
	"The defeat of Austria-Hungary in 1918 paved the way for the formation of modern Romania. Bessarabia, the area east of the Prut River which had been part of Moldavia until 1812 when it was taken by the Russians, was joined to Romania. Likewise, Bucovina, which had been in Austro-Hungarian hands since 1775, was also reunited with Romania. Part of the Austrian-Hungarian Banat, which had been incorporated in Romania, was also handed over. Furthermore, Transylvania was finally united with Romania. Hence, at the end of WWI, Romania – now known as Greater Romania – more than doubled its territory (from 120, 000 to 295, 000 sq km) and its population (from 7.5 to 16 million). The acquisition of this new territory was ratified by the Triple Entente powers in 1920 under the Treaty of Trianon."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_19",	
	"In the years leading up to WWII, Romania, under the able guidance of foreign minister Nicolae Titulescu, sought security in an alliance with France and Britain, and joined Yugoslavia and Czechoslovakia in the Little Entente. Romania also signed a Balkan Pact with Yugoslavia, Turkey and Greece, and later established diplomatic relations with the USSR. These efforts were weakened by the Western powers’ appeasement of Hitler and by Romania’s own King Carol II."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_20",	
	"Carol II succeeded his father Ferdinand I to the throne. Extreme right-wing parties opposed to a democratic regime emerged, notably the anti-Semitic League of the National Christian Defence, which consequently gave birth to the Legion of the Archangel Michael in 1927. This notorious breakaway faction, better known as the fascist Iron Guard, was led by Corneliu Codreanu and by 1935 dominated the political scene. Finding himself unable to manipulate the political parties, Carol II declared a royal dictatorship in February 1938. All political parties were dissolved and laws were passed to halve the size of the electorate. Between 1939 and 1940 alone, Romania had no less than nine different governments."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_21",	
	"In 1939 Carol II clamped down on the anti-Semitic Iron Guard, which until 1937 he had supported. Codreanu and 13 other legionaries were arrested, sentenced to 10 years’ imprisonment, and then assassinated. In revenge for their leader’s death, Iron Guard members murdered Carol II’s prime minister, Armand Călinescu, leading to the butchering of 252 Iron Guard members by Carol II’s forces. In accordance with the king’s wishes, the corpses were strung up in public squares. Only with the collapse of the Axis powers at the end of WWII did the Iron Guard disintegrate (in 1999, Codreanu’s nephew Nicador Zelea Codreanu tried unsuccessfully to revive the reviled group)."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_22",	
	"Romania was isolated after the fall of France in May 1940, and in June 1940 Greater Romania collapsed in accordance with the Molotov-Ribbentrop Pact. The USSR re-occupied Bessarabia. On 30 August 1940 Romania was forced to cede northern Transylvania to Hungary by order of Nazi Germany and fascist Italy. In September 1940, Southern Dobrogea was given to Bulgaria."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_23",	
	"Not surprisingly, the loss of territories sparked widespread popular demonstrations. Even Carol II realised he could not quash the increasing mass hysteria and on the advice of one of his councillors, the king called in General Marshall Ion Antonescu. To defend the interests of the ruling classes, Antonescu forced King Carol II to abdicate in favour of the king’s 19-year-old son Michael. Antonescu then imposed a fascist dictatorship, with himself as conducător (supreme leader)."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_24",	
	"German troops were allowed to enter Romania in October 1940, and in June 1941 Antonescu joined Hitler’s anti-Soviet war. One of Antonescu’s aims in joining forces with Hitler was to recover Bessarabia and this was achieved in August 1941. The results of this Romanian-Nazi alliance were gruesome, with over 200, 000 Romanian Jews – mainly from newly regained Bessarabia –and 40, 000 Roma deported to transit camps in Transdniestr and murdered in Auschwitz. After the war, Antonescu was turned over to the Soviet authorities who condemned him to death in a show trial. Bessarabia fell back into Soviet hands."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_25",	
	"As the war went badly and the Soviet army approached Romania’s borders, a rare national consensus was achieved. On 23 August 1944 an opportunistic Romania suddenly changed sides again, capturing the 53, 159 German soldiers who were stationed in Romania at the time, and declared war on Nazi Germany. By this dramatic act, Romania salvaged its independence and shortened the war. By 25 October, the Romanian and Soviet armies had driven the Hungarian and German forces from Transylvania, replacing the valued territory back under Romanian control. The costs, however, were appalling: 500, 000 Romanian soldiers died fighting for the Axis powers, and another 170, 000 died after Romania joined the Allies."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_26",	
	"Of all the countries that burst forward into the mass-industrialised, communist experiment in the 20th century, Romania and Russia were the most ill-prepared, both being overwhelmingly rural, agricultural countries. Prior to 1945, Romania’s Communist Party had no more than 1000 members. Its postwar ascendancy, which saw membership soar to 710,000 by 1947, was a consequence of backing from Moscow. The Soviet-engineered return of Transylvania greatly enhanced the prestige of the left-wing parties, which won the parliamentary elections in November 1946. A year later Prime Minister Petru Groza forced King Michael to abdicate (allegedly by holding the queen mother at gunpoint), the monarchy was abolished, and a Romanian People’s Republic proclaimed."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_27",	
	"A period of terror ensued in which all the prewar leaders, prominent intellectuals and suspected dissidents were imprisoned or interned in hard-labour camps. The most notorious prisons were in Piteşti, Gherla, Sighetu Marmaţiei and Aiud. Factories and businesses were nationalised, and in 1953 a new Slavicised orthography was introduced to obliterate all Latin roots of the Romanian language, while street and town names were changed to honour Soviet figures. Braşov was renamed Oraşul Stalin."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_28",	
	"Romania’s loyalty to Moscow continued only until the late 1950s. Soviet troops were withdrawn from Romania in 1958, and street and town names were changed once more to emphasise the country’s Roman heritage. After 1960 Romania adopted an independent foreign policy under two ‘national’ communist leaders, Gheorghe Gheorghiu-Dej (leader from 1952 to 1965) and his protégé Nicolae Ceauşescu (from 1965 to 1989), both of whom had been imprisoned during WWII. Under these figures the concept of a great Romanian socialist state was flaunted."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_29",	
	"Romania never broke completely with the USSR, but Ceauşescu refused to assist the Soviets in their 1968 ‘intervention’ in Czechoslovakia. His public condemnation of it earned him praise and economic aid from the West. In 1975 Romania was granted ‘most favoured nation’ status by the USA, which yielded more than US$1 billion in US-backed credits in the decade that followed. And when Romania condemned the Soviet invasion in Afghanistan and participated in the 1984 Los Angeles Olympic Games despite a Soviet-bloc boycott, Ceauşescu was officially decorated by Great Britain’s Queen Elizabeth II."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_30",	
	"Meanwhile, Romanians suffered painfully during the 25-year dictatorship of Nicolae Ceauşescu and his family. Thousands were imprisoned or repressed by the much-feared secret police (Securitate), huge amounts of money were squandered on megalomaniacal, grandiose projects and the population lived in abject poverty."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_31",	
	"In late 1989, as the world watched the collapse of one communist regime after another, it seemed only a matter of time before Romania’s turn would come. The Romanian revolution was carried out with Latin passion and intensity, and of all the Soviet Bloc countries, only Romania’s government transfer ended with a dead leader."),
	("en_US",	"LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_ROMANIA_CHAPTER_HISTORY_PARA_32",	
	"Summise to say, a marked history of emergencies has proven that it takes but a spark to ignite an unbridled fervour in Romania's people, rising up time and time again to defend themselves to heed the call of: 'Awaken, Romanian'."),
	
	("en_US",	"LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_ROMANIA_UI_CHAPTER_HISTORY_PARA_1",	
	"Declared historic monuments by the Romanian Culture Ministry to mark Romanian heritage, Fortăreață (meaning 'Fortress') can be found almost everywhere in Romania in one form or another; with as many as 28 in a single county. Some of the more well-known castles are surrounded by breathtaking landscapes and legendary myths of the people that occupied them. In the Transylvania region, many Fortăreață serve as churches that were established by Saxons between the 13th and 16th centuries, but the majority of these fortresses today serve as some of Romania's finest museums dedicated to the country's or region's storied history. "),

	("en_US",	"LOC_PEDIA_UNITS_PAGE_UNIT_CVS_ROMANIA_UU_CHAPTER_HISTORY_PARA_1",  	
	"The Vânători de Munte ('Mountain Huntsmen') are the elite mountain troops of the Romanian Land Forces, first established as an independent army corps in 1916 during World War I. They continued to serve during World War II on the Eastern Front in some of the harshest battles, including the sieges of Sevastopol and Stalingrad where their performance lived up to their reputation. Virtually all of their commanders from brigade level and up received the Knight's Cross of the Iron Cross. The greatest single achievement of the Vânători de Munte was the capture of Nalchik on 2 November 1942, the farthest point of Axis advance into the Caucasus. At the end of the war, one of the first measures taken by the Soviets in occupied Romania was to disband the mountain troops. However, shortly after Soviet occupation ended, the Vânători de Munte we re-established as a distinct branch of the Romanian Land Forces where they continue to operate to this day."	),

-----------------------------------------------
-- Mod Support (Rule with Faith)
-----------------------------------------------

	("en_US",	"LOC_CIVILIZATION_CVS_ROMANIA_DESCRIPTION_JFD_CIVILIZATION",					"Romanian Empire"			),
	("en_US",	"LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_ROMANIA",							"Impărat"					),
	("en_US",	"LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_CVS_ROMANIA_FEMININE",					"Impărăteasă"				),

	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_ROMANIA",							"Şef"						),
	("en_US",	"LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_CVS_ROMANIA_FEMININE",				"Şef"						),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ROMANIA",							"Conducător"				),
	("en_US",	"LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_CVS_ROMANIA_FEMININE",					"Conducător"				),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_ROMANIA",							"Stăpân"					),
	("en_US",	"LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_CVS_ROMANIA_FEMININE",					"Stăpân"					),

	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_ROMANIA",						"Stăpân"					),
	("en_US",	"LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_CVS_ROMANIA_FEMININE",				"Stăpân"					),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_ROMANIA",						"Om de stat"				),
	("en_US",	"LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_CVS_ROMANIA_FEMININE",				"Femeie de stat"			),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_ROMANIA",				"Purtător de cuvânt"		),
	("en_US",	"LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_CVS_ROMANIA_FEMININE",		"Purtător de cuvânt"		),

	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ROMANIA",							"Reprezentant"				),
	("en_US",	"LOC_GOVERNMENT_JFD_REPUBLIC_LEADER_TITLE_CVS_ROMANIA_FEMININE",				"Reprezentant"				),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ROMANIA",							"Voivode"					),
	("en_US",	"LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_CVS_ROMANIA_FEMININE",				"Voivode"					),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_ROMANIA",				"Președintele"				),
	("en_US",	"LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_CVS_ROMANIA_FEMININE",		"Președintele"				);
