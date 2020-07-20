--------------------------------------------------------------------------------------------------------------------------
-- LocalizedText
--------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Tag, 																								Language,					Text)
VALUES  
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
		("LOC_LEADER_SUK_CHULALONGKORN_NAME",  																						"en_US",
		"Chulalongkorn"																),
--------------------------------------------------------------------------------------------------------------------------
-- ULA
--------------------------------------------------------------------------------------------------------------------------
		("LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_NAME",  																				"en_US",
		"Monthon System"															),
		("LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_DESCRIPTION",  																		"en_US",
		"Cities on your Home Continent receive +2 [ICON_Food] Food, +1 [ICON_Culture] Culture, and an additional +2 [ICON_Production] Production, +1 [ICON_Science] Science with at least 1 specialty district. These bonuses are increased to +3 when you research the Industrialization technology."  															),

		-- GS

		("LOC_TRAIT_LEADER_SUK_MONTHON_SYSTEM_XP2_DESCRIPTION",  																		"en_US",
		"The Government Plaza provides an additional district slot. An unused [ICON_ENVOY] Envoy is converted to a [Icon_Governor] Governor Title when the Government Plaza or a Government Plaza Building is constructed. Has an exclusive unique Governor with regional abilities: {LOC_GOVERNOR_SUK_DAMRONG_TITLE}."  															),
