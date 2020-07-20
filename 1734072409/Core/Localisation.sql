--------------------------------------------------------------------------------------------------------------------------
-- LocalizedText
--------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Tag, 																								Language,					Text)
VALUES  
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
		("LOC_LEADER_SUK_NARAI_NAME",  																						"en_US",
		"Narai"																),
--------------------------------------------------------------------------------------------------------------------------
-- ULA
--------------------------------------------------------------------------------------------------------------------------
		("LOC_TRAIT_LEADER_SUK_SIAMOISES_NAME",  																				"en_US",
		"Les Ambassades Siamoises"															),
		("LOC_TRAIT_LEADER_SUK_SIAMOISES_DESCRIPTION",  																		"en_US",
		"Alliance Points with all allies increase by an additional .25 per turn, and each of your Alliances grant +15 [ICON_Gold] Gold, +3 [ICON_Culture] Culture, and +2 [ICON_FAVOR] Diplomatic Favor for both civilizations. The Floating Market district and its buildings each grant +1 [ICON_Science] Science to International [ICON_TradeRoute] Trade Routes sent from that city."),
--------------------------------------------------------------------------------------------------------------------------
-- Agenda
--------------------------------------------------------------------------------------------------------------------------
		("LOC_AGENDA_SUK_PHRAKHLANG_NAME",  																								"en_US",
		"Phrakhlang Ministry"														),
		("LOC_AGENDA_SUK_PHRAKHLANG_DESCRIPTION",  																						"en_US",
		"Likes civilizations with high Diplomatic Favor who are allied with him. Is slighted by civilizations who have many alliances, but are not allied with him."															),

		("LOC_DIPLO_KUDO_LEADER_SUK_NARAI_REASON_ANY",  																					"en_US",
		"(You are an ally with high Diplomatic Favor.)"															),
		("LOC_DIPLO_MODIFIER_SUK_PHRAKHLANG_ALLIED",  																					"en_US",
		"Narai is pleased to have such a diplomatic ally"															),

		("LOC_DIPLO_WARNING_LEADER_SUK_NARAI_REASON_ANY",  																				"en_US",
		"(You have many allies, but aren't allied with him.)"															),
		("LOC_DIPLO_MODIFIER_SUK_PHRAKHLANG_NOT_ALLIED",  																					"en_US",
		"Narai is slighted he is not one of your many allies"															),
--------------------------------------------------------------------------------------------------------------------------
-- Loading Screen
--------------------------------------------------------------------------------------------------------------------------
		("LOC_LOADING_INFO_LEADER_SUK_NARAI",  																		"en_US",
		"Let your reign be a peaceful one, King Narai, that Siam may blossom in tranquil prosperity. An open-mind will win you many friends, and with care, those friendship will become indestructible alliances. Through trade with them your nations will both flourish and Siam will want for naught; the crown jewel of the world."  															),
--------------------------------------------------------------------------------------------------------------------------
-- Diplo
--------------------------------------------------------------------------------------------------------------------------
-- First Meet
-------------------------------------
		("LOC_DIPLO_FIRST_MEET_LEADER_SUK_NARAI_ANY",	"en_US",
		"You must be the foreigner who asked for an audience. I am Narai, King of Siam."), -- ท่านคงเป็นชาวต่างชาติที่มาขอเข้าพบ ข้า นารายณ์ กษัตริย์แห่งสยาม
		("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_SUK_NARAI_ANY",	"en_US",
		"My astronomers are predicting a total solar eclipse, visible from one of my nearby cities. Perhaps you would join me for a viewing?"),
		("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_SUK_NARAI_ANY",	"en_US",
		"Your generosity speaks well of you. Thank you."),
		("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_SUK_NARAI_ANY",	"en_US",
		"If we are to trade with one another we must know the location of one another’s capitals. Agreed?"),
