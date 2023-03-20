-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 05:35 PM
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
-- Database: `gestione_home_banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `conti`
--

CREATE TABLE `conti` (
  `NumeroConto` int(11) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `DataNascita` date NOT NULL,
  `CodiceFiscale` varchar(16) NOT NULL,
  `password` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conti`
--

INSERT INTO `conti` (`NumeroConto`, `Cognome`, `Nome`, `DataNascita`, `CodiceFiscale`, `password`) VALUES
(1, 'Pippo', 'Baudo', '1999-02-12', 'BDUPPI99B12H501U', '$2y$10$eatQ5pTt3JujYm8w73XP2OqMY5WUFPTmdCCsHr/e9EzmeRe6tvjmK');

-- --------------------------------------------------------

--
-- Table structure for table `movimenti`
--

CREATE TABLE `movimenti` (
  `ID` int(11) NOT NULL,
  `DataRegistrazione` date NOT NULL,
  `CreditoDebito` enum('credito','debito') NOT NULL DEFAULT 'debito',
  `Causale` varchar(50) NOT NULL,
  `Importo` decimal(10,2) NOT NULL,
  `NumeroConto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movimenti`
--

INSERT INTO `movimenti` (`ID`, `DataRegistrazione`, `CreditoDebito`, `Causale`, `Importo`, `NumeroConto`) VALUES
(1, '2019-01-01', 'debito', 'imposta', '-100.00', 1),
(2, '2019-06-02', 'credito', 'Causale 2', '200.00', 1),
(3, '2019-03-03', 'credito', 'imposte', '300.00', 1),
(4, '2019-02-04', 'credito', 'Causale 4', '400.00', 1),
(5, '2019-01-05', 'debito', 'Causale 5', '-500.00', 1),
(6, '2019-03-06', 'credito', 'imposta', '600.00', 1),
(7, '2019-06-07', 'debito', 'Causale 7', '-700.00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conti`
--
ALTER TABLE `conti`
  ADD PRIMARY KEY (`NumeroConto`);

--
-- Indexes for table `movimenti`
--
ALTER TABLE `movimenti`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NumeroConto` (`NumeroConto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conti`
--
ALTER TABLE `conti`
  MODIFY `NumeroConto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movimenti`
--
ALTER TABLE `movimenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movimenti`
--
ALTER TABLE `movimenti`
  ADD CONSTRAINT `movimenti_ibfk_1` FOREIGN KEY (`NumeroConto`) REFERENCES `conti` (`NumeroConto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
