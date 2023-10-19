-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 19, 2023 at 05:37 PM
-- Server version: 5.7.32
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `news-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@admin.com', '$2y$10$b3GAX6.Pd6054RRQ8C9se.zfOhTljRkduBfAKWFrmtdKwj02aSTuq');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_title` varchar(250) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `article_description` text NOT NULL,
  `article_date` date NOT NULL,
  `article_trend` tinyint(4) NOT NULL,
  `article_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `author_id`, `article_title`, `article_image`, `article_description`, `article_date`, `article_trend`, `article_active`) VALUES
(3, 1, 1, 'Nintendo : L\'annonce de la nouvelle console \'Switch Pro\' crée l\'excitation chez les joueurs', 'Nintendo_Logo_2017.png', 'Nintendo, le géant japonais du jeu vidéo, a récemment suscité une grande excitation parmi les amateurs de jeux vidéo du monde entier avec l\'annonce tant attendue de la nouvelle console, surnommée \'Switch Pro\'. Cette nouvelle console est censée apporter des améliorations significatives par rapport à la Nintendo Switch actuelle, y compris des graphismes améliorés et des performances plus rapides. Les rumeurs suggèrent que Nintendo prévoit également d\'introduire de nouveaux titres exclusifs pour la \'Switch Pro\'. Les joueurs attendent avec impatience la sortie de cette console, qui promet de redéfinir l\'expérience de jeu sur Nintendo.', '2021-03-24', 0, 1),
(6, 2, 1, 'PlayStation 5 : La console next-gen de Sony redéfinit le jeu vidéo', 'PlayStation_App_Icon.jpg', 'La PlayStation 5 (PS5) de Sony est la dernière console de jeu vidéo qui a secoué l\'industrie du jeu. Avec des graphismes à couper le souffle, des temps de chargement ultra-rapides et une bibliothèque de jeux diversifiée, la PS5 est une véritable prouesse technologique. Les joueurs du monde entier attendaient avec impatience son lancement, et depuis sa sortie, elle est devenue un incontournable pour les passionnés de jeux vidéo. Cet article explore les caractéristiques clés de la PS5, les titres phares disponibles, et comment cette console redéfinit l\'expérience de jeu.', '2021-03-24', 0, 1),
(7, 3, 1, 'Throwback: The 5 lockdown food trends we can’t get over', 'Xbox_Logo_2022_JPG-e8f7e94c037056ae394d.jpg', 'New Delhi: The lockdown made a lot of us enter the kitchen and try our luck in cooking. Being quarantined at home was initially boring till we figured out how much we could play in the kitchen. Stepping out of the house and eating food from outside was no option at all. Hence, everyone tried to satisfy their cravings at home. This made us try new things and experiment with the ingredients lying in our kitchens. Even if you knew nothing about cooking, the lockdown was the time when everyone sharpened their cooking skills and became a pro in the kitchen.\r\n\r\nPeople cooked delicious stuff and posted it on the internet. There were many recipes that were trending at that time, and are still trending post lockdown. Some of these food trends are still used daily on different occasions in our homes. Few were discovered in the lockdown itself and were a blockbuster hit.\r\nSome favourite lockdown food trends\r\n\r\nDalgona coffee- The dalgona coffee trend went viral during the lockdown. Dark whipped coffee floating on plain milk made the drink look picture perfect.\r\n\r\nMug cake- Mug cakes are the easiest and most simple way of satisfying your cake cravings. It is can be prepared in just 5 minutes and is ready to eat.\r\n\r\nAloo chat- Aloo chat is one food item which was cooked religiously during the lockdown period. People experimented with all kinds of spices and chutneys to give the aloo chat a different flavour.\r\n\r\nPani Puri- Pani puri was everyone’s favourite comfort during the lockdown. People made suji pani puri and aata pani puri at home and experimented with all kinds of flavours.\r\n\r\nHandmade Pizza- No one could step out for a pizza and hence people made pizza at home with simple bread and prepared their own pizza spread. Vegetables and home-cooked spices gave it a new twist.', '2021-03-25', 1, 1),
(15, 1, 3, 'Xbox Series X : La console de nouvelle génération de Microsoft redéfinit l\'expérience de jeu', 'Nintendo_Logo_2017.png', 'La Xbox Series X de Microsoft est la dernière console de jeu qui fait sensation dans l\'industrie. Avec une puissance de traitement impressionnante, des temps de chargement ultra-rapides et une bibliothèque de jeux diversifiée, la Xbox Series X est une avancée majeure pour les joueurs. Cet article plonge dans les caractéristiques clés de la Xbox Series X, les jeux phares disponibles, et la manière dont cette console repousse les limites de l\'expérience de jeu, que ce soit en termes de graphismes, de réactivité ou d\'innovations.', '2021-03-25', 0, 1),
(16, 3, 3, 'Xbox Game Pass : La révolution de l\'abonnement dans le monde du jeu', 'Xbox_Logo_2022_JPG-e8f7e94c037056ae394d.jpg', 'Microsoft a révolutionné la façon dont les joueurs accèdent aux jeux vidéo avec le Xbox Game Pass. Ce service d\'abonnement offre un accès à une vaste bibliothèque de jeux Xbox, PC et Cloud, sans coûts supplémentaires pour les titres Xbox Game Studios. Il s\'agit d\'une option extrêmement attractive pour les joueurs, leur permettant de découvrir de nouveaux titres et de jouer à des jeux populaires à un coût mensuel abordable. Cet article explore comment le Xbox Game Pass fonctionne, les avantages qu\'il apporte aux joueurs, et comment Microsoft a redéfini l\'industrie en proposant cette offre d\'abonnement innovante.', '2021-03-25', 0, 1),
(17, 2, 2, 'PlayStation Now : L\'essor du jeu en streaming avec Sony', 'PlayStation_App_Icon.jpg', 'Sony a marqué un tournant dans l\'industrie du jeu avec PlayStation Now, son service de jeu en streaming. PlayStation Now permet aux joueurs d\'accéder à une vaste bibliothèque de jeux PlayStation via Internet, sans avoir besoin de télécharger ou d\'installer des jeux. Cette innovation a transformé la façon dont les joueurs interagissent avec leur bibliothèque de jeux, offrant une flexibilité et un accès instantané. Cet article explore comment PlayStation Now fonctionne, les avantages qu\'il offre aux joueurs, et comment Sony se positionne en tant que pionnier du jeu en streaming.', '2021-03-25', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `author_password` varchar(100) NOT NULL,
  `author_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_password`, `author_email`) VALUES
(1, 'Henri 1', '$2y$10$xDw4C1y58k8kafvdzKo6WO/XglvO9jeJV7evQTxfOSxJ8DybuXDFW', 'Henri@Henri.com'),
(2, 'Henri 2', '$2y$10$gD8OeQmEZBbQFnO2CCpoBeot5X2/D76qV/ej5q1yyXkCmTilG6LHy', 'Henri@Henri.com'),
(3, 'Henri 3', '$2y$10$yfqAfNTZiiGgStBU9089rOysv0n35bqk9t.M/tjC/H2ahfmPedoyS', 'Henri@Henri.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`bookmark_id`, `user_id`, `article_id`) VALUES
(9, 1, 4),
(10, 2, 7),
(11, 1, 29),
(12, 2, 4),
(16, 1, 1),
(18, 1, 19),
(19, 2, 20),
(20, 4, 37),
(21, 6, 28),
(22, 6, 29),
(23, 1, 37),
(24, 1, 6),
(25, 1, 17),
(26, 1, 7),
(27, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  `category_color` varchar(35) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_color`, `category_image`, `category_description`) VALUES
(1, 'Nintendo', 'tag-yellow', 'Nintendo_Logo_2017.png', 'Nintendo est connu pour son approche unique du jeu, mettant l\'accent sur la convivialité et la créativité. Les consoles Nintendo, comme la Nintendo Switch, offrent des expériences ludiques adaptées à tous les âges, avec des franchises iconiques comme Super Mario et The Legend of Zelda.'),
(2, 'Playstation', 'tag-blue', 'PlayStation_App_Icon.jpg', 'La catégorie PlayStation de Sony est synonyme de jeux de qualité, de graphismes impressionnants et d\'une gamme de consoles allant de la PS1 à la PS5. Les joueurs apprécient les exclusivités PlayStation et l\'accès au PlayStation Network.'),
(3, 'XBOX', 'tag-green', 'Xbox_Logo_2022_JPG-e8f7e94c037056ae394d.jpg', 'La catégorie Xbox de Microsoft offre une expérience de jeu de haute qualité, avec des graphismes avancés, une large bibliothèque de jeux et une intégration étroite avec les services en ligne Xbox Live. Les consoles Xbox sont reconnues pour leur puissance et leurs exclusivités captivantes.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(35) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
