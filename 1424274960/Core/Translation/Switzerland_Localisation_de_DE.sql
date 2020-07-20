/*
	Localisation
	Credits: WeeklyMeat,
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Tag, Language, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("LOC_CIVILIZATION_CVS_SWITZERLAND_NAME",	"de_DE",	"Schweiz"	),
	("LOC_CIVILIZATION_CVS_SWITZERLAND_DESCRIPTION",	"de_DE",	"Schweizer Imperium"	),
	("LOC_CIVILIZATION_CVS_SWITZERLAND_ADJECTIVE",	"de_DE",	"Schweizer"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_NAME",	"de_DE",	"Confederatio Helvetica"	),
	("LOC_TRAIT_CIVILIZATION_CVS_SWITZERLAND_UA_DESCRIPTION",	"de_DE",
	"Erhalte einen Kostenlosen [ICON_Envoy] Gesandten bei der Beförderung eines [ICON_Governor] Gouverneurs und +1 [ICON_GreatPerson] Grosse Persönlichkeitspunkte von Spezialbezirken in Städten mit einem etabliertem [ICON_Governor] Gouverneur mit mindestens 3 [ICON_Promotion] Beförderungen. Das Auslösen eines [ICON_CivicBoosted] Heurekas gewährt +1 Zeitalter Punkt."	),
	
-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_BUILDING_CVS_SWITZERLAND_UI_NAME",	"de_DE",	"Kantonsparlament"	),
	("LOC_BUILDING_CVS_SWITZERLAND_UI_DESCRIPTION",	"de_DE",
	"Ein einzigartiger Bezirk der Schweiz. Benachbarte Spezialbezirke des Kantonsparlamens erhalten zusätzliche Erträge für jeden verbündeten Stadtstaat, der ihren Typus teilt. Kann nicht in einer Stadt gebaut werden, inder es schon ein Regierungsgebäude gibt. Gewährt zugang zum Kantonsrat-projekt."	),

-----------------------------------------------
-- UP
-----------------------------------------------

	("LOC_PROJECT_CVS_SWITZERLAND_UP_NAME",	"de_DE",	"Versammle den Kantonsrat"	),
	("LOC_PROJECT_CVS_SWITZERLAND_UP_SHORTNAME",	"de_DE",	"Kantonsrat"	),
	("LOC_PROJECT_CVS_SWITZERLAND_UP_DESCRIPTION",	"de_DE",
	"Ein einzigartiges Bezirks Projekt der Schweiz. Freigeschaltet durch das Kantonsparlament. Gewährt +1 [ICON_InfluencePerTurn] Einflusspunkte pro Runde während es aktiv ist und ein zufälliges [ICON_CivicBoosted] Heureka von der Era, in der das Projekt beendet wurde."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_SWITZERLAND_UU_NAME",	"de_DE",	"Schweizergarde"	),
	("LOC_UNIT_CVS_SWITZERLAND_UU_DESCRIPTION",	"de_DE",
	"Eine einzigartige anti-Kavallerie Einheit der Schweiz mit speziellen [ICON_Promotion] Beförderungen, welche zufällig sind. Kostet keinen [ICON_Gold] Unterhalt und startet mit einer kostenlosen [ICON_Promotion] Beförderung."),

	("LOC_PROMOTION_CLASS_CVS_SWITZERLAND_UU_NAME",	"de_DE",	"Schweizer Söldner"	),

	-- Promotions
	("LOC_PROMOTION_CVS_SWITZERLAND_HALBERDIER_NAME",	"de_DE",	"Hellebarden"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_HALBERDIER_DESCRIPTION",	"de_DE",	"+5 [ICON_Strength] Kampfstärke beim Angriff."	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_HALBERDIER_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Mit so vielen Bergen kann die Schweiz mit Leichtigkeit Engpässe verteidigen und Gegner aus ihren strategisch wichtigen Positionen halten. Sie beschäftigen Hellebarden - eine kurze Stange mit einer Klinge sowie einem Spiess - anscheinend mit viel Wirkung, denn sie Zerstörten sogar Österreichische Armeen damit. Die stark bewaffneten Hellebarden waren eine ernst zu nehmende Bedrohung gegen jede Armee, Infantery sowie auch Kavallerie."	),

	("LOC_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_NAME",	"de_DE",	"Gevierthaufen"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_DESCRIPTION",	"de_DE",	"+5 [ICON_Strength] Kampfstärke bei Verteidigung."	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_PIKE_SQUARE_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Der Gevierthaufen war eine Militärische Taktik entwickelt von der Schweizer Konföderation im 15. Jahrhundert und hatte einen vernichtenden Effekt auf die Schlacht von Nancy um 1477. Der Gevierthaufen sollte die europäischen Schlachtfelder dominieren und zukünftige Taktiken bis ins 17. Jahrhundert beeinflussen."	),

	("LOC_PROMOTION_CVS_SWITZERLAND_VANGUARD_NAME",	"de_DE",	"Vorhut"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_VANGUARD_DESCRIPTION",	"de_DE",	"+5 [ICON_Strength] Kampfstärke gegen verwundete Einheiten."	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_VANGUARD_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Die Vorhut ist der Leitende part einer fortschrittlichen militärischen Formation. Die Vorhut ist die vorderste Linie der Armee und kommt somit als erste am Schlachtfeld an, um nach Gegnern ausschau zu halten und wichtige Positionen für die Haupt Armee zu sichernwe."	),

	("LOC_PROMOTION_CVS_SWITZERLAND_WEDGE_NAME",	"de_DE",	"Keil"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_WEDGE_DESCRIPTION",	"de_DE",	"Kann Rückzug von gegnerischen Einheiten erzwingen."	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_WEDGE_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Der Keil ist eine Formation, die als Erfolgreiche militärische Strategie hervorging. Sie wurde in alten Zeiten genutzt, um die Linie des Gegners zu brechen. Im Mittelalter war diese Strategie besonders gegen defensive Schild-wände effektiv, bei denen man die Schilde zusammen hängt um eine undurchbrechliche Mauer zu bilden. Infanterie Einheiten konnten ihren Schwung in der Keil Formation nutzen, um kleine Bereiche der Schildmauer zu durchbrechen, Gegner zu flankieren und sie unerwartet zu treffen."	),
	
	("LOC_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_NAME",	"de_DE",	"Helvetischer Glaubenssatz"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_DESCRIPTION",	"de_DE",	"Kann sich nach dem Angreifen bewegen"	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_HELVETII_DOCTRINE_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Der Sieg zum Erfolg, glaubten die Schweizer, war das Vorankommen, trotz Opfern und hindernissen. Es war solch ein starker Glaubenssatz und solch ein starker Mut, dass man damit einen Erfolg gegen die Burgunder um 1470 erzielen konnte. Es erlaubte den Schweizern jede Schlacht in den nächsten 50 Jahren komplett zu dominieren."	),
	
	("LOC_PROMOTION_CVS_SWITZERLAND_COLUMNS_NAME",	"de_DE",	"Kolonnen"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_COLUMNS_DESCRIPTION",	"de_DE",	"Doppelter flankierungs Bonus"	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_COLUMNS_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Die Schweizer formten diese Kolonnen, bis zu acht tausend Mann lang, für einen Angriff. Jede Kolonne bestand aus Pikenieren, die ihre Piken auf Schulter höhe trugen, mit zweihändigen Schwertkämpfern und Hellebarden in der Mitte. Die Kolonne war normalerweise mit einem Haufen Schützen übersät, welche die gegnerische Artillerie abgelenkt haben und ihre Kolonne vor gegnerischen Projektilen beschützt hat."	),
	
	("LOC_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_NAME",	"de_DE",	"Kantons Banner"	),
	("LOC_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_DESCRIPTION",	"de_DE",	"Ignoriere Umgebungsnachteile bei Hügeln"	),
	("LOC_PEDIA_UNITPROMOTIONS_PAGE_PROMOTION_CVS_SWITZERLAND_CANTONAL_BANNERS_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"Im 15. Jahrhundert verliessen sich die Schweizer auf überraschungs Taktiken, die darauf basierten dass man seine Gegner schnell und brutal überstürmt, um die Kämpfe zu gewinnen. Kämpfend mit Pikenieren und Hellebarden benutzten die Schweizer im 15. Jahrhundert ihre ikonischen 10-fuss Piken in einer offensiven art. Jeder Pikenier hatte ein Kurzschwert und einen Dolch bei sich, trug aber vergleichsweise wenig Rüstung. Mit einer solch leichten Rüstung im vergleich zu ihrem Gegner garantierte ihnen einen Vorteil im Tempo, um die Ehre zu haben, die Kantonalen Banner in der Mitte jeder Schweizer Formation zu verteidigen."	),

	("LOC_MODIFIER_CVS_SWITZERLAND_VANGUARD_ATTACK_STRENGTH_DESCRIPTION",	"de_DE",	"+{1_Amount} vs. wounded units."	),
	("LOC_MODIFIER_CVS_SWITZERLAND_HALBERDIER_ATTACK_STRENGTH_DESCRIPTION",	"de_DE",	"+{1_Amount} when Attacking."	),
	("LOC_MODIFIER_CVS_SWITZERLAND_PIKE_SQUARE_DEFEND_STRENGTH_DESCRIPTION",	"de_DE",	"+{1_Amount} when Defending."	),
	("LOC_MODIFIER_CVS_SWITZERLAND_VANGUARD_VS_MELEE_DESCRIPTION",	"de_DE",	"+{1_Amount} vs. Melee units."	),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("LOC_CIVINFO_CVS_SWITZERLAND_LOCATION",	"de_DE",	"Europa"	),
	("LOC_CIVINFO_CVS_SWITZERLAND_SIZE",	"de_DE",	"ca.41,285 km²"	),
	("LOC_CIVINFO_CVS_SWITZERLAND_POPULATION",	"de_DE",	"8.372 millionen"	),
	("LOC_CIVINFO_CVS_SWITZERLAND_CAPITAL",	"de_DE",	"Bern"	),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_1",	"de_DE",		
	"The Chronicon Helveticum is one of the oldest accounts of the early history of the Swiss Confederation. It plays an important part in the historiography of Switzerland, since it contains copies of roughly 50 documents which have not survived in any other form. In terms of content, there is particular interest in representing the long-established independence of the Swiss population, the struggle between empire and papacy, the crusades, and a large number of other issues concerning Swiss cities, dioceses and monasteries."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_2",	"de_DE",	
	"Switzerland’s history is one of a medieval defensive league formed during a time and in an area lacking imperial authority. The different cantons (traditionally called Orte in German) were to a large extent independent states that remained united through the shared defense of liberty, which was understood as the protection of imperial privileges and franchises."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_3",	"de_DE",
	"Unlike similar confederations like the Hanseatic and Swabian leagues, and despite endemic internal strife after the Reformation in the 16th century, the Swiss Confederation survived the formation of (princely) modern states without adapting to it. With Venice, Genoa, and the Netherlands, the confederation formed the republican exception in Europe, and it developed political structures less as a unified nation than on the level of the 13 cantons that the Swiss Confederation comprised."),
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_SWITZERLAND_CHAPTER_HISTORY_PARA_4",	"de_DE",
	"A product of the European balance of power and, after 1499, attacked only once in 1798, Switzerland has enjoyed peace for most of its existence and was spared from two world wars in the 20th century when the gradually developed concept of “armed neutrality” was respected by its neighbours. Economic prosperity largely followed as Switzerland adapted to the Industrial Revolution and the growth of international finance markets. It stands today as one of the wealthiest nations in the world."),
		
	("LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_SWITZERLAND_UI_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"The Swiss Confederation is divided into 26 cantons, each of which has its own constitution and assembly in the form of a Cantonal Parlament, or 'Kantonsparlament' in German. The cantons exercise broad authority, possessing all powers not specifically given to the federal government."),
	("LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_SWITZERLAND_UI_CHAPTER_HISTORY_PARA_2",	"de_DE",
	"The Swiss Confederation consists of some 3,000 communes, which are responsible for public utilities and roads and, like the cantons, are largely autonomous. From the multiplicity of small communal republics stem a special quality to each and, paradoxically, a basis of national unity, for each citizen treasures and supports the freedom of the commune, a shared conviction that unites a citizen with the rest of the population in a way that transcends differences of language and of party."),
	
	("LOC_PEDIA_PROJECTS_PAGE_PROJECT_CVS_SWITZERLAND_UP_CHAPTER_HISTORY_PARA_1",	"de_DE",
	"The Cantonal Council is adopted by a number of cantonal legislatures in Switzerland whereby elections take place and members are entrusted with the legislative procedures of those areas which do not fall within the competence of the federal government, or are not exercised by it. In addition to legislation, its duties include supervision of administration, government and the judiciary, as well as decisions on taxes, levies and credits, the cantonal budget and the state accounts."),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_SWITZERLAND_UU_CHAPTER_HISTORY_PARA_1",  	"de_DE",
	"Swiss mercenaries (Reisläufer) were notable for their service in foreign armies, especially the armies of the Kings of France, throughout the Early Modern period of European history, from the Later Middle Ages into the Age of the European Enlightenment. Their service as mercenaries was at its peak during the Renaissance, when their proven battlefield capabilities made them sought-after mercenary troops. There followed a period of decline, as technological and organizational advances counteracted the Swiss' advantages. Switzerland's military isolationism largely put an end to organized mercenary activity; the principal remnant of the practice is the Pontifical Swiss Guard at the Vatican.");