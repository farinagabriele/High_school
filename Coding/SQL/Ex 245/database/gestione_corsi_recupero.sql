-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 09:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestione_corsi_recupero`
--

-- --------------------------------------------------------

--
-- Table structure for table `docente`
--

CREATE TABLE `docente` (
  `cod_docente` char(5) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `citta_nascita` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `cod_materia` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `docente`
--

INSERT INTO `docente` (`cod_docente`, `nome`, `cognome`, `data_nascita`, `citta_nascita`, `email`, `cod_materia`) VALUES
('ER012', 'Silvio', 'Rossi', '1968-05-12', 'Roma', 'silvio.rossi@libero.it', '0012'),
('KL984', 'Marco', 'Giacomini', '1972-09-12', 'Roma', 'marco.giacomini@gmail.com', '0519'),
('LM972', 'Elena', 'Bianchi', '1980-08-18', 'Roma', 'elena.bianchi@gmail.com', '0962'),
('PU318', 'Silvia', 'Bonaccorso', '1982-05-12', 'Roma', 'silvia.bonaccorso@gmail.com', '0634'),
('UJ032', 'Luca', 'Filiberti', '1970-04-22', 'Roma', 'luca.filiberti@gmail.com', '0342');

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

CREATE TABLE `materia` (
  `cod_materia` char(4) NOT NULL,
  `descrizione` varchar(30) NOT NULL,
  `n_ore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materia`
--

INSERT INTO `materia` (`cod_materia`, `descrizione`, `n_ore`) VALUES
('0012', 'Matematica', 4),
('0342', 'Informatica', 6),
('0519', 'Inglese', 3),
('0634', 'Sistemi e reti', 4),
('0962', 'Fisica', 3);

-- --------------------------------------------------------

--
-- Table structure for table `prova`
--

CREATE TABLE `prova` (
  `cod_prova` char(7) NOT NULL,
  `voto` decimal(4,2) NOT NULL,
  `data_prova` date NOT NULL,
  `matricola` char(5) DEFAULT NULL,
  `cod_materia` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prova`
--

INSERT INTO `prova` (`cod_prova`, `voto`, `data_prova`, `matricola`, `cod_materia`) VALUES
('AD00231', '4.00', '2023-01-20', 'A0012', '0012'),
('AD00961', '3.00', '2022-09-20', 'A0984', '0519'),
('AD00963', '2.00', '2023-01-27', 'G0318', '0012'),
('AD00993', '7.00', '2023-02-27', 'G0318', '0012'),
('GR00651', '7.00', '2023-02-07', 'B9032', '0012'),
('RT00261', '8.00', '2022-10-20', 'E0972', '0962');

-- --------------------------------------------------------

--
-- Table structure for table `studente`
--

CREATE TABLE `studente` (
  `matricola` char(5) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `data_nascita` date DEFAULT NULL,
  `citta_nascita` varchar(30) DEFAULT NULL,
  `indirizzo` varchar(40) DEFAULT NULL,
  `classe` varchar(10) NOT NULL,
  `sezione` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studente`
--

INSERT INTO `studente` (`matricola`, `nome`, `cognome`, `data_nascita`, `citta_nascita`, `indirizzo`, `classe`, `sezione`) VALUES
('A0012', 'Valerio', 'Lalli', '2004-05-12', 'Roma', 'Via della grande muraglia 13', 'quinta', 'H'),
('A0984', 'Marco', 'Lalli', '2006-09-12', 'Roma', 'Via della grande muraglia 13', 'terza', 'L'),
('B9032', 'Luca', 'Montale', '2006-04-22', 'Roma', 'Via di Decima 20', 'terza', 'I'),
('E0972', 'Elena', 'Laurenti', '2004-08-18', 'Roma', 'Via dell\'oceano Indiano 7', 'quinta', 'F'),
('G0318', 'Silvia', 'Di Pasquale', '2004-05-12', 'Roma', 'Via Ostiense 18', 'quinta', 'E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`cod_docente`),
  ADD KEY `cod_materia` (`cod_materia`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`cod_materia`);

--
-- Indexes for table `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`cod_prova`),
  ADD KEY `matricola` (`matricola`),
  ADD KEY `cod_materia` (`cod_materia`);

--
-- Indexes for table `studente`
--
ALTER TABLE `studente`
  ADD PRIMARY KEY (`matricola`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`cod_materia`) REFERENCES `materia` (`cod_materia`);

--
-- Constraints for table `prova`
--
ALTER TABLE `prova`
  ADD CONSTRAINT `prova_ibfk_1` FOREIGN KEY (`matricola`) REFERENCES `studente` (`matricola`),
  ADD CONSTRAINT `prova_ibfk_2` FOREIGN KEY (`cod_materia`) REFERENCES `materia` (`cod_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
