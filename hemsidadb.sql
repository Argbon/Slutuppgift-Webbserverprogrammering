-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1:3325
-- Tid vid skapande: 20 maj 2024 kl 13:01
-- Serverversion: 10.4.32-MariaDB
-- PHP-version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `hemsidadb`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `chat`
--

CREATE TABLE `chat` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `datum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `chat`
--

INSERT INTO `chat` (`id`, `username`, `message`, `datum`) VALUES
(113, 'Albin', 'bred', '2024-04-25 10:39:08'),
(114, 'Albin', 'Sam bred Wilmer', '2024-04-25 10:41:27'),
(115, 'Albin', 'bred', '2024-04-25 10:46:07'),
(116, 'Albin', 'bredare', '2024-04-25 10:46:12'),
(117, 'Albin', 'hej', '2024-04-26 12:11:09'),
(118, 'Albin', 'he hej', '2024-04-26 12:26:58'),
(119, 'Albin', 'bred', '2024-05-07 10:57:09'),
(120, 'Albin', 'Wilmer är tjock', '2024-05-07 10:57:19'),
(121, 'bred', 'tjock', '2024-05-08 14:07:47');

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Age`, `Password`) VALUES
(21, 'Albin', 'Albin@gmail.com', 19, '$2y$10$d5Jxm8BNZLAoo6BBqBRvnOeQ0GGKO2YumAu6fVKj/TZkNZGbRlpB.'),
(22, 'bred', 'bred@gmail.com', 89, '$2y$10$iMG2qSRaxh7omjmtDND72OUqtuBDjycEpdnrxjnmmmBDc/vpmODKu');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
