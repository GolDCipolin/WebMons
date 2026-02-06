-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2026 at 09:54 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmons`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `pokeID` int(11) NOT NULL,
  `pokeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseCatchPercent` decimal(5,2) NOT NULL,
  `imageSrc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`pokeID`, `pokeName`, `baseCatchPercent`, `imageSrc`) VALUES
(1, 'Bulbasaur', '40.00', 'https://www.serebii.net/pokemon/art/001.png'),
(2, 'Ivysaur', '28.00', 'https://www.serebii.net/pokemon/art/002.png'),
(3, 'Venusaur', '18.00', 'https://www.serebii.net/pokemon/art/003.png'),
(4, 'Charmander', '40.00', 'https://www.serebii.net/pokemon/art/004.png'),
(5, 'Charmeleon', '28.00', 'https://www.serebii.net/pokemon/art/005.png'),
(6, 'Charizard', '18.00', 'https://www.serebii.net/pokemon/art/006.png'),
(7, 'Squirtle', '40.00', 'https://www.serebii.net/pokemon/art/007.png'),
(8, 'Wartortle', '28.00', 'https://www.serebii.net/pokemon/art/008.png'),
(9, 'Blastoise', '18.00', 'https://www.serebii.net/pokemon/art/009.png'),
(10, 'Caterpie', '55.00', 'https://www.serebii.net/pokemon/art/010.png'),
(11, 'Metapod', '30.00', 'https://www.serebii.net/pokemon/art/011.png'),
(12, 'Butterfree', '30.00', 'https://www.serebii.net/pokemon/art/012.png'),
(13, 'Weedle', '55.00', 'https://www.serebii.net/pokemon/art/013.png'),
(14, 'Kakuna', '30.00', 'https://www.serebii.net/pokemon/art/014.png'),
(15, 'Beedrill', '30.00', 'https://www.serebii.net/pokemon/art/015.png'),
(16, 'Pidgey', '55.00', 'https://www.serebii.net/pokemon/art/016.png'),
(17, 'Pidgeotto', '30.00', 'https://www.serebii.net/pokemon/art/017.png'),
(18, 'Pidgeot', '30.00', 'https://www.serebii.net/pokemon/art/018.png'),
(19, 'Rattata', '55.00', 'https://www.serebii.net/pokemon/art/019.png'),
(20, 'Raticate', '30.00', 'https://www.serebii.net/pokemon/art/020.png'),
(21, 'Spearow', '55.00', 'https://www.serebii.net/pokemon/art/021.png'),
(22, 'Fearow', '30.00', 'https://www.serebii.net/pokemon/art/022.png'),
(23, 'Ekans', '55.00', 'https://www.serebii.net/pokemon/art/023.png'),
(24, 'Arbok', '30.00', 'https://www.serebii.net/pokemon/art/024.png'),
(25, 'Pikachu', '30.00', 'https://www.serebii.net/pokemon/art/025.png'),
(26, 'Raichu', '24.00', 'https://www.serebii.net/pokemon/art/026.png'),
(27, 'Sandshrew', '55.00', 'https://www.serebii.net/pokemon/art/027.png'),
(28, 'Sandslash', '30.00', 'https://www.serebii.net/pokemon/art/028.png'),
(29, 'Nidoran♀', '55.00', 'https://www.serebii.net/pokemon/art/029.png'),
(30, 'Nidorina', '30.00', 'https://www.serebii.net/pokemon/art/030.png'),
(31, 'Nidoqueen', '24.00', 'https://www.serebii.net/pokemon/art/031.png'),
(32, 'Nidoran♂', '55.00', 'https://www.serebii.net/pokemon/art/032.png'),
(33, 'Nidorino', '30.00', 'https://www.serebii.net/pokemon/art/033.png'),
(34, 'Nidoking', '24.00', 'https://www.serebii.net/pokemon/art/034.png'),
(35, 'Clefairy', '30.00', 'https://www.serebii.net/pokemon/art/035.png'),
(36, 'Clefable', '24.00', 'https://www.serebii.net/pokemon/art/036.png'),
(37, 'Vulpix', '30.00', 'https://www.serebii.net/pokemon/art/037.png'),
(38, 'Ninetales', '24.00', 'https://www.serebii.net/pokemon/art/038.png'),
(39, 'Jigglypuff', '30.00', 'https://www.serebii.net/pokemon/art/039.png'),
(40, 'Wigglytuff', '24.00', 'https://www.serebii.net/pokemon/art/040.png'),
(41, 'Zubat', '55.00', 'https://www.serebii.net/pokemon/art/041.png'),
(42, 'Golbat', '30.00', 'https://www.serebii.net/pokemon/art/042.png'),
(43, 'Oddish', '55.00', 'https://www.serebii.net/pokemon/art/043.png'),
(44, 'Gloom', '30.00', 'https://www.serebii.net/pokemon/art/044.png'),
(45, 'Vileplume', '24.00', 'https://www.serebii.net/pokemon/art/045.png'),
(46, 'Paras', '55.00', 'https://www.serebii.net/pokemon/art/046.png'),
(47, 'Parasect', '30.00', 'https://www.serebii.net/pokemon/art/047.png'),
(48, 'Venonat', '55.00', 'https://www.serebii.net/pokemon/art/048.png'),
(49, 'Venomoth', '30.00', 'https://www.serebii.net/pokemon/art/049.png'),
(50, 'Diglett', '55.00', 'https://www.serebii.net/pokemon/art/050.png'),
(51, 'Dugtrio', '30.00', 'https://www.serebii.net/pokemon/art/051.png'),
(52, 'Meowth', '55.00', 'https://www.serebii.net/pokemon/art/052.png'),
(53, 'Persian', '30.00', 'https://www.serebii.net/pokemon/art/053.png'),
(54, 'Psyduck', '55.00', 'https://www.serebii.net/pokemon/art/054.png'),
(55, 'Golduck', '30.00', 'https://www.serebii.net/pokemon/art/055.png'),
(56, 'Mankey', '55.00', 'https://www.serebii.net/pokemon/art/056.png'),
(57, 'Primeape', '30.00', 'https://www.serebii.net/pokemon/art/057.png'),
(58, 'Growlithe', '30.00', 'https://www.serebii.net/pokemon/art/058.png'),
(59, 'Arcanine', '16.00', 'https://www.serebii.net/pokemon/art/059.png'),
(60, 'Poliwag', '55.00', 'https://www.serebii.net/pokemon/art/060.png'),
(61, 'Poliwhirl', '30.00', 'https://www.serebii.net/pokemon/art/061.png'),
(62, 'Poliwrath', '24.00', 'https://www.serebii.net/pokemon/art/062.png'),
(63, 'Abra', '30.00', 'https://www.serebii.net/pokemon/art/063.png'),
(64, 'Kadabra', '22.00', 'https://www.serebii.net/pokemon/art/064.png'),
(65, 'Alakazam', '22.00', 'https://www.serebii.net/pokemon/art/065.png'),
(66, 'Machop', '30.00', 'https://www.serebii.net/pokemon/art/066.png'),
(67, 'Machoke', '22.00', 'https://www.serebii.net/pokemon/art/067.png'),
(68, 'Machamp', '22.00', 'https://www.serebii.net/pokemon/art/068.png'),
(69, 'Bellsprout', '55.00', 'https://www.serebii.net/pokemon/art/069.png'),
(70, 'Weepinbell', '30.00', 'https://www.serebii.net/pokemon/art/070.png'),
(71, 'Victreebel', '24.00', 'https://www.serebii.net/pokemon/art/071.png'),
(72, 'Tentacool', '55.00', 'https://www.serebii.net/pokemon/art/072.png'),
(73, 'Tentacruel', '30.00', 'https://www.serebii.net/pokemon/art/073.png'),
(74, 'Geodude', '55.00', 'https://www.serebii.net/pokemon/art/074.png'),
(75, 'Graveler', '30.00', 'https://www.serebii.net/pokemon/art/075.png'),
(76, 'Golem', '30.00', 'https://www.serebii.net/pokemon/art/076.png'),
(77, 'Ponyta', '30.00', 'https://www.serebii.net/pokemon/art/077.png'),
(78, 'Rapidash', '30.00', 'https://www.serebii.net/pokemon/art/078.png'),
(79, 'Slowpoke', '55.00', 'https://www.serebii.net/pokemon/art/079.png'),
(80, 'Slowbro', '30.00', 'https://www.serebii.net/pokemon/art/080.png'),
(81, 'Magnemite', '30.00', 'https://www.serebii.net/pokemon/art/081.png'),
(82, 'Magneton', '30.00', 'https://www.serebii.net/pokemon/art/082.png'),
(83, 'Farfetch\'d', '16.00', 'https://www.serebii.net/pokemon/art/083.png'),
(84, 'Doduo', '55.00', 'https://www.serebii.net/pokemon/art/084.png'),
(85, 'Dodrio', '30.00', 'https://www.serebii.net/pokemon/art/085.png'),
(86, 'Seel', '55.00', 'https://www.serebii.net/pokemon/art/086.png'),
(87, 'Dewgong', '30.00', 'https://www.serebii.net/pokemon/art/087.png'),
(88, 'Grimer', '55.00', 'https://www.serebii.net/pokemon/art/088.png'),
(89, 'Muk', '30.00', 'https://www.serebii.net/pokemon/art/089.png'),
(90, 'Shellder', '55.00', 'https://www.serebii.net/pokemon/art/090.png'),
(91, 'Cloyster', '24.00', 'https://www.serebii.net/pokemon/art/091.png'),
(92, 'Gastly', '30.00', 'https://www.serebii.net/pokemon/art/092.png'),
(93, 'Haunter', '22.00', 'https://www.serebii.net/pokemon/art/093.png'),
(94, 'Gengar', '22.00', 'https://www.serebii.net/pokemon/art/094.png'),
(95, 'Onix', '30.00', 'https://www.serebii.net/pokemon/art/095.png'),
(96, 'Drowzee', '55.00', 'https://www.serebii.net/pokemon/art/096.png'),
(97, 'Hypno', '30.00', 'https://www.serebii.net/pokemon/art/097.png'),
(98, 'Krabby', '55.00', 'https://www.serebii.net/pokemon/art/098.png'),
(99, 'Kingler', '30.00', 'https://www.serebii.net/pokemon/art/099.png'),
(100, 'Voltorb', '55.00', 'https://www.serebii.net/pokemon/art/100.png'),
(101, 'Electrode', '30.00', 'https://www.serebii.net/pokemon/art/101.png'),
(102, 'Exeggcute', '30.00', 'https://www.serebii.net/pokemon/art/102.png'),
(103, 'Exeggutor', '24.00', 'https://www.serebii.net/pokemon/art/103.png'),
(104, 'Cubone', '30.00', 'https://www.serebii.net/pokemon/art/104.png'),
(105, 'Marowak', '30.00', 'https://www.serebii.net/pokemon/art/105.png'),
(106, 'Hitmonlee', '16.00', 'https://www.serebii.net/pokemon/art/106.png'),
(107, 'Hitmonchan', '16.00', 'https://www.serebii.net/pokemon/art/107.png'),
(108, 'Lickitung', '16.00', 'https://www.serebii.net/pokemon/art/108.png'),
(109, 'Koffing', '55.00', 'https://www.serebii.net/pokemon/art/109.png'),
(110, 'Weezing', '30.00', 'https://www.serebii.net/pokemon/art/110.png'),
(111, 'Rhyhorn', '30.00', 'https://www.serebii.net/pokemon/art/111.png'),
(112, 'Rhydon', '30.00', 'https://www.serebii.net/pokemon/art/112.png'),
(113, 'Chansey', '16.00', 'https://www.serebii.net/pokemon/art/113.png'),
(114, 'Tangela', '16.00', 'https://www.serebii.net/pokemon/art/114.png'),
(115, 'Kangaskhan', '16.00', 'https://www.serebii.net/pokemon/art/115.png'),
(116, 'Horsea', '55.00', 'https://www.serebii.net/pokemon/art/116.png'),
(117, 'Seadra', '30.00', 'https://www.serebii.net/pokemon/art/117.png'),
(118, 'Goldeen', '55.00', 'https://www.serebii.net/pokemon/art/118.png'),
(119, 'Seaking', '30.00', 'https://www.serebii.net/pokemon/art/119.png'),
(120, 'Staryu', '55.00', 'https://www.serebii.net/pokemon/art/120.png'),
(121, 'Starmie', '24.00', 'https://www.serebii.net/pokemon/art/121.png'),
(122, 'Mr. Mime', '16.00', 'https://www.serebii.net/pokemon/art/122.png'),
(123, 'Scyther', '16.00', 'https://www.serebii.net/pokemon/art/123.png'),
(124, 'Jynx', '16.00', 'https://www.serebii.net/pokemon/art/124.png'),
(125, 'Electabuzz', '16.00', 'https://www.serebii.net/pokemon/art/125.png'),
(126, 'Magmar', '16.00', 'https://www.serebii.net/pokemon/art/126.png'),
(127, 'Pinsir', '16.00', 'https://www.serebii.net/pokemon/art/127.png'),
(128, 'Tauros', '16.00', 'https://www.serebii.net/pokemon/art/128.png'),
(129, 'Magikarp', '70.00', 'https://www.serebii.net/pokemon/art/129.png'),
(130, 'Gyarados', '18.00', 'https://www.serebii.net/pokemon/art/130.png'),
(131, 'Lapras', '16.00', 'https://www.serebii.net/pokemon/art/131.png'),
(132, 'Ditto', '16.00', 'https://www.serebii.net/pokemon/art/132.png'),
(133, 'Eevee', '25.00', 'https://www.serebii.net/pokemon/art/133.png'),
(134, 'Vaporeon', '20.00', 'https://www.serebii.net/pokemon/art/134.png'),
(135, 'Jolteon', '20.00', 'https://www.serebii.net/pokemon/art/135.png'),
(136, 'Flareon', '20.00', 'https://www.serebii.net/pokemon/art/136.png'),
(137, 'Porygon', '16.00', 'https://www.serebii.net/pokemon/art/137.png'),
(138, 'Omanyte', '22.00', 'https://www.serebii.net/pokemon/art/138.png'),
(139, 'Omastar', '14.00', 'https://www.serebii.net/pokemon/art/139.png'),
(140, 'Kabuto', '22.00', 'https://www.serebii.net/pokemon/art/140.png'),
(141, 'Kabutops', '14.00', 'https://www.serebii.net/pokemon/art/141.png'),
(142, 'Aerodactyl', '16.00', 'https://www.serebii.net/pokemon/art/142.png'),
(143, 'Snorlax', '16.00', 'https://www.serebii.net/pokemon/art/143.png'),
(144, 'Articuno', '2.00', 'https://www.serebii.net/pokemon/art/144.png'),
(145, 'Zapdos', '2.00', 'https://www.serebii.net/pokemon/art/145.png'),
(146, 'Moltres', '2.00', 'https://www.serebii.net/pokemon/art/146.png'),
(147, 'Dratini', '18.00', 'https://www.serebii.net/pokemon/art/147.png'),
(148, 'Dragonair', '12.00', 'https://www.serebii.net/pokemon/art/148.png'),
(149, 'Dragonite', '8.00', 'https://www.serebii.net/pokemon/art/149.png'),
(150, 'Mewtwo', '1.00', 'https://www.serebii.net/pokemon/art/150.png'),
(151, 'Mew', '4.00', 'https://www.serebii.net/pokemon/art/151.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `user_token` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `user_token`, `created_at`) VALUES
(1, '491246e0fe7911e918c237d981041176', '2026-02-06 18:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_pokemon`
--

CREATE TABLE `user_pokemon` (
  `userID` int(11) NOT NULL,
  `pokeID` int(11) NOT NULL,
  `caught_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_pokemon`
--

INSERT INTO `user_pokemon` (`userID`, `pokeID`, `caught_at`) VALUES
(1, 87, '2026-02-06 20:42:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pokeID`),
  ADD UNIQUE KEY `pokeName` (`pokeName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `user_token` (`user_token`);

--
-- Indexes for table `user_pokemon`
--
ALTER TABLE `user_pokemon`
  ADD PRIMARY KEY (`userID`,`pokeID`),
  ADD KEY `pokeID` (`pokeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `pokeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_pokemon`
--
ALTER TABLE `user_pokemon`
  ADD CONSTRAINT `user_pokemon_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_pokemon_ibfk_2` FOREIGN KEY (`pokeID`) REFERENCES `pokemon` (`pokeID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