-------------------------------------
-- Agenda Diplo
-------------------------------------
		("LOC_DIPLO_KUDO_EXIT_LEADER_SUK_NARAI_ANY",	"en_US",
		"I count it my great fortune to have such an ally as shrewd as you, my august friend."), -- ข้านับว่าเป็นวาสนาของข้ายิ่งนัก ที่ข้ามีคนที่เฉลียวฉลาดอย่างท่านเป็นมหามิตร
		("LOC_DIPLO_WARNING_EXIT_LEADER_SUK_NARAI_ANY",	"en_US",
		"Siam is a rich and bountiful land. You will regret having ignored us as a possible ally."), -- สยามเป็นดินแดนที่มั่งคั่งอุดมสมบูรณ์ ท่านจะเสียดายที่ไม่เริ่มสานสัมพันธ์อันดีกับเรา
-------------------------------------
-- War and Peace
-------------------------------------
	-- Human Declares War
		("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"I could have given you much in friendship, but you insist on seizing it all by force. So be it. My subjects and friends will destroy your band of robbers."), -- สิ่งต่างๆที่ข้าให้ได้ด้วยมิตรภาพ ท่านกลับจะเอาไปด้วยกำลัง ได้ เหล่าบริวารและเพื่อนพ้องของข้า จะทำลายทัพกองโจรของท่าน
	-- AI Declares War
		("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"We have tried diplomacy, and it has yielded no fruit. War remains our only choice."), -- เราได้ทำการผูกสัมพันธ์อย่างเต็มที่ แต่ไม่เป็นผลอันใดเลย สงคราม จึงเป็นทางเลือกสุดท้ายของเรา
	-- Making Peace
		("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_SUK_NARAI_ANY",	"en_US",
		"Siam tires of this war. Let us have peace between us."),
		("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_SUK_NARAI_ANY",	"en_US",
		"I regret to say, my answer is no."),
		("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"The suffering of our subjects has gone on for long enough. Let us seek peace."),
	-- Defeat
		("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"I tried to do my best for Siam and her people. It seems I have failed. Please look after my people in my absence."),
-------------------------------------
-- DoF
-------------------------------------
		("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"Our two nations would be stronger if we were to declare our willingness to work together."),
	-- AI requested friendship
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"Wonderful! Let this be the beginning of something greater."),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"That truely is a shame. Perhaps next time."),
	-- On human requests friendship
		("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"Yes! May we be forever tied by friendship and commerce."),
		("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"My nobles are not ready to agree to such a generous offer. Perhaps with more familiarity between us?"),
-------------------------------------
-- Delegation
-------------------------------------
		("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"I send Siamese desserts—Thong Yip and Thong Yot—confectionary inventions by one of my courtiers."),
		("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"Your delegation is welcome. I will have my royal playwrights prepare a Khon drama to recieve them."),
		("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"Siam politely refuses your delegation. We have no need for your gifts, but thank you nonetheless."),
-------------------------------------
-- Denounce
-------------------------------------
		("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"Your words are unbecoming of a righteous and virtuous ruler, and I will not let them touch me."),
		("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"I try to be understanding of foreign ways, but I cannot let your unrighteous behavior pass without reproach."),
-------------------------------------
-- Alliance
-------------------------------------
		("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"We are good friends, are we not? Would you be amenable to deepening this relationship with an alliance?"),
-------------------------------------
-- Misc Standard Lines
-------------------------------------
		("LOC_DIPLO_GREETING_LEADER_SUK_NARAI_ANY",	"en_US",
		"Good day."),

		("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"Impossible."),
		("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"Excellent, I'll have the Phrakhlang manage the details."),

		("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"Let us open our mutual borders in the spirit of friendship and commerce!"),
		("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"I grant you free passage through the lands of Siam."),
		("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"Until I can be sure of your intentions, I cannot grant you this."),

		("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_SUK_NARAI_ANY",	"en_US",
		"Do not presume you can keep your soldiers on my borders without repercussions. Move them at once."),
-------------------------------------
-- Misc non-Standard Lines
-------------------------------------
		-- Player accepted AI Alliance proposal
		("LOC_DIPLO_ACCEPT_MAKE_ALLIANCE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"May our embassies go and come without interruption, and may our friendship be strong and everlasting."),

		-- Proposing Alliance Renewal
		("LOC_DIPLO_RENEW_ALLIANCE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"My august friend; I pray you will wish to continue our alliance? We have both profited greatly from it."),

		-- Human Proposed Renewal
		("LOC_DIPLO_ACCEPT_RENEW_ALLIANCE_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"Yes! I shall send you gifts in celebration of our continued alliance."),
		("LOC_DIPLO_REJECT_RENEW_ALLIANCE_FROM_HUMAN_LEADER_SUK_NARAI_ANY",	"en_US",
		"We regret to say, that Siam is unwilling to continue the alliance at this time. Our sincere apologies."),

		-- AI Proposed Renewal
		("LOC_DIPLO_ACCEPT_RENEW_ALLIANCE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"Wonderful! Thank you, my merchants will be greatly pleased to hear the news. As am I, of course."),
		("LOC_DIPLO_REJECT_RENEW_ALLIANCE_FROM_AI_LEADER_SUK_NARAI_ANY",	"en_US",
		"I cannot force you to agree, but I think you come to realise the mistake you've made."),
--------------------------------------------------------------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------------------------------------------------------------
		("LOC_PEDIA_LEADERS_PAGE_SUK_NARAI_QUOTE",  																		"en_US",
		"May our embassies go and come without interruption, and may our friendship be strong and everlasting."), -- http://www.siamese-heritage.org/jsspdf/1991/JSS_080_1h_FrancoSiameseRelationsIn17thCentury.pdf
		
		("LOC_PEDIA_LEADERS_PAGE_SUK_NARAI_TITLE",														"en_US",
		"Narai"),
		("LOC_PEDIA_LEADERS_PAGE_SUK_NARAI_SUBTITLE",													"en_US",
		"Somdet Phra Narai Maharat"),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_CAPSULE_BODY",							"en_US",
		"As in history, Siam is a center of diplomacy and commerce. Narai doubles down on the diplomacy, providing potent bonuses to maintaining alliances."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_DETAILED_BODY",							"en_US",
		'Siam is an unrivaled diplomat, gaining an additional Envoy when completing any Civic that already provides them. The City-State friends they gain will provide useful yield boosts to Siam’s districts. To help aid with this, place districts next to a river to gain extra [ICON_Amenities] Amenities to aid with expansion. Siam’s Floating Markets will incentivise grabbing Luxury Resources as well, providing [ICON_Culture] Culture and [ICON_Gold] Gold when working them, so keep that in mind when founding your cities. Narai extends Siam’s diplomatic prowess to other major players as well, with additional benefits for maintaining alliances, and for trading.'),		
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_1",						"en_US",
		"King Narai the Great or Ramathibodi III was the 27th monarch of Ayutthaya Kingdom, the 4th and the last monarch of the Prasat Thong dynasty. He was the king of Ayutthaya Kingdom from 1656 to 1688 and arguably the most famous king of the Prasat Thong dynasty."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_2",		"en_US",
		"Narai was a son of King Prasat Thong by a queen who was a daughter of King Song Tham, and he came to the throne after violent palace upheavals had cut short the reigns of his elder brother and his uncle. He was an effective ruler who dealt successfully with Siam’s traditional Southeast Asian rivals and was ambitious to thrust his kingdom onto the stage of world politics. Domestic policies in King Narai's reign were greatly affected by the interference of foreign powers most notably the Chinese to the north, the Dutch to the South, and the English who were making their first forays into India to the west. Policies revolved around either directly countering the influence, or creating a delicate balance of power between the different parties."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_3",		"en_US",
		"In 1660, the Chinese invaded the Burmese capitol at Ava to capture Zhu Youlang, the last Southern Ming emperor. Sensing a possible weakening of Burmese influence in the northern vassal states, King Narai began the Burmese–Siamese War of 1662–64 to bring Chiang Mai under the direct control of Ayutthya. Although the expedition was successful in taking control of Lampang and other smaller cities, a second expedition had to be conducted to bring Chiang Mai under control in 1662. After stopping a Burmese army incursion in 1663 at Sai Yok, Narai led an army of 60,000 in an invasion of Burma, capturing Martaban, Syriam, Rangoon, Hongsawadi, and then in 1664 laid siege to Pagan. After “causing many casualties in dead and wounded and capturing many prisoners of war”, the Siamese retreated."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_4",		"en_US",
		"After ruling from the city of Ayutthaya for ten years, he had the city of Lopburi restored so it could be a reserve capital. King Narai would eventually come to stay in Lopburi for long periods of time, about 8–9 months a year. The official reason for this move was that Lopburi afforded the king plenty of fresh air, and gave him plenty of opportunity for royal hunts, but the move to Lopburi was arguably prompted by the Dutch naval blockade of Ayutthaya in 1664 to enforce a fur monopoly. Lopburi, unlike Ayutthaya, was not vulnerable an attack by sea."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_5",		"en_US",
		"The most remarkable aspect of King Narai's reign were the diplomatic missions that he sent and received during his reign. Missions were sent as far afield as France, England, and the Vatican, although at least two missions were lost at sea. Ties with states closer to Ayutthaya were not neglected as missions were also sent to Persia, Golconda (India), China, as well as other neighbouring states. 1662 marked the arrival of more French priests, their quarrels with the Portuguese Jesuits and Dominicans established in Ayutthaya, their vain attempts to heal the paralysis of Chaofa Aphaitot, the king's half-brother, the consecration of Louis Laneau as first Bishop of Ayutthaya, etc. They maintained excellent contacts with the Royal Court. The king was presented with sumptuously bound volumes containing not only copper engravings of biblical scenes, but also of Louis XIV, the royal palaces, vistas of Paris, and so on."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_6",		"en_US",
		"Narai was very curious about the world outside Siam and he listened eagerly to these eulogies. The idea seeped (or was seeped) in to his mind that diplomatic contacts with so powerful a prince would enhance his status among the rulers of Southeast Asia and. rein in the Dutch. Their arrogance and power in the region worried him, and he never truly forgave nor forgot the 1663 blockade of the Chao Phraya river mouth. The French bishops Lambert and Laneau urged him to send an embassy to Versailles, and the agents of the Royal Company offered him passage for his envoys on the Soleil d'Orient. The King dispatched a lavish and vast embassy. Court astrologers had predicted all kinds of disasters for Siamese reckless enough to board western vessels, and events proved them to be right. The Soleil d'Orient left Bantam in August 1681, but never reached her destination. The hapless vessel likely perished somewhere between Madagascar and the Cape, with Siamese and French official suspecting Dutch interference."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_7",		"en_US",
		"It would not be until later that Narai would try again. In the interval a Greek adventurer with the Latinized name of Constantine Phaulkon who formerly worked for the English East India Company was introduced into the court in 1681 as a skilled interpreter and quickly gained royal favor. He became a favourite of Narai, and urged the king to pursue his overtures towards the French. A modest mission of two nobles and a French priest to act as interpreter, set off for France in January 1684 on a small British vessel and reached Paris safely before the end of the year. They were recieved personally by Louis XIV in the Gallery of Mirrors in Versailles. The king said to him in his usual royal manner: “Please assure these gentlemen that I am delighted to have seen them, and that I shall comply with the utmost pleasure with the wishes of my brother the king of Siam”. In response, Louis XIV appointed Alexandre de Chaumont as his ambassador, and assigned the Abbe de Choisy as counsel and possible replacement. Six Jesuits, well-grounded in astronomy and mathematics, were to sail with the ambassador on the Oiseau and Maligne."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_8",		"en_US",
		"The two vessels returned to France with an important Siamese embassy, a letter on gold foil and magnificent presents for the King and the Royal Family. The three ambassadors were selected with great care. The first ambassador was no one less than Okphra Visut Sunthorn, better known as Kosa Pan, who had shared a wet nurse with Phra Narai and was raised with him. The second and third ambassadors were outstanding mandarins with diplomatic experience. In June 1686 the two vessels dropped anchor in the seaport of Brest in Brittany after a smooth return voyage of hardly six months. All along the journey the three Siamese ambassadors had prepared themselves eagerly for their mission in France, asking lost of questions and taking notes. Father Vachet, who escorted them, was very helpful in this respect. We are very well informed about the eight months the Siamese delegation spent in France. Father Vachet's Memoirs, and the Diaries kept by several French courtiers such as Sourches and Dangeau, provide us with a wealth of details. But the most impressive source is the monthly Mercure galant which devoted no less than 2,000 small pages to the Siamese embassy."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_9",		"en_US",
		"But this is where things begin to fall apart. Phaulkon was desperate for a French presence in Siam on which he could rely in case of emergency. He offered the fortresses of Bangkok and Mergui, the two “keys of the kingdom,” to the French. Thus the return mission carried soldiers to garrison these fortresses. Father Tachard managed to disembark well ahead of the others and to meet Phaulkon before Kosa Pan and his colleagues could advise against the cession of Bangkok and Mergui. The Greek convinced Phra Narai and his Council to put the two strongholds under French “protection.” Phra Phetracha, chief of the elephantry, was the only member of the Council to speak against the proposal, which was in the end approved by the king. Phetracha became in no time the heart of a nationalist anti-French movement, which was joined soon after by Kromluang Yothathep, Phra Narai's strongheaded daughter. "),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_10",		"en_US",
		"Matters were brought to a head when King Narai fell gravely ill in March 1688 while the king stayed in Lopburi palaces. Aware of the coming succession dispute, in May 1688 Narai called together his closest councillors: Phaulkon, Phra Phetracha, and Mom Pi and nominated his daughter, Kromluang Yothathep to succeed him. The three councillors were to act as regents until the princess took on a partner of her choice from one of the two Siamese councillors. But when Narai was seriously ill with no hope of recovery, Phetracha arrested Phaulkon and the French officers. After questioning Mom Pi, he discovered Mom Pi had conspired with Phaulkon to assume the throne, and Mom Pi was executed. Further questioning of Phaulkon revealed a plot to raise a rebellion, and he too was executed. Narai, on his deathbed, was unable to do anything, except curse Phetracha and his son, Luang Sorasak. Luang Sorasak then had Narai's two brothers executed. On the death of King Narai, Phetracha proclaimed himself king. Siamese troops attacked the French troops during the Siege of Bangkok. Finally, the French soldiers were allowed to return to France. Thus ended the era of French influence in Siam."),
		("LOC_PEDIA_LEADERS_PAGE_LEADER_SUK_NARAI_CHAPTER_HISTORY_PARA_11",		"en_US",
		"Although King Narai's reign witnessed the greatest extent of foreign influence at the Siamese court, his diplomatic achievements were to be reversed by his successor. It is debatable whether the new introspective attitude of his successors contributed to the weakening and eventual fall of Ayutthaya. Nevertheless, his reign's diplomatic achievements contributed to him being posthumously styled “the Great,” one of seven recognised as such in the history of Thailand. At the same time, the records of those involved in the diplomatic missions, particularly those from the west, have allowed historians to obtain a rare glimpse into the world of the Ayutthayan court as most original Ayutthaya records were destroyed with the city in 1767. These include the French accounts of the Chevalier de Chaumont, the Abbé de Choisy, Fr. Tachard, Claude de Forbin, de la Loubere and the Persian account of Muhammad Rabi' ibn Muhammad Ibrahim. Domestically, the relative stability during his reign also gave rise to the revival of Siamese literature during his reign. In addition, among the gifts that were exchanged between the Siamese and the French courts, two items from Siam were to have an unexpected impact on French history. The items were a pair of silver cannons that were eventually stored in the Royal Furniture Repository in Paris since they were classed as gifts rather than weapons. On the 14th of July, 1789, rioting Parisians discovered these cannons and hauled them over to the Bastille.");
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------