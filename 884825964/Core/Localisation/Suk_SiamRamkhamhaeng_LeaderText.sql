--========================================================================================================================
-- LocalizedText
--========================================================================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--========================================================================================================================
-- Ramkhamhaeng
--========================================================================================================================
		("LOC_LOADING_INFO_LEADER_SUK_RAMKHAMHAENG",
		"The people of Siam await your command, King Ramkhamhaeng. Cultivate your relationships with the states around you and allow trade to flow, then surely the best they have to offer will come to you. Rule them and your people like a father governs his children, and through their loyalty, Siam will flourish."),
--------------------------------------------------------------------------------------------------------------------------
-- Diplo
--------------------------------------------------------------------------------------------------------------------------
-- First Meet
-------------------------------------
		("LOC_DIPLO_FIRST_MEET_LEADER_SUK_RAMKHAMHAENG_ANY",
		"My father was named Sri Indraditya, my mother was named Nang Sueng, and I am King Ramkhamhaeng. On behalf of all the people of Sukhothai, I bid you welcome to my kingdom."),
		("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_SUK_RAMKHAMHAENG_ANY",
		"We have a city nearby. Perhaps you’d be interested in joining me in some restful meditation? Then afterwards, I can show you around."),
		("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Thank you for your hospitality. I only hope I will be able to reciprocate."),
		("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Tell me about your capital, and I will tell you of mine. It’s only good diplomacy"),
-------------------------------------
-- Agenda Diplo
-------------------------------------
		("LOC_DIPLO_KUDO_EXIT_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Fish in the water, rice in the fields. I’m pleased to see you care for your people’s happiness and well-being."),
		("LOC_DIPLO_WARNING_EXIT_LEADER_SUK_RAMKHAMHAENG_ANY",
		"A ruler ought to be like a father to his people. Do not forget the duty you owe to those you rule."),