--------------------------------------------------------------------------------------------------------------------------
-- Prince Damrong
--------------------------------------------------------------------------------------------------------------------------
		("LOC_GOVERNOR_SUK_DAMRONG_NAME",															"en_US",
		"Damrong"),
		("LOC_GOVERNOR_SUK_DAMRONG_TITLE",															"en_US",
		"The Mahatthai"),
		("LOC_GOVERNOR_SUK_DAMRONG_SHORT_TITLE",													"en_US",
		"Mahatthai"),
		("LOC_GOVERNOR_SUK_DAMRONG_DESCRIPTION",													"en_US",
		"Chulalongkorn’s right-hand man; {LOC_GOVERNOR_SUK_DAMRONG_NAME} doesn’t improve any one city or have any specific focus, but provides [ICON_Production] Production, [ICON_Food] Food, [ICON_Science] Science, and [ICON_Culture] Culture bonuses to all the cities in a region."),

		("LOC_PEDIA_PAGE_GOVERNOR_SUK_DAMRONG_CHAPTER_HISTORY_PARA_1",													"en_US",
		"A son of King Mongkut by a lesser royal wife, Prince Damrong Rajanubhab was a younger half-brother of King Chulalongkorn. He was the founder of modern education and provincial administration and was Thailand’s leading intellectual of his generation. Damrong himself had only four years of formal education in short-lived palace Thai and English schools founded by King Chulalongkorn for his brothers in the early 1870s. Following this schooling he joined the Royal Pages’ Bodyguard Regiment to prepare for a military career. When he became head of the regiment in 1880, at the age of 18, he found that the sons of royalty and nobility passing through the pages’ corps were being ill-prepared for military and bureaucratic careers and so founded Suan Kulap (Rose Garden Palace) School in 1881. In 1885 an education department was created under Damrong’s control, which in 1887 was made a separate department of government and in 1892 a ministry."),
		("LOC_PEDIA_PAGE_GOVERNOR_SUK_DAMRONG_CHAPTER_HISTORY_PARA_2",													"en_US",
		"Damrong was slated to become the minister of education in 1892 but instead, because of his exceptional ability, was appointed Minister of the Interior (or “Minister of the Mahatthai” in Thai), the most powerful position in the bureaucracy. He modernized what had been a decentralized system of provincial administration by grouping almost 100 provinces into only 14 “circles,” each staffed by modern-educated young officers and royal commissioners, thus quickly ending provincial autonomy. Damrong’s officers collected taxes, controlled leasing for the extraction of natural resources, and introduced modern law and education."),
		("LOC_PEDIA_PAGE_GOVERNOR_SUK_DAMRONG_CHAPTER_HISTORY_PARA_3",													"en_US",
		"After being encouraged to resign by his young nephew King Vajiravudh in 1915, Damrong turned his energies to scholarship. He took a leading role in preserving and publishing the traditional texts of Thai literature and history, and he was one of the founders of the Siam Society and the National Library. Damrong went into exile in Pinang after the 1932 revolution. He was the author of more than 1,000 books and articles in various fields."),

		--- TIER 0

		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_ROYAL_SURVEY_NAME",													"en_US",
		"Survey Department"), -- กรมแผนที่ทหาร
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_ROYAL_SURVEY_DESCRIPTION",											"en_US",
		"+1 [ICON_Production] Production, +1 [ICON_Food] Food to your other cities within 6 tiles"),
		("LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_SUK_DAMRONG_ROYAL_SURVEY_CHAPTER_HISTORY_PARA_1",											"en_US",
		"The brainchild of Prince Damrong, King Chulalongkorn established the Thai Survey School in 1882, with initial recruits coming from the Royal Guards. A royal decree issued September 3, 1885, separated the surveyors from the royal bodyguard and created the Royal Survey Department. The department engaged in cadastral survey, which is the survey of specific land parcels to define ownership for land registration, and for equitable taxation. Land title deeds were issued using the Torrens title system. It was not until the year 1901 that the first–fruits of this survey were obtained."),

		--- TIER 1

		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_SANITARY_DISTRICTS_NAME",															"en_US",
		"Sanitary Districts"), -- สุขาภิบาล
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_SANITARY_DISTRICTS_DESCRIPTION",													"en_US",
		"+1 [ICON_Housing] Housing, +1 [ICON_Amenities] Amenity to your other cities within 6 tiles, increasing to +2 [ICON_Housing] Housing, +2 [ICON_Amenities] Amenities if this city has an Aqueduct district."),
		("LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_SUK_DAMRONG_SANITARY_DISTRICTS_CHAPTER_HISTORY_PARA_1",											"en_US",
		"While the first Sukhaphiban, or “Sanitary District”, was first established in 1897, the majority of these were established in response to plague outbreaks in 1904 and 1906. Sukhaphiban were charged with maintaining public hygiene. The districts were administered by a sanitation committee, which consisted of “Kamnan” (“Tambon” or sub-district headmen), village headmen, and also local merchants. It was financed by a housing tax on local residents."),		
		
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_SUANKULARB_COLLEGE_NAME",															"en_US",
		"Suan Kulap College"), -- โรงเรียนสวนกุหลาบ
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_SUANKULARB_COLLEGE_DESCRIPTION",													"en_US",
		"+1 [ICON_Science] Science to your other cities within 6 tiles for each Campus district building in this city."),
		("LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_SUK_DAMRONG_SUANKULARB_COLLEGE_CHAPTER_HISTORY_PARA_1",											"en_US",
		"Suan Kulap (or Suankularb) Wittayalai, was a College founded by Prince Damrong in 1881, specifically to educate civil servants. Suan Kulap is a college in the sense often used in the UK and other commonwealth countries, being the oldest public secondary school in the country (simply put, it’s a high school, not a university). Under the patronage and guidance of King Chulalongkorn the school grew quickly, and the number of students rapidly swelled to many hundreds. Suan Kulap alumni include eight Prime Ministers of Thailand, nine Supreme Court Chief Justices, five attorneys general, two Fortune Global 500 chief executives, scholars, as well as a number of prominent politicians and businessmen."),		


		--- TIER 2

		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_MONTHON_REFORMS_NAME",															"en_US",
		"Monthon Reforms"), -- มณฑลเทศาภิบาล
		-- ("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_MONTHON_REFORMS_DESCRIPTION",															"en_US",
		-- "An additional +1 [ICON_Production] Production, +1 [ICON_Food] Food to your other cities within 6 tiles."),
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_MONTHON_REFORMS_DESCRIPTION",															"en_US",
		"+1 [ICON_Production] Production in this city for each of your other cities within 6 tiles (capped at +8 [ICON_Production])."),		
		("LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_SUK_DAMRONG_MONTHON_REFORMS_CHAPTER_HISTORY_PARA_1",											"en_US",
		"The establishment of the Monthon Thesaphiban system is perhaps the most significant act of Chulalongkorn's reign. Headed by Prince Damrong, the reforms transformed the country from a decentralized system of semi-independent tributary cities into a centralized nation-state in line with the nations of the West. The reforms merged almost 100 provinces into only 14 “Monthons” (literally “circles”), obliterating the power of local lords and even tributary kings, and forcing taxes into the central government’s purse, rather than those of the local lords. Such a major change did not occur without incident, and revolts sprang up in both the Lanna and Isan regions; though they were ultimately suppressed—rebels armed with only local weapons and holy water were no match for the government’s Gatling guns and cannons."),


		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_SIAM_SOCIETY_NAME",															"en_US",
		"The Siam Society"), -- สยามสมาคม (ในพระบรมราชูปถัมภ์)
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_SIAM_SOCIETY_DESCRIPTION",															"en_US",
		"+1 [ICON_Culture] Culture to your other cities within 6 tiles for each Theatre Square district building in this city."),
		("LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_SUK_DAMRONG_SIAM_SOCIETY_CHAPTER_HISTORY_PARA_1",											"en_US",
		"The Siam Society (Under Royal Patronage) was founded in 1904 in cooperation with Thai and foreign scholars, with Prince Damrong as one of its founding members. The Society soon established a reputation as a learned society whose members included many of the most illustrious historians and archaeologists of that period. The Siam Society presents lectures by local and international experts in English and Thai; holds exhibitions of  books, arts and artefacts; hosts international conferences; is involved in cultural preservation; stages cultural and musical performances; publishes the Journal of the Siam Society, Natural History Bulletin of the Siam Society and scholarly books; owns and operates a library with an outstanding collection of rare books and palm-leaf manuscripts; and has an ethnological museum in a magnificent old teak house situated on its grounds."),

		--- TIER 3

		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_KHWAM_SIWILAI_NAME",															"en_US",
		"Khwam Siwilai"), -- ความศิวิไลซ์
		("LOC_GOVERNOR_PROMOTION_SUK_DAMRONG_KHWAM_SIWILAI_DESCRIPTION",															"en_US",
		"This city and your other cities with established [Icon_Governor] Governors within 6 tiles gain +5% [ICON_Culture] Culture, +5% [ICON_Science] Science."),
		("LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_SUK_DAMRONG_KHWAM_SIWILAI_CHAPTER_HISTORY_PARA_1",											"en_US",
		"“Siwilai”, a Thai-ification of the word “Civilised”, was born in reaction to the encroachment of the West in Asia. Many amongst the royalty and nobility of Siam, understood that to avoid colonisation, the nation would have to demonstrate their right to rule by adapting to the model of the nation-state that was dominant in the West, as well as adapting certain cultural norms. By self-initialising the process of Westernisation, Siam was able to define for itself what it meant to be “Siwilai”. Siam adopted Western technologies, such as the railroad and the telegraph. It reformed its systems of administration (see the Monthon Reforms). It strengthened its cultural and national identity both at home and abroad, participating in numerous World’s Fairs starting with one in 1867 in Paris. Siam also managed to reject a number of Western cultural standards, such as Christianity (it clung to Theravada Buddhism), and monogamy (though Thailand would reject polygamy early in the 20th century)."),
