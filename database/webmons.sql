-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2026 at 09:29 PM
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
(1, 'Pikachu', '30.00', 'https://db.pokemongohub.net/images/pokemon-home-renders/Normal/poke_capture_0025_000_fd_n_00000000_f_n.png'),
(2, 'Pidgey', '55.00', 'https://db.pokemongohub.net/images/pokemon-home-renders/Normal/poke_capture_0016_000_mf_n_00000000_f_n.png'),
(3, 'MewTwo', '1.00', 'https://db.pokemongohub.net/images/pokemon-home-renders/Normal/poke_capture_0150_000_uk_n_00000000_f_n.png');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `pokeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
