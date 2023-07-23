-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 09:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eygi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Tin Packs', 'tin_packs'),
(2, 'Booster Packs', 'booster_packs'),
(3, 'Starter Decks', 'starter_decks'),
(4, 'Structure Decks', 'structure_decks');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 1, '25th Anniversary Tin: Dueling Heroes', '<p>The 25th Anniversary Tin: Dueling Heroes is an exceptional collector&#39;s item, featuring 3 x 18-card Mega-Packs in each tin, each pack containing TWO Prismatic Secret Rares, two Ultra Rares, a Super Rare, a Rare, and twelve Commons. In total, each Tin offers 6 Prismatic Secret Rares, 6 Ultra Rares, 3 Super Rares, 3 Rares, and 36 Commons, making it a treasure trove for fans and players alike. The Mega-Pack set includes almost 300 cards from recent sets, providing a diverse and exciting range of cards. Moreover, each Tin boasts a Quarter Century Secret Rare version of one of the sixteen monsters adorning the Tin&#39;s sides, showcasing some of the most renowned and iconic monsters used by the series&#39; beloved Dueling Heroes. This anniversary edition promises to delight collectors and add valuable cards to their collections, commemorating 25 years of the beloved trading card game.</p>\r\n', '25th-anniversary-tin-dueling-heroes', 1199, '25th-anniversary-tin-dueling-heroes.png', '2023-07-23', 4),
(31, 1, '2022 Tin of the Pharaoh’s Gods', '<p>The 2022 Tin of the Pharaoh&#39;s Gods is an exciting product for trading card game enthusiasts. Inside each tin, you&#39;ll discover 3 extra-large Mega-Packs, each packed with a treasure trove of cards. These Mega-Packs boast an impressive assortment of 1 Prismatic Secret Rare, 2 Ultra Rares, 2 Super Rares, 1 Rare, and 12 Commons from a vast and diverse mega-set. In total, each Tin offers 3 Prismatic Secret Rares, 6 Ultra Rares, 6 Super Rares, 3 Rares, and 36 Commons, ensuring a thrilling unboxing experience. The Mega-Set itself is a collection of fan-favorite cards released in 2021, showcasing gems from renowned sets like Blazing Vortex, Lightning Overdrive, Dawn of Majesty, Burst of Destiny, and more! Whether you&#39;re a seasoned player or a collector, the 2022 Tin is a must-have for expanding your deck&#39;s power and securing rare finds from the previous year&#39;s popular sets.</p>\r\n', '2022-tin-of-pharaoh-s-gods', 1199, '2022-tin-of-pharaoh-s-gods.png', '2023-07-23', 18),
(32, 1, '2017 Mega-Tins', '<p>The 2017 Mega-Tins bring a delightful holiday treat for fans with a selection of the most popular cards of the year. Each Tin contains 3 x 16-card Mega-Packs featuring the top cards from booster sets released in 2016 and 2017, including Shining Victories, The Dark Illusion, Invasion: Vengeance, and Raging Tempest. Each Mega-Pack guarantees one card of each foil rarity (1 Secret Rare, 1 Ultra Rare, and 1 Super Rare) in their original booster set rarity. The Yugi Muto &amp; Yami Yugi Mega-Tin features iconic cards like Secret Rare Dark Magician, and Ultra Rare variants of Proxy Dragon and Pot of Desires, along with Super Rare variants of Number 71: Rebarian Shark and Dreamland. It also includes an Ultra Rare Token Card featuring Yugi Muto &amp; Yami Yugi. Similarly, the Seto Kaiba Mega-Tin includes favorites such as Secret Rare Blue-Eyes White Dragon, and Ultra Rare variants of Proxy Dragon and Pot of Desires, accompanied by Super Rare variants of Number 68: Sanaphond the Sky Prison and Elder Entity N&rsquo;tss. Additionally, it includes an Ultra Rare Token Card featuring Seto Kaiba. Each 2017 Mega-Tin is sold separately, providing an exciting opportunity for collectors and players to acquire these sought-after cards and enjoy the best of the 2016-2017 booster sets.</p>\r\n', '2017-mega-tins', 1000, '2017-mega-tins.png', '2023-07-23', 1),
(33, 1, 'Prophecy Destroyer Collectible Tin', '<p>Prepare for chaos and devastation as The Destroyer Squadron descends upon the realm. Armed with five powerful cards, each card bears the mission of obliteration, ready to bring about utter annihilation. Within the Prophecy Destroyer Collectible Tin, lies the tools of destruction: a Photon Shockwave booster pack, along with two packs each of Order of Chaos and Galactic Overlord. The heart of this dark arsenal is the Secret Rare Prophecy Destroyer, accompanied by three Super Rare allies - Endless Decay, Steelswarm Roach, and Photon Strike Bounzer, all capable of inflicting unfathomable devastation upon any opponent who dares to stand in their way. To add to the arsenal is the Super Rare Infernity Barrier, completing the fearsome assembly of unstoppable power that lies within this Tin. Brace yourself for the chaos and destruction that awaits in the wake of The Destroyer Squadron.</p>\r\n', 'prophecy-destroyer-collectible-tin', 1000, 'prophecy-destroyer-collectible-tin.png', '0000-00-00', 0),
(34, 1, 'Zexal Collection Tin', '<p>The Zexal Collection mini-tin is packed with exciting content, offering three Ultimate Rare variants of existing cards and introducing eleven all-new cards from a unique 21-card set. These new cards showcase unparalleled power and were previously unseen in the Yu-Gi-Oh! Zexal animated series, being utilized by the main characters Yuma and Kite. Versatility is a highlight, as these Monster, Spell, and Trap Cards can complement any Deck or synergize seamlessly with other Yuma and Kite cards found in various products. The tin includes three Ultimate Rare variant cards, four all-new Ultra Rare cards, and seven all-new Super Rare cards, promising an exceptional and thrilling experience for fans and players alike.</p>\r\n', 'zexal-collection-tin', 1000, 'zexal-collection-tin.png', '0000-00-00', 0),
(35, 1, '2021 Tin of Ancient Battles', '<p>The everlasting rivalry between the Dark Magician and the Blue-Eyes White Dragon is immortalized in a magnificent carving, accompanied by 3 thrilling World Premiere cards to enhance the power of these iconic monsters. The 2021 Tin of Ancient Battles follows the format of the 2020 Tin, containing 3 extra-large Mega-Packs, each featuring 1 Prismatic Secret Rare, 2 Ultra Rares, 2 Super Rares, 1 Rare, and 12 Commons. The bounty within each Tin includes 3 Prismatic Secret Rares, 6 Ultra Rares, 6 Super Rares, 3 Rares, and 36 Commons, presenting a treasure trove of collectible cards. The Mega-Pack mega-set for 2021 comprises a selection of popular cards released in 2020, including gems from sets like Ignition Assault, Eternity Code, Rise of the Duelist, Phantom Rage, and more, making it a must-have for collectors and players alike.</p>\r\n', '2021-tin-of-ancient-battles', 1000, '2021-tin-of-ancient-battles.png', '0000-00-00', 0),
(36, 1, '2020 Tin of Lost Memories', '<p>This year&#39;s Tins are bigger and better, featuring 3 massive Mega-Packs, each containing 2 more foils compared to last year&#39;s. Within each 2020 Mega-Pack, you&#39;ll find 1 Prismatic Secret Rare, 2 Ultra Rares, 2 Super Rares, 1 Rare, and 12 Commons, resulting in an impressive haul for every collector. The cards in the 2020 Tin Mega-Pack mega-set are the cream of the crop from 2019, featuring popular releases like Savage Strike, Dark Neostorm, Rising Rampage, Chaos Impact, and more. Notably, this mega-set introduces 3 brand-new World Premiere cards and includes the formidable Red-Eyes Dark Dragoon, an unstoppable Fusion of Yugi&#39;s Dark Magician and Joey&#39;s Red-Eyes Black Dragon. Once you&#39;ve enjoyed the cards, you can proudly display the Tin, making an iconic scene from Yu-Gi-Oh! history a part of your Dueling space!</p>\r\n', '2020-tin-of-lost-memories', 1000, '2020-tin-of-lost-memories.png', '0000-00-00', 0),
(37, 1, '2019 Gold Sarcophagus Tin', '<p>The 2019 Gold Sarcophagus Tin features a sleek design inspired by the iconic Gold Sarcophagus, providing excellent protection for your cherished cards. Within each tin, you&#39;ll discover 5 Prismatic Secret Rare variant cards, including 2 cards with art by the esteemed creator of Yu-Gi-Oh!, Kazuki Takahashi, and 2 cards from the original Yu-Gi-Oh! animated series, showcasing the legendary Egyptian God Cards with Takahashi&#39;s art. Additionally, you&#39;ll find 1 of 3 new World Premiere cards, specifically crafted to bolster your Deck and help you counter fast opponent strategies. These new cards tackle Graveyard dumping, excessive monster Summoning, and overwhelming first-turn fields. To further delight collectors and players, each tin contains 3 Mega-Packs featuring popular cards released in 2018 from booster sets like Flames of Destruction, Dark Saviors, Cybernetic Horizon, and Soul Fusion. These Mega-Packs hold 16 cards each, with 12 Commons, 1 Rare, 1 Super Rare, 1 Ultra Rare, and 1 Prismatic Secret Rare, all in different rarities than their original 2018 release, adding an element of mystery and excitement to the 2019 Gold Sarcophagus Tin!</p>\r\n', '2019-gold-sarcophagus-tin', 1000, '2019-gold-sarcophagus-tin.png', '0000-00-00', 0),
(38, 1, '2016 Mega-Tins', '<p>The Yugi &amp; Slifer Tin and the Kaiba &amp; Obelisk Tin offer an impressive array of 6 variant cards each, the highest number ever included in a tin before. In addition to featuring a Secret Rare Egyptian God Card on the lid, both tins contain 2 Ultra Rare variant cards of iconic Yugi/Kaiba themed cards, such as Dark Magician and Blue-Eyes White Dragon, in their Ultra Rare foil technology&mdash;a combination not seen since their initial appearance in the 2002 Yugi &amp; Kaiba Starter Decks. Furthermore, each tin includes 3 Super Rare variant cards, including 2 new cards&mdash;a Pendulum Monster and a D/D/D boss monster, perfect complements to the Pendulum Domination Structure Deck, tentatively scheduled for the following year. As always, the tins also come with booster packs, specifically the 2016 Mega-Tins Mega-Packs, featuring popular cards from booster sets released between 2015 and 2016, like Crossed Souls, Clash of Rebellions, Dimension of Chaos, and Breakers of Shadow. Each 2016 Mega-Tin is sold separately, making them a must-have for collectors and players alike to acquire rare and cherished cards and enjoy the nostalgia of iconic past releases.</p>\r\n\r\n<ul>\r\n</ul>\r\n', '2016-mega-tins', 1000, '2016-mega-tins.png', '0000-00-00', 0),
(39, 1, '2015 Mega-Tins', '<p>The Mega-Tin releases for this year offer an exciting assortment of cards from past releases in three 16-card Mega-Packs. Each Mega-Pack contains 1 Secret Rare, 1 Ultra Rare, 1 Super Rare, 1 Rare, and 12 Common cards, featuring selections from booster sets like Primal Origin, Duelist Alliance, The New Challengers, and Secrets of Eternity. Alongside these packs, each Mega-Tin includes three variant cards, making them even more enticing for collectors and players alike. The Odd-Eyes Pendulum Dragon Mega-Tin boasts a highly collectible Platinum Secret Rare Odd-Eyes Pendulum Dragon, along with two Super Rare cards, Elder Entity Norden and Majesty&#39;s Fiend. On the other hand, the Dark Rebellion Xyz Dragon Mega-Tin comes with its own impressive offerings, including the coveted Platinum Secret Rare Dark Rebellion Xyz Dragon and two Super Rare cards, Old Entity Hastorr and Castel, the Skyblaster Musketeer. It&#39;s crucial to act fast as there will only be one wave of these Mega-Tins, making it essential for Duelists to seize the opportunity to collect both designs before they sell out. Each 2015 Mega-Tin is sold separately, providing a chance to enhance collections and decks with these prized and iconic cards.</p>\r\n', '2015-mega-tins', 1000, '2015-mega-tins.png', '0000-00-00', 0),
(40, 1, '2014 Mega-Tins', '<p>The Mega-Tin releases for this year are an absolute treat for trading card game enthusiasts. Each Mega-Tin features three 16-card Mega-Packs, containing a mix of nostalgic cards from past releases, including 12 Commons, 1 Rare, 1 Super Rare, 1 Ultra Rare, and 1 Secret Rare card. Additionally, you&#39;ll find three special variant cards in each Tin, two of which are awesome Super Rare cards like Majesty&#39;s Fiend, Elder Entity Norden, Old Entity Hastorr, or Castel, the Skyblaster Musketeer, adding even more value to the collection. The highlight of these Mega-Tins is the inclusion of one highly sought-after Platinum Secret Rare card, featuring the Mega-Tin&#39;s cover monster, making it a true gem for collectors. It&#39;s important to note that there will only be one wave of these Mega-Tins, so it&#39;s a race against time for Duelists to secure both designs before they sell out! Each 2015 Mega-Tin is sold separately and is an excellent opportunity for players and collectors alike to enhance their collections and decks with these rare and iconic cards.</p>\r\n', '2014-mega-tins', 1000, '2014-mega-tins.png', '0000-00-00', 0),
(41, 1, 'Hieratic Sun Dragon Overlord Collectible Tin', '<p>The Hieratic Sun Dragon Overlord of Heliopolis Collectible Tin is a thrilling treasure trove for card game enthusiasts, boasting a selection of rare cards and booster packs to amplify the excitement. Inside, you&#39;ll find a Secret Rare Hieratic Sun Dragon Overlord of Heliopolis, accompanied by notable Super Rare cards such as Malefic Truth Dragon, X-Saber Souza, Leviair the Sea Dragon, and Rescue Rabbit. Additionally, the tin offers 1 Photon Shockwave booster pack, 2 packs of Order of Chaos, and 2 packs of Galactic Overlord, promising endless possibilities for enhancing your deck. However, caution is advised when unwrapping this treasure, for its immense power may prove a challenge to contain once unleashed!</p>\r\n', 'hieratic-sun-dragon-overlord-collectible-tin', 1100, 'hieratic-sun-dragon-overlord-of-heliopolis-collectible-tin.png', '2023-07-23', 1),
(42, 1, 'Heroic Champion - Excalibur Collectible Tin', '<p>The Heroic Champion &ndash; Excalibur Collectible Tin and the Evolkzar Dolkka Collectible Tin both come with the Wind-Up Zenmaines, a formidable Rank 3 Xyz Monster known for its defensive capabilities. By detaching an Xyz Material instead of being destroyed, it can withstand potential threats. What sets Zenmaines apart is that, after being saved by its effect, it can also destroy one card on the field at the end of any turn. These tins also contain three more Super Rare variant cards each, offering a variety of powerful additions to your Deck. This annual money-saving opportunity is too good to pass up, whether you&#39;re buying it for yourself or a fellow Duelist.</p>\r\n', 'heroic-champion-excalibur-collectible-tin', 1100, 'heroic-champion-excalibur-collectible-tin.png', '0000-00-00', 0),
(43, 2, '25th Anniversary Rarity Collection', '<p>The 25th Anniversary Rarity Collection is an extraordinary all-foil set featuring 79 of the most beloved cards in the game, each available in 7 different rarities, including 2 new ones: Quarter Century Secret Rares celebrating the 25th anniversary and Platinum Secret Rares last seen in the 2015 Mega-Tin. This collection introduces the new &quot;Prismatic&quot; style Collector&#39;s Rares, boasting extra sparkle, and the &quot;Prismatic&quot; style Ultimate Rare with a raised 3D varnish effect, previously only available in Asia. With cards sparkling in luxurious rarities, Duelists will be envied by all. Get tournament-ready with competitive mainstays like Ash Blossom &amp; Joyous Spring, Nibiru, The Primal Being, Effect Veiler, and Infinite Impermanence. Unlock your Extra Deck&#39;s potential with game-defining cards like Baronne de Fleur and Borreload Savage Dragon, while also having a chance to obtain the Egyptian God Slime for anime fans. Don&#39;t miss out on powerful Spell Cards such as Pot of Prosperity, Triple Tactics Talent, and Forbidden Droplet. The pack structure is unique, offering 1 to 3 new &quot;luxury rare&quot; technologies, making each pack a delightful surprise with combinations of Super Rares, Secret Rares (with chances for upgrades to Platinum Secret Rares or Quarter Century Secret Rares), Ultra Rares (each with probabilities for new &quot;Prismatic&quot; style Collector&#39;s Rares or new &quot;Prismatic&quot; style Ultimate Rares). With every card available in every rarity, collectors can mix and match to create their ideal collection and deck. Prepare for a dazzling and memorable experience with this remarkable Rarity Collection!</p>\r\n', '25th-anniversary-rarity-collection', 275, '25th-anniversary-rarity-collection.png', '2023-07-23', 2),
(44, 2, 'Age of Overlord', '<p>Embark on a journey to the ancient past with the captivating theme of Horus in the all-new Age of Overlord booster set. Delve into a world of immortal monsters, ready to be Special Summoned from the Graveyard during each of your turns, provided the conditions are met. Your opponents will be wary of attempting to strike them down with card effects, as these resilient creatures will simply return to the field, making the situation even more daunting! Age of Overlord also introduces 25 Quarter Century Secret Rares, commemorating 25 years of the Yu-Gi-Oh! TCG, adding to the excitement of this extraordinary set. With a total of 100 cards, including 10 Secret Rares, 14 Ultra Rares, 26 Super Rares, and 49 Commons, Age of Overlord promises a thrilling and diverse experience for duelists seeking new challenges and nostalgia alike.</p>\r\n', 'age-of-overlord', 250, 'age-of-overlord.png', '2023-07-23', 5),
(45, 2, 'Legendary Duelists: Soulburning Volcano', '<p>Prepare for an explosive comeback with new Battlin&#39; Boxer cards! Following the strategy of Barian Emperor Alito from Yu-Gi-Oh! ZEXAL, these cards focus on absorbing attacks while delivering devastating counterpunches to adversaries. Embrace the power of &ldquo;Counter&rdquo; Counter Traps, effortlessly fetching them from your Deck to your hand! With any Deck featuring FIRE Warriors and the ability to gather 2 Level 4 monsters, unleash a formidable new &ldquo;Battlin&rsquo; Boxer&rdquo; Xyz Monster capable of adding any FIRE Warrior from your Deck to your hand. If you loved the &ldquo;Infernoble Knight&rdquo; cards from Duelist Nexus, this is a worthy addition. The Legendary Duelists: Soulburning Volcano booster set contains a total of 62 cards, including 9 Ultra Rares, 8 Super Rares, 10 Rares, 34 Commons, and 1 Ghost Rare, making it an excellent choice for enhancing your dueling experience!</p>\r\n', 'legendary-duelists-soulburning-volcano', 130, 'legendary-duelists-soulburning-volcano.png', '2023-07-23', 5),
(46, 2, 'Duelist Nexus', '<p>Duelist Nexus brings history to life in the Yu-Gi-Oh! card game with not only medieval-themed cards but also new Dinosaur cards, including a unique Grenosaurus type and powerful Evolsaurs that evolve into a Rank 6 Evolzar. Additionally, the set introduces new cards for Cyberstorm Access Decks, such as &quot;Nemleria,&quot; and promises exciting surprises. Moreover, Duelist Nexus features a fresh World Premiere theme and introduces Quarter Century Secret Rares to core boosters for the first time, celebrating 25 years of Yu-Gi-Oh! with 25 special cards. The complete booster set comprises 100 new cards, including 10 Secret Rares, 14 Ultra Rares, 26 Super Rares, and 49 Commons, with 24 of them also available as Quarter-Century Secret Rares, and 1 special card exclusively available as a Quarter-Century Secret Rare.</p>\r\n', 'duelist-nexus', 250, 'duelist-nexus.png', '0000-00-00', 0),
(47, 2, 'Battles of Legend: Monstrous Revenge', '<p><em>Battles of Legend: Monstrous Revenge marks the Yu-Gi-Oh! TRADING CARD GAME&#39;s first booster set to celebrate its 25th Anniversary with Quarter Century Secret Rares! This set features new cards like Armed Neos and Assault Synchron in their Quarter Century Secret Rare versions, alongside iconic cards from the game&#39;s history like Dark Armed Dragon, Dante, Traveler of the Burning Abyss, and a new alternate-art Sky Striker Mobilize - Engage!. Additionally, modern favorites like Rite of Aramesir, Divine Arsenal AA-Zeus - Sky Thunder, and Welcome Labrynth are also available as Quarter Century Secret Rare cards. Each 5-card pack includes 4 Ultra Rares and 1 Secret Rare, making the complete Battles of Legend: Monstrous Revenge booster set comprised of 40 Secret Rares and 62 Ultra Rares, with over 20 cards available as Quarter Century Secret Rares.</em></p>\r\n', 'battles-of-legend-monstrous-revenge', 250, 'battles-of-legend-monstrous-revenge.png', '2023-07-23', 1),
(48, 2, 'Wild Survivors', '<p>The &quot;Wild Survivors&quot; booster set introduces new Dinosaur monsters, including a Fusion, a Synchro, and an Xyz Monster, expanding options for your Extra Deck. With 60 cards in the set, including 10 Ultra Rares, 15 Super Rares, and 35 Rares, players can power up existing Dinosaur Decks or create new ones. Additionally, 15 of these cards are available as Collector&#39;s Rares, adding a touch of rarity and exclusivity. Each booster pack offers 7 cards, with 1 Foil card and 6 Rare cards, providing a thrilling and diverse experience for collectors and duelists alike.</p>\r\n', 'wild-survivors', 250, 'wild-survivors.png', '0000-00-00', 0),
(49, 2, 'Cyberstorm Access', '<p><em>In the Cyberstorm Access booster set, you&#39;ll discover a wealth of powerful new monsters for your Extra Deck, including the formidable Link-6 evolution of Firewall Dragon, boasting 3500 ATK. This beastly dragon synergizes classic Cyberse Link Summoning tactics with Ritual, Fusion, Synchro, and Xyz Summoning tactics, delivering a devastating impact. Additionally, the latest &quot;Code Talker&quot; monster adds to the onslaught for a potent one-two punch. Meanwhile, the journey of Visas Starfrost takes an intriguing turn as a new world unfolds, introducing a compelling Synchro Summoning strategy and unraveling mysteries in this captivating story. Embrace the stars with fresh cards for &quot;tellarknights,&quot; the very first Xyz Monster theme from the Yu-Gi-Oh! ARC-V era. Gong Strong and his Superheavy Samurai style of Dueling also receive several new cards to bolster their resilience. Moreover, the set incorporates new cards for strategies from recent sets like Amazing Defenders and Photon Hypernova, offering exciting possibilities and diversity. With 100 new cards, including Commons, Super Rares, Ultra Rares, and Secret Rares, Cyberstorm Access offers endless opportunities for thrilling duels and deck building.</em></p>\r\n', 'cyberstorm-access', 250, 'cyberstorm-access.png', '0000-00-00', 0),
(50, 2, 'Invasion of Chaos', '<p><em>The Invasion of Chaos booster set revolutionized Duels by introducing a plethora of potent cards that rewarded Duelists for incorporating LIGHT and DARK Attribute monsters into their Decks. The iconic Black Luster Soldier - Envoy of the Beginning and Chaos Emperor Dragon - Envoy of the End asserted their dominance, while the formidable Dark Magician of Chaos joined their ranks, all thanks to the immensely powerful Dimension Fusion Spell Card. In this special printing, both Secret Rares from the set will be featured, offering collectors and players a chance to obtain these legendary cards. The complete Invasion of Chaos booster set comprises 112 cards, including 73 Commons, 17 Rares, 10 Super Rares, 10 Ultra Rares, and 2 Secret Rares, making it an essential addition to any Duelist&#39;s collection.</em></p>\r\n', 'invasion-of-chaos', 250, 'invasion-of-chaos.png', '0000-00-00', 0),
(51, 2, 'Pharaoh’s Servant', '<p>To celebrate the 25th anniversary of the card game, the legendary Pharaoh&#39;s Servant packs, previously exclusive to the Legendary Collection, are now being released as a standalone booster! This defining set introduced iconic cards like Thousand-Eyes Restrict, Jinzo, and Imperial Order, along with strategic cards like Premature Burial, Call of the Haunted, and Ceasefire. The standalone booster includes both Secret Rares from the original set, allowing collectors to complete their collections. With a total of 105 cards, including 66 Commons, 17 Rares, 10 Super Rares, 10 Ultra Rares, and 2 Secret Rares, this release offers endless possibilities for players and collectors alike to explore and enjoy.</p>\r\n', 'pharaoh-s-servant', 250, 'pharaoh-s-servant_1690139103.png', '0000-00-00', 0),
(52, 2, 'Spell Ruler', '<p>Certainly! Here&#39;s a single paragraph:</p>\r\n\r\n<p>In a world ever-evolving with technology and interconnectedness, the significance of empathy and compassion remains steadfast. These essential qualities hold the power to bridge divides, foster understanding, and promote a more harmonious society. As we navigate the complexities of the modern age, embracing empathy allows us to connect on a deeper level, appreciating diverse perspectives, and supporting one another through both triumphs and tribulations. By cultivating empathy, we nurture an environment of empathy, acceptance, and kindness, sparking positive change and creating a brighter future for all.</p>\r\n', 'spell-ruler', 250, 'spell-ruler.png', '0000-00-00', 0),
(53, 2, 'Metal Raiders', '<p>For years, you could only get your hands on these coveted packs as part of the&nbsp;<em>Legendary Collection</em>, but now, just in time to celebrate the 25th&nbsp;anniversary of the card game, they&rsquo;re being made available as standalone booster packs!</p>\r\n\r\n<p>This set is famous for introducing many incredibly powerful Trap Cards, including Yugi&rsquo;s&nbsp;<strong>Mirror Force&nbsp;</strong>and the first wave of Counter Trap Cards:&nbsp;<strong>Horn of Heaven</strong>,&nbsp;<strong>Magic Jammer</strong>,&nbsp;<strong>Seven Tools of the Bandit</strong>, and, you can&rsquo;t forget&nbsp;<strong>Solemn Judgment</strong>! Of course,&nbsp;<em>Metal Raiders&nbsp;</em>didn&rsquo;t leave Duelists defenseless against these powerful cards &ndash;&nbsp;<strong>Heavy Storm&nbsp;</strong>also made its debut in this set! This printing will feature both Secret Rares from the set.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The complete&nbsp;<em>Metal Raiders&nbsp;</em>booster set is 144 cards:</p>\r\n\r\n<p>100 Commons<br />\r\n22 Rares<br />\r\n10 Super Rares<br />\r\n10 Ultra Rares<br />\r\n2 Secret Rares</p>\r\n', 'metal-raiders', 250, 'metal-raiders.png', '0000-00-00', 0),
(54, 2, 'Maze of Memories', '<p><em>Maze of Memories is a nostalgia-packed set that unlocks the gates to Yu-Gi-Oh!&#39;s history, featuring iconic cards like Black Luster Soldier - Legendary Swordsman, Duel Academy Field Spell, and Accel Synchro Stardust Dragon. The set introduces new World Premiere cards that rejuvenate the Paradox Brothers&#39; legendary Gate Guardian, allowing players to create fresh Fusion Monsters by combining Kazejin, Suijin, and Sanga of the Thunder. With a mix of tournament-level cards from the past and contemporary staples, Maze of Memories offers players the chance to wield powerful Synchro Monsters like Baronne De Fleur. The complete set comprises 67 cards, including 42 Rares, 15 Super Rares, and 10 Ultra Rares, with 15 cards also available as Collector&#39;s Rare, making it an a-MAZE-ing addition to any collection. Each booster pack contains 7 cards, featuring 1 Foil card and 6 Rare cards, ensuring an exciting and memorable experience for all dueling enthusiasts.</em></p>\r\n', 'maze-of-memories', 250, 'maze-of-memories.png', '0000-00-00', 0),
(55, 2, 'Dimension Force', '<p>Unleash the potential of the Yu-Gi-Oh! TRADING CARD GAME (TCG) with the groundbreaking Dimension Force core booster, comprising 100 cards with an array of new themes and support for existing strategies. Embrace the power of &quot;Performapal&quot; and &quot;Odd-Eyes&quot; cards, including the game&#39;s first-ever Ritual Pendulum Monster from the world of Yu-Gi-Oh! ARC-V. Old strategies are revitalized with a &quot;Red-Eyes&quot; Zombie Synchro Monster that can summon other Zombies and itself from the Graveyard. Prepare for a new Link Monster to elevate Pendulum strategies and potent Synchro Monsters, including a Level 11 Psychic Synchro with unique effects. Fusion Summon with the ferocious &quot;Predaplant&quot; and &quot;Starving Venom&quot; cards. Explore themes from Return of the Duelist, Storm of Ragnarok, The Grand Creators, and more, alongside the continuation of the World Premiere theme from Battle of Chaos. Dimension Force pushes deck-building to new heights, offering an abundance of dynamic cards, including 50 Commons, 26 Super Rares, 14 Ultra Rares, and 10 Secret Rares.</p>\r\n', 'dimension-force', 250, 'dimension-force.png', '0000-00-00', 0),
(56, 4, 'The Crimson King', '<p>Introducing &quot;Structure Deck: The Crimson King&quot; &ndash; a power-packed deck designed to enhance your strategic prowess with a vast Extra Deck and a cutting-edge Level 8 Synchro Monster. This new Synchro Monster serves as a formidable Red Dragon Archfiend on the field or in the Graveyard, empowering your tactics while leaving your opponent in the dust. Utilize this monster to Summon higher-Level Red Dragon Archfiend Synchro Monsters and trigger a Special Summon of the original Red Dragon Archfiend from your Extra Deck, all while obliterating your adversary&#39;s Attack Position monsters without the need for battle. With 50 cards, including 5 Ultra Rares, 3 Super Rares, and 42 Commons, this deck promises unrivaled dueling experiences.</p>\r\n', 'crimson-king', 650, 'structure-deck-crimson-king.png', '2023-07-23', 1),
(57, 4, 'Dark World', '<p>Get ready for an epic showdown as Reign-Beaux and the formidable dragon lord Grapha both unveil their long-awaited new forms! The latest Grapha incarnation emerges as a Fusion Monster, requiring the combination of Grapha, Dragon Lord of Dark World, and any other DARK monster. A new Spell Card facilitates this Fusion Summon by discarding cards, unlocking the potential of &quot;Dark World&quot; and &quot;Danger!&quot; monsters alike. Once on the field, this Fusion Monster enables you to seize control of your opponent&#39;s Normal Spell/Trap Card or monster effect, transforming it into a discard effect that empowers your &quot;Dark World&quot; forces. With everything you need right out of the box, the Dark World army eagerly awaits your command! Each Structure Deck contains 5 Ultra Rare Cards, 3 Super Rare Cards, 37 Common Cards, and a Double-sided Deluxe Game Mat/Dueling Guide to help you reign supreme in battle.</p>\r\n', 'dark-world', 650, 'dark-world.png', '2023-07-23', 2),
(58, 4, 'Legend of the Crystal Beasts', '<p>Structure Deck: Legend of the Crystal Beasts brings back the adored theme from the Yu-Gi-Oh! GX animated series, featuring Jesse Anderson&#39;s Crystal Beasts with exciting new cards. Among them is a formidable Fusion Monster, the new form of Rainbow Dragon, boasting a staggering 11000 ATK capable of clearing the field and unleashing devastating blows with banished &quot;Crystal Beast&quot; monsters. For fans unfamiliar with the Crystal Beasts and Rainbow Dragon, the Speed Duel GX: Duel Academy Box offers a chance to learn the basics before the Structure Deck&#39;s release. With 46 cards and 3 Token Cards, including Ultra Rares and Super Rares, this deck promises an invigorating and nostalgic experience for fans.</p>\r\n', 'legend-of-crystal-beasts', 600, 'legend-of-crystal-beasts.png', '0000-00-00', 0),
(59, 4, 'Albaz Strike', '<p><em>Get ready for an epic adventure with the Structure Deck: Albaz Strike! Unleash the power of 5 special Tokens, versatile enough to serve any purpose you need, featuring captivating new artwork that delves deeper into the captivating tales of Fallen of Albaz. The story unfolds further, promising additional support in the cards of Burst of Destiny and Battle of Chaos. Brace yourself for 46 cards of excitement, comprising a 40-card Main Deck, a 6-card Extra Deck, and a splendid Double-sided Deluxe Game Mat/Dueling Guide. With 5 Ultra Rares, 3 Super Rares, and 38 Commons, the deck guarantees an unforgettable journey into the world of Albaz!</em></p>\r\n', 'albaz-strike', 600, 'albaz-strike.png', '0000-00-00', 0),
(60, 4, 'Cyber Strike', '<p>The Structure Deck: Cyber Strike offers a compelling blend of two powerful strategies, combining Cyberdark Dragon and Cyber End Dragon into a formidable fusion: Cyberdarkness Dragon. This mighty 5000 ATK creature can be summoned flexibly by tributing Cyberdarkness Dragon while equipped with Cyber End Dragon. The deck also introduces the Spell Card Cybernetic Horizon, enabling seamless fusion of both strategies without any hiccups. It allows players to add a Dragon or Machine &quot;Cyber&quot; monster to their hand and fill the Graveyard with essential &quot;Cyber&quot; Dragon or Machine monsters for Overload Fusion. With a total of 48 cards, including 5 Ultra Rares, 3 Super Rares, 40 Commons, and a Deluxe Double-Sided Game Mat/Dueling Guide, Structure Deck: Cyber Strike provides an exciting and rewarding experience for duelists seeking an advanced and versatile playing style.</p>\r\n', 'cyber-strike', 550, 'cyber-strike.png', '0000-00-00', 0),
(61, 4, 'Freezing Chains', '<p>Get ready to unleash the might of Trishula, Dragon of the Ice Barrier, in Structure Deck: Freezing Chains! This iconic Synchro Monster returns in a more devastating form, capable of banishing up to 3 of your opponent&#39;s cards while also bringing back the original Trishula if it meets its demise. Versatile enough to fit into any strategy utilizing Synchro Monsters, this powerful addition to your Extra Deck is not to be missed. With a 41-card Main Deck and a 5-card Extra Deck containing all the &quot;Ice Barrier&quot; Synchro Monsters, Structure Deck: Freezing Chains offers 46 cards in total, including 37 Commons, 3 Super Rares, 6 Ultra Rares, and a Double-sided Deluxe Game Mat/Dueling Guide. Prepare for the freeze and take your dueling to the next level!</p>\r\n', 'freezing-chains', 550, 'freezing-chains.png', '0000-00-00', 0),
(62, 4, 'Spirit Charmers', '<p>The Yu-Gi-Oh! TRADING CARD GAME&#39;s Charmer cards boast immensely popular artwork, and the Structure Deck: Spirit Charmers seeks to enhance this reputation by introducing variant artwork for the &quot;Familiar-Possessed&quot; versions of Hiita, Wynn, Aussa, and Eria, with each deck containing one of these four variant art cards. Additionally, players will find five new captivating pieces of art depicting the Charmers and their familiars&#39; daily lives, each Structure Deck featuring one of five Tokens showcasing these artworks. The playing side of the Deluxe Game Mat will also display new artwork, with a total of five Deluxe Game Mats, each featuring one of the new art pieces. The reverse side offers strategic advice and a glimpse of early concept illustrations for the new art featured in Structure Deck: Spirit Charmers. Each deck comprises five Ultra Rares (four fixed and one of four Variant Art cards), two Super Rares, 35 Commons, one of five Super Rare Token Cards, and one of five Double-sided Deluxe Game Mats/Dueling Guide.</p>\r\n', 'spirit-charmers', 550, 'spirit-charmers.png', '0000-00-00', 0),
(63, 4, 'Sacred Beasts', '<p>In the &quot;Structure Deck: Sacred Beasts,&quot; mastering the ability to command multiple Sacred Beasts simultaneously is the ultimate key to Dueling dominance. As a reward for controlling 2 or more Sacred Beasts at once, a new Trap Card activates to negate all effects of your opponent&#39;s monsters. The deck comprises a total of 46 cards (44-card Main Deck, 2-card Extra Deck), including 5 Ultra Rares, 3 Super Rares, and 38 Commons, along with 2 Token Cards and a Double-sided Deluxe Game Mat/Dueling Guide. It offers players the chance to unleash the power of Sacred Beasts in unparalleled ways and rise to new heights in the Dueling world.</p>\r\n', 'sacred-beasts', 550, 'sacred-beasts.png', '0000-00-00', 0),
(64, 4, 'Mechanized Madness', '<p>Machina Citadel is a powerful Machine monster with 3000 ATK and a Quick Effect to obliterate your opponent&#39;s monsters by sacrificing a Machine you control. If it&#39;s destroyed, it can reassemble itself from the Graveyard when an EARTH Machine you control is destroyed. You can trigger this effect intentionally by sending it to the Graveyard yourself. Machina Air Raider offers an aerial assault, allowing you to Special Summon it by discarding a &quot;Machina&quot; card from your hand, potentially sending Machina Citadel to the Graveyard. Its Quick Effect destroys a Machine you control during your opponent&#39;s turn to summon a different &quot;Machina&quot; from your Deck. Machina Irradiator, on the other hand, accelerates on the field by discarding a &quot;Machina&quot; card, and it can Special Summon a &quot;Machina&quot; from your Graveyard by destroying one of your Machines during your turn. With Structure Deck: Mechanized Madness and additional products like Duel Overload, you can enhance your deck and unleash more firepower on your opponents. The structure deck contains 42 cards, including Commons, Super Rares, Ultra Rares, and a double-sided Deluxe Game Mat/Dueling Guide.</p>\r\n\r\n<blockquote>&nbsp;</blockquote>\r\n', 'mechanized-madness', 550, 'mechanized-madness.png', '0000-00-00', 0),
(65, 4, 'Shaddoll Showdown', '<p><em>Introducing the expansive Structure Deck: Shaddoll Showdown, featuring stunning new artwork for fan-favorite card El Shaddoll Construct and other beloved cards. This Structure Deck boasts an impressive array of 49 cards, combining both the Main and Extra Decks, including 10 foil cards to add a touch of shimmer to your collection. Among the offerings are 39 Commons, 7 Super Rares, 3 Ultra Rares, a Beginner&#39;s Guide to help newcomers, and a Double-sided Deluxe Game Mat/Dueling Guide for immersive gameplay. Moreover, this deck presents the alternate art version of El Shaddoll Construct, along with essential El Shaddoll Fusion cards and the option to enhance your Extra Deck with Synchro, Xyz, and Link Monsters from Duel Devastator. Prepare for an ultimate showdown with this remarkable Structure Deck!</em></p>\r\n', 'shaddoll-showdown', 550, 'shaddoll-showdown.png', '0000-00-00', 0),
(66, 4, 'Rokket Revolt', '<p>Structure Deck: Rokket Revolt is a versatile deck that emphasizes Link Summoning while introducing a unique Fusion Summoning mechanic that destructs its Fusion Materials. Moreover, players can enhance the deck&#39;s potential by incorporating Synchro and Xyz Summoning through supplementary cards from Savage Strike, Dark Neostorm, and Rising Rampage expansions, or simply enjoy the expanded 6-card Extra Deck that comes with the deck. This offering comprises a 40-card Main Deck and a 6-card Extra Deck, featuring a variety of rarities, including 39 Commons, 4 Super Rares, and 3 Ultra Rares, alongside a helpful Beginner&#39;s Guide and a Double-sided Deluxe Game Mat/Dueling Guide.</p>\r\n', 'rokket-revolt', 550, 'rokket-revolt.png', '0000-00-00', 0),
(67, 4, 'Order of the Spellcasters', '<p>The &quot;Machina Citadel&quot; leads the charge with its massive 3000 ATK and a Quick Effect that can obliterate opponent&#39;s monsters by turning a controlled Machine into a shrapnel explosion. If destroyed, it can rebuild itself from the Graveyard when an EARTH Machine under your control is destroyed. Another way to activate this plan is by launching an aerial assault with &quot;Machina Air Raider,&quot; which can be Special Summoned by discarding a &quot;Machina&quot; from your hand, possibly sending &quot;Machina Citadel&quot; to the Graveyard. Additionally, &quot;Machina Irradiator&quot; can accelerate on the field by discarding a &quot;Machina&quot; and can destroy one of your Machines to Special Summon a &quot;Machina&quot; from your Graveyard. The &quot;Structure Deck: Mechanized Madness&quot; is ready-to-play, but you can enhance it with other products like &quot;Duel Overload&quot; for more firepower.</p>\r\n', 'order-of-spellcasters', 550, 'order-of-spellcasters.png', '0000-00-00', 0),
(68, 4, 'Zombie Horde', '<p><em>The Structure Deck: Zombie Horde centers around the dominance of Zombies by leveraging the power of the Zombie World Field Spell. With this Spell in play, the Deck&#39;s boss monster can be summoned from the Graveyard during every Standby Phase. Additionally, the boss monster gains the ability to negate a monster&#39;s effect or banish a monster from the field or Graveyard, but only when a Zombie monster activates its effect. To ensure continuous access to Zombie World, a new high-ATK Level 4 monster safeguards it from being targeted or destroyed by card effects, and if needed, it can be banished to activate the Field Spell directly from the Deck or hand. The Deck focuses on building a formidable horde of zombies, bolstered by a new Spell Card that allows players to conscript their opponent&#39;s monsters into the horde twice. With its promising strategies, Structure Deck: Zombie Horde promises to extend the latest Zombie outbreak in the Dueling world, following the success of Zombie Decks in 2018&#39;s Dark Saviors and Hidden Summoners sets.</em></p>\r\n', 'zombie-horde', 550, 'zombie-horde.png', '0000-00-00', 0),
(69, 3, 'Yu-Gi-Oh!Player Starter Set', '<p>The new Yu-Gi-Oh! TCG 2-Player Starter Set provides an ideal introduction for new Duelists to master the game, either with a friend, their family, or alone. Featuring two distinct Decks for head-to-head play, the Starter Set incorporates a 64-page comic book that guides players through a scripted (non-randomized) Duel, teaching the fundamentals of the Yu-Gi-Oh! TCG from the very beginning. From initial card draws to Summons, battles, and the intricacies of the Extra Deck&#39;s Synchro and Xyz Monsters, players can easily grasp the basics. Once the instructional Duel is completed, the Decks can be reconfigured for a replay or used as standard Dueling Decks to embark on an exciting journey into the expansive Yu-Gi-Oh! TCG universe. The 2-Player Starter Set includes two 44-card decks (2 x 40-card Main Decks and 2 x 4-card Extra Decks) containing a total of 80 Commons and 8 Ultra Rares, along with the essential 64-page teaching comic book.</p>\r\n', 'yu-gi-oh-player-starter-set', 1100, 'yu-gi-oh-trading-card-game-2-player-starter-set.png', '0000-00-00', 0),
(70, 3, 'Egyptian God Deck', '<p>The Egyptian God Decks consist of 40 cards, featuring one Egyptian God Card and five new cards - four unique ones along with one &quot;Soul Crossing&quot; Quick-Play Spell Card, found in both Decks. &quot;Soul Crossing&quot; allows players to Tribute Summon their Egyptian God Card by using their opponent&#39;s monsters. Each Deck is fully playable by itself, complete with a Dueling Guide detailing basic strategies and rules for optimal use. Combining both Decks enables players to mix and match strategies, creating a powerful Deck capable of wielding multiple Egyptian God Cards. Each Egyptian God Deck comprises 4 Ultra Rares, 4 Super Rares, 32 Commons, and includes a Deluxe Game Mat/Dueling Guide.</p>\r\n', 'egyptian-god-deck', 550, 'egyptian-god-deck-slifer-sky-dragon-egyptian-god-deck-obelisk-tormentor.png', '2023-07-23', 1),
(71, 3, 'Starter Deck: Codebreaker', '<p>Starter Deck: Codebreaker introduces new Duelists to the fundamentals of Link Summoning through &quot;Code Talker&quot; Link Monsters. As beginners progress, they can customize their Deck by gathering Cyberse monsters and various &quot;Code Talker&quot; Link Monsters from releases like Structure Deck: Cyberse Link and Extreme Force. This starter deck equips Duelists with the necessary tools to enhance their techniques and elevate their Link Summoning skills. The inclusion of powerful cards like Linkuriboh, previously unreleased in certain regions, enhances the experience. With 5 Link Monsters included, these new additions to the Yu-Gi-Oh! TRADING CARD GAME open up exciting possibilities for players to display their strategic prowess and make the most of where and how they play their cards. The deck comprises a total of 45 cards, featuring Ultra Rares, Super Rares, Commons, a Beginner&#39;s Guide, and a Game Mat.</p>\r\n', 'starter-deck-codebreaker', 550, 'starter-deck-codebreaker.png', '0000-00-00', 0),
(72, 3, 'Link Strike', '<p>Starter Deck &mdash; Link Strike &mdash; introduces a new and exciting mechanic to the Dueling world with Link Monsters. These powerful creatures reside in the Extra Deck and require specific monsters to be sent to the Graveyard for their Link Summon. Link Monsters lack Levels, Ranks, or DEF stats, and are always in face-up Attack Position, making their arrows the key feature that indicates the Monster Zones they link to. Strategically positioning Link Monsters can unlock additional zones for Summoning from the Extra Deck. The set also includes a new Type of monster, inspired by digital technology. With 3 all-foil Link Monsters, a full Main Deck, and valuable reprints like Effect Veiler and Mirror Force, Starter Deck &mdash; Link Strike &mdash; provides Duelists with endless possibilities and powerful tools for their collections.</p>\r\n', 'link-strike', 550, 'link-strike.png', '0000-00-00', 0),
(73, 3, 'Starter Deck - Yuya', '<p>Fans of the Yu-Gi-Oh! animated series can now experience the thrill of Dueling with cards inspired by Yuya, the protagonist of Yu-Gi-Oh! ARC-V. The pre-constructed Starter Deck - Yuya offers a perfect entry point for newcomers to the Yu-Gi-Oh! TRADING CARD GAME with its 10 new cards, including Performapal Sleight Hand Magician and a Performapal themed Deck. Moreover, seasoned Duelists can also benefit from obtaining popular cards like Lightning Vortex, Book of Moon, and Pendulum Reborn, which are making a comeback in this exciting Starter Deck. With a mix of 35 Commons, 3 Super Rares, 2 Ultra Rares, and 3 Token Cards, Starter Deck - Yuya promises an engaging and rewarding experience for all Duelists!</p>\r\n', 'starter-deck-yuya', 550, 'starter-deck-yuya.png', '0000-00-00', 0),
(74, 3, 'Saber Force & Dark Legion Starter Deck', '<p>The series features two main characters, Yuya and Declan, each wielding a 41-card Deck in either a LIGHT or DARK theme. Yuya&#39;s strategy keeps spectators enthralled as he skillfully counters opponents before turning the Duel in his favor with Odd-Eyes Saber Dragon. On the other hand, Declan follows a more aggressive approach, attacking early and relentlessly obliterating everything with D/D/D Dragon Overlord Pendragon. The new Starter Decks are crafted to facilitate group learning, enabling friends, siblings, or classmates to master the art of Dueling together. These decks include favorite cards of each character, providing a seamless introduction to the world of Dueling right out of the box. Novice Duelists can elevate their gameplay with 5 Shatterfoil Cards, boasting a captivating shattered-glass design, along with 1 brand new Foil Card. Each Starter Deck also contains 35 Common Cards, a Beginner&#39;s Guide, and a Game Mat, ensuring an engaging and stylish Dueling experience.</p>\r\n', 'saber-force-dark-legion-starter-deck', 550, 'yu-gi-oh-tcg-saber-force-dark-legion-starter-deck.png', '2023-07-23', 1),
(75, 3, 'Super Starter: Space-Time Showdown', '<p>Super Starter: Space-Time Showdown brings back the popular Yu-Gi-Oh! TRADING CARD GAME format, providing new Duelists with a 40-card pre-built Deck for easy play with friends. The package includes two randomized Power-Up Packs that allow players to enhance and expand their Decks further. A highlight of this release is the introduction of Pendulum Monsters, a novel monster type that blurs the boundary between Monsters and Spells. These versatile creatures can be summoned as regular Monsters for battles or activated as Spell Cards in Pendulum Zones, granting unique abilities and enabling Pendulum Summoning. This exclusive set is the only way for Duelists to experience Pendulum Monsters before they are officially released in the upcoming August booster, Duelist Alliance. Additionally, each Super Starter includes 14 new cards, and the Power-Up Packs contain 5 cards from a 15-card set, with two guaranteed Ultra Rare cards: Dark Hole and Odd-Eyes Dragon.</p>\r\n', 'super-starter-space-time-showdown', 700, 'super-starter-space-time-showdown.png', '0000-00-00', 0),
(76, 3, 'Yugi – Reloaded & Kaiba – Reloaded', '<p>The Yu-Gi-Oh! TRADING CARD GAME offers 50-card Starter Decks, featuring favorite cards of iconic characters from the original TV series, providing an easy learning experience for fans. These Decks are designed to be evenly matched, offering a perfect starting point for new Duelists to roleplay and Duel just like their heroes on TV. The Yugi &ndash; Reloaded and Kaiba &ndash; Reloaded Starter Decks were created in response to the nostalgic fan demand for a modern revamp of the original series, delivering a mix of 49 Common Cards, 1 Ultimate Rare Card, 1 Beginner&#39;s Guide, 1 Dueling Guide, and 1 Game Mat to enhance the enjoyment of the game.</p>\r\n', 'yugi-reloaded-kaiba-reloaded', 550, 'yugi-reloaded-kaiba-reloaded.png', '0000-00-00', 0),
(77, 3, 'Super Starter: V for Victory', '<p>The Power-Up Pack offers a set of 5 cards from a 15-card collection and guarantees coveted cards like Number C39: Utopia Ray V and Rank-Up-Magic Limited Barian&rsquo;s Force, known as Yuma&#39;s most potent cards. Additionally, the Super Starter contains 5 fresh cards, while the Power-Up Pack set includes 7 new cards. Enhance your personalized Deck further by integrating cards from Lord of the Tachyon Galaxy, opening up possibilities for exhilarating card combinations. Each Starter Deck is composed of 40 Common Cards, 1 Ultra Rare Card, 1 Super Rare Card, a Beginner&#39;s Guide, and a Game Mat, accompanied by 2 Power-Up Packs with 5 cards each from the 15-card assortment.</p>\r\n', 'super-starter-v-victory', 700, 'super-starter-v-victory.png', '0000-00-00', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(78, 3, 'Starter Deck: Xyz Symphony', '<p>To become a Yu-Gi-Oh! Champion, the key lies in honing your skills through frequent Duels. Gather your friends or participate in local store tournaments to gain experience. A Starter Deck, like Xyz Symphony, can be an excellent starting point, comprising 20 monsters, including powerful Xyz Monsters like Number 39: Utopia. Xyz Monsters are easily summoned from the Extra Deck, making them a valuable addition to your strategy. The deck also equips you with 10 Spells and 10 Traps to support your monsters and ensure your victory. Remember, the journey to becoming a Champion may be long, but it all begins with this first step. Good luck on your Dueling adventure!</p>\r\n', 'starter-deck-xyz-symphony', 550, 'starter-deck-xyz-symphony.png', '0000-00-00', 0),
(79, 3, 'Starter Deck - Duelist Toolbox', '<p>The Duelist Toolbox Starter Deck offers a comprehensive package for newcomers to learn and play Yu-Gi-Oh! It comprises a 44-card deck with 40 cards for the Main Deck and 4 Synchro Monsters to kickstart your Extra Deck strategy. This starter set simplifies the learning process while providing an effective Deck, boosted by the powerful Junk Destroyer Synchro Monster capable of annihilating any card on the field. Additionally, players receive a Super Rare X-Saber Wayne, adding to the deck&#39;s versatility. With 40 Common Cards, 1 Ultra Rare Card, 3 Super Rare Cards, a Beginner&#39;s Guide, and a Game Mat, the Duelist Toolbox Starter Deck is an ideal choice for those aiming to enter the world of competitive Yu-Gi-Oh! tournaments.</p>\r\n', 'starter-deck-duelist-toolbox', 550, 'starter-deck-duelist-toolbox.png', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@gmail.com', '$2y$10$A652GPOeORuydK52R0P/jOhbzK4XTuvo7vYgtF4v9VGgC/g7FrtuK', 1, 'Eygi', 'Yugioh', '', '', 'Picture1.jpg', 1, '', 'kXqgMJ9yuw1h5Im', '2018-05-01'),
(13, 'manny@gmail.com', '$2y$10$Qqn213V8wT7HBJKQITWXPOC7rbtARLpIM/2MTUk7.VVq5UGFQez0G', 0, 'Manny', 'Kha', '', '', 'Untitled design (3).png', 1, '32vrKIE5NHFV', '', '2023-07-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