--------------------------------------------------------------------------------------------------------------------------
-- Agenda
--------------------------------------------------------------------------------------------------------------------------
		("LOC_AGENDA_SUK_PHRA_PIYA_MAHARAT_NAME",  																								"en_US",
		"Phra Piya Maharat"														),
		("LOC_AGENDA_SUK_PHRA_PIYA_MAHARAT_DESCRIPTION",  																						"en_US",
		"Respects civilizations whose home contintinent is different from his own. Hates colonialists from other continents who settle cities on his home continent."															),

		("LOC_DIPLO_KUDO_LEADER_SUK_CHULALONGKORN_REASON_ANY",  																					"en_US",
		"(You are from a different continent.)"															),
		("LOC_DIPLO_MODIFIER_SUK_PHRA_PIYA_MAHARAT_FOREIGNER",  																					"en_US",
		"Chulalongkorn respects civilizations from other continents"															),

		("LOC_DIPLO_WARNING_LEADER_SUK_CHULALONGKORN_REASON_ANY",  																				"en_US",
		"(You are colonsing his home continent.)"															),
		("LOC_DIPLO_MODIFIER_SUK_PHRA_PIYA_MAHARAT_COLONISER",  																					"en_US",
		"Chulalongkorn hates that you are encroaching on his home continent"															),
