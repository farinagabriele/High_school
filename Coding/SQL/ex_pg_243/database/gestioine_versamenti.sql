-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 08:06 PM
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
-- Database: `gestioine_versamenti`
--

-- --------------------------------------------------------

--
-- Table structure for table `azienda`
--

CREATE TABLE `azienda` (
  `codice` char(10) NOT NULL,
  `denominazione` varchar(40) NOT NULL,
  `comune` varchar(30) DEFAULT NULL,
  `indirizzo` varchar(40) DEFAULT NULL,
  `settore` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `azienda`
--

INSERT INTO `azienda` (`codice`, `denominazione`, `comune`, `indirizzo`, `settore`) VALUES
('ABR1423537', 'NetGroup s.r.l.', 'Roma', 'Via Venezia 28', 'ICT'),
('ABR9632458', 'Management and consulting s.r.l.', 'Roma', NULL, 'consulting'),
('GRF1423279', 'Microsoft s.p.a.', 'Roma', 'Via dell\'Oceano Indiano 25', 'ICT'),
('RAS1423512', 'IBM s.p.a.', 'Roma', 'Via Fiera di Roma 18', 'ICT'),
('TRE6513537', 'Accenture s.p.a.', 'Roma', NULL, 'ICT, consulting');

-- --------------------------------------------------------

--
-- Table structure for table `dipendente`
--

CREATE TABLE `dipendente` (
  `matricola` char(5) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `l_nascita` varchar(30) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `n_fam` int(11) DEFAULT NULL,
  `reddito_lordo` float(8,2) DEFAULT NULL,
  `totTratt` float(8,2) DEFAULT NULL,
  `professione` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dipendente`
--

INSERT INTO `dipendente` (`matricola`, `cognome`, `nome`, `l_nascita`, `data_nascita`, `n_fam`, `reddito_lordo`, `totTratt`, `professione`) VALUES
('A1001', 'Polo', 'Marco', 'Roma', '1990-05-20', 4, 40585.90, 12000.00, 'Computer Science Engineer'),
('A1802', 'Rossi', 'Giuseppe', 'Bologna', '1985-08-20', 2, 80985.90, 29020.30, 'Project Manager'),
('B9061', 'Placido', 'Riccardo', 'Milano', '1998-04-28', 3, 20000.50, 6023.61, 'Sistemista'),
('C2301', 'Renzi', 'Giovanna', 'Torino', '1999-05-18', 0, 30285.90, 8800.32, 'UX designer'),
('Z9601', 'Marino', 'Giulia', 'Napoli', '1975-09-10', 1, 27065.80, 12000.00, 'Segretaria');

-- --------------------------------------------------------

--
-- Table structure for table `versamento`
--

CREATE TABLE `versamento` (
  `id` int(11) NOT NULL,
  `importo` float(8,2) NOT NULL,
  `data_versamento` date NOT NULL,
  `periodo` varchar(20) DEFAULT NULL,
  `matricola` char(5) DEFAULT NULL,
  `codice` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `versamento`
--

INSERT INTO `versamento` (`id`, `importo`, `data_versamento`, `periodo`, `matricola`, `codice`) VALUES
(1, 3000.00, '2022-05-18', 'Secondo trimestre', 'A1001', 'GRF1423279'),
(2, 1432.12, '2022-02-12', 'Primo trimestre', 'B9061', 'GRF1423279'),
(3, 2023.14, '2022-08-12', 'Terzo trimestre', 'C2301', 'TRE6513537'),
(4, 7020.84, '2022-07-22', 'Terzo trimestre', 'A1802', 'RAS1423512'),
(5, 2530.12, '2022-01-15', 'Primo trimestre', 'A1001', 'GRF1423279');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `azienda`
--
ALTER TABLE `azienda`
  ADD PRIMARY KEY (`codice`);

--
-- Indexes for table `dipendente`
--
ALTER TABLE `dipendente`
  ADD PRIMARY KEY (`matricola`);

--
-- Indexes for table `versamento`
--
ALTER TABLE `versamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codice` (`codice`),
  ADD KEY `matricola` (`matricola`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `versamento`
--
ALTER TABLE `versamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `versamento`
--
ALTER TABLE `versamento`
  ADD CONSTRAINT `versamento_ibfk_1` FOREIGN KEY (`codice`) REFERENCES `azienda` (`codice`),
  ADD CONSTRAINT `versamento_ibfk_2` FOREIGN KEY (`matricola`) REFERENCES `dipendente` (`matricola`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
