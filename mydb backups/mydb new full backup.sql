-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2019 at 08:14 AM
-- Server version: 8.0.13
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `absente`
--

CREATE TABLE `absente` (
  `idAbsenta` int(11) NOT NULL,
  `Cursuri_idCurs` varchar(3) NOT NULL,
  `Elevi_idElev` int(11) NOT NULL,
  `dataAbsenta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clase`
--

CREATE TABLE `clase` (
  `idClasa` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clase`
--

INSERT INTO `clase` (`idClasa`) VALUES
('11A'),
('11D'),
('11F'),
('12B');

-- --------------------------------------------------------

--
-- Table structure for table `cursuri`
--

CREATE TABLE `cursuri` (
  `idCurs` varchar(3) NOT NULL,
  `numeCurs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cursuri`
--

INSERT INTO `cursuri` (`idCurs`, `numeCurs`) VALUES
('BIO', 'Biologie'),
('CHI', 'Chimie'),
('EDA', 'Ed. Antreprenoriala'),
('EDF', 'Ed. Fizica'),
('EDM', 'Ed. Muzicala'),
('EDP', 'Ed. Plastica'),
('EN', 'Lb. Engleza'),
('FIZ', 'Fizica'),
('FR', 'Lb. Franceza'),
('GEO', 'Geografie'),
('INF', 'Informatica'),
('IST', 'Istorie'),
('MAT', 'Matematica'),
('PUR', 'Purtare'),
('REL', 'Religie'),
('RO', 'Lb. Romana'),
('SSU', 'Stiinte Socio-Umane'),
('TIC', 'Teh. Info. si Com.');

-- --------------------------------------------------------

--
-- Table structure for table `elevi`
--

CREATE TABLE `elevi` (
  `idElev` int(11) NOT NULL,
  `numeElev` varchar(30) NOT NULL,
  `orasElev` varchar(25) NOT NULL,
  `sexElev` varchar(5) NOT NULL,
  `tlfElev` varchar(13) DEFAULT NULL,
  `birthdayElev` date NOT NULL,
  `Clase_idClasa` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elevi`
--

INSERT INTO `elevi` (`idElev`, `numeElev`, `orasElev`, `sexElev`, `tlfElev`, `birthdayElev`, `Clase_idClasa`) VALUES
(1, 'Radoi Andrei', 'Giurgiu', 'Baiat', '0747582938', '2001-03-04', '12B'),
(2, 'Ene Alexandra', 'Giurgiu', 'Fata', '0727384957', '2000-12-08', '12B'),
(3, 'Vlad Ioan', 'Bucuresti', 'Baiat', '0792839485', '2000-08-29', '12B'),
(4, 'Giulesteanu Andrei', 'Bucuresti', 'Baiat', '0792837502', '2000-07-21', '12B'),
(5, 'Voicu Anda', 'Bucuresti', 'Fata', '0792860286', '2000-08-24', '12B'),
(6, 'Carstea Laura', 'Bucuresti', 'Fata', '0739482938', '2001-12-09', '11D'),
(7, 'Manole Mara', 'Bucuresti', 'Fata', '0792583734', '2001-07-24', '11D'),
(8, 'Sandu Stefan', 'Giurgiu', 'Baiat', '0728394859', '2001-07-05', '11D'),
(9, 'Mircea Cosmina', 'Giurgiu', 'Fata', '0729492863', '2001-09-06', '11D'),
(10, 'Radu Stefania', 'Giurgiu', 'Fata', '0792869389', '2001-08-03', '11D'),
(11, 'Zlate Andreea', 'Giurgiu', 'Fata', '0792869384', '2000-11-28', '11A'),
(12, 'Bratu Izabela', 'Bucuresti', 'Fata', '0792856738', '2001-09-25', '11A'),
(13, 'Spiridon Alexandra', 'Dambovita', 'Fata', '0729384958', '2000-11-25', '11F'),
(14, 'Alexe Elisa', 'Bucuresti', 'Fata', '0792819385', '2000-08-06', '11F'),
(15, 'Cazaciuc Valentin', 'Bucuresti', 'Baiat', '0759287694', '2000-10-09', '11F'),
(16, 'Stan Irina', 'Bucuresti', 'Fata', '0729683968', '2001-01-22', '11F'),
(17, 'Botea Liviu', 'Giurgiu', 'Baiat', '0769384969', '2001-03-10', '11F'),
(18, 'Chirila Catalin', 'Bucuresti', 'Baiat', '0758293859', '2001-06-29', '11A'),
(19, 'Ciobanu David', 'Bucuresti', 'Baiat', '0719682393', '2000-09-18', '11A'),
(20, 'Badea Nicoleta', 'Giurgiu', 'Fata', '0754928692', '2000-01-26', '11A');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `idNota` int(11) NOT NULL,
  `Elevi_idElev` int(11) NOT NULL,
  `Cursuri_idCurs` varchar(3) NOT NULL,
  `nota` int(11) DEFAULT NULL,
  `teza` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`idNota`, `Elevi_idElev`, `Cursuri_idCurs`, `nota`, `teza`) VALUES
(1, 1, 'BIO', 10, NULL),
(2, 1, 'BIO', 6, NULL),
(3, 1, 'BIO', 7, NULL),
(4, 1, 'CHI', 7, NULL),
(5, 1, 'CHI', 9, NULL),
(6, 1, 'CHI', 9, NULL),
(7, 1, 'EDA', 10, NULL),
(8, 1, 'EDA', 8, NULL),
(9, 1, 'EDA', 7, NULL),
(10, 1, 'EDF', 8, NULL),
(11, 1, 'EDF', 6, NULL),
(12, 1, 'EDF', 8, NULL),
(13, 1, 'EDM', 7, NULL),
(14, 1, 'EDM', 8, NULL),
(15, 1, 'EDM', 8, NULL),
(16, 1, 'EDP', 9, NULL),
(17, 1, 'EDP', 7, NULL),
(18, 1, 'EDP', 8, NULL),
(19, 1, 'EN', 6, NULL),
(20, 1, 'EN', 8, NULL),
(21, 1, 'EN', 9, NULL),
(22, 1, 'FIZ', 10, NULL),
(23, 1, 'FIZ', 8, NULL),
(24, 1, 'FIZ', 6, NULL),
(25, 1, 'FR', 6, NULL),
(26, 1, 'FR', 5, NULL),
(27, 1, 'FR', 8, NULL),
(28, 1, 'GEO', 4, NULL),
(29, 1, 'GEO', 5, NULL),
(30, 1, 'GEO', 8, NULL),
(31, 1, 'INF', 8, NULL),
(32, 1, 'INF', 7, NULL),
(33, 1, 'INF', 7, NULL),
(34, 1, 'IST', 5, NULL),
(35, 1, 'IST', 5, NULL),
(36, 1, 'IST', 4, NULL),
(37, 1, 'MAT', 8, NULL),
(38, 1, 'MAT', 2, NULL),
(39, 1, 'MAT', 6, NULL),
(40, 1, 'MAT', 4, NULL),
(41, 1, 'MAT', 10, NULL),
(42, 1, 'MAT', NULL, 9),
(43, 1, 'PUR', 10, NULL),
(44, 1, 'REL', 6, NULL),
(45, 1, 'REL', 6, NULL),
(46, 1, 'REL', 5, NULL),
(47, 1, 'RO', 2, NULL),
(48, 1, 'RO', 10, NULL),
(49, 1, 'RO', 10, NULL),
(50, 1, 'RO', 2, NULL),
(51, 1, 'RO', 2, NULL),
(52, 1, 'RO', NULL, 7),
(53, 1, 'SSU', 8, NULL),
(54, 1, 'SSU', 4, NULL),
(55, 1, 'SSU', 10, NULL),
(56, 1, 'TIC', 4, NULL),
(57, 1, 'TIC', 9, NULL),
(58, 1, 'TIC', 6, NULL),
(59, 1, 'INF', NULL, 8),
(60, 1, 'CHI', NULL, 5),
(61, 2, 'BIO', 6, NULL),
(62, 2, 'BIO', 10, NULL),
(63, 2, 'BIO', 4, NULL),
(64, 2, 'CHI', 6, NULL),
(65, 2, 'CHI', 4, NULL),
(66, 2, 'CHI', 5, NULL),
(67, 2, 'EDA', 7, NULL),
(68, 2, 'EDA', 7, NULL),
(69, 2, 'EDA', 6, NULL),
(70, 2, 'EDF', 10, NULL),
(71, 2, 'EDF', 4, NULL),
(72, 2, 'EDF', 8, NULL),
(73, 2, 'EDM', 7, NULL),
(74, 2, 'EDM', 7, NULL),
(75, 2, 'EDM', 8, NULL),
(76, 2, 'EDP', 8, NULL),
(77, 2, 'EDP', 4, NULL),
(78, 2, 'EDP', 10, NULL),
(79, 2, 'EN', 9, NULL),
(80, 2, 'EN', 6, NULL),
(81, 2, 'EN', 9, NULL),
(82, 2, 'FIZ', 10, NULL),
(83, 2, 'FIZ', 10, NULL),
(84, 2, 'FIZ', 8, NULL),
(85, 2, 'FR', 6, NULL),
(86, 2, 'FR', 5, NULL),
(87, 2, 'FR', 8, NULL),
(88, 2, 'GEO', 8, NULL),
(89, 2, 'GEO', 8, NULL),
(90, 2, 'GEO', 7, NULL),
(91, 2, 'INF', 9, NULL),
(92, 2, 'INF', 8, NULL),
(93, 2, 'INF', 9, NULL),
(94, 2, 'IST', 6, NULL),
(95, 2, 'IST', 9, NULL),
(96, 2, 'IST', 10, NULL),
(97, 2, 'MAT', 10, NULL),
(98, 2, 'MAT', 5, NULL),
(99, 2, 'MAT', 8, NULL),
(100, 2, 'MAT', 6, NULL),
(101, 2, 'MAT', 10, NULL),
(102, 2, 'MAT', NULL, 4),
(103, 2, 'PUR', 10, NULL),
(104, 2, 'REL', 5, NULL),
(105, 2, 'REL', 9, NULL),
(106, 2, 'REL', 4, NULL),
(107, 2, 'RO', 8, NULL),
(108, 2, 'RO', 5, NULL),
(109, 2, 'RO', 9, NULL),
(110, 2, 'RO', 7, NULL),
(111, 2, 'RO', 6, NULL),
(112, 2, 'RO', NULL, 6),
(113, 2, 'SSU', 9, NULL),
(114, 2, 'SSU', 6, NULL),
(115, 2, 'SSU', 7, NULL),
(116, 2, 'TIC', 8, NULL),
(117, 2, 'TIC', 5, NULL),
(118, 2, 'TIC', 5, NULL),
(119, 2, 'INF', NULL, 9),
(120, 2, 'BIO', NULL, 10),
(121, 3, 'BIO', 4, NULL),
(122, 3, 'BIO', 6, NULL),
(123, 3, 'BIO', 7, NULL),
(124, 3, 'CHI', 9, NULL),
(125, 3, 'CHI', 4, NULL),
(126, 3, 'CHI', 8, NULL),
(127, 3, 'EDA', 7, NULL),
(128, 3, 'EDA', 10, NULL),
(129, 3, 'EDA', 10, NULL),
(130, 3, 'EDF', 5, NULL),
(131, 3, 'EDF', 10, NULL),
(132, 3, 'EDF', 6, NULL),
(133, 3, 'EDM', 7, NULL),
(134, 3, 'EDM', 7, NULL),
(135, 3, 'EDM', 4, NULL),
(136, 3, 'EDP', 8, NULL),
(137, 3, 'EDP', 5, NULL),
(138, 3, 'EDP', 9, NULL),
(139, 3, 'EN', 4, NULL),
(140, 3, 'EN', 5, NULL),
(141, 3, 'EN', 4, NULL),
(142, 3, 'FIZ', 6, NULL),
(143, 3, 'FIZ', 5, NULL),
(144, 3, 'FIZ', 7, NULL),
(145, 3, 'FR', 7, NULL),
(146, 3, 'FR', 6, NULL),
(147, 3, 'FR', 7, NULL),
(148, 3, 'GEO', 5, NULL),
(149, 3, 'GEO', 6, NULL),
(150, 3, 'GEO', 6, NULL),
(151, 3, 'INF', 5, NULL),
(152, 3, 'INF', 6, NULL),
(153, 3, 'INF', 4, NULL),
(154, 3, 'IST', 7, NULL),
(155, 3, 'IST', 5, NULL),
(156, 3, 'IST', 9, NULL),
(157, 3, 'MAT', 10, NULL),
(158, 3, 'MAT', 8, NULL),
(159, 3, 'MAT', 10, NULL),
(160, 3, 'MAT', 6, NULL),
(161, 3, 'MAT', 8, NULL),
(162, 3, 'MAT', NULL, 6),
(163, 3, 'PUR', 10, NULL),
(164, 3, 'REL', 9, NULL),
(165, 3, 'REL', 8, NULL),
(166, 3, 'REL', 9, NULL),
(167, 3, 'RO', 4, NULL),
(168, 3, 'RO', 4, NULL),
(169, 3, 'RO', 3, NULL),
(170, 3, 'RO', 7, NULL),
(171, 3, 'RO', 4, NULL),
(172, 3, 'RO', NULL, 5),
(173, 3, 'SSU', 5, NULL),
(174, 3, 'SSU', 7, NULL),
(175, 3, 'SSU', 8, NULL),
(176, 3, 'TIC', 8, NULL),
(177, 3, 'TIC', 5, NULL),
(178, 3, 'TIC', 9, NULL),
(179, 3, 'INF', NULL, 5),
(180, 3, 'BIO', NULL, 6),
(181, 4, 'BIO', 7, NULL),
(182, 4, 'BIO', 8, NULL),
(183, 4, 'BIO', 5, NULL),
(184, 4, 'CHI', 4, NULL),
(185, 4, 'CHI', 4, NULL),
(186, 4, 'CHI', 4, NULL),
(187, 4, 'EDA', 8, NULL),
(188, 4, 'EDA', 10, NULL),
(189, 4, 'EDA', 9, NULL),
(190, 4, 'EDF', 7, NULL),
(191, 4, 'EDF', 5, NULL),
(192, 4, 'EDF', 9, NULL),
(193, 4, 'EDM', 10, NULL),
(194, 4, 'EDM', 6, NULL),
(195, 4, 'EDM', 10, NULL),
(196, 4, 'EDP', 4, NULL),
(197, 4, 'EDP', 9, NULL),
(198, 4, 'EDP', 4, NULL),
(199, 4, 'EN', 7, NULL),
(200, 4, 'EN', 7, NULL),
(201, 4, 'EN', 8, NULL),
(202, 4, 'FIZ', 8, NULL),
(203, 4, 'FIZ', 5, NULL),
(204, 4, 'FIZ', 9, NULL),
(205, 4, 'FR', 9, NULL),
(206, 4, 'FR', 4, NULL),
(207, 4, 'FR', 4, NULL),
(208, 4, 'GEO', 6, NULL),
(209, 4, 'GEO', 6, NULL),
(210, 4, 'GEO', 5, NULL),
(211, 4, 'INF', 10, NULL),
(212, 4, 'INF', 10, NULL),
(213, 4, 'INF', 7, NULL),
(214, 4, 'IST', 4, NULL),
(215, 4, 'IST', 5, NULL),
(216, 4, 'IST', 9, NULL),
(217, 4, 'MAT', 8, NULL),
(218, 4, 'MAT', 10, NULL),
(219, 4, 'MAT', 7, NULL),
(220, 4, 'MAT', 7, NULL),
(221, 4, 'MAT', 9, NULL),
(222, 4, 'MAT', NULL, 8),
(223, 4, 'PUR', 10, NULL),
(224, 4, 'REL', 10, NULL),
(225, 4, 'REL', 7, NULL),
(226, 4, 'REL', 4, NULL),
(227, 4, 'RO', 4, NULL),
(228, 4, 'RO', 4, NULL),
(229, 4, 'RO', 7, NULL),
(230, 4, 'RO', 4, NULL),
(231, 4, 'RO', 4, NULL),
(232, 4, 'RO', NULL, 6),
(233, 4, 'SSU', 9, NULL),
(234, 4, 'SSU', 8, NULL),
(235, 4, 'SSU', 5, NULL),
(236, 4, 'TIC', 7, NULL),
(237, 4, 'TIC', 4, NULL),
(238, 4, 'TIC', 10, NULL),
(239, 4, 'INF', NULL, 5),
(240, 4, 'CHI', NULL, 10),
(241, 5, 'BIO', 5, NULL),
(242, 5, 'BIO', 9, NULL),
(243, 5, 'BIO', 8, NULL),
(244, 5, 'CHI', 8, NULL),
(245, 5, 'CHI', 6, NULL),
(246, 5, 'CHI', 5, NULL),
(247, 5, 'EDA', 9, NULL),
(248, 5, 'EDA', 5, NULL),
(249, 5, 'EDA', 5, NULL),
(250, 5, 'EDF', 10, NULL),
(251, 5, 'EDF', 10, NULL),
(252, 5, 'EDF', 10, NULL),
(253, 5, 'EDM', 6, NULL),
(254, 5, 'EDM', 10, NULL),
(255, 5, 'EDM', 4, NULL),
(256, 5, 'EDP', 6, NULL),
(257, 5, 'EDP', 5, NULL),
(258, 5, 'EDP', 6, NULL),
(259, 5, 'EN', 5, NULL),
(260, 5, 'EN', 7, NULL),
(261, 5, 'EN', 10, NULL),
(262, 5, 'FIZ', 5, NULL),
(263, 5, 'FIZ', 5, NULL),
(264, 5, 'FIZ', 10, NULL),
(265, 5, 'FR', 7, NULL),
(266, 5, 'FR', 5, NULL),
(267, 5, 'FR', 8, NULL),
(268, 5, 'GEO', 8, NULL),
(269, 5, 'GEO', 10, NULL),
(270, 5, 'GEO', 9, NULL),
(271, 5, 'INF', 4, NULL),
(272, 5, 'INF', 7, NULL),
(273, 5, 'INF', 4, NULL),
(274, 5, 'IST', 4, NULL),
(275, 5, 'IST', 6, NULL),
(276, 5, 'IST', 9, NULL),
(277, 5, 'MAT', 3, NULL),
(278, 5, 'MAT', 7, NULL),
(279, 5, 'MAT', 9, NULL),
(280, 5, 'MAT', 9, NULL),
(281, 5, 'MAT', 10, NULL),
(282, 5, 'MAT', NULL, 10),
(283, 5, 'PUR', 10, NULL),
(284, 5, 'REL', 10, NULL),
(285, 5, 'REL', 7, NULL),
(286, 5, 'REL', 7, NULL),
(287, 5, 'RO', 9, NULL),
(288, 5, 'RO', 6, NULL),
(289, 5, 'RO', 10, NULL),
(290, 5, 'RO', 8, NULL),
(291, 5, 'RO', 2, NULL),
(292, 5, 'RO', NULL, 5),
(293, 5, 'SSU', 6, NULL),
(294, 5, 'SSU', 9, NULL),
(295, 5, 'SSU', 5, NULL),
(296, 5, 'TIC', 6, NULL),
(297, 5, 'TIC', 10, NULL),
(298, 5, 'TIC', 8, NULL),
(299, 5, 'INF', NULL, 5),
(300, 5, 'CHI', NULL, 5),
(301, 6, 'BIO', 9, NULL),
(302, 6, 'BIO', 10, NULL),
(303, 6, 'BIO', 7, NULL),
(304, 6, 'CHI', 8, NULL),
(305, 6, 'CHI', 8, NULL),
(306, 6, 'CHI', 9, NULL),
(307, 6, 'EDA', 9, NULL),
(308, 6, 'EDA', 6, NULL),
(309, 6, 'EDA', 8, NULL),
(310, 6, 'EDF', 10, NULL),
(311, 6, 'EDF', 10, NULL),
(312, 6, 'EDF', 5, NULL),
(313, 6, 'EDM', 10, NULL),
(314, 6, 'EDM', 8, NULL),
(315, 6, 'EDM', 4, NULL),
(316, 6, 'EDP', 4, NULL),
(317, 6, 'EDP', 6, NULL),
(318, 6, 'EDP', 9, NULL),
(319, 6, 'EN', 4, NULL),
(320, 6, 'EN', 6, NULL),
(321, 6, 'EN', 7, NULL),
(322, 6, 'FIZ', 4, NULL),
(323, 6, 'FIZ', 6, NULL),
(324, 6, 'FIZ', 9, NULL),
(325, 6, 'FR', 8, NULL),
(326, 6, 'FR', 7, NULL),
(327, 6, 'FR', 7, NULL),
(328, 6, 'GEO', 10, NULL),
(329, 6, 'GEO', 5, NULL),
(330, 6, 'GEO', 9, NULL),
(331, 6, 'INF', 9, NULL),
(332, 6, 'INF', 8, NULL),
(333, 6, 'INF', 8, NULL),
(334, 6, 'IST', 7, NULL),
(335, 6, 'IST', 8, NULL),
(336, 6, 'IST', 7, NULL),
(337, 6, 'MAT', 6, NULL),
(338, 6, 'MAT', 4, NULL),
(339, 6, 'MAT', 6, NULL),
(340, 6, 'MAT', 8, NULL),
(341, 6, 'MAT', 7, NULL),
(342, 6, 'MAT', NULL, 4),
(343, 6, 'PUR', 10, NULL),
(344, 6, 'REL', 7, NULL),
(345, 6, 'REL', 7, NULL),
(346, 6, 'REL', 9, NULL),
(347, 6, 'RO', 4, NULL),
(348, 6, 'RO', 10, NULL),
(349, 6, 'RO', 9, NULL),
(350, 6, 'RO', 3, NULL),
(351, 6, 'RO', 2, NULL),
(352, 6, 'RO', NULL, 10),
(353, 6, 'SSU', 8, NULL),
(354, 6, 'SSU', 8, NULL),
(355, 6, 'SSU', 8, NULL),
(356, 6, 'TIC', 8, NULL),
(357, 6, 'TIC', 4, NULL),
(358, 6, 'TIC', 10, NULL),
(359, 6, 'INF', NULL, 6),
(360, 6, 'FIZ', NULL, 7),
(361, 7, 'BIO', 5, NULL),
(362, 7, 'BIO', 9, NULL),
(363, 7, 'BIO', 4, NULL),
(364, 7, 'CHI', 10, NULL),
(365, 7, 'CHI', 7, NULL),
(366, 7, 'CHI', 10, NULL),
(367, 7, 'EDA', 9, NULL),
(368, 7, 'EDA', 9, NULL),
(369, 7, 'EDA', 4, NULL),
(370, 7, 'EDF', 7, NULL),
(371, 7, 'EDF', 4, NULL),
(372, 7, 'EDF', 4, NULL),
(373, 7, 'EDM', 9, NULL),
(374, 7, 'EDM', 10, NULL),
(375, 7, 'EDM', 10, NULL),
(376, 7, 'EDP', 8, NULL),
(377, 7, 'EDP', 4, NULL),
(378, 7, 'EDP', 10, NULL),
(379, 7, 'EN', 5, NULL),
(380, 7, 'EN', 4, NULL),
(381, 7, 'EN', 9, NULL),
(382, 7, 'FIZ', 7, NULL),
(383, 7, 'FIZ', 8, NULL),
(384, 7, 'FIZ', 8, NULL),
(385, 7, 'FR', 8, NULL),
(386, 7, 'FR', 7, NULL),
(387, 7, 'FR', 8, NULL),
(388, 7, 'GEO', 6, NULL),
(389, 7, 'GEO', 6, NULL),
(390, 7, 'GEO', 8, NULL),
(391, 7, 'INF', 7, NULL),
(392, 7, 'INF', 9, NULL),
(393, 7, 'INF', 6, NULL),
(394, 7, 'IST', 9, NULL),
(395, 7, 'IST', 8, NULL),
(396, 7, 'IST', 9, NULL),
(397, 7, 'MAT', 10, NULL),
(398, 7, 'MAT', 2, NULL),
(399, 7, 'MAT', 10, NULL),
(400, 7, 'MAT', 7, NULL),
(401, 7, 'MAT', 3, NULL),
(402, 7, 'MAT', NULL, 9),
(403, 7, 'PUR', 10, NULL),
(404, 7, 'REL', 5, NULL),
(405, 7, 'REL', 10, NULL),
(406, 7, 'REL', 8, NULL),
(407, 7, 'RO', 9, NULL),
(408, 7, 'RO', 3, NULL),
(409, 7, 'RO', 6, NULL),
(410, 7, 'RO', 8, NULL),
(411, 7, 'RO', 2, NULL),
(412, 7, 'RO', NULL, 4),
(413, 7, 'SSU', 6, NULL),
(414, 7, 'SSU', 6, NULL),
(415, 7, 'SSU', 10, NULL),
(416, 7, 'TIC', 4, NULL),
(417, 7, 'TIC', 10, NULL),
(418, 7, 'TIC', 8, NULL),
(419, 7, 'INF', NULL, 5),
(420, 7, 'FIZ', NULL, 9),
(421, 8, 'BIO', 7, NULL),
(422, 8, 'BIO', 6, NULL),
(423, 8, 'BIO', 8, NULL),
(424, 8, 'CHI', 5, NULL),
(425, 8, 'CHI', 5, NULL),
(426, 8, 'CHI', 9, NULL),
(427, 8, 'EDA', 4, NULL),
(428, 8, 'EDA', 4, NULL),
(429, 8, 'EDA', 7, NULL),
(430, 8, 'EDF', 4, NULL),
(431, 8, 'EDF', 4, NULL),
(432, 8, 'EDF', 7, NULL),
(433, 8, 'EDM', 9, NULL),
(434, 8, 'EDM', 10, NULL),
(435, 8, 'EDM', 4, NULL),
(436, 8, 'EDP', 9, NULL),
(437, 8, 'EDP', 6, NULL),
(438, 8, 'EDP', 6, NULL),
(439, 8, 'EN', 5, NULL),
(440, 8, 'EN', 7, NULL),
(441, 8, 'EN', 10, NULL),
(442, 8, 'FIZ', 9, NULL),
(443, 8, 'FIZ', 9, NULL),
(444, 8, 'FIZ', 10, NULL),
(445, 8, 'FR', 10, NULL),
(446, 8, 'FR', 4, NULL),
(447, 8, 'FR', 10, NULL),
(448, 8, 'GEO', 9, NULL),
(449, 8, 'GEO', 7, NULL),
(450, 8, 'GEO', 6, NULL),
(451, 8, 'INF', 7, NULL),
(452, 8, 'INF', 10, NULL),
(453, 8, 'INF', 4, NULL),
(454, 8, 'IST', 7, NULL),
(455, 8, 'IST', 8, NULL),
(456, 8, 'IST', 10, NULL),
(457, 8, 'MAT', 6, NULL),
(458, 8, 'MAT', 4, NULL),
(459, 8, 'MAT', 2, NULL),
(460, 8, 'MAT', 6, NULL),
(461, 8, 'MAT', 2, NULL),
(462, 8, 'MAT', NULL, 10),
(463, 8, 'PUR', 10, NULL),
(464, 8, 'REL', 8, NULL),
(465, 8, 'REL', 5, NULL),
(466, 8, 'REL', 5, NULL),
(467, 8, 'RO', 5, NULL),
(468, 8, 'RO', 5, NULL),
(469, 8, 'RO', 7, NULL),
(470, 8, 'RO', 9, NULL),
(471, 8, 'RO', 2, NULL),
(472, 8, 'RO', NULL, 10),
(473, 8, 'SSU', 8, NULL),
(474, 8, 'SSU', 5, NULL),
(475, 8, 'SSU', 8, NULL),
(476, 8, 'TIC', 5, NULL),
(477, 8, 'TIC', 10, NULL),
(478, 8, 'TIC', 10, NULL),
(479, 8, 'INF', NULL, 4),
(480, 8, 'FIZ', NULL, 10),
(481, 9, 'BIO', 9, NULL),
(482, 9, 'BIO', 8, NULL),
(483, 9, 'BIO', 4, NULL),
(484, 9, 'CHI', 9, NULL),
(485, 9, 'CHI', 7, NULL),
(486, 9, 'CHI', 10, NULL),
(487, 9, 'EDA', 5, NULL),
(488, 9, 'EDA', 4, NULL),
(489, 9, 'EDA', 4, NULL),
(490, 9, 'EDF', 8, NULL),
(491, 9, 'EDF', 10, NULL),
(492, 9, 'EDF', 6, NULL),
(493, 9, 'EDM', 6, NULL),
(494, 9, 'EDM', 7, NULL),
(495, 9, 'EDM', 5, NULL),
(496, 9, 'EDP', 9, NULL),
(497, 9, 'EDP', 4, NULL),
(498, 9, 'EDP', 9, NULL),
(499, 9, 'EN', 10, NULL),
(500, 9, 'EN', 4, NULL),
(501, 9, 'EN', 8, NULL),
(502, 9, 'FIZ', 9, NULL),
(503, 9, 'FIZ', 9, NULL),
(504, 9, 'FIZ', 8, NULL),
(505, 9, 'FR', 8, NULL),
(506, 9, 'FR', 8, NULL),
(507, 9, 'FR', 10, NULL),
(508, 9, 'GEO', 4, NULL),
(509, 9, 'GEO', 4, NULL),
(510, 9, 'GEO', 10, NULL),
(511, 9, 'INF', 9, NULL),
(512, 9, 'INF', 9, NULL),
(513, 9, 'INF', 9, NULL),
(514, 9, 'IST', 10, NULL),
(515, 9, 'IST', 8, NULL),
(516, 9, 'IST', 5, NULL),
(517, 9, 'MAT', 8, NULL),
(518, 9, 'MAT', 7, NULL),
(519, 9, 'MAT', 9, NULL),
(520, 9, 'MAT', 5, NULL),
(521, 9, 'MAT', 3, NULL),
(522, 9, 'MAT', NULL, 8),
(523, 9, 'PUR', 10, NULL),
(524, 9, 'REL', 5, NULL),
(525, 9, 'REL', 7, NULL),
(526, 9, 'REL', 9, NULL),
(527, 9, 'RO', 7, NULL),
(528, 9, 'RO', 6, NULL),
(529, 9, 'RO', 2, NULL),
(530, 9, 'RO', 2, NULL),
(531, 9, 'RO', 9, NULL),
(532, 9, 'RO', NULL, 5),
(533, 9, 'SSU', 6, NULL),
(534, 9, 'SSU', 10, NULL),
(535, 9, 'SSU', 8, NULL),
(536, 9, 'TIC', 7, NULL),
(537, 9, 'TIC', 8, NULL),
(538, 9, 'TIC', 6, NULL),
(539, 9, 'INF', NULL, 10),
(540, 9, 'BIO', NULL, 5),
(541, 10, 'BIO', 5, NULL),
(542, 10, 'BIO', 4, NULL),
(543, 10, 'BIO', 6, NULL),
(544, 10, 'CHI', 5, NULL),
(545, 10, 'CHI', 6, NULL),
(546, 10, 'CHI', 4, NULL),
(547, 10, 'EDA', 5, NULL),
(548, 10, 'EDA', 8, NULL),
(549, 10, 'EDA', 7, NULL),
(550, 10, 'EDF', 9, NULL),
(551, 10, 'EDF', 4, NULL),
(552, 10, 'EDF', 6, NULL),
(553, 10, 'EDM', 8, NULL),
(554, 10, 'EDM', 10, NULL),
(555, 10, 'EDM', 5, NULL),
(556, 10, 'EDP', 5, NULL),
(557, 10, 'EDP', 10, NULL),
(558, 10, 'EDP', 8, NULL),
(559, 10, 'EN', 9, NULL),
(560, 10, 'EN', 7, NULL),
(561, 10, 'EN', 8, NULL),
(562, 10, 'FIZ', 7, NULL),
(563, 10, 'FIZ', 4, NULL),
(564, 10, 'FIZ', 5, NULL),
(565, 10, 'FR', 5, NULL),
(566, 10, 'FR', 4, NULL),
(567, 10, 'FR', 7, NULL),
(568, 10, 'GEO', 5, NULL),
(569, 10, 'GEO', 9, NULL),
(570, 10, 'GEO', 10, NULL),
(571, 10, 'INF', 10, NULL),
(572, 10, 'INF', 9, NULL),
(573, 10, 'INF', 4, NULL),
(574, 10, 'IST', 7, NULL),
(575, 10, 'IST', 9, NULL),
(576, 10, 'IST', 4, NULL),
(577, 10, 'MAT', 4, NULL),
(578, 10, 'MAT', 5, NULL),
(579, 10, 'MAT', 7, NULL),
(580, 10, 'MAT', 4, NULL),
(581, 10, 'MAT', 5, NULL),
(582, 10, 'MAT', NULL, 9),
(583, 10, 'PUR', 10, NULL),
(584, 10, 'REL', 8, NULL),
(585, 10, 'REL', 9, NULL),
(586, 10, 'REL', 4, NULL),
(587, 10, 'RO', 6, NULL),
(588, 10, 'RO', 4, NULL),
(589, 10, 'RO', 4, NULL),
(590, 10, 'RO', 3, NULL),
(591, 10, 'RO', 5, NULL),
(592, 10, 'RO', NULL, 4),
(593, 10, 'SSU', 9, NULL),
(594, 10, 'SSU', 4, NULL),
(595, 10, 'SSU', 9, NULL),
(596, 10, 'TIC', 6, NULL),
(597, 10, 'TIC', 6, NULL),
(598, 10, 'TIC', 9, NULL),
(599, 10, 'INF', NULL, 10),
(600, 10, 'CHI', NULL, 10),
(601, 11, 'BIO', 8, NULL),
(602, 11, 'BIO', 8, NULL),
(603, 11, 'BIO', 4, NULL),
(604, 11, 'CHI', 9, NULL),
(605, 11, 'CHI', 10, NULL),
(606, 11, 'CHI', 5, NULL),
(607, 11, 'EDA', 4, NULL),
(608, 11, 'EDA', 6, NULL),
(609, 11, 'EDA', 8, NULL),
(610, 11, 'EDF', 8, NULL),
(611, 11, 'EDF', 5, NULL),
(612, 11, 'EDF', 5, NULL),
(613, 11, 'EDM', 5, NULL),
(614, 11, 'EDM', 8, NULL),
(615, 11, 'EDM', 10, NULL),
(616, 11, 'EDP', 7, NULL),
(617, 11, 'EDP', 8, NULL),
(618, 11, 'EDP', 10, NULL),
(619, 11, 'EN', 8, NULL),
(620, 11, 'EN', 7, NULL),
(621, 11, 'EN', 8, NULL),
(622, 11, 'FIZ', 9, NULL),
(623, 11, 'FIZ', 8, NULL),
(624, 11, 'FIZ', 4, NULL),
(625, 11, 'FR', 4, NULL),
(626, 11, 'FR', 8, NULL),
(627, 11, 'FR', 9, NULL),
(628, 11, 'GEO', 9, NULL),
(629, 11, 'GEO', 4, NULL),
(630, 11, 'GEO', 9, NULL),
(631, 11, 'INF', 9, NULL),
(632, 11, 'INF', 6, NULL),
(633, 11, 'INF', 9, NULL),
(634, 11, 'IST', 7, NULL),
(635, 11, 'IST', 8, NULL),
(636, 11, 'IST', 6, NULL),
(637, 11, 'MAT', 5, NULL),
(638, 11, 'MAT', 5, NULL),
(639, 11, 'MAT', 7, NULL),
(640, 11, 'MAT', 5, NULL),
(641, 11, 'MAT', 3, NULL),
(642, 11, 'MAT', NULL, 4),
(643, 11, 'PUR', 10, NULL),
(644, 11, 'REL', 9, NULL),
(645, 11, 'REL', 8, NULL),
(646, 11, 'REL', 9, NULL),
(647, 11, 'RO', 3, NULL),
(648, 11, 'RO', 8, NULL),
(649, 11, 'RO', 8, NULL),
(650, 11, 'RO', 7, NULL),
(651, 11, 'RO', 10, NULL),
(652, 11, 'RO', NULL, 4),
(653, 11, 'SSU', 10, NULL),
(654, 11, 'SSU', 4, NULL),
(655, 11, 'SSU', 5, NULL),
(656, 11, 'TIC', 9, NULL),
(657, 11, 'TIC', 4, NULL),
(658, 11, 'TIC', 6, NULL),
(659, 11, 'INF', NULL, 5),
(660, 11, 'FIZ', NULL, 7),
(661, 12, 'BIO', 8, NULL),
(662, 12, 'BIO', 4, NULL),
(663, 12, 'BIO', 9, NULL),
(664, 12, 'CHI', 5, NULL),
(665, 12, 'CHI', 6, NULL),
(666, 12, 'CHI', 10, NULL),
(667, 12, 'EDA', 4, NULL),
(668, 12, 'EDA', 6, NULL),
(669, 12, 'EDA', 4, NULL),
(670, 12, 'EDF', 9, NULL),
(671, 12, 'EDF', 7, NULL),
(672, 12, 'EDF', 8, NULL),
(673, 12, 'EDM', 7, NULL),
(674, 12, 'EDM', 9, NULL),
(675, 12, 'EDM', 5, NULL),
(676, 12, 'EDP', 6, NULL),
(677, 12, 'EDP', 9, NULL),
(678, 12, 'EDP', 7, NULL),
(679, 12, 'EN', 4, NULL),
(680, 12, 'EN', 5, NULL),
(681, 12, 'EN', 5, NULL),
(682, 12, 'FIZ', 8, NULL),
(683, 12, 'FIZ', 8, NULL),
(684, 12, 'FIZ', 8, NULL),
(685, 12, 'FR', 4, NULL),
(686, 12, 'FR', 6, NULL),
(687, 12, 'FR', 10, NULL),
(688, 12, 'GEO', 9, NULL),
(689, 12, 'GEO', 5, NULL),
(690, 12, 'GEO', 4, NULL),
(691, 12, 'INF', 8, NULL),
(692, 12, 'INF', 7, NULL),
(693, 12, 'INF', 7, NULL),
(694, 12, 'IST', 5, NULL),
(695, 12, 'IST', 7, NULL),
(696, 12, 'IST', 9, NULL),
(697, 12, 'MAT', 5, NULL),
(698, 12, 'MAT', 10, NULL),
(699, 12, 'MAT', 7, NULL),
(700, 12, 'MAT', 4, NULL),
(701, 12, 'MAT', 6, NULL),
(702, 12, 'MAT', NULL, 7),
(703, 12, 'PUR', 10, NULL),
(704, 12, 'REL', 9, NULL),
(705, 12, 'REL', 4, NULL),
(706, 12, 'REL', 5, NULL),
(707, 12, 'RO', 6, NULL),
(708, 12, 'RO', 7, NULL),
(709, 12, 'RO', 10, NULL),
(710, 12, 'RO', 3, NULL),
(711, 12, 'RO', 8, NULL),
(712, 12, 'RO', NULL, 4),
(713, 12, 'SSU', 9, NULL),
(714, 12, 'SSU', 8, NULL),
(715, 12, 'SSU', 10, NULL),
(716, 12, 'TIC', 9, NULL),
(717, 12, 'TIC', 7, NULL),
(718, 12, 'TIC', 9, NULL),
(719, 12, 'INF', NULL, 9),
(720, 12, 'FIZ', NULL, 10),
(721, 13, 'BIO', 10, NULL),
(722, 13, 'BIO', 8, NULL),
(723, 13, 'BIO', 9, NULL),
(724, 13, 'CHI', 7, NULL),
(725, 13, 'CHI', 7, NULL),
(726, 13, 'CHI', 8, NULL),
(727, 13, 'EDA', 7, NULL),
(728, 13, 'EDA', 8, NULL),
(729, 13, 'EDA', 8, NULL),
(730, 13, 'EDF', 5, NULL),
(731, 13, 'EDF', 5, NULL),
(732, 13, 'EDF', 5, NULL),
(733, 13, 'EDM', 8, NULL),
(734, 13, 'EDM', 7, NULL),
(735, 13, 'EDM', 10, NULL),
(736, 13, 'EDP', 9, NULL),
(737, 13, 'EDP', 4, NULL),
(738, 13, 'EDP', 5, NULL),
(739, 13, 'EN', 7, NULL),
(740, 13, 'EN', 5, NULL),
(741, 13, 'EN', 7, NULL),
(742, 13, 'FIZ', 10, NULL),
(743, 13, 'FIZ', 8, NULL),
(744, 13, 'FIZ', 4, NULL),
(745, 13, 'FR', 10, NULL),
(746, 13, 'FR', 6, NULL),
(747, 13, 'FR', 9, NULL),
(748, 13, 'GEO', 9, NULL),
(749, 13, 'GEO', 4, NULL),
(750, 13, 'GEO', 6, NULL),
(751, 13, 'INF', 7, NULL),
(752, 13, 'INF', 4, NULL),
(753, 13, 'INF', 8, NULL),
(754, 13, 'IST', 9, NULL),
(755, 13, 'IST', 7, NULL),
(756, 13, 'IST', 8, NULL),
(757, 13, 'MAT', 8, NULL),
(758, 13, 'MAT', 8, NULL),
(759, 13, 'MAT', 5, NULL),
(760, 13, 'MAT', 8, NULL),
(761, 13, 'MAT', 4, NULL),
(762, 13, 'MAT', NULL, 5),
(763, 13, 'PUR', 10, NULL),
(764, 13, 'REL', 7, NULL),
(765, 13, 'REL', 10, NULL),
(766, 13, 'REL', 7, NULL),
(767, 13, 'RO', 8, NULL),
(768, 13, 'RO', 3, NULL),
(769, 13, 'RO', 6, NULL),
(770, 13, 'RO', 4, NULL),
(771, 13, 'RO', 8, NULL),
(772, 13, 'RO', NULL, 9),
(773, 13, 'SSU', 6, NULL),
(774, 13, 'SSU', 6, NULL),
(775, 13, 'SSU', 8, NULL),
(776, 13, 'TIC', 6, NULL),
(777, 13, 'TIC', 10, NULL),
(778, 13, 'TIC', 8, NULL),
(779, 13, 'INF', NULL, 7),
(780, 13, 'CHI', NULL, 6),
(781, 14, 'BIO', 9, NULL),
(782, 14, 'BIO', 8, NULL),
(783, 14, 'BIO', 4, NULL),
(784, 14, 'CHI', 4, NULL),
(785, 14, 'CHI', 4, NULL),
(786, 14, 'CHI', 6, NULL),
(787, 14, 'EDA', 5, NULL),
(788, 14, 'EDA', 7, NULL),
(789, 14, 'EDA', 8, NULL),
(790, 14, 'EDF', 6, NULL),
(791, 14, 'EDF', 9, NULL),
(792, 14, 'EDF', 4, NULL),
(793, 14, 'EDM', 9, NULL),
(794, 14, 'EDM', 4, NULL),
(795, 14, 'EDM', 5, NULL),
(796, 14, 'EDP', 7, NULL),
(797, 14, 'EDP', 7, NULL),
(798, 14, 'EDP', 5, NULL),
(799, 14, 'EN', 4, NULL),
(800, 14, 'EN', 8, NULL),
(801, 14, 'EN', 9, NULL),
(802, 14, 'FIZ', 9, NULL),
(803, 14, 'FIZ', 4, NULL),
(804, 14, 'FIZ', 7, NULL),
(805, 14, 'FR', 6, NULL),
(806, 14, 'FR', 9, NULL),
(807, 14, 'FR', 7, NULL),
(808, 14, 'GEO', 10, NULL),
(809, 14, 'GEO', 9, NULL),
(810, 14, 'GEO', 8, NULL),
(811, 14, 'INF', 4, NULL),
(812, 14, 'INF', 4, NULL),
(813, 14, 'INF', 4, NULL),
(814, 14, 'IST', 4, NULL),
(815, 14, 'IST', 6, NULL),
(816, 14, 'IST', 4, NULL),
(817, 14, 'MAT', 6, NULL),
(818, 14, 'MAT', 10, NULL),
(819, 14, 'MAT', 7, NULL),
(820, 14, 'MAT', 5, NULL),
(821, 14, 'MAT', 2, NULL),
(822, 14, 'MAT', NULL, 7),
(823, 14, 'PUR', 10, NULL),
(824, 14, 'REL', 6, NULL),
(825, 14, 'REL', 6, NULL),
(826, 14, 'REL', 5, NULL),
(827, 14, 'RO', 7, NULL),
(828, 14, 'RO', 7, NULL),
(829, 14, 'RO', 6, NULL),
(830, 14, 'RO', 10, NULL),
(831, 14, 'RO', 8, NULL),
(832, 14, 'RO', NULL, 5),
(833, 14, 'SSU', 6, NULL),
(834, 14, 'SSU', 10, NULL),
(835, 14, 'SSU', 8, NULL),
(836, 14, 'TIC', 5, NULL),
(837, 14, 'TIC', 5, NULL),
(838, 14, 'TIC', 9, NULL),
(839, 14, 'INF', NULL, 7),
(840, 14, 'BIO', NULL, 8),
(841, 15, 'BIO', 5, NULL),
(842, 15, 'BIO', 10, NULL),
(843, 15, 'BIO', 10, NULL),
(844, 15, 'CHI', 6, NULL),
(845, 15, 'CHI', 8, NULL),
(846, 15, 'CHI', 9, NULL),
(847, 15, 'EDA', 4, NULL),
(848, 15, 'EDA', 8, NULL),
(849, 15, 'EDA', 5, NULL),
(850, 15, 'EDF', 9, NULL),
(851, 15, 'EDF', 6, NULL),
(852, 15, 'EDF', 10, NULL),
(853, 15, 'EDM', 7, NULL),
(854, 15, 'EDM', 6, NULL),
(855, 15, 'EDM', 6, NULL),
(856, 15, 'EDP', 4, NULL),
(857, 15, 'EDP', 7, NULL),
(858, 15, 'EDP', 4, NULL),
(859, 15, 'EN', 7, NULL),
(860, 15, 'EN', 9, NULL),
(861, 15, 'EN', 10, NULL),
(862, 15, 'FIZ', 10, NULL),
(863, 15, 'FIZ', 7, NULL),
(864, 15, 'FIZ', 6, NULL),
(865, 15, 'FR', 4, NULL),
(866, 15, 'FR', 6, NULL),
(867, 15, 'FR', 10, NULL),
(868, 15, 'GEO', 9, NULL),
(869, 15, 'GEO', 9, NULL),
(870, 15, 'GEO', 6, NULL),
(871, 15, 'INF', 5, NULL),
(872, 15, 'INF', 9, NULL),
(873, 15, 'INF', 7, NULL),
(874, 15, 'IST', 6, NULL),
(875, 15, 'IST', 6, NULL),
(876, 15, 'IST', 4, NULL),
(877, 15, 'MAT', 4, NULL),
(878, 15, 'MAT', 4, NULL),
(879, 15, 'MAT', 3, NULL),
(880, 15, 'MAT', 10, NULL),
(881, 15, 'MAT', 6, NULL),
(882, 15, 'MAT', NULL, 6),
(883, 15, 'PUR', 10, NULL),
(884, 15, 'REL', 10, NULL),
(885, 15, 'REL', 5, NULL),
(886, 15, 'REL', 7, NULL),
(887, 15, 'RO', 6, NULL),
(888, 15, 'RO', 3, NULL),
(889, 15, 'RO', 5, NULL),
(890, 15, 'RO', 4, NULL),
(891, 15, 'RO', 9, NULL),
(892, 15, 'RO', NULL, 7),
(893, 15, 'SSU', 8, NULL),
(894, 15, 'SSU', 10, NULL),
(895, 15, 'SSU', 5, NULL),
(896, 15, 'TIC', 6, NULL),
(897, 15, 'TIC', 7, NULL),
(898, 15, 'TIC', 5, NULL),
(899, 15, 'INF', NULL, 7),
(900, 15, 'FIZ', NULL, 10),
(901, 16, 'BIO', 10, NULL),
(902, 16, 'BIO', 10, NULL),
(903, 16, 'BIO', 10, NULL),
(904, 16, 'CHI', 5, NULL),
(905, 16, 'CHI', 4, NULL),
(906, 16, 'CHI', 4, NULL),
(907, 16, 'EDA', 7, NULL),
(908, 16, 'EDA', 9, NULL),
(909, 16, 'EDA', 8, NULL),
(910, 16, 'EDF', 8, NULL),
(911, 16, 'EDF', 10, NULL),
(912, 16, 'EDF', 9, NULL),
(913, 16, 'EDM', 7, NULL),
(914, 16, 'EDM', 5, NULL),
(915, 16, 'EDM', 7, NULL),
(916, 16, 'EDP', 7, NULL),
(917, 16, 'EDP', 10, NULL),
(918, 16, 'EDP', 9, NULL),
(919, 16, 'EN', 9, NULL),
(920, 16, 'EN', 10, NULL),
(921, 16, 'EN', 8, NULL),
(922, 16, 'FIZ', 8, NULL),
(923, 16, 'FIZ', 9, NULL),
(924, 16, 'FIZ', 9, NULL),
(925, 16, 'FR', 4, NULL),
(926, 16, 'FR', 5, NULL),
(927, 16, 'FR', 6, NULL),
(928, 16, 'GEO', 10, NULL),
(929, 16, 'GEO', 6, NULL),
(930, 16, 'GEO', 8, NULL),
(931, 16, 'INF', 9, NULL),
(932, 16, 'INF', 5, NULL),
(933, 16, 'INF', 4, NULL),
(934, 16, 'IST', 7, NULL),
(935, 16, 'IST', 6, NULL),
(936, 16, 'IST', 5, NULL),
(937, 16, 'MAT', 5, NULL),
(938, 16, 'MAT', 4, NULL),
(939, 16, 'MAT', 7, NULL),
(940, 16, 'MAT', 8, NULL),
(941, 16, 'MAT', 5, NULL),
(942, 16, 'MAT', NULL, 9),
(943, 16, 'PUR', 10, NULL),
(944, 16, 'REL', 8, NULL),
(945, 16, 'REL', 7, NULL),
(946, 16, 'REL', 4, NULL),
(947, 16, 'RO', 6, NULL),
(948, 16, 'RO', 7, NULL),
(949, 16, 'RO', 8, NULL),
(950, 16, 'RO', 2, NULL),
(951, 16, 'RO', 9, NULL),
(952, 16, 'RO', NULL, 10),
(953, 16, 'SSU', 8, NULL),
(954, 16, 'SSU', 5, NULL),
(955, 16, 'SSU', 9, NULL),
(956, 16, 'TIC', 7, NULL),
(957, 16, 'TIC', 10, NULL),
(958, 16, 'TIC', 10, NULL),
(959, 16, 'INF', NULL, 10),
(960, 16, 'FIZ', NULL, 6),
(961, 17, 'BIO', 8, NULL),
(962, 17, 'BIO', 8, NULL),
(963, 17, 'BIO', 5, NULL),
(964, 17, 'CHI', 5, NULL),
(965, 17, 'CHI', 4, NULL),
(966, 17, 'CHI', 9, NULL),
(967, 17, 'EDA', 10, NULL),
(968, 17, 'EDA', 7, NULL),
(969, 17, 'EDA', 8, NULL),
(970, 17, 'EDF', 4, NULL),
(971, 17, 'EDF', 4, NULL),
(972, 17, 'EDF', 9, NULL),
(973, 17, 'EDM', 9, NULL),
(974, 17, 'EDM', 8, NULL),
(975, 17, 'EDM', 4, NULL),
(976, 17, 'EDP', 7, NULL),
(977, 17, 'EDP', 4, NULL),
(978, 17, 'EDP', 8, NULL),
(979, 17, 'EN', 5, NULL),
(980, 17, 'EN', 9, NULL),
(981, 17, 'EN', 7, NULL),
(982, 17, 'FIZ', 10, NULL),
(983, 17, 'FIZ', 6, NULL),
(984, 17, 'FIZ', 5, NULL),
(985, 17, 'FR', 9, NULL),
(986, 17, 'FR', 9, NULL),
(987, 17, 'FR', 4, NULL),
(988, 17, 'GEO', 4, NULL),
(989, 17, 'GEO', 9, NULL),
(990, 17, 'GEO', 8, NULL),
(991, 17, 'INF', 7, NULL),
(992, 17, 'INF', 6, NULL),
(993, 17, 'INF', 6, NULL),
(994, 17, 'IST', 8, NULL),
(995, 17, 'IST', 5, NULL),
(996, 17, 'IST', 6, NULL),
(997, 17, 'MAT', 2, NULL),
(998, 17, 'MAT', 3, NULL),
(999, 17, 'MAT', 5, NULL),
(1000, 17, 'MAT', 7, NULL),
(1001, 17, 'MAT', 9, NULL),
(1002, 17, 'MAT', NULL, 8),
(1003, 17, 'PUR', 10, NULL),
(1004, 17, 'REL', 8, NULL),
(1005, 17, 'REL', 5, NULL),
(1006, 17, 'REL', 5, NULL),
(1007, 17, 'RO', 10, NULL),
(1008, 17, 'RO', 9, NULL),
(1009, 17, 'RO', 7, NULL),
(1010, 17, 'RO', 10, NULL),
(1011, 17, 'RO', 8, NULL),
(1012, 17, 'RO', NULL, 9),
(1013, 17, 'SSU', 5, NULL),
(1014, 17, 'SSU', 6, NULL),
(1015, 17, 'SSU', 7, NULL),
(1016, 17, 'TIC', 9, NULL),
(1017, 17, 'TIC', 9, NULL),
(1018, 17, 'TIC', 5, NULL),
(1019, 17, 'INF', NULL, 8),
(1020, 17, 'CHI', NULL, 6),
(1021, 18, 'BIO', 10, NULL),
(1022, 18, 'BIO', 8, NULL),
(1023, 18, 'BIO', 9, NULL),
(1024, 18, 'CHI', 10, NULL),
(1025, 18, 'CHI', 7, NULL),
(1026, 18, 'CHI', 5, NULL),
(1027, 18, 'EDA', 9, NULL),
(1028, 18, 'EDA', 7, NULL),
(1029, 18, 'EDA', 9, NULL),
(1030, 18, 'EDF', 8, NULL),
(1031, 18, 'EDF', 4, NULL),
(1032, 18, 'EDF', 8, NULL),
(1033, 18, 'EDM', 10, NULL),
(1034, 18, 'EDM', 8, NULL),
(1035, 18, 'EDM', 9, NULL),
(1036, 18, 'EDP', 8, NULL),
(1037, 18, 'EDP', 4, NULL),
(1038, 18, 'EDP', 5, NULL),
(1039, 18, 'EN', 9, NULL),
(1040, 18, 'EN', 5, NULL),
(1041, 18, 'EN', 6, NULL),
(1042, 18, 'FIZ', 8, NULL),
(1043, 18, 'FIZ', 8, NULL),
(1044, 18, 'FIZ', 6, NULL),
(1045, 18, 'FR', 4, NULL),
(1046, 18, 'FR', 4, NULL),
(1047, 18, 'FR', 6, NULL),
(1048, 18, 'GEO', 6, NULL),
(1049, 18, 'GEO', 10, NULL),
(1050, 18, 'GEO', 7, NULL),
(1051, 18, 'INF', 4, NULL),
(1052, 18, 'INF', 9, NULL),
(1053, 18, 'INF', 4, NULL),
(1054, 18, 'IST', 7, NULL),
(1055, 18, 'IST', 9, NULL),
(1056, 18, 'IST', 8, NULL),
(1057, 18, 'MAT', 3, NULL),
(1058, 18, 'MAT', 3, NULL),
(1059, 18, 'MAT', 4, NULL),
(1060, 18, 'MAT', 3, NULL),
(1061, 18, 'MAT', 2, NULL),
(1062, 18, 'MAT', NULL, 5),
(1063, 18, 'PUR', 10, NULL),
(1064, 18, 'REL', 4, NULL),
(1065, 18, 'REL', 7, NULL),
(1066, 18, 'REL', 8, NULL),
(1067, 18, 'RO', 3, NULL),
(1068, 18, 'RO', 7, NULL),
(1069, 18, 'RO', 10, NULL),
(1070, 18, 'RO', 6, NULL),
(1071, 18, 'RO', 3, NULL),
(1072, 18, 'RO', NULL, 6),
(1073, 18, 'SSU', 5, NULL),
(1074, 18, 'SSU', 5, NULL),
(1075, 18, 'SSU', 10, NULL),
(1076, 18, 'TIC', 4, NULL),
(1077, 18, 'TIC', 6, NULL),
(1078, 18, 'TIC', 7, NULL),
(1079, 18, 'INF', NULL, 10),
(1080, 18, 'CHI', NULL, 9),
(1081, 19, 'BIO', 5, NULL),
(1082, 19, 'BIO', 5, NULL),
(1083, 19, 'BIO', 6, NULL),
(1084, 19, 'CHI', 6, NULL),
(1085, 19, 'CHI', 9, NULL),
(1086, 19, 'CHI', 9, NULL),
(1087, 19, 'EDA', 4, NULL),
(1088, 19, 'EDA', 10, NULL),
(1089, 19, 'EDA', 7, NULL),
(1090, 19, 'EDF', 9, NULL),
(1091, 19, 'EDF', 8, NULL),
(1092, 19, 'EDF', 5, NULL),
(1093, 19, 'EDM', 8, NULL),
(1094, 19, 'EDM', 4, NULL),
(1095, 19, 'EDM', 8, NULL),
(1096, 19, 'EDP', 5, NULL),
(1097, 19, 'EDP', 9, NULL),
(1098, 19, 'EDP', 9, NULL),
(1099, 19, 'EN', 8, NULL),
(1100, 19, 'EN', 8, NULL),
(1101, 19, 'EN', 7, NULL),
(1102, 19, 'FIZ', 10, NULL),
(1103, 19, 'FIZ', 8, NULL),
(1104, 19, 'FIZ', 5, NULL),
(1105, 19, 'FR', 7, NULL),
(1106, 19, 'FR', 4, NULL),
(1107, 19, 'FR', 8, NULL),
(1108, 19, 'GEO', 7, NULL),
(1109, 19, 'GEO', 10, NULL),
(1110, 19, 'GEO', 4, NULL),
(1111, 19, 'INF', 5, NULL),
(1112, 19, 'INF', 9, NULL),
(1113, 19, 'INF', 9, NULL),
(1114, 19, 'IST', 6, NULL),
(1115, 19, 'IST', 10, NULL),
(1116, 19, 'IST', 5, NULL),
(1117, 19, 'MAT', 5, NULL),
(1118, 19, 'MAT', 7, NULL),
(1119, 19, 'MAT', 4, NULL),
(1120, 19, 'MAT', 5, NULL),
(1121, 19, 'MAT', 3, NULL),
(1122, 19, 'MAT', NULL, 6),
(1123, 19, 'PUR', 10, NULL),
(1124, 19, 'REL', 8, NULL),
(1125, 19, 'REL', 9, NULL),
(1126, 19, 'REL', 9, NULL),
(1127, 19, 'RO', 8, NULL),
(1128, 19, 'RO', 3, NULL),
(1129, 19, 'RO', 7, NULL),
(1130, 19, 'RO', 9, NULL),
(1131, 19, 'RO', 8, NULL),
(1132, 19, 'RO', NULL, 10),
(1133, 19, 'SSU', 8, NULL),
(1134, 19, 'SSU', 4, NULL),
(1135, 19, 'SSU', 10, NULL),
(1136, 19, 'TIC', 6, NULL),
(1137, 19, 'TIC', 7, NULL),
(1138, 19, 'TIC', 4, NULL),
(1139, 19, 'INF', NULL, 9),
(1140, 19, 'CHI', NULL, 5),
(1141, 20, 'BIO', 5, NULL),
(1142, 20, 'BIO', 7, NULL),
(1143, 20, 'BIO', 5, NULL),
(1144, 20, 'CHI', 4, NULL),
(1145, 20, 'CHI', 4, NULL),
(1146, 20, 'CHI', 6, NULL),
(1147, 20, 'EDA', 6, NULL),
(1148, 20, 'EDA', 9, NULL),
(1149, 20, 'EDA', 8, NULL),
(1150, 20, 'EDF', 6, NULL),
(1151, 20, 'EDF', 8, NULL),
(1152, 20, 'EDF', 5, NULL),
(1153, 20, 'EDM', 10, NULL),
(1154, 20, 'EDM', 5, NULL),
(1155, 20, 'EDM', 4, NULL),
(1156, 20, 'EDP', 4, NULL),
(1157, 20, 'EDP', 7, NULL),
(1158, 20, 'EDP', 4, NULL),
(1159, 20, 'EN', 8, NULL),
(1160, 20, 'EN', 5, NULL),
(1161, 20, 'EN', 8, NULL),
(1162, 20, 'FIZ', 9, NULL),
(1163, 20, 'FIZ', 4, NULL),
(1164, 20, 'FIZ', 4, NULL),
(1165, 20, 'FR', 9, NULL),
(1166, 20, 'FR', 5, NULL),
(1167, 20, 'FR', 4, NULL),
(1168, 20, 'GEO', 9, NULL),
(1169, 20, 'GEO', 4, NULL),
(1170, 20, 'GEO', 6, NULL),
(1171, 20, 'INF', 5, NULL),
(1172, 20, 'INF', 9, NULL),
(1173, 20, 'INF', 4, NULL),
(1174, 20, 'IST', 6, NULL),
(1175, 20, 'IST', 9, NULL),
(1176, 20, 'IST', 9, NULL),
(1177, 20, 'MAT', 4, NULL),
(1178, 20, 'MAT', 5, NULL),
(1179, 20, 'MAT', 8, NULL),
(1180, 20, 'MAT', 7, NULL),
(1181, 20, 'MAT', 7, NULL),
(1182, 20, 'MAT', NULL, 6),
(1183, 20, 'PUR', 10, NULL),
(1184, 20, 'REL', 10, NULL),
(1185, 20, 'REL', 7, NULL),
(1186, 20, 'REL', 10, NULL),
(1187, 20, 'RO', 8, NULL),
(1188, 20, 'RO', 2, NULL),
(1189, 20, 'RO', 5, NULL),
(1190, 20, 'RO', 9, NULL),
(1191, 20, 'RO', 8, NULL),
(1192, 20, 'RO', NULL, 9),
(1193, 20, 'SSU', 6, NULL),
(1194, 20, 'SSU', 10, NULL),
(1195, 20, 'SSU', 5, NULL),
(1196, 20, 'TIC', 9, NULL),
(1197, 20, 'TIC', 9, NULL),
(1198, 20, 'TIC', 4, NULL),
(1199, 20, 'INF', NULL, 8),
(1200, 20, 'CHI', NULL, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absente`
--
ALTER TABLE `absente`
  ADD PRIMARY KEY (`idAbsenta`),
  ADD UNIQUE KEY `idAbsenta_UNIQUE` (`idAbsenta`),
  ADD KEY `fk_Absente_Cursuri1_idx` (`Cursuri_idCurs`),
  ADD KEY `fk_Absente_Elevi1_idx` (`Elevi_idElev`);

--
-- Indexes for table `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`idClasa`),
  ADD UNIQUE KEY `idClasa_UNIQUE` (`idClasa`);

--
-- Indexes for table `cursuri`
--
ALTER TABLE `cursuri`
  ADD PRIMARY KEY (`idCurs`),
  ADD UNIQUE KEY `idCurs_UNIQUE` (`idCurs`);

--
-- Indexes for table `elevi`
--
ALTER TABLE `elevi`
  ADD PRIMARY KEY (`idElev`),
  ADD UNIQUE KEY `idElev_UNIQUE` (`idElev`),
  ADD KEY `fk_Elevi_Clase_idx` (`Clase_idClasa`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`idNota`),
  ADD UNIQUE KEY `idNota_UNIQUE` (`idNota`),
  ADD KEY `fk_Note_Elevi1_idx` (`Elevi_idElev`),
  ADD KEY `fk_Note_Cursuri1_idx` (`Cursuri_idCurs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absente`
--
ALTER TABLE `absente`
  MODIFY `idAbsenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elevi`
--
ALTER TABLE `elevi`
  MODIFY `idElev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `idNota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absente`
--
ALTER TABLE `absente`
  ADD CONSTRAINT `fk_Absente_Cursuri1` FOREIGN KEY (`Cursuri_idCurs`) REFERENCES `cursuri` (`idcurs`),
  ADD CONSTRAINT `fk_Absente_Elevi1` FOREIGN KEY (`Elevi_idElev`) REFERENCES `elevi` (`idelev`);

--
-- Constraints for table `elevi`
--
ALTER TABLE `elevi`
  ADD CONSTRAINT `fk_Elevi_Clase` FOREIGN KEY (`Clase_idClasa`) REFERENCES `clase` (`idclasa`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `fk_Note_Cursuri1` FOREIGN KEY (`Cursuri_idCurs`) REFERENCES `cursuri` (`idcurs`),
  ADD CONSTRAINT `fk_Note_Elevi1` FOREIGN KEY (`Elevi_idElev`) REFERENCES `elevi` (`idelev`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
