/*
	Localisation
	Authors: ChimpanG, SeelingCat
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("en_US",	"LOC_LEADER_CVS_DJOSER_NAME",  "Djoser"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("en_US",	"LOC_TRAIT_LEADER_CVS_DJOSER_UA_NAME",  "Qebehu-Netjeru"	),
	("en_US",	"LOC_TRAIT_LEADER_CVS_DJOSER_UA_DESCRIPTION",
	"Completing a Wonder triggers a culture bomb, claiming adjacent tiles. Gain access to {LOC_GOVERNOR_CVS_IMHOTEP_NAME}, the {LOC_GOVERNOR_CVS_IMHOTEP_SHORT_TITLE}, a [ICON_GOVERNOR] Governor unique to Djoser."	),

-----------------------------------------------
-- UG
-----------------------------------------------

	("en_US", "LOC_GOVERNOR_CVS_IMHOTEP_NAME",				"Imhotep"		),
	("en_US", "LOC_GOVERNOR_CVS_IMHOTEP_TITLE",				"The Architect"	),
	("en_US", "LOC_GOVERNOR_CVS_IMHOTEP_SHORT_TITLE",		"Architect"		),
	("en_US", "LOC_GOVERNOR_CVS_IMHOTEP_DESCRIPTION",		"An astute overseer, {LOC_GOVERNOR_CVS_IMHOTEP_NAME} can exploit a city's population to aid in the construction of divine monuments that proclaim Egypt's primacy to all who observe them."	),
	
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_TJATI_NAME",							"Tjati"	),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_TJATI_DESCRIPTION",					"+0.5 [ICON_PRODUCTION] Production per turn for each [ICON_CITIZEN] Citizen in the city."	),
	
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA_NAME",					"Heqa-hut-aa"	),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA_DESCRIPTION",				"Each wonder provides +1 [ICON_FOOD] Food and +1 [ICON_GOLD] Gold on international [ICON_TRADEROUTE] Trade Routes from the city."	),

	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA_NAME",				"High Priest of Ra"	),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA_DESCRIPTION",		"Each wonder provides +0.5 [ICON_PRODUCTION] Production and +1 [ICON_FAITH] Faith on domestic [ICON_TRADEROUTE] Trade Routes to the city."	),

	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS_NAME",			"Overseer of Stoneworks"	),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS_DESCRIPTION",	"+2 [ICON_GREATENGINEER] Great Engineer points per turn for each wonder in the city."	),

	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR_NAME",					"Sebayt Author"	),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR_DESCRIPTION",			"+1 [ICON_AMENITIES] Amenity for each wonder in the city."	),

	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_IRY_PAT_NAME",						"Iry-pat"	),
	("en_US", "LOC_GOVERNOR_PROMOTION_CVS_IRY_PAT_DESCRIPTION",					"Floodplains do not reduce the appeal of adjacent tiles. Tiles with breathtaking appeal yield +1 [ICON_CULTURE] Culture."	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("en_US",	"LOC_AGENDA_CVS_DJOSER_NAME",			"Netjerikhet"	),
	("en_US",	"LOC_AGENDA_CVS_DJOSER_DESCRIPTION",	"Builds wonders whenever possible, and likes civilizations that do the same. Dislikes those that have less wonders than he has."	),
	
	("en_US",	"LOC_DIPLO_KUDO_LEADER_CVS_DJOSER_REASON_ANY",	"(You have built wonders.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_DJOSER_HAPPY",			"Djoser admires the wonders you have built"	),
	
	("en_US",	"LOC_DIPLO_WARNING_LEADER_CVS_DJOSER_REASON_ANY",	"(You have built less wonders than he has.)"	),
	("en_US",	"LOC_DIPLO_MODIFIER_CVS_DJOSER_UNHAPPY",			"Djoser thinks you lack ambition"	),

-----------------------------------------------
-- DOM
-----------------------------------------------	

	("en_US",	"LOC_LOADING_INFO_LEADER_CVS_DJOSER",
	"Blessed is Egypt under your reign, Djoser, before whom the sun rises and rivers flow. Stand proud, great pharaoh, for it takes a shrewd visionary who looks upon the sands and sees opportunity. With the aid of your skilled advisors, your people shall stand in the shadow of great monuments to your magnificence, and with them find prosperity in the land they sow."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_LEADER_CVS_DJOSER_ANY",
	"Greetings, stranger. I am Djoser, Divine of Body, and Pharaoh of these lands. Look around you at the untapped potential of these sands - for under my guidance, they shall not remain empty for long." ),
	
	-- AI invitation to visit nearby City (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_DJOSER_ANY",
	"Come visit our nearby city, won't you? My advisor and I are already planning the new monuments that shall soon grace this place."	),
	
	-- AI accepts human invitation (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_DJOSER_ANY",
	"Wonderful - you shall not be disappointed."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("en_US",	"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_DJOSER_ANY",
	"Everyone knows that the greatest city in any empire is the capital. Let me do you the honor of marking my capital on your maps - and you may indicate yours on mine as well if you wish."	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("en_US",	"LOC_DIPLO_GREETING_LEADER_CVS_DJOSER_HAPPY",
	"Oh? My apologies - I was engrossed in these new plans. What is it that you require?"	),

	-- (UNHAPPY)
	("en_US",	"LOC_DIPLO_GREETING_LEADER_CVS_DJOSER_UNHAPPY",
	"Hurry up - I have grander things to attend to."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"I find myself charmed by your delegation. Your gifts shall be placed in my finest palace."	),
	
	-- AI Rejects (ANY)
	("en_US",	"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"I would not sully the grandeur of my capital with the filth that your 'delegates' have brought here."	),
	
	-- AI Requests (ANY)
	("en_US",	"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"I offer you gifts from the land of the Nile, incomparable in its majesty. Please enjoy the fine limestone statuary and a selection of fine Sebayt composed by my most trusted advisor."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("en_US",	"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"Well of course! How else are your people to witness the great wonders I have built?"	),
	
	-- AI rejects from human (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"Your people are not worthy to gaze upon that which I have built."	),
	
	-- AI requests from human (ANY)	
	("en_US",	"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"Though we are master builders ourselves, there is no shame in looking to others for inspiration. Will you allow us to venture into your lands - for the sake of the wonders that may come of it?"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("en_US",	"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"Of course, my friend! I've already commissioned a statue of you to stand adjacent to one of myself - yours will be slightly smaller of course; you understand how these things are..."	),
	
	-- AI rejects from human (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"I have more pressing concerns unfortunately - I must decline."	),
	
	-- AI Requests friendship from human (ANY)	
	("en_US",	"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"On his own, a man may not build much of worth, but together a group of people may erect a lofty pyramid. Let us join together in friendship this day - and who knows what wonders we shall create together!"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("en_US",	"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"Wonderful! Truly, this is the start of a beautiful friendship."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("en_US",	"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"At least Imhotep will stand by my side..."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("en_US",	"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"Egypt prospers because the Upper and Lower have come together: the sedge and the bee, the Red Crown and the White Crown. Let us join together as allies - and your nation too shall prosper."	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("en_US",	"LOC_DIPLO_KUDO_EXIT_LEADER_CVS_DJOSER_ANY",
	"Your people construct such marvellous works of architecture! I thought Egypt alone was the master of making wonders, but your civilization, too, certainly ranks among the greatest as well!"	),
	
	-- AI Warnings (ANY)
	("en_US",	"LOC_DIPLO_WARNING_EXIT_LEADER_CVS_DJOSER_ANY",
	"A milquetoast ruler of an unimpressive land with little wonder to speak of. What worth does a civilization have if there are no great monuments to remember them by? I'll tell you: none."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_DJOSER_HAPPY",
	"I know that the wonderous works of Egypt are supremely enticing, but your troops seem to have wandered a bit too close for comfort. Please see that they are properly restrained."	),

	-- AI warns player for border troops (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_DJOSER_UNHAPPY",
	"You may think me only as a builder, but I warn you that I am well-versed in warfare as well - remove your troops from our hinterlands or suffer my reprisal."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_DJOSER_HAPPY",
	"Oh, what a terrible misunderstanding! I'll see to it that these lost troops depart at once."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_DJOSER_UNHAPPY",
	"Know that I do this for the sake of diplomacy and not out of deference. For He Who Is Divine of Body would never stoop before someone of your modest station."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("en_US",	"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_DJOSER_ANY",
	"Oh dear! Thank you for bringing this to my attention. It seems that I forgot to notify you of our declaration of war. I really must speak with Imhotep about this - he usually reminds me of these things. you see..."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_DJOSER_HAPPY",
	"Your settlers journey close to Egypt so that they might achieve greatness by proximity. While flattering, I must ask that this practice cease immediately."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_DJOSER_UNHAPPY",
	"He who wears Sekhemty knows what lands belong to him and to the Double Crown. Your people apparently do not, for they settle on lands that rightully belong to Kemet."	),
	
	-- Positive AI response to human request (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_DJOSER_HAPPY",
	"My sincere apologies! My scouts did not see any grand structures marking ownership, so I thought these lands lay unclaimed. I shall instruct them to be thorough in the future."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_DJOSER_UNHAPPY",
	"As you wish - I will leave these lands be. Such a shame that the people who live there will never know what true greatness looks like."	),
	
	-- Negative AI response to human request (HAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_DJOSER_HAPPY",
	"Oh my, you're quite serious. Unfortunately, you see, I need this land - it's got just the right ambiance for a glorious work of architecture."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("en_US",	"LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_DJOSER_UNHAPPY",
	"Ha! The lowly hovel cannot grumble at the mighty pyramid for casting shade upon its modest stature. Well, it can, but it's not as if the pyramid could hear it from so far above..."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("en_US",	"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_DJOSER_HAPPY",
	"Wonderful."	),
	
	-- AI Accepts Deal (Unhappy)
	("en_US",	"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_DJOSER_UNHAPPY",
	"They say that the best compromise is one where no one is happy. I, for one, consider this an excellent compromise indeed."	),

	-- AI Rejects Deal (HAPPY)
	("en_US",	"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_DJOSER_HAPPY",
	"Though it pains me to say so, I cannot accept this."	),
	
	-- AI Rejects Deal (Unhappy)
	("en_US",	"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_DJOSER_UNHAPPY",
	"Oh dear. If I had known you were going to bore me to death with ridiculous offers that no one in their right mind would accept, I would have started construction on my pyramid ages ago."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	("en_US",	"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"Oh my - it appears that you've become quite upset. Why don't you have a piece of te-hedj and maybe you'll calm down."	),
	
	-- From AI
	("en_US",	"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"The wonders we dedicate our lives to are offerings to the divine. You disrepect the Gods through your base actions and lack of reverence. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	("en_US",	"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"So be it then - I will have Imhotep draw up the plans for battle... and for the monument that shall mark our eventual victory."	),
	
	-- AI Declares War
	("en_US",	"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"The construction of a pyramid begins with the first of many stones; the conquest of a rival begins with the first of many victories. Under my watch, neither of these should take too long..."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_DJOSER_ANY",
	"At last this distracting war is done; it's been ages since I've been able to focus properly on my latest architectural masterpiece."	),
	
	-- AI refuses human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_DJOSER_ANY",
	"I'm afraid I must decline. You see, there's this extremely important project that I'm the architect of and must see through to completion: your doom."	),
	
	-- AI requests from human
	("en_US",	"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"All of this tearing down of things has really distracted me from the building up of things. What say we take a breather from the former so that I can focus on the latter?"	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("en_US",	"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_DJOSER_ANY",
	"Though I may be defeated this day, I am confident in my legacy. You may scour me from this earth, but my pyramids shall reach towards the heavens for millennia to come. From foundation to capstone, I shall live on."	),

	-- Human is Defeated (will see this in hotseat)
	("en_US",	"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_DJOSER_ANY",
	"{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_DJOSER_ANY}"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_DJOSER_TITLE",		"Djoser"	),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_DJOSER_SUBTITLE",	"Pharaoh of the 3rd Dynasty"	),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_CVS_DJOSER_QUOTE",		"Be industrious and let your eyes be open, lest you become a beggar, for the man that is idle shall not find honor."  ),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DJOSER_CHAPTER_CAPSULE_BODY",
	"With the aid of his trusted governor, Imhotep, Djoser can build an empire of splendor." ),
	
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DJOSER_CHAPTER_DETAILED_BODY",
	"Egypt receives bonuses for building wonders throughout the game, something that Djoser will take advantage of. With the use of Imhotep, his unique governor, Djoser can use Imhotep's native bonus for an extra production boost that increases with population throughout the game. This will not only keep him competive against the likes of Qin, but with each wonder granting a new governor title, Djoser can unlock Imhotep's promotions faster, which increase the bonuses in cities that hold many wonders. A combination of wonders and the sphinx will provide a solid foundation to offset any negative appeal to be had from desert, and with Imhotep's last promotion, Djoser has the potential to turn cities that started as a barren wasteland into a cultural paradise."	),

	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DJOSER_CHAPTER_HISTORY_PARA_1",
	"Djoser was an ancient Egyptian pharaoh of the 3rd dynasty during the Old Kingdom and the founder of this epoch. The painted limestone statue of Djoser, now in the Egyptian Museum in Cairo, is the oldest known life-sized Egyptian statue. Today at the site in Saqqara where it was found, a plaster copy of the statue stands in place of the original. The statue was found during the Antiquities Service Excavations of 1924–1925. In contemporary inscriptions, he is called Netjerikhet, meaning 'divine of body'. Later sources, which include a New Kingdom reference to his construction, help confirm that Netjerikhet and Djoser are the same person."	),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DJOSER_CHAPTER_HISTORY_PARA_2",
	"The lands of Upper and Lower Egypt were united into a single kingdom sometime around 2686 BC. The period following the unification of the crowns was one of prosperity, marked by the start of the Third Dynasty and the Old Kingdom of Egypt. Djoser dispatched several military expeditions to the Sinai Peninsula, during which the local inhabitants were subdued. He also sent expeditions there to mine for valuable minerals such as turquoise and copper. This is known from inscriptions found in the desert there, sometimes displaying the banner of Seth alongside the symbols of Horus."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DJOSER_CHAPTER_HISTORY_PARA_3",
	"His most famous monument was his step pyramid, which entailed the construction of several mastaba tombs one over another. These forms would eventually lead to the standard pyramid tomb in the later Old Kingdom. Manetho, many centuries later, alludes to architectural advances of this reign, mentioning that 'Tosorthros' (a Hellenized variation of Djoser) discovered how to build with hewn stone, in addition to being remembered as the physician Aesculapius, and for introducing some reforms in the writing system. Modern scholars think that Manetho originally ascribed (or meant to ascribe) these feats to Imuthes, who was later deified as Aesculapius by the Greeks and Romans, and who corresponds to Imhotep, the famous minister of Djoser who engineered the Step Pyramid's construction."),
	("en_US",	"LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_DJOSER_CHAPTER_HISTORY_PARA_4",
	"Some fragmentary reliefs found at Heliopolis and Gebelein mention Djoser's name, and suggest he commissioned construction projects in those cities. Also, he may have fixed the southern boundary of his kingdom at the First Cataract. An inscription known as the Famine Stela and claiming to date to the reign of Djoser, but probably created during the Ptolemaic Dynasty, relates how Djoser rebuilt the temple of Khnum on the island of Elephantine at the First Cataract, thus ending a seven-year famine in Egypt. Some consider this ancient inscription as a legend at the time it was inscribed. Nonetheless, it does show that more than two millennia after his reign, Egyptians still remembered Djoser."),

	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_CVS_IMHOTEP_CHAPTER_HISTORY_PARA_1",
	"Imhotep was an Egyptian chancellor to the pharaoh Djoser, architect of Egypt's first step pyramids, and high priest of the sun god Ra at Heliopolis. One of the most famous contemporaries of king Djoser was his tjati (vizier), 'head of the royal shipyard' and 'overseer of all stone works', Imhotep. Imhotep oversaw stone building projects such as the tombs of King Djoser and King Sekhemkhet. It is possible that Imhotep was mentioned in the also famous Papyrus Westcar, in a story called 'Khufu and the magicians'. But because the papyrus is badly damaged at the beginning, Imhotep's name is lost today. A papyrus from the ancient Egyptian temple of Tebtunis, dating to the 2nd century AD, preserves a long story in the demotic script about Djoser and Imhotep. At Djoser's time, Imhotep was of such importance and fame that he was honoured by being mentioned on statues of king Djoser in his necropolis at Saqqara."	),	

	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_CVS_TJATI_CHAPTER_HISTORY_PARA_1",
	"The Tjati was the highest official in Ancient Egypt to serve the pharaoh during the Old, Middle and New Kingdoms. The Tjati were appointed by the pharaohs and often belonged to a pharaoh's family. The Tjati's paramount duty was to supervise the political administration of the country with near absolute power, second only to the pharaoh they served. Their other duties would also include overseeing jurisdiction, state archives, the treasury, trade and building projects such as the royal pyramid."	),
	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_CVS_OVERSEER_OF_STONEWORKS_CHAPTER_HISTORY_PARA_1",
	"The earliest Egyptian pyramids were step pyramids. During the Third Dynasty of Egypt, Imhotep designed Egypt's first step pyramid as a tomb for the pharaoh, Djoser. The structure was composed of a series of six successively smaller mastabas (an early form of tomb), one on top of another thus producing seven levels and four sides. Later pharaohs would build pyramids in a similar structure."	),
	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_CVS_SEBAYT_AUTHOR_CHAPTER_HISTORY_PARA_1",
	"Traditions from long after Imhotep's death treated him as a great author of pharaonic wisdom texts called 'sebayt', literally meaning 'teachings', that refer to formally written ethical teachings focused on the way of living truly. Sebayt is considered an Egyptian form of wisdom literature."	),
	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_CVS_HEQA_HUT_AA_CHAPTER_HISTORY_PARA_1",
	"The title Heqa-hut-aa was a title bestowed upon those whose responsibilities were the administration and taxation of stock leaving and entering the city. As well as monitoring the city's supply of food, the Heqa-hut-aa also managed the storage of surplus products and their redistribution. All government documents would require their official seal."	),
	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_CVS_HIGH_PRIEST_OF_RA_CHAPTER_HISTORY_PARA_1",
	"High priests upheld religious traditions and maintained the temples along the Nile. They held significant sway among the Nile people, at times having more power than Nubian royal lines and Egyptian dynasties. Later rulers would learn not to put the bulk of the country’s wealth in buildings controlled by the priesthood."	),
	("en_US", "LOC_PEDIA_PAGE_GOVERNOR_PROMOTION_CVS_IRY_PAT_CHAPTER_HISTORY_PARA_1",
	"Iry-pat, meaning 'member of the elite', was an ancient Egyptian ranking title, that is a title announcing a high position in the hierarchy of the country. Iry-pat was the highest ranking title at a the royal court, and only the most important officials could bear the title. In the New Kingdom, the title was often the crown prince and the title announced that the holder was the second ruler in the country. It is therefore sometimes translated as 'Hereditary' or 'Crown Prince'."	);

	

