-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 17 2019 г., 12:28
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `new_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_employment` date NOT NULL,
  `cell_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_created_id` int(11) DEFAULT NULL,
  `admin_updated_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `position_id`, `parent_id`, `name`, `date_of_employment`, `cell_number`, `salary`, `email`, `photo`, `created_at`, `updated_at`, `admin_created_id`, `admin_updated_id`) VALUES
(1, 5, 11, 'Ben Flatley', '1972-06-23', '+38(074)8709987', '10345$', 'athena15@hotmail.com', 'https://lorempixel.com/300/300/?93834', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(2, 11, 3, 'Mr. Hilbert Schumm Jr.', '1983-07-21', '+380912762445', '11308$', 'ckuvalis@hotmail.com', 'https://lorempixel.com/300/300/?58056', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(3, 5, 25, 'Miss Yasmin Swift', '1983-12-31', '0978468934', '11173$', 'genoveva.eichmann@hotmail.com', 'https://lorempixel.com/300/300/?64057', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(4, 8, 10, 'Christa Bogisich', '1981-10-23', '+38(042)0421050', '12141$', 'msanford@reichel.biz', 'https://lorempixel.com/300/300/?83857', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(5, 4, 17, 'Zora Baumbach', '2002-08-14', '0929538519', '14575$', 'nova.runolfsson@zemlak.biz', 'https://lorempixel.com/300/300/?22012', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(6, 6, 23, 'Ethelyn Rolfson', '1994-08-07', '0502910592', '13163$', 'autumn39@gmail.com', 'https://lorempixel.com/300/300/?60650', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(7, 11, 19, 'Viola Goyette', '1981-12-07', '+380677895342', '11642$', 'nyasia53@kunde.info', 'https://lorempixel.com/300/300/?49289', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(8, 2, 9, 'Adonis Schimmel', '1999-08-06', '0912714705', '12229$', 'giovanni.labadie@hotmail.com', 'https://lorempixel.com/300/300/?60362', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(9, 11, 17, 'Prof. Maia Hansen', '2001-11-01', '0938389701', '10544$', 'achamplin@beatty.org', 'https://lorempixel.com/300/300/?35888', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(10, 3, 5, 'Glenna Lynch I', '1984-01-03', '0920440378', '11055$', 'schoen.keagan@toy.org', 'https://lorempixel.com/300/300/?46770', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(11, 10, 21, 'Teresa Abbott', '1984-03-27', '0943502909', '13605$', 'axel21@oconnell.com', 'https://lorempixel.com/300/300/?55126', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(12, 9, 16, 'Richie Gusikowski DDS', '2012-10-20', '+380501871864', '13399$', 'upowlowski@hotmail.com', 'https://lorempixel.com/300/300/?29590', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(13, 7, 25, 'Mr. Jensen Koepp Sr.', '2012-09-10', '+380945781687', '11714$', 'lesch.kamron@yahoo.com', 'https://lorempixel.com/300/300/?68842', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(14, 1, 4, 'Prof. Kitty Wuckert', '1978-11-28', '+380960010549', '12444$', 'bwintheiser@hotmail.com', 'https://lorempixel.com/300/300/?77916', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(15, 2, 25, 'Maci McLaughlin', '2018-08-10', '+380913947828', '10795$', 'pacocha.cloyd@yahoo.com', 'https://lorempixel.com/300/300/?85476', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(16, 8, 5, 'Dr. Anika Berge PhD', '1977-12-25', '0967455384', '11068$', 'jhaley@hotmail.com', 'https://lorempixel.com/300/300/?50876', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(17, 4, 18, 'Prof. Sadie Bosco III', '1989-07-26', '+380673875696', '12242$', 'janessa34@yahoo.com', 'https://lorempixel.com/300/300/?63517', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(18, 1, 14, 'Miracle Waelchi V', '1992-07-05', '0668546522', '11453$', 'weber.muriel@marquardt.com', 'https://lorempixel.com/300/300/?94237', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(19, 5, 1, 'Ima Dickinson', '1995-11-24', '0934547665', '14863$', 'orin24@gmail.com', 'https://lorempixel.com/300/300/?62030', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(20, 6, 4, 'Alene Hyatt Jr.', '1997-11-23', '+380927932167', '14427$', 'fborer@waters.org', 'https://lorempixel.com/300/300/?68944', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(21, 8, 1, 'Anjali Metz', '1989-10-17', '0961071745', '14225$', 'lenna61@langworth.com', 'https://lorempixel.com/300/300/?61457', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(22, 7, 16, 'Ms. Helena Torphy', '2009-02-03', '0923158870', '10698$', 'wyman.christina@gmail.com', 'https://lorempixel.com/300/300/?47767', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(23, 11, 8, 'Otis Hill', '2011-04-02', '0503985044', '13210$', 'awehner@towne.com', 'https://lorempixel.com/300/300/?80594', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(24, 2, 23, 'Filomena Turner', '1976-01-31', '+380679937802', '12974$', 'tharber@grady.com', 'https://lorempixel.com/300/300/?70358', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(25, 10, 11, 'Therese Kuhn', '1979-07-11', '+380929006857', '11598$', 'houston.hickle@kihn.com', 'https://lorempixel.com/300/300/?51402', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(26, 6, 10, 'Miss Jailyn Block PhD', '2002-11-03', '0974050291', '11914$', 'jarrod25@yahoo.com', 'https://lorempixel.com/300/300/?69822', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(27, 7, 25, 'Mikayla Reinger II', '1975-11-12', '0967166447', '11182$', 'pietro.leuschke@hotmail.com', 'https://lorempixel.com/300/300/?96049', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(28, 12, 9, 'Valentina Rice', '1980-03-22', '0961533754', '10433$', 'bpadberg@goyette.com', 'https://lorempixel.com/300/300/?94701', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(29, 11, 16, 'Adonis Koch DVM', '1992-04-15', '+380634259605', '10355$', 'qlindgren@kovacek.net', 'https://lorempixel.com/300/300/?69370', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(30, 4, 6, 'Cordia Johnson', '1986-09-09', '0938242983', '12809$', 'qsporer@hotmail.com', 'https://lorempixel.com/300/300/?75920', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(31, 10, 7, 'Kari Nitzsche', '1997-04-28', '+38(0616)942740', '10539$', 'lynch.salma@nader.net', 'https://lorempixel.com/300/300/?71693', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(32, 2, 23, 'Wilford Prosacco', '1990-07-03', '0977691741', '10914$', 'gordon26@hotmail.com', 'https://lorempixel.com/300/300/?74114', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(33, 7, 14, 'Prof. Theodore Krajcik IV', '2008-12-30', '+380935070511', '14638$', 'hilario.purdy@yahoo.com', 'https://lorempixel.com/300/300/?33291', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(34, 10, 22, 'Tia Kris', '1989-11-23', '0681189269', '12511$', 'greenholt.jordon@gmail.com', 'https://lorempixel.com/300/300/?62806', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(35, 1, 8, 'Dr. Hannah Keeling DVM', '1988-05-05', '+38(04333)20256', '10881$', 'zleuschke@lueilwitz.info', 'https://lorempixel.com/300/300/?48080', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(36, 12, 1, 'Caitlyn Sanford', '1995-02-03', '0921469946', '12170$', 'tatum07@ryan.com', 'https://lorempixel.com/300/300/?73291', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(37, 4, 1, 'Crawford Parisian', '2000-11-07', '0661666451', '14626$', 'janick82@prosacco.com', 'https://lorempixel.com/300/300/?98105', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(38, 8, 17, 'Olin Schimmel', '2012-10-02', '0957687966', '10510$', 'julian46@yahoo.com', 'https://lorempixel.com/300/300/?62789', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(39, 4, 15, 'Kristina Stehr', '2009-05-29', '0933631252', '12019$', 'dspinka@gmail.com', 'https://lorempixel.com/300/300/?27413', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(40, 2, 8, 'Darien Bernier Sr.', '1987-11-25', '+380923159584', '11788$', 'dtowne@hotmail.com', 'https://lorempixel.com/300/300/?96103', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(41, 10, 8, 'Prof. Lane Huel II', '1988-10-16', '+380993855611', '11700$', 'langosh.alex@carter.info', 'https://lorempixel.com/300/300/?41644', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(42, 6, 4, 'Alexandria Keebler', '1977-08-09', '0960217143', '12466$', 'julien.abbott@gmail.com', 'https://lorempixel.com/300/300/?61135', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(43, 3, 4, 'Glen Moen IV', '1993-09-22', '+380911003403', '14170$', 'vheaney@yahoo.com', 'https://lorempixel.com/300/300/?37021', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(44, 7, 2, 'Ellsworth Marvin', '1975-11-07', '0687268189', '14896$', 'richie17@rippin.com', 'https://lorempixel.com/300/300/?21327', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(45, 11, 1, 'Lorena Senger', '2011-10-18', '0992466153', '14008$', 'fjacobson@gmail.com', 'https://lorempixel.com/300/300/?13408', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(46, 10, 22, 'Prof. Neva Collier', '2007-01-01', '+380987014813', '11799$', 'eva.larkin@bradtke.com', 'https://lorempixel.com/300/300/?55316', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(47, 5, 5, 'Colleen Quitzon', '1971-04-20', '+38(0949)213248', '14046$', 'aeffertz@yahoo.com', 'https://lorempixel.com/300/300/?97854', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(48, 6, 2, 'Dasia Corkery I', '1974-11-14', '+380633255393', '10552$', 'grant.roslyn@hotmail.com', 'https://lorempixel.com/300/300/?58277', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(49, 1, 5, 'John Ziemann I', '1971-04-05', '+380961906593', '13520$', 'ines.langworth@yahoo.com', 'https://lorempixel.com/300/300/?38613', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(50, 9, 25, 'Lucie Muller', '1970-01-19', '0922850090', '14737$', 'neal.williamson@yahoo.com', 'https://lorempixel.com/300/300/?61244', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(51, 1, 24, 'Dr. Damion Hoeger', '1993-04-13', '+380958079055', '12970$', 'aletha81@schowalter.com', 'https://lorempixel.com/300/300/?29375', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(52, 11, 18, 'Brenna Ritchie', '1971-12-08', '0668729852', '14658$', 'norma98@schinner.com', 'https://lorempixel.com/300/300/?44036', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(53, 8, 12, 'Lizzie West', '1974-09-04', '+38(0714)588176', '10480$', 'ben07@hotmail.com', 'https://lorempixel.com/300/300/?96335', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(54, 5, 18, 'Dena Lind', '1995-11-21', '+38(0532)699370', '12343$', 'melvina49@gmail.com', 'https://lorempixel.com/300/300/?34870', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(55, 9, 18, 'Nadia Quigley II', '1973-09-11', '0665827224', '14056$', 'kweber@shanahan.biz', 'https://lorempixel.com/300/300/?53567', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(56, 3, 20, 'Mr. Derick Collins MD', '1992-06-03', '0683918089', '14631$', 'lelah.emmerich@kiehn.info', 'https://lorempixel.com/300/300/?62472', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(57, 9, 5, 'Dr. Davion Homenick', '1988-10-08', '0673164172', '12864$', 'kelly.schamberger@stark.biz', 'https://lorempixel.com/300/300/?65853', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(58, 10, 20, 'Prof. Marty Kozey IV', '1975-03-30', '0919896083', '10625$', 'emcclure@pouros.net', 'https://lorempixel.com/300/300/?79686', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(59, 1, 13, 'Noe Larson', '2017-03-02', '+380960420644', '10630$', 'tkuhn@gmail.com', 'https://lorempixel.com/300/300/?12056', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(60, 10, 2, 'Walter Kunze', '2010-07-09', '0924103330', '11673$', 'gladys86@king.com', 'https://lorempixel.com/300/300/?14731', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(61, 9, 13, 'Allie Lebsack', '1971-11-26', '0941888495', '13348$', 'iboyer@davis.com', 'https://lorempixel.com/300/300/?53846', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(62, 4, 17, 'Birdie Sauer', '2005-02-14', '0974771507', '12017$', 'tobin59@stroman.com', 'https://lorempixel.com/300/300/?99874', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(63, 1, 16, 'Trudie Willms', '1970-09-28', '+380634522433', '10793$', 'edyth87@veum.com', 'https://lorempixel.com/300/300/?72880', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(64, 6, 22, 'Mallie Lockman V', '1993-01-20', '+38(066)9241212', '11036$', 'mwalsh@yahoo.com', 'https://lorempixel.com/300/300/?37746', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(65, 7, 24, 'Jeramy Kertzmann', '2006-08-06', '0936283232', '14309$', 'zieme.magnolia@yahoo.com', 'https://lorempixel.com/300/300/?67991', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(66, 6, 20, 'Lourdes Yost Sr.', '2010-03-18', '0960415000', '12818$', 'justus62@moore.org', 'https://lorempixel.com/300/300/?72128', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(67, 3, 17, 'Miss Augustine Fritsch V', '1978-01-03', '+380924906854', '14619$', 'lizzie78@yahoo.com', 'https://lorempixel.com/300/300/?62608', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(68, 5, 20, 'Mack Yost', '2002-01-26', '0674025407', '10518$', 'johns.ignacio@gmail.com', 'https://lorempixel.com/300/300/?26888', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(69, 2, 15, 'Ruthie Hamill', '1992-07-23', '0509187901', '12735$', 'kenneth58@rau.com', 'https://lorempixel.com/300/300/?65071', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(70, 2, 7, 'Dina Prohaska', '1988-02-03', '+380926682871', '10168$', 'hfranecki@yahoo.com', 'https://lorempixel.com/300/300/?57795', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(71, 8, 12, 'Amaya O\'Hara', '1976-05-13', '0972361373', '13478$', 'pullrich@bogisich.info', 'https://lorempixel.com/300/300/?46042', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(72, 6, 18, 'Rosalinda Hessel', '1999-05-13', '+380966507989', '12280$', 'award@abshire.biz', 'https://lorempixel.com/300/300/?81149', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(73, 4, 17, 'Prof. Kailee Greenholt', '2012-04-18', '0966429277', '11661$', 'rstokes@hotmail.com', 'https://lorempixel.com/300/300/?82180', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(74, 10, 19, 'Jayde King', '1999-10-26', '0956541069', '10117$', 'ireichert@hotmail.com', 'https://lorempixel.com/300/300/?69144', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(75, 12, 23, 'Ardith Orn IV', '1972-02-12', '0924249480', '12192$', 'imani.welch@lang.info', 'https://lorempixel.com/300/300/?55341', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(76, 2, 18, 'Joannie Dibbert', '1975-05-08', '+380977367067', '10718$', 'monroe.heller@hotmail.com', 'https://lorempixel.com/300/300/?54825', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(77, 8, 18, 'Shayna Quitzon', '2003-08-02', '+38(04693)15373', '12527$', 'heathcote.angus@gmail.com', 'https://lorempixel.com/300/300/?88436', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(78, 4, 13, 'Raul Farrell III', '2000-08-22', '+380920544227', '11461$', 'oschneider@yahoo.com', 'https://lorempixel.com/300/300/?19080', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(79, 8, 13, 'Paula Nikolaus', '1983-05-10', '0941700362', '12927$', 'nledner@kiehn.com', 'https://lorempixel.com/300/300/?79117', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(80, 12, 23, 'Tyrell Ernser', '1977-02-06', '+380929356139', '13048$', 'roob.macie@armstrong.com', 'https://lorempixel.com/300/300/?88385', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(81, 8, 11, 'Hassie Dach', '2004-01-07', '+380948840894', '12533$', 'edyth40@rau.com', 'https://lorempixel.com/300/300/?80639', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(82, 5, 14, 'Dr. Adan Schroeder', '2017-06-28', '0928000545', '14990$', 'cklein@roob.com', 'https://lorempixel.com/300/300/?25010', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(83, 9, 8, 'Mafalda Moen', '2013-05-13', '0986625053', '10426$', 'burley.johns@emmerich.com', 'https://lorempixel.com/300/300/?66266', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(84, 10, 21, 'Remington Bechtelar', '2013-06-12', '+380968285680', '11453$', 'zsauer@leuschke.info', 'https://lorempixel.com/300/300/?10874', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(85, 4, 5, 'Rosamond Feil', '1971-01-10', '0958576632', '14406$', 'rolfson.orlando@gmail.com', 'https://lorempixel.com/300/300/?29840', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(86, 6, 18, 'Jeffery Schoen', '1971-12-31', '+38(009)1879870', '11773$', 'cpollich@hammes.org', 'https://lorempixel.com/300/300/?69276', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(87, 7, 19, 'Meghan Schumm', '1971-09-14', '+380637148110', '11928$', 'uriel.murazik@bailey.com', 'https://lorempixel.com/300/300/?36870', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(88, 9, 7, 'Ross Turcotte', '2002-11-05', '0965630378', '10185$', 'ferne42@gmail.com', 'https://lorempixel.com/300/300/?82325', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(89, 5, 16, 'Brooke Erdman DDS', '1973-07-03', '0967982239', '10583$', 'cordia.bartoletti@satterfield.com', 'https://lorempixel.com/300/300/?96489', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(90, 3, 16, 'Nikko Johnson', '1998-12-25', '+380977290787', '10038$', 'clyde.lehner@gmail.com', 'https://lorempixel.com/300/300/?97861', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(91, 12, 4, 'Laurine Murazik', '1994-07-10', '+380930955191', '10187$', 'stark.arne@batz.com', 'https://lorempixel.com/300/300/?22428', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(92, 10, 7, 'Mr. Greg Donnelly V', '2006-04-27', '+380964109552', '10683$', 'yondricka@gutmann.com', 'https://lorempixel.com/300/300/?82138', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(93, 10, 11, 'Brooks Schaden', '2005-07-23', '0637474865', '14030$', 'brent.yost@hotmail.com', 'https://lorempixel.com/300/300/?64266', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(94, 7, 21, 'Hortense Williamson', '1983-08-19', '+38(0088)330687', '11307$', 'noemy99@kautzer.com', 'https://lorempixel.com/300/300/?22685', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(95, 9, 8, 'Tate Schuppe', '1998-02-23', '0637414749', '10418$', 'gislason.junius@christiansen.biz', 'https://lorempixel.com/300/300/?14611', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(96, 2, 14, 'Adela Robel', '2002-10-26', '+38(04215)89059', '11675$', 'etreutel@yahoo.com', 'https://lorempixel.com/300/300/?62483', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(97, 3, 7, 'Tyrell Harris IV', '2007-09-08', '+380960199362', '14908$', 'darren.lueilwitz@prohaska.com', 'https://lorempixel.com/300/300/?14304', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(98, 12, 21, 'Prof. Justice Davis', '2006-01-15', '+380953366109', '12377$', 'ubaldo69@fay.com', 'https://lorempixel.com/300/300/?47380', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(99, 5, 1, 'Jonathon Mraz IV', '2002-06-06', '0997151992', '14801$', 'dino.mcdermott@gmail.com', 'https://lorempixel.com/300/300/?88865', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(100, 6, 14, 'Melissa Abbott', '1978-05-24', '0936158209', '11148$', 'kaylee.ward@hotmail.com', 'https://lorempixel.com/300/300/?80335', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(101, 4, 25, 'Callie Beier', '1976-04-02', '+380506630537', '14132$', 'barton.tyson@larkin.com', 'https://lorempixel.com/300/300/?63045', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(102, 1, 6, 'Giovanny Larkin', '2012-02-08', '0972194611', '14190$', 'daisha21@yahoo.com', 'https://lorempixel.com/300/300/?55798', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(103, 7, 2, 'Weston Kuhn', '2006-03-28', '+38(0473)470265', '11428$', 'alexzander.bauch@will.org', 'https://lorempixel.com/300/300/?51982', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(104, 3, 17, 'Prof. Magdalen Lynch', '2015-02-09', '+380671565860', '14492$', 'kelvin.schmitt@brown.info', 'https://lorempixel.com/300/300/?17034', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(105, 8, 20, 'Dr. Carrie McKenzie DDS', '1989-04-17', '0506538552', '10466$', 'torrey79@legros.com', 'https://lorempixel.com/300/300/?27172', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(106, 4, 9, 'Prof. Cade Zboncak', '1971-02-13', '+380986557526', '11735$', 'qbaumbach@gmail.com', 'https://lorempixel.com/300/300/?42935', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(107, 12, 13, 'Otha Oberbrunner Sr.', '2011-03-16', '0966055523', '12795$', 'sauer.domingo@hotmail.com', 'https://lorempixel.com/300/300/?18715', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(108, 3, 5, 'Mr. Norwood Schiller', '1998-08-12', '+380630883049', '12582$', 'emante@yahoo.com', 'https://lorempixel.com/300/300/?85713', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(109, 10, 21, 'Mazie Schmidt IV', '2015-10-25', '+380679541012', '12948$', 'kjohns@gmail.com', 'https://lorempixel.com/300/300/?30736', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(110, 3, 10, 'Lisa Schuster', '1996-08-14', '0926740690', '11951$', 'jakubowski.ford@gmail.com', 'https://lorempixel.com/300/300/?88611', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(111, 6, 7, 'Coby Corkery', '2006-01-03', '+380688931137', '12849$', 'bobby00@bayer.net', 'https://lorempixel.com/300/300/?32968', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(112, 6, 18, 'Ms. Natasha Champlin', '2009-04-08', '0950690479', '12376$', 'mariam88@bernhard.info', 'https://lorempixel.com/300/300/?25796', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(113, 2, 3, 'Miss Gregoria Bogisich Sr.', '1971-02-16', '+380914712940', '11349$', 'rau.kristin@shields.com', 'https://lorempixel.com/300/300/?45003', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(114, 3, 4, 'Fatima Conroy', '1987-10-21', '0660560051', '11982$', 'ojakubowski@terry.com', 'https://lorempixel.com/300/300/?57148', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(115, 11, 1, 'Shanel Moore DVM', '2009-11-01', '+380943268608', '12316$', 'amie.hudson@keeling.com', 'https://lorempixel.com/300/300/?17535', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(116, 1, 11, 'Prof. Lexus Cruickshank I', '2005-02-17', '+380663315653', '10160$', 'cstoltenberg@ledner.org', 'https://lorempixel.com/300/300/?23778', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(117, 7, 12, 'Prof. Piper Klocko', '1976-06-20', '0933649516', '13199$', 'lia.lebsack@hotmail.com', 'https://lorempixel.com/300/300/?54884', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(118, 5, 23, 'Brody Zulauf', '1971-08-17', '+380982337744', '10751$', 'nschamberger@yahoo.com', 'https://lorempixel.com/300/300/?93149', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(119, 6, 4, 'Emmie Runte', '1984-10-21', '0674121902', '12056$', 'amos.fahey@gmail.com', 'https://lorempixel.com/300/300/?94820', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(120, 7, 24, 'Eva Howell Sr.', '1973-08-18', '0960546970', '10491$', 'okuneva.derrick@gmail.com', 'https://lorempixel.com/300/300/?40929', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(121, 3, 8, 'Aaliyah Wisozk IV', '1986-12-09', '0980242096', '13340$', 'larson.fred@hotmail.com', 'https://lorempixel.com/300/300/?94520', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(122, 4, 2, 'Coby Rippin', '1999-11-18', '0672788465', '10660$', 'epfeffer@gmail.com', 'https://lorempixel.com/300/300/?58691', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(123, 6, 19, 'Ignacio Gottlieb', '1985-04-01', '0634323789', '13337$', 'jkunze@cruickshank.org', 'https://lorempixel.com/300/300/?68579', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(124, 3, 8, 'Adrien Metz', '2007-09-02', '0977826858', '11359$', 'fjakubowski@yahoo.com', 'https://lorempixel.com/300/300/?64377', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(125, 8, 8, 'Dr. Reuben Crist', '1975-05-15', '0989608706', '12357$', 'derrick.reilly@hotmail.com', 'https://lorempixel.com/300/300/?19048', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(126, 1, 15, 'Prof. Brionna Oberbrunner', '2019-08-13', '+380996636765', '10827$', 'andy.okon@hotmail.com', 'https://lorempixel.com/300/300/?40064', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(127, 9, 24, 'Graham Reichert IV', '1998-01-23', '0680714417', '14761$', 'gust00@leffler.info', 'https://lorempixel.com/300/300/?42121', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(128, 10, 21, 'Queen Green Sr.', '1996-02-01', '+380984322941', '12344$', 'ovonrueden@yahoo.com', 'https://lorempixel.com/300/300/?26684', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(129, 8, 20, 'Lucienne Stark I', '1994-04-12', '+380997702841', '13944$', 'schoen.johan@hotmail.com', 'https://lorempixel.com/300/300/?52144', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(130, 5, 3, 'Eleanora Crist', '1970-02-13', '0965861932', '11356$', 'dewitt64@yahoo.com', 'https://lorempixel.com/300/300/?83422', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(131, 3, 5, 'Mr. Elmer Maggio', '1978-06-29', '+380914672976', '13350$', 'aron38@yahoo.com', 'https://lorempixel.com/300/300/?97674', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(132, 3, 22, 'Margaret Maggio I', '1992-11-04', '0689998176', '10827$', 'qwilkinson@gmail.com', 'https://lorempixel.com/300/300/?39687', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(133, 12, 3, 'Dr. Ignatius Weissnat DVM', '1997-06-03', '0502949170', '12225$', 'weldon46@yahoo.com', 'https://lorempixel.com/300/300/?38148', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(134, 12, 23, 'Mrs. Alize Pfannerstill', '1975-10-17', '+380952664627', '13604$', 'wgraham@hotmail.com', 'https://lorempixel.com/300/300/?19305', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(135, 3, 9, 'Prof. Dean Bins II', '2016-11-01', '+380990651965', '12273$', 'reichel.elisabeth@yahoo.com', 'https://lorempixel.com/300/300/?40470', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(136, 3, 11, 'Madisen Johnston', '2018-02-05', '+38(052)7163726', '10163$', 'qmcclure@berge.net', 'https://lorempixel.com/300/300/?61420', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(137, 2, 17, 'Rita Bartell', '2007-02-18', '+380923448171', '12615$', 'roderick.bode@hill.com', 'https://lorempixel.com/300/300/?37556', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(138, 11, 12, 'Doyle Conroy I', '1997-06-21', '0914190642', '12253$', 'okon.bryce@kreiger.com', 'https://lorempixel.com/300/300/?32385', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(139, 9, 18, 'Maryse Lueilwitz', '1998-12-19', '+380949508506', '12919$', 'meichmann@breitenberg.com', 'https://lorempixel.com/300/300/?59481', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(140, 8, 4, 'Aletha Gorczany', '1981-05-18', '+380975570509', '10812$', 'zbaumbach@oconnell.org', 'https://lorempixel.com/300/300/?22493', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(141, 12, 12, 'Doris Hessel III', '2012-11-21', '0689161196', '10554$', 'rebecca93@bogan.biz', 'https://lorempixel.com/300/300/?18204', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(142, 8, 15, 'Ms. Vella King', '1970-11-14', '+380935271913', '14016$', 'jdietrich@gmail.com', 'https://lorempixel.com/300/300/?99471', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(143, 9, 15, 'Dr. Evalyn Reilly', '2004-07-23', '+380945204125', '11900$', 'coleman.hauck@ankunding.net', 'https://lorempixel.com/300/300/?39583', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(144, 9, 20, 'Ella Langosh', '1979-09-19', '0660514775', '10713$', 'bosco.louvenia@mcclure.net', 'https://lorempixel.com/300/300/?84836', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(145, 11, 11, 'Mr. Lane Bednar', '1980-12-11', '+380960054901', '11335$', 'samir.franecki@hotmail.com', 'https://lorempixel.com/300/300/?62983', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(146, 1, 7, 'Isom Zboncak', '1992-09-11', '+38(005)1720782', '14367$', 'tanner.orn@heidenreich.com', 'https://lorempixel.com/300/300/?78783', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(147, 9, 1, 'Theodore Zieme', '2007-11-15', '+380973472676', '11222$', 'tate.schulist@hirthe.com', 'https://lorempixel.com/300/300/?25216', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(148, 11, 24, 'Diana Sauer Sr.', '2016-10-30', '+380960685343', '11314$', 'bstracke@yahoo.com', 'https://lorempixel.com/300/300/?44353', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(149, 7, 12, 'Jaqueline Bins MD', '1988-07-28', '+380671865400', '11780$', 'dortiz@hotmail.com', 'https://lorempixel.com/300/300/?88837', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(150, 2, 11, 'Florencio Auer', '1972-03-22', '0932401486', '13886$', 'tracy.rau@gerlach.com', 'https://lorempixel.com/300/300/?22315', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(152, 1, 35, 'Names', '1900-01-01', '+380501111111', '750$', 'names@mail.com', 'uploads/1566592228.PNG', '2019-08-23 17:30:29', '2019-09-05 09:01:36', NULL, NULL),
(168, 1, 152, 'Names3', '1900-01-01', '+380501111111', '750$', 'names2@mail.com', 'storage/uploads/1567621009.PNG', '2019-09-04 15:16:50', '2019-09-04 15:16:50', NULL, NULL),
(169, 1, 16, 'Names2', '1900-01-01', '+380501111111', '$750', 'names2@mail.com', 'storage/uploads/1568390476.PNG', '2019-09-13 13:01:16', '2019-09-13 13:01:16', 1, NULL),
(170, 1, 16, 'Names4', '1900-01-01', '+380501111111', '$750', 'names2@mail.com', 'storage/uploads/1568390489.PNG', '2019-09-13 13:01:29', '2019-09-13 13:08:18', 1, 1),
(171, 1, 16, 'Names5', '1900-01-01', '+380501111111', '$750', 'names2@mail.com', 'storage/uploads/1568390494.PNG', '2019-09-13 13:01:34', '2019-09-13 13:08:18', 1, 1),
(172, 1, 16, 'Names6', '1900-01-01', '+380501111111', '$750', 'names2@mail.com', 'storage/uploads/1568637071.PNG', '2019-09-13 13:01:38', '2019-09-16 09:31:11', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(54, '2014_10_12_000000_create_users_table', 1),
(55, '2014_10_12_100000_create_password_resets_table', 1),
(56, '2019_07_03_113014_create_positions_table', 1),
(57, '2019_07_03_113239_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chief` enum('Level 1','Level 2','Level 3','Level 4','Level 5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_created_id` int(11) DEFAULT NULL,
  `admin_updated_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `chief`, `name`, `created_at`, `updated_at`, `admin_created_id`, `admin_updated_id`) VALUES
(1, 'Level 1', 'Forestry Conservation Science Teacher', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(2, 'Level 2', 'Concierge', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(3, 'Level 5', 'Travel Agent', '2019-08-23 17:02:35', '2019-08-23 17:02:35', NULL, NULL),
(4, 'Level 1', 'Technical Specialist', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(5, 'Level 4', 'Movie Director oR Theatre Director', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(6, 'Level 5', 'Social Scientists', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(7, 'Level 3', 'Network Systems Analyst', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(8, 'Level 3', 'Photographic Reproduction Technician', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(9, 'Level 1', 'Loan Counselor', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(10, 'Level 3', 'Pipefitter', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(11, 'Level 5', 'Account Manager', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL),
(12, 'Level 1', 'Sheriff', '2019-08-23 17:03:38', '2019-08-23 17:03:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AdminLte', 'adminlte@mail.com', NULL, '$2y$10$4MFliaSjOsWhJf10zWvY6eUHyMZct8djYhrbGOTrzP74WzxSNpE8W', '8taP3DweDGtUYZlf0CKCY0Qm1ahhTI21kccCOdmlDkym2KR3NrtqeEL6v9dB', '2019-08-23 17:17:31', '2019-08-23 17:17:31');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_position_id_index` (`position_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
