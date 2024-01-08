-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 31, 2023 at 10:04 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd8`
--
CREATE DATABASE IF NOT EXISTS `bd7` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `bd7`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontynenty`
--

CREATE TABLE `kontynenty` (
  `id_kontynent` int(1) DEFAULT NULL,
  `nazwa_kontynent` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kontynenty`
--

INSERT INTO `kontynenty` (`id_kontynent`, `nazwa_kontynent`) VALUES
(1, 'Europa'),
(2, 'Azja'),
(3, 'Ameryka Północna'),
(4, 'Ameryka Południowa'),
(5, 'Afryka'),
(6, 'Australia'),
(7, 'Antarktyda');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miasta`
--

CREATE TABLE `miasta` (
  `id_miasta` int(2) NOT NULL,
  `nazwa_miasta` varchar(14) DEFAULT NULL,
  `id_panstwa` int(2) DEFAULT NULL,
  `ludnosc` int(8) DEFAULT NULL,
  `obszar` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `miasta`
--

INSERT INTO `miasta` (`id_miasta`, `nazwa_miasta`, `id_panstwa`, `ludnosc`, `obszar`) VALUES
(1, 'Berlin', 2, 3800000, 120),
(2, 'Pekin', 4, 21000000, 1040),
(3, 'Warszawa', 1, 1800000, 70),
(4, 'Waszyngton', 11, 1500000, 60),
(5, 'Nowy York', 11, 16000000, 900),
(6, 'Szczecin', 1, 396000, 64),
(7, 'Wuhan', 4, 7800000, 550),
(8, 'Kair', 17, 5500000, 480),
(9, 'Rio de Janeiro', 19, 19000000, 1020),
(10, 'Brasilia', 19, 2500000, 140),
(11, 'Hamburg', 2, 1900000, 160),
(12, 'Poznań', 1, 580000, 45),
(13, 'Praga', 31, 1400000, 35),
(14, 'Paryż', 3, 4800000, 108),
(15, 'Londyn', 8, 8000000, 190),
(16, 'Tokyo', 6, 23000000, 2700),
(17, 'Seul', 22, 14000000, 1550),
(18, 'Bogota', 32, 1450000, 34),
(19, 'Mexico City', 10, 12000000, 450),
(20, 'Ottawa', 12, 780000, 37),
(21, 'Norymberga', 2, 396000, 43),
(42, 'Kalkuta', 26, 23000000, 1400),
(43, 'Lublin', 1, 450000, 34),
(44, 'Bombaj', 26, 21500000, 2700);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `panstwa`
--

CREATE TABLE `panstwa` (
  `id_panstwa` int(2) DEFAULT NULL,
  `nazwa_panstwa` varchar(16) DEFAULT NULL,
  `id_kontynentu` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `panstwa`
--

INSERT INTO `panstwa` (`id_panstwa`, `nazwa_panstwa`, `id_kontynentu`) VALUES
(1, 'Polska', 1),
(2, 'Niemcy', 1),
(3, 'Francja', 1),
(4, 'Chiny', 2),
(5, 'Rosja', 2),
(6, 'Japonia', 2),
(7, 'Hiszpania', 1),
(8, 'Anglia', 1),
(9, 'Włochy', 1),
(10, 'Meksyk', 3),
(11, 'USA', 3),
(12, 'Kanada', 3),
(13, 'Australia', 6),
(14, 'Nowa Zelandia', 6),
(15, 'Kazachstan', 2),
(16, 'Wietnam', 2),
(17, 'Egipt', 5),
(18, 'RPA', 5),
(19, 'Brazylia', 4),
(20, 'Argentyna', 4),
(21, 'Mongolia', 2),
(22, 'Korea Południowa', 2),
(23, 'Etiopia', 5),
(24, 'Algieria', 5),
(25, 'Nigeria', 5),
(26, 'Indie', 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `miasta`
--
ALTER TABLE `miasta`
  ADD PRIMARY KEY (`id_miasta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `miasta`
--
ALTER TABLE `miasta`
  MODIFY `id_miasta` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
