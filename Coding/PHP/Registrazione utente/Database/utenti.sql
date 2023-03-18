-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 17, 2023 alle 12:00
-- Versione del server: 10.1.38-MariaDB
-- Versione PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utenze`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `ID` int(11) NOT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `provincia` varchar(4) DEFAULT NULL,
  `password` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`ID`, `cognome`, `nome`, `email`, `telefono`, `citta`, `provincia`, `password`) VALUES
(1, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(2, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(3, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(4, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(5, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(6, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(7, 'Baudo', 'Aldo', 'pippo.baudo@gmail.com', '+39 321 547 8796', 'Roma', 'RM', ''),
(8, 'Savo', 'Valerio', 'savo.valerio@libero.it', '+39 3271548796', 'Roma', 'RM', '$2y$10$0WKlvtuajquy1IXeMrClFOHqjv/UFUZT2t5J3o3qmxA7zWc7EaK96');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
