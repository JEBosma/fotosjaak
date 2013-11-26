-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 26 nov 2013 om 10:00
-- Serverversie: 5.6.12-log
-- PHP-versie: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `am1a-fotosjaak`
--
CREATE DATABASE IF NOT EXISTS `am1a-fotosjaak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1a-fotosjaak`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_english` text NOT NULL,
  `question_dutch` text NOT NULL,
  `answer_english` text NOT NULL,
  `answer_dutch` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `faq`
--

INSERT INTO `faq` (`id`, `question_english`, `question_dutch`, `answer_english`, `answer_dutch`) VALUES
(1, 'Is this game hard to play?', 'Is dit een moeilijke spel om te spelen?', 'No, this game isn''t hard to play!', 'Nee, dit spel is niet moeilijk om te spelen!'),
(2, 'When is this game completed?', 'Wanneer heb je dit spel uitgespeeld?', 'The game is a never ending experience!\r\nFull of joy and plessure!', 'De game komt nooit ten einde!\r\nHet maakt je dag weer mooi!'),
(3, 'Is this game hard to play?', 'Is dit een moeilijke spel om te spelen?', 'No, this game isn''t hard to play!', 'Nee, dit spel is niet moeilijk om te spelen!'),
(4, 'When is this game completed?', 'Wanneer heb je dit spel uitgespeeld?', 'The game is a never ending experience!\r\nFull of joy and plessure!', 'De game komt nooit ten einde!\r\nHet maakt je dag weer mooi!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `addressnumber` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `mobilephonenumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `housenumber` varchar(5) NOT NULL,
  `hometown` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `favorite_gamekind` varchar(100) NOT NULL,
  `favorite_game` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userrole` enum('admin','root','customer') NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `surname`, `street`, `housenumber`, `hometown`, `zipcode`, `date_of_birth`, `sex`, `marital_status`, `favorite_gamekind`, `favorite_game`, `email`, `password`, `userrole`) VALUES
(1, 'Arjan', 'de', 'Ruijter', '', '0', '', '', '0000-00-00', 'male', '', '', '', '', '', 'customer'),
(3, 'Harry', 'van', 'Hoof', '', '0', '', '', '0000-00-00', 'male', '', '', '', '', '', 'customer'),
(9, 'Jaco', '', 'Bosma', 'Sierkersstraat', '9', 'Woerden', '3442 GR', '2013-09-09', 'male', 'unmarried', '3', 'Assassins creed', 'jaco.bosma@xs4all.nl', 'Sabrina1', 'customer'),
(12, 'root', 'de', 'root', 'rootstraat', '9', 'roottown', '1993RT', '2013-09-09', 'male', 'unmarried', '1', 'root', 'root@root.com', 'Sabrina1', 'root'),
(13, 'admin', 'de', 'admin', 'adminstraat', '8', 'admintown', '1003AD', '2013-09-09', 'male', 'married', '1', 'admin', 'admin@admin.com', 'Sabrina1', 'admin'),
(14, 'Jacco', '', 'Bosman', 'Sierkerssstraat', '91', 'Woerden', '3443 GR', '2013-09-09', 'male', 'unmarried', '1', 'GTA', 'jaco@hotmail.com', 'Sabrina1', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