--------------------------------------------------------------------------------------------------------------------------
-- Diplo
--------------------------------------------------------------------------------------------------------------------------
		("LOC_LOADING_INFO_LEADER_SUK_CHULALONGKORN",  																		"en_US",
		"Beloved King Chulalongkorn, your enlightened rule will bring Siam to prosperity. Care not for far away lands, for there are far greater rewards to be found at home. Nurture and defend your nation from those who would dare threaten it, and surely Siam will emerge the envy of the world."),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"That is truly a shame."),
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"It is done."),
		("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Though I am reluctant to entangle Siam in foreign issues, I think friendship between our nations would be beneficial. What say you?"),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"I do not believe such an agreement is in Siam's best interest."),
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Agreed, may both our nations grow stronger for it."),
		("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"Your very existence threatens our sovereignty. You must be stopped."),
		("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"You are a fool! We will do our utmost to ensure Siam's survival."),
		("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"Siam has not fallen, it has merely faltered, and we will one day return triumphant!"),
		("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Siam has not fallen, it has merely faltered, and we will one day return triumphant!"),
		("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"We have sent a delegation with the best silk and ivory Siam has to offer. Please treat them well."),
		("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"We politely refuse your delegation."),
		("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"We have received your trade delegation and you may rest assured that we will treat them with the dignity they deserve."),
		("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"The world now knows how Siam regards you. You are not to be trusted. (Denounces You)."),
		("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"Siam stands firm in the face of your threats. You will regret this insult."),
		("LOC_DIPLO_FIRST_MEET_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"I am Chulalongkorn, King of Siam, and I offer you my warmest greetings. If you treat Siam with respect, our nations will get along spendidly."),
		("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"We have a city nearby. Would you like to visit? I just commissioned a number of oil paintings for my residence there."),
		("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Thank you for your hospitality, we accept."),
		("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"My capital? It's named Krungthep Mahanakhon Amonrattanakosin Mahintharayutthaya Mahadilokphop… actually nevermind, tell me of your capital."),
		("LOC_DIPLO_GREETING_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Welcome."),
		("LOC_DIPLO_WARNING_EXIT_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Your encroachment on my continent is not at all welcome. Colonialism is a plague upon the earth."),
		("LOC_DIPLO_KUDO_EXIT_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"Different lands have different ideas and values. We have much to learn from one another."),
		("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"Would you like to form an alliance?"),
		("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"{LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY}"),
		("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"{LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY}"),
		("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"I accept your terms for peace."),
		("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"No. I cannot accept."),
		("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"I do not want to be remembered as a warmonger. Let us put aside our differences."),
		("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Very well, I hereby grant you permission to pass through my lands."),
		("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"We are not interested at this time."),
		("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Will you allow our units to cross through your territory?"),
		("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"I can only assume this show of force was undertaken by mistake. Should I expect a careful withdrawal from our borders momentarily?"),
		("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_SUK_CHULALONGKORN_ANY",                                     "en_US",
		"Your armies are an insult to Siamese sovereignty. Move them at once!"),
		("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_SUK_CHULALONGKORN_ANY",                                      "en_US",
		"We meant no disrespect. Our forces will relinquish their position immediately."),
--------------------------------------------------------------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------------------------------------------------------------
		("LOC_PEDIA_LEADERS_PAGE_SUK_CHULALONGKORN_QUOTE",  																		"en_US",
		-- เราตั้งใจอธิฐานว่า เราจะกระทำการจนเต็มกำลังอย่างที่สุดที่จะให้กรุงสยามเป็นประเทศอันหนึ่งซึ่งมีอิสารภาพและความเจริญ
		"I made a resolution that I shalt do my level best, my utmost to preserve the sovereignty of Siam with its independence and wealth intact."  															),
		
		("LOC_PEDIA_LEADERS_PAGE_SUK_CHULALONGKORN_TITLE",														"en_US",
		"Chulalongkorn"),
		("LOC_PEDIA_LEADERS_PAGE_SUK_CHULALONGKORN_SUBTITLE",													"en_US",
		"Phra Bat Somdet Phra Poraminthra Maha Chulalongkorn Phra Chunla Chom Klao Chao Yu Hua"),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_CAPSULE_BODY",							"en_US",
		"As in history, Siam is a center of diplomacy and commerce. Chulalongkorn gives Siam strong domestic bonuses that encourage them to aim to develop their home continent and strive for industrialization."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_DETAILED_BODY",							"en_US",
		"Siam is an unrivaled diplomat, gaining an additional Envoy when completing any Civic that already provides them. The City-State friends they gain will provide useful yield boosts to Siam's districts. To help aid with this, place districts next to a river to gain extra [ICON_Amenities] Amenities to aid with expansion. Siam's Floating Markets will incentivise grabbing Luxury Resources as well, providing [ICON_Culture] Culture and [ICON_Gold] Gold when working them, so keep that in mind when founding your cities. Chulalongkorn's bonuses will aid you in developing your home continent: cities founded there will recieve a small boost to get them up and running. After researching Industrialization however, these bonuses are tripled, making these bonuses much more potent. It thus becomes key to ensure that as much of your continent is under Siam's jurisdiction as possible."),		
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_1",						"en_US",
		"Phra Bat Somdet Phra Poraminthra Maha Chulalongkorn Phra Chunla Chom Klao Chao Yu Hua, or Rama V, or as we will refer to him henceforth, Chulalongkorn, was the fifth monarch of Siam under the House of Chakri. His reign was characterized by the modernization of Siam, governmental and social reforms, and territorial concessions to the British and French. As Siam was threatened by Western expansionism, Chulalongkorn, through his policies and acts, managed to save Siam from colonisation. All his reforms were dedicated to ensuring Siam's survival in the face of Western colonialism, so that Chulalongkorn earned the epithet Phra Piya Maharat: the Great Beloved King."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_2",		"en_US",
		"Born September 20, 1853, King Rama V was to inherit the throne from his father, King Monkut (Rama IV), in 1868 at the tender age of 15. Because he was still a child, Thailand was governed by regency for the first five years of his reign and the boy King took advantage of the time to travel the world. His father had been one of Siam's most educated monarchs, recognizing the need for education and also the importance of the western world, yet understanding fully the threat of colonization. Wisely, he had instilled these principles in his son who was an apt student. During those first five years, King Chulalongkorn visited most of the major western powers, learning about their cultures, traditions, political organization and technology while in neighboring countries he spent time making political friends, realizing the need for allies in the fight to prevent colonization."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_3",		"en_US",
		"With the support of his brothers and young friends, the King began, in 1873, to attack the injustices of the old order and the power of his political rivals by attempting to impose centralized budgeting and accounting, streamlining a judicial system beset by delays and corruption, and inaugurating consultative legislative councils dominated by his young friends. These actions, accompanied by a decline in Wichaichan's prospects, brought on the ""Front Palace Crisis"" of early 1875, when Wichaichan fled to the British consulate and demanded protection; had it been granted, Thailand would have become an Anglo-French protectorate in all but name. Britain and France, by refusing to support their consuls, treated the matter as an internal quarrel, and Chulalongkorn was able to bring about a resolution of the crisis. Peace, however, was bought at a high price, for the King's supporters were disbanded, the councils ceased to meet, and no further reforms were undertaken for a decade."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_4",		"en_US",
		"One of the most notable reforms that occured during his reign was the centralisation of Siam. The six ministries of traditional Thai government had been omnicompetent, each with its own tax collections, law courts, provinces to administer, and rights to unsupervised expenditure; and they tended to be dominated by the minister of the North (mahatthai) and the minister of the South (kalahom), whom the King had been almost powerless to control. The new system, introduced on April 1, 1892, had 12 functionally defined ministries responsible to the King. Central to the reform program was the work of the ministry of interior, directed from 1892 by Prince Damrong Rajanubhab. By grouping almost 100 provinces into just 14 ""Monthon,"" Damrong was able to make effective use of a very small body of educated young men in rapidly strengthening Bangkok's control over hitherto semiautonomous provinces. As a result, state revenues doubled within 7 years, and the new administrative structure brought the rule of law, public works, and elementary public education to the most distant provinces by the turn of the century. Chulalongkorn's son Prince Rabi was appointed as minister of justice in 1896, and all Thai law was recodified along European lines by the end of the reign, and a centralized modern judicial system was introduced. Railway construction, financed until 1904 entirely out of current revenues, rapidly linked the country together as never before. The King took great care in choosing the men for these tasks and followed daily the progress of the work. He encouraged and supported the most able of them and gave them a free hand, while ever goading and criticizing the less decisive and mediocre."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_5",		"en_US",
		"Until the 1880s Chulalongkorn generally could assume that he had the goodwill of the Western powers and counted on British support for Thai independence and upon the skillful diplomacy of Prince Devawongse, whose appointment as foreign minister in 1886 marked the resumption of reform. From the mid-1880s, however, French ambitions in Indochina began to clash with Thai rights of suzerainty over Laos. The Thai were powerless to halt the demands which escalated into the Franco-Thai War of 1893 and ended with French gunboats forcing their way up the Chaophraya River to Bangkok to demand the cession to France of the east bank of the Mekong River and the payment of a large indemnity. Britain, counted on to support the Thai, refused to intervene, and Laos was ceded to France."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_6",		"en_US",
		"Chulalongkorn was disheartened and went into an almost year-long period of illness and depression. Once recovered, he began to take initiatives and responsibility he had earlier been more willing to share with his brothers. The Anglo-French Declaration of 1896 guaranteed the integrity of central Siam but left the northeast threatened by France and the south by Britain. Chulalongkorn's European tour of 1897 was, among other things, an attempt to secure new European interest in Thailand's continued independence, especially on the part of Russia and Germany. Whether the tour achieved this object or not, his reception by the European monarchs as an equal did give Chulalongkorn a new self-confidence and a realization that modernization did not necessarily mean Westernization: ""We must try to imitate what is good elsewhere, and at the same time not only to keep but to develop what is good and worthy of respect in our own national character and institutions,"" he declared upon his return."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_7",		"en_US",
		"During the remainder of Chulalongkorn's reign rapid progress was made toward the resolution of Thailand's most serious problems in the field of foreign affairs. Small areas of Laos on the western bank of the Mekong and the western provinces of Cambodia were ceded to France in 1904 and 1907, and in return the Thai regained legal jurisdiction over French Asian subjects in Thailand. The cession to Britain of the four Malayan states of Kelantan, Trengganu, Kedah, and Perlis in 1909 brought Thailand similar legal concessions (although the abolition of extraterritoriality was still several decades away) and capital for the extension of the railways toward Singapore. Most of all, by the end of his reign the King could feel that his country's independence at last was secure."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_8",		"en_US",
		"Chulalongkorn is perhaps best known in modern Thailand for his abolition of Siamese slavery. He associated the abolition of slavery in the United States with the bloodshed of the American Civil War. Chulalongkorn, to prevent such a bloodbath in Siam, provided several steps towards the abolition of slavery, not an extreme turning point from servitude to total freedom. Traditionally, Siamese slavery functioned differently from western slavery. Those who found themselves unable to live on their own sold themselves into slavery by rich noblemen. Likewise, when a debt was defaulted, the borrower would become a slave of the lender. If the debt was redeemed, the slave regained freedom. However, those whose parents were household slaves were bound to be slaves forever because their redemption price was extremely high. Because of economic conditions, people sold themselves into slavery in great numbers and in turn they produced a large number of household slaves. In 1867 they accounted for one-third of Siamese population. In 1874, Chulalongkorn enacted a law that lowered the redemption price of household slaves born in 1867 (his ascension year) and freed all of them when they had reached 21. The newly-freed slaves would have time to settle themselves as farmers or merchants so they would not become unemployed. In 1905, the Slave Abolition Act ended Siamese slavery in all forms."),		
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_9",		"en_US",
		"Especially in the 1880s, he was fond of traveling incognito and would wander the slums and streets of Bangkok at night clad as a peasant. He once stopped a royal procession to join, unannounced, a peasant wedding; and his numerous travel diaries are filled with recorded conversations with peasant farmers who told him local folklore or complained about local conditions. He was a man of broad interests, and his zeal for change did not diminish his appreciation of his country's traditions."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_CHULALONGKORN_CHAPTER_HISTORY_PARA_10",		"en_US",
		"After one of the longest reigns in Thai history, he died on Oct. 23, 1910. During his 42-year reign, King Chulalongkorn succeeded in establishing a government based on the western system, which ultimately paved the way for the present democracy. He reformed the rule of law, established a proper judicial system and introduced compulsory military service, improving the country's national defense. He introduced the Baht (still in use today) as the official currency and made taxes directly payable to the government, cutting out the corrupt middlemen. King Chulalongkorn also set up Siam's first hospital based on western medical practices, the first medical school and a nationwide education system. For his role in ensuring the continued sovereignty and for his modernization of Siam, Chulalongkorn remains to this day, one of the most highly revered monarchs in Thai history.");
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------