-------------------------------------
-- War and Peace
-------------------------------------
	-- Human Declares War
		("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"We are a peaceful nation, but do not think we will shy away from battle!"),
	-- AI Declares War
		("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"I do this for the well being of the world and of Siam. All will be happier when you are brought down!"),
	-- Making Peace
		("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_SUK_RAMKHAMHAENG_ANY",
		"My people welcome the end of this pointless conflict."),
		("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_SUK_RAMKHAMHAENG_ANY",
		"My people demand this war continues. I cannot yet make peace."),
		("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"For the sake of our peoples, I beg you to end this war."),
	-- Defeat
		("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Siam may fall today, but we have suffered defeats before, and we will ascend again."),
-------------------------------------
-- DoF
-------------------------------------
		("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"You are a wise ruler who cares for his people. Siam is honored to extend to you a hand in friendship."),
	-- AI requested friendship
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Excellent, both our peoples will be happier for it!"),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Unfortunate. But I’m certain you have your reasons."),
	-- On human requests friendship
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"I gladly accept, on behalf of my people."),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"I don’t believe this is the right time for us to make such a declaration."),
-------------------------------------
-- Delegation
-------------------------------------
		("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"A trade delegation should arrive shortly with some fine Sangkhalok ceramic ware. I’ve thrown in a few sweets for you in the jars. Enjoy!"),
		("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Your delegation has been gratefully received. They are resting in the lakeside Sala enjoying the lotus blossoms as we speak."),
		("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"No, thank you. My people already have plenty and to accept such gifts would be wasteful."),
-------------------------------------
-- Denounce
-------------------------------------
		("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"The wellbeing of my people belies your false words."),
		("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"I have never seen such ignominious behavior. How can you think yourself fit to rule a nation? (Denounces You)"),
-------------------------------------
-- Alliance
-------------------------------------
		("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Let us work together, to make the world a happier and more prosperous place. Please, join me in an alliance!"),
-------------------------------------
-- Misc Standard Lines
-------------------------------------
		("LOC_DIPLO_GREETING_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Welcome."),
		("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"This is not to the benefit of my people."),
		("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Yes, I think the people of Siam will benefit from this."),
		("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_SUK_RAMKHAMHAENG_ANY",
		"I beg you to allow my people access to your fine nation."),
		("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"Siam is always open for the weary traveler. Your people are welcome."),
		("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_SUK_RAMKHAMHAENG_ANY",
		"For the safety of my people, I must unfortunately deny your request. I do hope you can understand."),
		("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SUK_RAMKHAMHAENG_ANY",
		"I do hope your encroachment is but a misunderstanding? Please move your troops away."),
--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------
		("LOC_PEDIA_LEADERS_PAGE_SUK_RAMKHAMHAENG_QUOTE",
		"In the water there is fish and in the fields there is rice."),
		("LOC_PEDIA_LEADERS_PAGE_SUK_RAMKHAMHAENG_TITLE",
		"Pho Khun Ramkhamhaeng"),
		("LOC_PEDIA_LEADERS_PAGE_SUK_RAMKHAMHAENG_SUBTITLE",
		"Rama the Bold"),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_CAPSULE_BODY",
		"As in history, Siam is a center of diplomacy and commerce. Under Ramkhamhaeng, Siam’s strong economic base combined with its City-State tributaries will allow Siam to pursue any victory."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_DETAILED_BODY",
		"Siam is an unrivaled diplomat, gaining an additional Envoy when completing any Civic that already provides them. The City-State friends they gain will provide useful yield boosts to Siam’s districts. To help aid with this, place districts next to a river to gain extra [ICON_Amenities] Amenities to aid with expansion. Siam’s Floating Markets will incentivise grabbing Luxury Resources as well, providing [ICON_Culture] Culture and [ICON_Gold] Gold when working them, so keep that in mind when founding your cities. Ramkhamhaeng augments this already very versatile mix of abilities, by providing more [ICON_Gold] Gold for pursuing [ICON_TechBoosted] Eurekas and [ICON_CivicBoosted] Inspirations. Essentially, build up a strong economic and diplomatic base, then leverage it for victory."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_HISTORY_PARA_1",
		"In 1278, a prince named “Ramkhamhaeng” inherited the small and unimportant kingdom of Sukhothai. In twenty years, employing a brilliant combination of military genius and shrewd diplomacy, he expanded his country’s borders and influence to cover much of Southeast Asia."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_HISTORY_PARA_2",
		"Not much is known about Ramkhamhaeng’s early life. His parents were King Sri Indraditya and Queen Sueang. He had two sisters and two older brothers, one of whom died early and the other, Ban Mueang, became king on their father’s death. Ramkhamhaeng was said to have studied under the poet wise-man Sukathanta. At 19 he served under his father during the latter’s attack on the city of Sukhothai, which was held by the Khmer. The success of this attack greatly expanded the king’s power, essentially establishing Sukhothai as an independent kingdom. Because of his heroic actions during the battle the prince was given the title ""Phra Ram Khamhaeng,"" or Rama the Bold. Upon the death of his father in 1257, his brother, the new king Ban Mueang, put Ramkhamhaeng in charge of the city of Si Satchanalai. Ban Mueang died twenty years later, and Ramkhamhaeng ascended to the throne."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_HISTORY_PARA_3",
		"During his reign Ramkhamhaeng expanded his kingdom’s dominance west into Burma, east into Laos, and south down the Malay Peninsula. The king was a shrewd diplomat as well as a warlord; many territories joined his confederation voluntarily. Ramkhamhaeng did not seek to dominate Southeast Asia, rather he promoted trade and diplomatic alliances with surrounding kingdoms."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_HISTORY_PARA_4",
		"Regarded as a benevolent and wise ruler, one of his major achievements was the compilation of a system of writing and a new Thai alphabet which he adapted from the various forms of Khmer script that were previously used. The alphabet King Ramkhamhaeng the Great devised in 1283 is essentially the same as that which is used today in Thailand and he is sometimes referred to as the ‘Father of the Thai language’. He has also been credited as the most important figure in establishing Theravada Buddhism in Thailand although the extent of his role is disputed by some historians."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_HISTORY_PARA_5",
		"Ramkhamhaeng died in 1298. His extended empire, held together by his personal magnetism and brilliant international diplomacy, did not long survive his death, and the furthest provinces soon broke away. Sukhothai itself survived another century before it fell."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_RAMKHAMHAENG_CHAPTER_HISTORY_PARA_6",
		"Ramkhamhaeng is viewed today as a great leader and the first to rule over a united Siam (later Thailand). It should be remembered however that almost all that we know about him comes from the stone inscription that he himself created. If he did have any major flaws, would he have carved them into the living rock for all of history to see? (Would any of today’s world leaders do so?) Still, there is plenty of independent evidence to show that he successfully created a great empire and his people prospered during his reign. And that’s a record that any leader could be proud of.");
--========================================================================================================================
--========================================================================================================================
