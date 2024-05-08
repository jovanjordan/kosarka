-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 12:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evroliga`
--

-- --------------------------------------------------------

--
-- Table structure for table `igrac`
--

CREATE TABLE `igrac` (
  `igrac_id` varchar(20) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `broj_dresa` varchar(20) NOT NULL,
  `datum_rodenja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `igrac`
--

INSERT INTO `igrac` (`igrac_id`, `ime`, `broj_dresa`, `datum_rodenja`) VALUES
('cmo-bask', 'chima moneke', '95 ', '1995-12-24'),
('lul-rma', 'serhio llull', '23 ', '1987-03-15'),
('napr-mil', 'shabazz nappier', '67 ', '1991-07-14'),
('ned-cz', 'nemanja nedovic', '24', '1990-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `naziv` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL,
  `boja_dresa` varchar(20) NOT NULL,
  `budzert` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`naziv`, `rank`, `boja_dresa`, `budzert`) VALUES
('barcelona', '4 na tabeli', 'zuto plava', '40 miliona €'),
('crvena zvezda', '3 na tabeli', 'crveno bela', '15 miliona €'),
('partizan', '10 na tabeli', 'crno bela', '20 miliona €'),
('real madrid', '1 na tabeli', 'bela', '50 miliona €');

-- --------------------------------------------------------

--
-- Table structure for table `lekar`
--

CREATE TABLE `lekar` (
  `lekar_id` varchar(20) NOT NULL,
  `iskustvo` varchar(20) NOT NULL,
  `ime_i_prezime1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lekar`
--

INSERT INTO `lekar` (`lekar_id`, `iskustvo`, `ime_i_prezime1`) VALUES
('alb-medic', '4 godina', 'murhen alon'),
('cz-medic', '24 godina', 'gojko makic'),
('zalg-medic', '17 godina', 'onulus mrkos');

-- --------------------------------------------------------

--
-- Table structure for table `trener`
--

CREATE TABLE `trener` (
  `trener_id` varchar(20) NOT NULL,
  `iskustvo` varchar(20) NOT NULL,
  `ime_i_prezime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trener`
--

INSERT INTO `trener` (`trener_id`, `iskustvo`, `ime_i_prezime`) VALUES
('barc-rg', '5 godina', 'rozer grimau'),
('cz-di', '10 godina', 'dusko ivanovic'),
('par-zo', '20 godina', 'zeljko obradovic'),
('rma-csm', '8 godina', 'cus mateo');

-- --------------------------------------------------------

--
-- Table structure for table `utakmica`
--

CREATE TABLE `utakmica` (
  `broj_utakmice` varchar(20) NOT NULL,
  `hala` varchar(20) NOT NULL,
  `lokacija` varchar(20) NOT NULL,
  `datum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utakmica`
--

INSERT INTO `utakmica` (`broj_utakmice`, `hala`, `lokacija`, `datum`) VALUES
('11 kolo', 'strark arena', 'brograd1', '25 oktobar'),
('16 kolo', 'pionir', 'brograd', '4 januar'),
('18 kolo', 'nikos galis', 'atina', '16 januar'),
('20 kolo', 'saski baskonia', 'viktorija', '1 februar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igrac`
--
ALTER TABLE `igrac`
  ADD PRIMARY KEY (`igrac_id`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`naziv`);

--
-- Indexes for table `lekar`
--
ALTER TABLE `lekar`
  ADD PRIMARY KEY (`lekar_id`);

--
-- Indexes for table `trener`
--
ALTER TABLE `trener`
  ADD PRIMARY KEY (`trener_id`);

--
-- Indexes for table `utakmica`
--
ALTER TABLE `utakmica`
  ADD PRIMARY KEY (`broj_utakmice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
